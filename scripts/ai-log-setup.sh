#!/usr/bin/env bash
# ai-log-setup.sh — Cài AI logging vào một project khác
# Chạy từ thư mục TARGET project:
#   bash /path/to/P-167/scripts/ai-log-setup.sh
# Hoặc chỉ định thư mục nguồn:
#   bash /path/to/P-167/scripts/ai-log-setup.sh --source /path/to/P-167

set -euo pipefail

# ── Màu sắc ──────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'

info()    { echo -e "${CYAN}[ai-log]${RESET} $*"; }
success() { echo -e "${GREEN}[ai-log] ✓${RESET} $*"; }
warn()    { echo -e "${YELLOW}[ai-log] ⚠${RESET} $*"; }
error()   { echo -e "${RED}[ai-log] ✗${RESET} $*" >&2; }

# ── Xác định thư mục nguồn (repo P-167) ──────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

# Parse --source flag
while [[ $# -gt 0 ]]; do
  case "$1" in
    --source) SOURCE_DIR="$2"; shift 2 ;;
    *) shift ;;
  esac
done

TARGET_DIR="$(pwd)"

# ── Kiểm tra điều kiện ────────────────────────────────────────────────────────
if [[ ! -f "$SOURCE_DIR/scripts/log_hook.py" ]]; then
  error "Không tìm thấy scripts/log_hook.py trong: $SOURCE_DIR"
  error "Chạy script này từ repo P-167 hoặc dùng --source /path/to/P-167"
  exit 1
fi

if [[ ! -d "$TARGET_DIR/.git" ]]; then
  error "Thư mục hiện tại không phải git repo: $TARGET_DIR"
  error "cd vào project của bạn trước rồi mới chạy script này."
  exit 1
fi

echo ""
echo -e "${BOLD}╔══════════════════════════════════════════╗${RESET}"
echo -e "${BOLD}║     AI Log Setup — GDGoC FPTU AI20K     ║${RESET}"
echo -e "${BOLD}╚══════════════════════════════════════════╝${RESET}"
echo ""
info "Nguồn  : $SOURCE_DIR"
info "Đích   : $TARGET_DIR"
echo ""

# ── Chọn nền tảng AI ──────────────────────────────────────────────────────────
echo -e "${BOLD}Chọn nền tảng AI cần cài hook tự động:${RESET}"
echo "  1) Claude Code"
echo "  2) Gemini CLI"
echo "  3) OpenAI Codex"
echo "  4) Cursor"
echo "  5) Tất cả ở trên"
echo "  6) Chỉ cài script + pre-push hook (không cài hook AI tool)"
echo ""
read -rp "Nhập lựa chọn (vd: 1 2 4 hoặc 5): " CHOICE

DO_CLAUDE=false; DO_GEMINI=false; DO_CODEX=false; DO_CURSOR=false

for c in $CHOICE; do
  case "$c" in
    1) DO_CLAUDE=true ;;
    2) DO_GEMINI=true ;;
    3) DO_CODEX=true ;;
    4) DO_CURSOR=true ;;
    5) DO_CLAUDE=true; DO_GEMINI=true; DO_CODEX=true; DO_CURSOR=true ;;
    6) ;;
    *) warn "Bỏ qua lựa chọn không hợp lệ: $c" ;;
  esac
done

echo ""

# ── Copy scripts ──────────────────────────────────────────────────────────────
info "Sao chép scripts..."
mkdir -p "$TARGET_DIR/scripts"

for f in _pyrun.sh log_hook.py log_manual.py submit_log.py log_antigravity.py; do
  src="$SOURCE_DIR/scripts/$f"
  dst="$TARGET_DIR/scripts/$f"
  if [[ -f "$src" ]]; then
    if [[ -f "$dst" ]]; then
      warn "Đã tồn tại, bỏ qua: scripts/$f (xóa thủ công nếu muốn cập nhật)"
    else
      cp "$src" "$dst"
      chmod +x "$dst" 2>/dev/null || true
      success "scripts/$f"
    fi
  fi
done

# ── Tạo thư mục .ai-log ───────────────────────────────────────────────────────
mkdir -p "$TARGET_DIR/.ai-log"
touch "$TARGET_DIR/.ai-log/.gitkeep"
success ".ai-log/ đã tạo"

# ── Cài hook cho từng AI tool ─────────────────────────────────────────────────

# Claude Code
if $DO_CLAUDE; then
  CLAUDE_CFG="$TARGET_DIR/.claude/settings.json"
  if [[ -f "$CLAUDE_CFG" ]]; then
    warn ".claude/settings.json đã tồn tại — kiểm tra thủ công xem đã có hooks chưa"
  else
    mkdir -p "$TARGET_DIR/.claude"
    cp "$SOURCE_DIR/.claude/settings.json" "$CLAUDE_CFG"
    success ".claude/settings.json (Claude Code hooks)"
  fi
fi

# Gemini CLI
if $DO_GEMINI; then
  GEMINI_CFG="$TARGET_DIR/.gemini/settings.json"
  if [[ -f "$GEMINI_CFG" ]]; then
    warn ".gemini/settings.json đã tồn tại — kiểm tra thủ công"
  else
    mkdir -p "$TARGET_DIR/.gemini"
    cp "$SOURCE_DIR/.gemini/settings.json" "$GEMINI_CFG"
    success ".gemini/settings.json (Gemini CLI hooks)"
  fi
fi

# Codex
if $DO_CODEX; then
  CODEX_CFG="$TARGET_DIR/.codex/hooks.json"
  if [[ -f "$CODEX_CFG" ]]; then
    warn ".codex/hooks.json đã tồn tại — kiểm tra thủ công"
  else
    mkdir -p "$TARGET_DIR/.codex"
    cp "$SOURCE_DIR/.codex/hooks.json" "$CODEX_CFG"
    success ".codex/hooks.json (Codex hooks)"
  fi
fi

# Cursor
if $DO_CURSOR; then
  CURSOR_CFG="$TARGET_DIR/.cursor/hooks.json"
  if [[ -f "$CURSOR_CFG" ]]; then
    warn ".cursor/hooks.json đã tồn tại — kiểm tra thủ công"
  else
    mkdir -p "$TARGET_DIR/.cursor"
    cp "$SOURCE_DIR/.cursor/hooks.json" "$CURSOR_CFG"
    success ".cursor/hooks.json (Cursor hooks)"
  fi
fi

# ── Cài git pre-push hook ─────────────────────────────────────────────────────
info "Cài git pre-push hook..."
HOOK_FILE="$TARGET_DIR/.git/hooks/pre-push"
if [[ -f "$HOOK_FILE" ]]; then
  warn ".git/hooks/pre-push đã tồn tại — không ghi đè"
  warn "Thêm thủ công vào cuối file:"
  echo "    bash scripts/_pyrun.sh scripts/log_antigravity.py --auto || true"
  echo "    bash scripts/_pyrun.sh scripts/submit_log.py || true"
else
  cat > "$HOOK_FILE" <<'EOF'
#!/usr/bin/env bash
bash scripts/_pyrun.sh scripts/log_antigravity.py --auto || true
bash scripts/_pyrun.sh scripts/submit_log.py || true
exit 0
EOF
  chmod +x "$HOOK_FILE"
  success "git pre-push hook đã cài"
fi

# ── Cập nhật .gitignore ───────────────────────────────────────────────────────
GITIGNORE="$TARGET_DIR/.gitignore"
GITIGNORE_BLOCK="# AI logs — tracked structure, ignored content
.ai-log/*.jsonl
.ai-log/archive/"

if [[ -f "$GITIGNORE" ]] && grep -q "\.ai-log" "$GITIGNORE"; then
  warn ".gitignore đã có entry .ai-log — bỏ qua"
else
  echo "" >> "$GITIGNORE"
  echo "$GITIGNORE_BLOCK" >> "$GITIGNORE"
  success ".gitignore đã cập nhật"
fi

# ── Cập nhật .env ─────────────────────────────────────────────────────────────
ENV_FILE="$TARGET_DIR/.env"
SRC_ENV="$SOURCE_DIR/.env"
ENV_BLOCK="# ---- AI Hook Logging (GDGoC FPTU AI20K) ----
AI_LOG_SERVER=https://ai-logs.note.transformerlabs.ai/api/ingest
AI_LOG_API_KEY=f3p1dEOhD_z8qjjtbeCtb2t9ASMEliz-4juZfWe3ZPgCtPZp-LjWthBfeNU8d5dP
AI_LOG_DIR=.ai-log"

# Đảm bảo .env luôn được gitignore (tránh commit khóa API)
if [[ -f "$GITIGNORE" ]] && grep -qE '^\.env$' "$GITIGNORE"; then
  :
else
  echo ".env" >> "$GITIGNORE"
  success ".gitignore đã thêm .env"
fi

if [[ -f "$ENV_FILE" ]]; then
  # Đích đã có .env → chỉ thêm block AI_LOG nếu còn thiếu
  if grep -q "AI_LOG_SERVER" "$ENV_FILE"; then
    warn ".env đã có AI_LOG_SERVER — bỏ qua"
  else
    echo "" >> "$ENV_FILE"
    echo "$ENV_BLOCK" >> "$ENV_FILE"
    success ".env đã thêm AI_LOG_SERVER + AI_LOG_API_KEY"
  fi
elif [[ -f "$SRC_ENV" ]]; then
  # Đích chưa có .env → copy nguyên file .env từ nguồn (P-167)
  cp "$SRC_ENV" "$ENV_FILE"
  success ".env đã copy toàn bộ từ nguồn ($(grep -cE '^[A-Za-z_][A-Za-z0-9_]*=' "$ENV_FILE") biến)"
  # Đảm bảo có block AI_LOG (phòng khi .env nguồn chưa có)
  if ! grep -q "AI_LOG_SERVER" "$ENV_FILE"; then
    echo "" >> "$ENV_FILE"
    echo "$ENV_BLOCK" >> "$ENV_FILE"
    success ".env đã thêm AI_LOG_SERVER + AI_LOG_API_KEY"
  fi
  warn "Kiểm tra lại các khóa API trong .env (OPENAI_API_KEY, DATABASE_URL...) cho đúng project"
else
  # Không có .env nguồn lẫn đích → tạo mới chỉ với block AI_LOG
  echo "$ENV_BLOCK" >> "$ENV_FILE"
  success ".env mới đã tạo với AI_LOG_SERVER + AI_LOG_API_KEY"
fi

# ── Kiểm tra git config ───────────────────────────────────────────────────────
GIT_EMAIL="$(git -C "$TARGET_DIR" config user.email 2>/dev/null || true)"
if [[ -z "$GIT_EMAIL" ]]; then
  warn "git user.email chưa được set!"
  warn "Chạy: git config user.email \"your@vinuni.edu.vn\""
fi

# ── Tóm tắt ──────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}${GREEN}══ Cài đặt hoàn tất! ══${RESET}"
echo ""
echo "Kiểm tra nhanh:"
echo "  • Dùng AI tool bình thường → log tự ghi vào .ai-log/session.jsonl"
echo "  • git push → log tự submit lên server nhà trường"
echo "  • Log thủ công (ChatGPT, web...): python scripts/log_manual.py"
echo ""
if [[ -z "$GIT_EMAIL" ]]; then
  echo -e "${YELLOW}⚠ Nhớ set git email trước khi dùng:${RESET}"
  echo "  git config user.email \"your@vinuni.edu.vn\""
  echo ""
fi

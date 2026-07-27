# Group Report — Day 02

## Thành viên nhóm

| STT | Họ và tên | Mã học viên | Vai trò trong nhóm |
|---:|---|---|---|
| 1 | Nguyễn Nam Anh|2A202601703  |Trưởng nhóm  |
| 2 | Nguyễn Đức Tín  |2A202601185  | Thành viên |
| 3 | Trần Đình Đăng | 2A202601274 | Thành viên |
| 4 | Chu Thành Dũng  | 2A202601405 | Thành viên |
| 5 | Cao Nam Cường | 2A202601661 | Thành viên |
| 6 | Trần Anh Thư| 2A202601611 | Thành viên |
| 7 | Dương Văn Vũ | 2A202601663 | Thành viên |
| 8 | Dương Mạnh Phong | 2A202601557 | Thành viên |
| 9 | Cao Nhật Minh | 2A202601721 | Thành viên |

> Ghi chú: nhóm đã cung cấp candidate được chọn và baseline sơ bộ “chờ 2–3 ngày/yêu cầu”. Chưa có biên bản pitch các candidate còn lại, interview, survey hoặc ticket log. Báo cáo đánh dấu rõ các phần chưa có thay vì tự tạo dữ liệu validation.

---

# Phase 3 — Group Convergence: từ candidates về 1

## Bước 3.1 — Trình bày top 3

Nhóm chưa cung cấp danh sách đầy đủ 9–12 candidate problems. Bảng dưới đây chỉ ghi candidate đã được xác nhận:

| # | Người đưa ra | Candidate problem | Người gặp vấn đề | Điểm nghẽn | Cảm nhận nhanh |
|---:|---|---|---|---|---|
| 1 | Nhóm | Nhân viên nghiệp vụ phải chờ vài ngày để nhận số liệu bán hàng/tồn kho từ đội Data | Sales, Sales Operations, Quản lý kinh doanh và Data Analyst | Làm rõ yêu cầu → tìm schema/KPI → viết và kiểm tra SQL → trả kết quả | Workflow / LLM Feature + Semantic RAG + SQL Guardrails |
| 2 | Chưa cung cấp |  |  |  |  |
| 3 | Chưa cung cấp |  |  |  |  |
| 4 | Chưa cung cấp |  |  |  |  |
| 5 | Chưa cung cấp |  |  |  |  |
| 6 | Chưa cung cấp |  |  |  |  |
| 7 | Chưa cung cấp |  |  |  |  |
| 8 | Chưa cung cấp |  |  |  |  |
| 9 | Chưa cung cấp |  |  |  |  |
| 10 | Chưa cung cấp |  |  |  |  |
| 11 | Chưa cung cấp |  |  |  |  |
| 12 | Chưa cung cấp |  |  |  |  |

## Bước 3.2 — Gom trùng / cluster

| Cluster | Candidates included | Pattern chung | Ghi chú |
|---|---|---|---|
| A — Truy cập dữ liệu self-service | Yêu cầu số liệu Sales/Inventory | Business User cần dữ liệu nhưng phải phụ thuộc Data Analyst để chuyển câu hỏi thành SQL | Cluster đã được xác nhận |
| B |  |  |  |
| C |  |  |  |
| D |  |  |  |

## Bước 3.3 — Shortlist

| Candidate | Vì sao vào shortlist | Rủi ro / điều chưa rõ |
|---|---|---|
| Self-service Sales/Inventory query | Actor và workflow rõ; có handoff giữa nghiệp vụ và Data; có thể đo lead time, accuracy và ticket deflection; có thể pilot trên một data mart read-only | Baseline 2–3 ngày chưa có log; chưa biết tỷ lệ ticket đơn giản; accuracy 90% chưa được kiểm chứng |
| Candidate 2 | Chưa cung cấp | Chưa có dữ liệu |
| Candidate 3 | Chưa cung cấp | Chưa có dữ liệu |

## Bước 3.4 — Score để đồng thuận

| Candidate | Actor rõ | Workflow rõ | Pain có evidence | Impact đo được | Làm trong lab | So sánh R/W/A được | Nhóm hiểu domain | Tổng |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Self-service Sales/Inventory query | 5 | 5 | 2 | 4 | 4 | 5 | 4 | 29/35 |
| Candidate 2 |  |  |  |  |  |  |  |  |
| Candidate 3 |  |  |  |  |  |  |  |  |

Candidate nhóm chọn:

```text
Self-service analytics bằng ngôn ngữ tự nhiên
cho các câu hỏi bán hàng và tồn kho phổ biến.
```

Vì sao chọn:

```text
- Actor và workflow hiện tại rõ.
- Có bottleneck qua nhiều handoff giữa Business User và Data Analyst.
- Impact có thể đo bằng lead time, active handling time và ticket volume.
- Có thể giới hạn pilot trong một data mart Sales/Inventory.
- Có thể so sánh No AI, Rule, Workflow và Agent.
- Có existing solutions và research để tham khảo.
```

Vì sao không chọn các candidate còn lại:

```text
Nhóm chưa cung cấp danh sách và lý do loại các candidate còn lại.
Cần bổ sung từ biên bản pitch để hoàn chỉnh bằng chứng hội tụ.
```

Nếu có disagreement, nhóm xử lý thế nào:

```text
Chưa có thông tin disagreement.
Đề xuất: so sánh candidate bằng cùng 7 tiêu chí trong bảng score,
sau đó thảo luận các điểm chênh lệch thay vì chỉ vote.
```

---

# Phase 4 — Quick Validation + Research giải pháp

## Bước 4.1 — Quick validation

### Kết luận về khả năng thực hiện

```text
Có thể Quick Validation pain, workflow và baseline sơ bộ trong 30 phút.

Không thể chứng minh trong 30 phút:
- Text-to-SQL đạt accuracy 90%;
- giảm 50% ticket cho Data team;
- hệ thống an toàn để kết nối production.
```

### Kết quả hiện có

| Nguồn | Số người / số mẫu | Tín hiệu xác nhận | Tín hiệu phản bác | Nhóm sửa problem thế nào |
|---|---:|---|---|---|
| Quick Problem Card | Chưa rõ | Workflow 5 bước cụ thể; lead time được nhóm ước lượng 2–3 ngày | Chưa có log hoặc người được phỏng vấn | Xem 2–3 ngày là giả thuyết baseline, không phải kết quả đo |
| Interview nghiệp vụ | Chưa thực hiện | Chưa có | Chưa có | Trong lab cần tối thiểu 1 người nghiệp vụ |
| Interview Data Analyst | Chưa thực hiện | Chưa có | Chưa có | Trong lab cần tối thiểu 1 Data Analyst |
| Survey / poll | Chưa thực hiện | Chưa có | Chưa có | Nếu có thời gian, khảo sát 5–10 người |
| Ticket/query log | Chưa trích xuất | Chưa có | Chưa có | Trong lab xem 5–10 mẫu; sau lab mở rộng 30–50 mẫu |

### Kịch bản validation 30 phút

| Thời gian | Hoạt động | Output |
|---:|---|---|
| 0–3 phút | Thống nhất cách ghi và ẩn danh | Form ghi kết quả |
| 3–10 phút | Interview 1 người nghiệp vụ | Lần gần nhất, workflow, lead time và pain |
| 10–17 phút | Interview 1 Data Analyst | Active time, backlog, bước khó và rủi ro |
| 17–24 phút | Phân loại 5–10 ticket/câu hỏi mẫu | Tỷ lệ sơ bộ A/B/C/D |
| 24–28 phút | So sánh hai góc nhìn | Tín hiệu xác nhận/phản bác |
| 28–30 phút | Sửa Problem Statement | Baseline, boundary và metric mới |

### Câu hỏi interview người nghiệp vụ

1. Lần gần nhất bạn cần số liệu bán hàng/tồn kho là khi nào?
2. Bạn đã hỏi nguyên văn như thế nào?
3. Từ lúc gửi đến lúc nhận kết quả mất bao lâu?
4. Data Analyst đã hỏi lại điều gì và bao nhiêu lần?
5. Kết quả có phải sửa hoặc giải thích lại không?
6. Bạn có tự kiểm tra KPI, time range, filter và độ mới dữ liệu không?

### Câu hỏi interview Data Analyst

1. Active handling time và wait time của yêu cầu gần nhất là bao nhiêu?
2. Bước nào tốn nhất: làm rõ, tìm schema/KPI, viết SQL hay kiểm tra kết quả?
3. Loại câu hỏi nào lặp lại đủ nhiều để chuẩn hóa?
4. Lỗi nguy hiểm nhất thường nằm ở join, grain, KPI, filter, quyền hay freshness?
5. Loại câu hỏi nào không nên cho Business User tự chạy?
6. Nếu có semantic model và verified SQL, bạn có chấp nhận chỉ review case escalated không?

### Phân loại ticket/câu hỏi

| Nhãn | Ví dụ | Cách xử lý kỳ vọng |
|---|---|---|
| **A — Phổ biến, KPI đã định nghĩa** | Doanh thu theo khu vực/tháng; tồn kho theo SKU/kho | Workflow self-service |
| **B — Trong domain nhưng cần làm rõ** | “Top sản phẩm tốt nhất” chưa rõ theo doanh thu hay số lượng | Hỏi clarification rồi mới sinh SQL |
| **C — Phân tích mới/phức tạp** | Forecast, causal analysis hoặc KPI mới | Chuyển Data Analyst |
| **D — Nhạy cảm/không có quyền** | Margin nhạy cảm hoặc dữ liệu khách hàng | Từ chối hoặc theo quy trình cấp quyền |

### Form nhóm điền sau validation

| Nguồn | Số người / mẫu | Lead time | Active time | Bước đau nhất | Tín hiệu phản bác | Nhóm sửa problem thế nào |
|---|---:|---|---|---|---|---|
| Interview nghiệp vụ |  |  | Không áp dụng |  |  |  |
| Interview Data Analyst |  |  |  |  |  |  |
| Survey / poll |  |  | Không đo |  |  |  |
| Ticket/query log |  |  |  |  |  |  |

### Quy tắc ra kết luận

Pain được xác nhận sơ bộ nếu:

- Cả người nghiệp vụ và Data Analyst mô tả được một lần xảy ra gần đây.
- Lead time quan sát ít nhất một ngày hoặc có từ một vòng hỏi lại trở lên.
- Trong 5–10 mẫu có ít nhất 30% câu hỏi nhóm A hoặc B.

Problem phải sửa hoặc thu hẹp nếu:

- Thời gian chờ chủ yếu do SLA/ưu tiên, không phải mapping ý định sang SQL.
- Đa số yêu cầu đã có dashboard nhưng người dùng không biết dùng; khi đó onboarding/search có thể là bài toán đúng hơn.
- Đa số mẫu thuộc nhóm C/D.
- Data Analyst không thể xác định KPI nếu thiếu trao đổi nghiệp vụ sâu.

## Bước 4.2 — Research giải pháp đã có

| Nguồn / tool / case | Link | Họ giải quyết phần nào? | Điểm mạnh | Khoảng trống / rủi ro | Bài học cho nhóm |
|---|---|---|---|---|---|
| Google Analyza | [Google Research](https://research.google/pubs/analyza-exploring-data-with-conversation/) | Hội thoại để người không biết code truy cập revenue/inventory database cho sales force | Case thực tế rất gần đề tài | Không chứng minh baseline 2–3 ngày hoặc target dưới 10 phút của nhóm | Problem class và nhu cầu self-service có thật |
| LinkedIn Text-to-SQL | [Paper](https://arxiv.org/abs/2507.14372) | Chatbot nội bộ cho PM, engineer và operations truy vấn enterprise data | Hơn 300 weekly users; dùng metadata, query log, wiki và code làm knowledge graph | Expert review chỉ ghi nhận 53% response đúng hoặc gần đúng trên benchmark nội bộ | Schema thuần chưa đủ; accuracy là rủi ro thật |
| Snowflake Cortex Analyst | [Documentation](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst) | Natural-language query dựa trên semantic model | Semantic context, metric và RBAC | Phụ thuộc chất lượng semantic model | Cần semantic layer thay vì chỉ Schema RAG |
| Snowflake Verified Query Repository | [Documentation](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/verified-query-repository) | Lưu cặp question–SQL đã xác minh | Tăng độ tin cậy và grounding | Cần owner duy trì khi schema/KPI đổi | Verified SQL vừa là context vừa là regression test |
| Databricks AI/BI Genie | [Documentation](https://docs.databricks.com/aws/en/genie/) | Hỏi dữ liệu bằng ngôn ngữ tự nhiên trên governed data | Trusted data, metrics và business rules | Không tự giải quyết data quality | Chỉ pilot một domain curated |
| BigQuery dry run | [Documentation](https://docs.cloud.google.com/bigquery/docs/running-queries) | Validate SQL và ước tính bytes/cost | Kiểm soát lỗi kỹ thuật và chi phí trước chạy | SQL chạy được vẫn có thể sai logic | Guardrail phải kiểm cả kỹ thuật và semantic |
| BigQuery row-level security | [Documentation](https://docs.cloud.google.com/bigquery/docs/row-level-security-intro) | Lọc hàng dữ liệu theo user/group | Least privilege và fine-grained access | Policy cần cấu hình và audit đúng | Query phải chạy theo identity của user |
| Amazon Athena workgroups | [Documentation](https://docs.aws.amazon.com/athena/latest/ug/workgroups-manage-queries-control-costs.html) | Tách workload, access và cost controls | Guardrail ở query-engine layer | Không bảo đảm semantic correctness | Enforce cost/access ngoài LLM |

Research takeaway:

```text
Text-to-SQL enterprise không phải:
đưa toàn bộ schema cho LLM → chạy SQL.

Pattern phù hợp hơn:
semantic layer + glossary/KPI
→ verified question–SQL examples
→ LLM sinh SELECT SQL
→ parser/policy/cost guardrails
→ user preview và approve
→ thực thi bằng quyền user
→ feedback hoặc chuyển Data Analyst.
```

Research chứng minh problem class và solution feasibility, nhưng chưa chứng minh các claim nội bộ:

- Lead time 2–3 ngày.
- Accuracy 90%.
- Dưới 10 phút.
- Giảm 50% ticket.

---

# Phase 5 — Workflow + Problem Statement

## Bước 5.1 — Current workflow bản nhóm

Dán workflow hoặc link file:

```text
02-group-problem-statement/current-workflow.puml
```

```text
CURRENT STATE — lead time sơ bộ 2–3 ngày/yêu cầu

[1. Sales gửi yêu cầu qua chat/email/ticket]
→ [2. Data Analyst đọc và hỏi lại:
     KPI • thời gian • filter • grain]
→ [3. Data Analyst tìm schema:
     bảng • cột • join • định nghĩa KPI]
→ [4. Data Analyst viết SQL:
     chạy thử • kiểm logic • kiểm kết quả]
→ [5. Xuất bảng/biểu đồ và gửi requester]
→ [6. Requester có thể yêu cầu sửa lại]
```

| Bước | Actor | Input | Output | Thời gian/tần suất | Ghi chú |
|---:|---|---|---|---|---|
| 1 | Sales/Sales Ops/Manager | Câu hỏi nghiệp vụ | Ticket/chat/email | Chưa đo | Có thể thiếu KPI, thời gian hoặc filter |
| 2 | Data Analyst + requester | Yêu cầu ban đầu | Yêu cầu đã làm rõ | Chưa đo | Có thể nhiều vòng hỏi lại |
| 3 | Data Analyst | Yêu cầu rõ, schema/catalog | Mapping bảng/cột/join/KPI | Chưa đo | Schema không chứa đầy đủ business meaning |
| 4 | Data Analyst | Mapping nghiệp vụ–dữ liệu | SQL và kết quả đã kiểm | Chưa đo | SQL chạy được vẫn có thể sai grain/join/KPI |
| 5 | Data Analyst → requester | Kết quả | Bảng/biểu đồ/file | Tổng lead time ước lượng 2–3 ngày | Có thể phát sinh rework |

Bottleneck chính:

```text
Chưa đủ dữ liệu để khẳng định một bước duy nhất.
Giả thuyết hiện tại: backlog + làm rõ yêu cầu + mapping semantic/SQL ở bước 2–4.

Cần tách:
- wait time trong backlog;
- active handling time của Data Analyst.
```

## Bước 5.2 — Future workflow bản nhóm

Dán workflow hoặc link file:

```text
02-group-problem-statement/future-workflow.puml
```

```text
FUTURE STATE — target dưới 10 phút cho nhóm A đã curated

[1. User hỏi bằng ngôn ngữ tự nhiên]
→ [2. Scope/intent classifier]
   ├─ ngoài scope / nhạy cảm / phức tạp → Data Analyst
   └─ trong scope → tiếp tục
→ [3. Clarification:
     KPI • time range • filter • grain • timezone]
→ [4. Semantic retrieval:
     glossary • metric • schema • join • verified SQL]
→ [5. LLM sinh một SELECT SQL + giải thích]
→ [6. Guardrails:
     parse • SELECT only • allowlist • RBAC
     dry-run • timeout • cost limit • LIMIT preview]
   ├─ fail / confidence thấp / cost cao → Data Analyst
   └─ pass → tiếp tục
→ [7. Hiển thị KPI • filter • source • freshness • SQL • preview]
→ [8. User approve]
→ [9. Execute read-only bằng identity của user]
→ [10. Trả bảng/biểu đồ + feedback + audit log]
```

Human boundary:

- Data Owner duyệt metric, semantic model và golden SQL.
- User duyệt cách hiểu, filter và SQL trước khi chạy.
- Data Analyst xử lý case mơ hồ, phức tạp, nhạy cảm hoặc guardrail fail.

Fallback:

| Tình huống | Phương án quay về |
|---|---|
| Thiếu KPI/time/grain | Hỏi lại, không tự đoán |
| Không có semantic context đáng tin | Không chạy; chuyển Data Analyst |
| SQL ngoài allowlist hoặc có DDL/DML | Chặn tại parser/policy layer |
| Dry-run lỗi hoặc vượt cost limit | Không chạy; thu hẹp filter hoặc chuyển Analyst |
| Accuracy dưới threshold | Hạ xuống “AI draft SQL cho Data Analyst” |
| Sự cố quyền/lộ dữ liệu | Kill switch, thu hồi credential và audit |

Before/after impact:

| Metric | Trước | Sau kỳ vọng | Ghi chú |
|---|---:|---:|---|
| Số bước chính | 5 bước + rework | 10 bước có guardrails | Nhiều bước hơn nhưng giảm handoff thủ công và tăng kiểm soát |
| Tổng lead time nhóm A | Ước lượng 2–3 ngày | Median <10 phút; P90 <30 phút | Chỉ áp dụng câu hỏi phổ biến đã curated |
| Active handling time Data | Chưa đo | Giảm ≥50% cho ticket nhóm A | Cần trừ maintenance/review/rework |
| Ticket nhóm A chuyển Data | Chưa đo | Giảm ≥50% | Chỉ tính request hoàn thành và không mở lại |
| Result correctness | Chưa có golden set | ≥90% toàn set; 100% KPI tier-critical | So với canonical SQL/result |
| Bước thủ công | 5/5 phụ thuộc Analyst | User clarify/approve; Analyst chỉ case escalated | Không loại bỏ human review |
| Bottleneck chính | Backlog + làm rõ + viết/kiểm SQL | Clarification + human approval | Bottleneck mới có chủ đích |
| Risk mới | Chậm và rework | Sai semantic, lộ dữ liệu, cost cao | Cần deterministic guardrails |

## Bước 5.3 — Problem Statement v0

| Field | Nội dung |
|---|---|
| **Actor** | Sales, Sales Operations và Quản lý cần số liệu bán hàng/tồn kho; Data Analyst tiếp nhận và trả lời yêu cầu. |
| **Workflow** | Requester gửi yêu cầu → Analyst làm rõ → tìm schema/KPI → viết và kiểm tra SQL → xuất kết quả. |
| **Bottleneck** | Backlog và các bước 2–4 khiến requester phải chờ; nhóm ước lượng lead time 2–3 ngày nhưng chưa tách wait time và active time. |
| **Impact** | Nghiệp vụ chậm có dữ liệu để ra quyết định; Data Analyst bị gián đoạn bởi câu hỏi đơn giản/lặp lại. Ticket volume và giờ công chưa được đo. |
| **Success Metric** | Với nhóm A: median <10 phút; ≥90% result correctness trên golden set; giảm ≥50% ticket đơn giản chuyển Data; 0 vi phạm quyền và 0 query ghi dữ liệu. |
| **Boundary** | Một data mart Sales/Inventory, KPI đã duyệt, read-only, không PII, chạy theo quyền user; case mơ hồ/phức tạp/nhạy cảm chuyển Data Analyst. |

Phản biện Problem Statement v0:

| Lỗ hổng | Vì sao quan trọng | Cách sửa |
|---|---|---|
| Baseline 2–3 ngày chưa có log | Có thể là outlier hoặc chủ yếu do backlog | Đo median/P90 và tách wait/active time |
| “Truy vấn phổ biến” chưa định nghĩa | Không xác định được denominator của ticket deflection | Gắn nhãn A/B/C/D trên ticket |
| “Accuracy 90%” mơ hồ | SQL chạy được chưa chắc kết quả đúng | Golden question–SQL–result set |
| Schema RAG thiếu business semantic | Tên bảng/cột không giải thích KPI/grain/join | Semantic model + glossary + verified queries |
| Reviewer chưa rõ | Nếu mọi query chờ Analyst thì khó đạt <10 phút | User duyệt tier thấp; Analyst duyệt case escalated/tier-critical |

---

# Phase 6 — Rule / Workflow / Agent + Decision

## Bước 6.0 — Ma trận độ phù hợp với AI

Bài toán của nhóm nằm ở ô nào?

```text
Độ mơ hồ: trung bình đến cao.
Độ phức tạp: cao.
```

Vì sao?

```text
- Câu hỏi nghiệp vụ có thể thiếu KPI, grain, time range, timezone hoặc cách xử lý hoàn/hủy.
- Workflow cần semantic store, LLM, policy engine, query engine và quyền user.
- Tuy nhiên, đường đi hợp lệ và boundary đã xác định trước.
- AI không cần tự lập kế hoạch mở hoặc tự chọn công cụ tùy ý.
```

## Bước 6.1 — So sánh Rule / Workflow / Agent

| Mức | Phương án cho bài toán nhóm | Khi nào đủ | Rủi ro | Chọn? |
|---|---|---|---|---|
| **No AI / process fix** | Dashboard, data catalog, form yêu cầu bắt buộc KPI/time/filter, SLA và FAQ | Đủ nếu phần lớn câu hỏi đã có dashboard | Không xử lý tốt câu hỏi ad-hoc và cách diễn đạt đa dạng | Baseline bắt buộc |
| **Rule** | Map template cố định sang parameterized SQL đã duyệt | Đủ cho 10–20 câu hỏi phổ biến có metric/filter hữu hạn | Coverage thấp; khó xử lý paraphrase hoặc ambiguity | Dùng cho high-frequency/high-risk query |
| **Workflow** | Clarify → Semantic RAG → LLM sinh SQL → guardrails → user duyệt → execute → feedback/escalate | Phù hợp vì các bước và điểm kiểm soát đã biết | Sai semantic, query tốn kém hoặc lộ dữ liệu nếu policy sai | **Chọn cho pilot** |
| **Agent** | Tự chọn nguồn, lập kế hoạch nhiều query, tự sửa và chạy chuỗi phân tích | Chỉ cần cho phân tích khám phá đa bước linh hoạt | Quyền rộng, khó audit, cost và blast radius lớn | Không chọn |

Mức chọn:

```text
Workflow có LLM Feature + Semantic RAG + deterministic SQL Guardrails.
Không phải autonomous Agent.
```

Vì sao chọn:

```text
- Ngôn ngữ tự nhiên và ambiguity cần AI hỗ trợ làm rõ.
- Semantic retrieval giúp map business meaning sang KPI/schema.
- Đường đi của workflow cố định và có human approval.
- Rule/code vẫn kiểm soát quyền, SQL type, cost và execution.
```

Vì sao không chọn mức đơn giản hơn:

```text
Rule/template vẫn được dùng cho câu hỏi rất phổ biến và guardrails,
nhưng không bao phủ tốt nhiều cách diễn đạt và câu hỏi cần clarification.

Nếu validation cho thấy 70–80% yêu cầu nằm trong dashboard/template,
nhóm phải hạ giải pháp xuống Rule/No AI.
```

Vì sao không chọn Agent:

```text
MVP không cần AI tự lập kế hoạch, tự cấp quyền hoặc tự chạy nhiều query.
Agent làm tăng blast radius trong khi chưa có baseline, golden set và owner vận hành.
```

## Bước 6.2 — Problem Statement v1

| Field | Nội dung |
|---|---|
| **Actor** | Sales/Sales Operations/Quản lý cần tự lấy số liệu bán hàng/tồn kho phổ biến; Data Analyst là owner semantic model và xử lý case escalated. |
| **Workflow** | Hiện tại requester gửi ticket, Analyst làm rõ, tìm schema/KPI, viết/kiểm SQL rồi gửi kết quả. Pilot thay bằng classify → clarify → retrieve semantic/verified query → generate SELECT → guardrails/dry-run → user duyệt → execute theo quyền user → trả kết quả/escalate. |
| **Bottleneck** | Lead time do backlog, vòng làm rõ và mapping ý định nghiệp vụ sang schema/KPI/SQL. Baseline 2–3 ngày là giả thuyết cần ticket log kiểm chứng. |
| **Impact** | Nghiệp vụ chậm ra quyết định và Data team bị gián đoạn bởi truy vấn lặp lại; quy mô sẽ đo bằng ticket volume, lead time và active handling time. |
| **Success Metric** | Trong nhóm A: median <10 phút, P90 <30 phút; ≥90% result correctness; giảm ≥50% ticket đơn giản chuyển Data; 0 DDL/DML, 0 truy cập trái quyền, 100% query dưới cost limit. |
| **Boundary** | Một data mart curated, KPI đã duyệt, SELECT read-only, không PII, thực thi bằng identity của user. Không forecast, KPI mới, query toàn warehouse hoặc tự cấp quyền. |
| **AI intervention point** | Làm rõ câu hỏi, truy hồi semantic context/verified examples, sinh SELECT SQL và giải thích cách hiểu. Policy, quyền, dry-run và cost limit được enforce ngoài LLM. |
| **Mức chọn** | Workflow. Rule/template dùng cho câu hỏi phổ biến và guardrails; không dùng autonomous Agent. |
| **Rủi ro & người thật kiểm tra** | Data Owner duyệt semantic/KPI/golden SQL; user duyệt KPI/filter/SQL; Data Analyst xử lý case mơ hồ/phức tạp; Security/Data Platform owner audit quyền, cost và log. |

Problem Statement một câu:

```text
Sales, Sales Operations và Quản lý hiện phải gửi yêu cầu cho Data Analyst
rồi chờ qua các bước làm rõ, tìm schema/KPI, viết và kiểm tra SQL
để nhận số liệu bán hàng/tồn kho; nhóm giả định lead time hiện là 2–3 ngày.
Nhóm cần kiểm chứng và pilot một workflow self-service có semantic layer,
LLM sinh SELECT SQL, deterministic guardrails và human approval
cho các truy vấn phổ biến đã curated, nhằm đưa median lead time xuống dưới 10 phút,
đạt tối thiểu 90% result correctness trên golden set,
giảm ít nhất 50% ticket đơn giản chuyển Data
và không phát sinh truy cập trái quyền hay query ghi dữ liệu.
```

## Bước 6.3 — Final decision

| Câu hỏi | Yes / Not Yet / No | Ghi chú |
|---|---|---|
| Actor và workflow đã rõ chưa? | Yes | Actor, handoff và current workflow đã xác định |
| Baseline và success metric đã đo được chưa? | Not Yet | 2–3 ngày là ước lượng; cần ticket log |
| Có data/input đủ dùng chưa? | Not Yet | Chưa có curated mart, semantic model và golden set được xác nhận |
| Nếu AI sai, hậu quả có chấp nhận được không? | Not Yet | Chỉ chấp nhận trong sandbox; production cần policy và security test |
| Có người review/owner vận hành không? | Not Yet | Cần chỉ định Data Owner, Data Analyst và Security owner |
| Có cách non-AI đơn giản hơn không? | Yes | Dashboard, form chuẩn, catalog và parameterized SQL |

Decision:

```text
NOT YET cho production.
GO cho offline pilot có scope nhỏ.
```

Lý do:

```text
- Problem class và hướng giải pháp có research support.
- Evidence nội bộ chưa đủ để xác nhận baseline và ticket volume.
- Target dưới 10 phút chỉ hợp lý với nhóm A đã curated.
- Text-to-SQL cần semantic layer, golden set và deterministic guardrails.
- Chưa có bằng chứng accuracy, security và cost trên dữ liệu của nhóm.
```

Nếu Go, pilot nhỏ nhất là:

```text
- 1 domain Sales/Inventory.
- 3–5 curated views.
- 10–20 KPI đã duyệt.
- 30–50 câu hỏi thật đã ẩn danh.
- 30 golden question–SQL–result cases.
- Read-only sandbox hoặc snapshot dữ liệu.
- Không PII và chưa kết nối production ở vòng đầu.
```

Nếu Not Yet, cần validate gì trước:

```text
1. Đo 30–50 ticket và phân loại A/B/C/D.
2. Tách lead time, wait time và active handling time.
3. Chỉ định Data Owner, Data Analyst và Security owner.
4. Chuẩn hóa metric, grain, join, timezone và freshness.
5. Tạo golden set và security test.
6. Chạy offline evaluation trước controlled pilot.
```

Nếu No-Go, nên làm gì thay AI:

```text
- Dashboard và data catalog.
- Form yêu cầu bắt buộc KPI/time/filter.
- Parameterized SQL cho câu hỏi lặp lại.
- SLA và hướng dẫn self-service.
```

### Go/No-Go gates sau pilot

| Gate | Điều kiện Go |
|---|---|
| Correctness | ≥90% toàn golden set; 100% KPI tier-critical |
| Security | 0 truy cập trái quyền; 0 DDL/DML; đầy đủ audit log |
| Cost | 100% query dưới limit; không full scan ngoài allowlist |
| UX | Median <10 phút và P90 <30 phút cho nhóm A |
| Data workload | Giảm ≥50% ticket nhóm A mà không tăng ticket sửa sai |
| Governance | Có owner, versioning semantic model và rollback |

### Rủi ro và kiểm soát

| Rủi ro | Mức độ | Kiểm soát |
|---|---|---|
| SQL đúng cú pháp nhưng sai KPI/grain/join | Cao | Semantic layer, verified queries, golden result tests, hiển thị cách hiểu |
| Lộ dữ liệu ngoài quyền | Rất cao | Execute as user, row/column security, deny-by-default, audit |
| DDL/DML hoặc multi-statement | Rất cao | Read-only credential, AST allowlist SELECT, database enforcement |
| Query quá tốn chi phí | Cao | Dry-run/EXPLAIN, bytes/cost/time limit, partition requirement |
| Prompt injection | Cao | Structured retrieval, allowlist tool/action, policy ngoài LLM |
| Schema/KPI thay đổi | Cao | Version semantic model, regression suite, owner approval |
| User hiểu sai filter | Trung bình–cao | Hiển thị KPI, filter, timeframe, freshness, SQL và warning |
| Mọi query vẫn chờ Analyst | Trung bình | Tiering: user duyệt low-risk; Analyst chỉ case escalated/tier-critical |

---

# Tài liệu và file kèm theo

| File | Nội dung |
|---|---|
| `current-workflow.puml` | PlantUML current workflow |
| `future-workflow.puml` | PlantUML future workflow |
| `mvp-definition-and-architecture.md` | Phạm vi MVP, kiến trúc, cách hoạt động và metric chi tiết |

## Research notes

| Nguồn | Claim sử dụng | Hạn chế |
|---|---|---|
| [Google Analyza](https://research.google/pubs/analyza-exploring-data-with-conversation/) | Natural-language access cho revenue/inventory database của sales force | Không phải baseline của tổ chức nhóm |
| [LinkedIn Text-to-SQL](https://arxiv.org/abs/2507.14372) | Enterprise chatbot có hơn 300 weekly users; expert review ghi 53% response đúng/gần đúng | Kết quả nội bộ LinkedIn không dự đoán accuracy của nhóm |
| [Snowflake Cortex Analyst](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst) | Semantic model cung cấp business/metric context và RBAC | Tài liệu sản phẩm |
| [Snowflake Verified Query Repository](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/verified-query-repository) | Verified question–SQL giúp tăng trust | Cần maintenance khi schema/KPI đổi |
| [Databricks Genie](https://docs.databricks.com/aws/en/genie/) | NL analytics cần trusted data, metric và business rules | Không tự giải quyết data quality |
| [BigQuery dry run](https://docs.cloud.google.com/bigquery/docs/running-queries) | Validate SQL và estimate bytes/cost | Không kiểm semantic correctness |
| [BigQuery row-level security](https://docs.cloud.google.com/bigquery/docs/row-level-security-intro) | Filter dữ liệu theo user/group | Policy cần cấu hình và audit đúng |
| [Amazon Athena workgroups](https://docs.aws.amazon.com/athena/latest/ug/workgroups-manage-queries-control-costs.html) | Kiểm soát access, workload và query cost | Không thay semantic validation |

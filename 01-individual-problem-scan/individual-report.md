# Individual Problem Scan — Day 02 Lab

**Họ và tên:** Trần Đình Đăng  
**Mã học viên:** 2A202601998

---

## Phần 1: Scan rộng (5+ problems)

Tôi scan problems từ trải nghiệm thật trong bối cảnh học tập và làm việc nhóm.

### Bảng scan

| # | Lăng kính | Problem quan sát được | Ai chịu ảnh hưởng? | Dấu hiệu thật |
|---|---|---|---|---|
| 1 | Lặp lại + Tốn thời gian | Thông báo nằm rải rác trên nhiều nền tảng (Gmail, Outlook, Discord) dẫn đến việc bị trôi tin quan trọng | Sinh viên, nhân viên làm việc với nhiều kênh | Mỗi ngày phải kiểm tra 3-4 nền tảng, thường bỏ lỡ tin nhắn quan trọng từ giảng viên hoặc nhóm dự án |
| 2 | Lặp lại | Phân công công việc nhóm không rõ ràng, ai cũng hỏi lại ai làm gì | Thành viên trong nhóm dự án | Mỗi tuần phải hỏi lại 2-3 lần về phân công, deadline, người phụ trách |
| 3 | Tốn thời gian + Pain từ người khác | Review code/bài tập của nhóm mà không có tiêu chuẩn rõ ràng, phải đọc lại nhiều lần | Reviewer, trưởng nhóm, giảng viên | Review mất 30-45 phút/bài vì phải hiểu context từ đầu, thiếu rubric hoặc checklist |
| 4 | Pain từ người khác | Báo cáo lỗi (bug report) từ người dùng cuối thường viết bằng ngôn ngữ bức xúc, lộn xộn và thiếu thông tin kỹ thuật | Developer, QA, người tiếp nhận bug | Phải hỏi lại 2-3 lần để lấy thêm thông tin, mất 15-30 phút/bug để làm rõ |
| 5 | Tốn thời gian | Tìm kiếm tài liệu học tập phù hợp từ nhiều nguồn (Google, Discord,学长学姐) tốn thời gian | Sinh viên, người học tập | Mất 20-30 phút để tìm tài liệu đúng, nhiều khi tìm được rồi nhưng không biết đáng tin cậy không |
| 6 | Lặp lại + AI có thể tốt hơn | Tổng hợp tiến độ dự án từ nhiều nguồn (Discord, email, file riêng) mất thời gian | Trưởng nhóm, quản lý dự án | Mỗi tuần mất 30-45 phút để собрать все updates, có khi còn thiếu sót |

---

## Phần 2: Chọn Top 3

### Bảng chọn top 3

| Rank | Problem | Vì sao chọn | Điều còn chưa chắc |
|---|---|---|---|
| 1 | Thông báo rải rác trên nhiều nền tảng | Workflow rõ ràng, xảy ra hàng ngày, có thể đo thời gian, bottleneck cụ thể | Liệu tổng hợp vào một chỗ có thực sự giải quyết vấn đề? |
| 2 | Phân công công việc nhóm không rõ ràng | Ảnh hưởng đến cả nhóm, có thể vẽ workflow, có pain thật được phản ánh | Công cụ phân công đã có (Notion, Trello) có đủ không? |
| 3 | Review code/bài tập thiếu tiêu chuẩn | Mỗi reviewer có cách khác nhau, tốn thời gian cho cả người review và người được review | AI có thể đưa ra feedback có chất lượng không? |

### Lý do chọn Top 1 để pitch với nhóm

**Problem:** Thông báo rải rác trên nhiều nền tảng (Gmail, Outlook, Discord) dẫn đến việc bị trôi tin quan trọng

**Vì sao:**
- Xảy ra hàng ngày, ai cũng gặp
- Workflow hiện tại có thể vẽ được: kiểm tra Gmail → kiểm tra Outlook → kiểm tra Discord → có thể bỏ sót
- Bottleneck rõ: phải chuyển qua lại giữa nhiều nền tảng, không có cách tổng hợp
- Impact có thể đo được: số tin bị bỏ sót/tuần, thời gian kiểm tra/tuần
- Có thể so sánh: Rule (checklist), Workflow (tổng hợp), Agent (tự động sắp xếp)

**Điều còn chưa chắc:**
- Người dùng có sẵn lòng thay đổi app không?
- AI tổng hợp có chính xác và đúng context không?

---

## Phần 3: Problem Card #1 — Thông báo rải rác trên nhiều nền tảng

### Problem Card (dạng ngắn gọn để pitch)

```
┌──────────────────────────────────────────────┐
│ PROBLEM CARD #1                              │
│                                              │
│ Problem: Thông báo rải rác trên Gmail,       │
│ Outlook, Discord khiến tin quan trọng bị     │
│ bỏ sót                                       │
│                                              │
│ Ai chịu ảnh hưởng? Sinh viên, nhân viên      │
│ làm việc với nhiều kênh                     │
│                                              │
│ Workflow hiện tại:                           │
│ 1. Kiểm tra Gmail                            │
│ → 2. Kiểm tra Outlook                        │
│ → 3. Kiểm tra Discord                        │
│ → 4. Ưu tiên và xử lý                       │
│                                              │
│ Bước nghẽn nhất: Bước 1-3 (15-20 phút/lần)  │
│                                              │
│ Đo thành công: Giảm từ 15-20 phút xuống     │
│ dưới 5 phút kiểm tra tất cả                 │
│                                              │
│ Quick gut: □ No AI □ Rule ■ Workflow □ Agent │
└──────────────────────────────────────────────┘
```

### Problem Card (dạng chi tiết)

**Problem 1 câu:**  
Mỗi ngày tôi phải kiểm tra Gmail, Outlook và Discord để không bỏ lỡ tin nhắn quan trọng, nhưng vẫn thường bị bỏ sót và mất thời gian chuyển qua lại giữa các nền tảng.

**Actor:**  
Sinh viên hoặc nhân viên làm việc cần theo dõi thông tin từ nhiều kênh (email công việc, email cá nhân, tin nhắn nhóm).

**Thời điểm / bối cảnh:**  
Hàng ngày, đặc biệt là buổi sáng khi bắt đầu làm việc và sau các buổi họp/học.

**Current workflow (6 bước):**

1. Mở Gmail, kiểm tra email mới
2. Chuyển sang Outlook, kiểm tra email mới
3. Chuyển sang Discord, kiểm tra các kênh quan trọng
4. Quay lại Gmail/Outlook để reply hoặc action
5. Đánh dấu đã đọc hoặc bookmark để follow up
6. Tiếp tục công việc

**Bottleneck:**  
Bước 1-3: Phải chuyển qua lại giữa 3 nền tảng, mất 15-20 phút mỗi lần kiểm tra đầy đủ. Không có cách tổng hợp hoặc ưu tiên tự động.

**Impact:**  
- Thời gian: 15-20 phút/lần kiểm tra × 2-3 lần/ngày = 30-60 phút/ngày
- Stress: Phải nhớ kiểm tra kênh nào, sợ bỏ sót
- Hậu quả: Tin quan trọng bị bỏ sót dẫn đến deadline miss, hiểu nhầm

**Success metric:**  
- Giảm thời gian kiểm tra từ 15-20 phút xuống dưới 5 phút
- Không tăng số tin bị bỏ sót
- User satisfaction score ≥ 4/5

**Non-AI alternative:**  
- Dùng một email chính duy nhất để forward tất cả
- Checklist kiểm tra từng kênh vào giờ cố định
- Dùng app tổng hợp thủ công (IFTTT, Zapier) cho notification

**AI hypothesis:**  
AI có thể tổng hợp notification từ nhiều nguồn, ưu tiên theo keywords/người gửi quan trọng, và gợi ý action. User vẫn kiểm tra và approve trước khi action.

**Quick gut:**  
Workflow

---

## Phần 4: Draft Workflow cho Top 3

### Problem Card #1 — Draft Current vs Future Workflow

**Current State:**

```
CURRENT STATE — 15-20 phút/lần kiểm tra

[1. Mở Gmail: 3']
→ [2. Kiểm tra inbox: 5']
→ [3. Chuyển Outlook: 1']
→ [4. Kiểm tra inbox: 4']
→ [5. Chuyển Discord: 1']
→ [6. Kiểm tra kênh: 5']  <-- bottleneck: phải chuyển qua lại
→ [7. Note và action: 5']

Bottleneck: 3 lần chuyển app + 10 phút đọc nội dung trên 3 nền tảng
```

**Future State:**

```
FUTURE STATE — 5 phút/lần kiểm tra

[1. Mở app tổng hợp: 1']
→ [2. AI đã sắp xếp + ưu tiên: 1']  <-- AI hỗ trợ
→ [3. Đọc nhanh và ưu tiên: 2']
→ [4. Action/reply: 1']

Fallback: AI sai priority → user tự sắp xếp lại
```

### Problem Card #2 — Phân công công việc nhóm (tóm tắt)

| Thành phần | Nội dung |
|---|---|
| **Problem** | Phân công công việc nhóm không rõ ràng, ai cũng hỏi lại ai làm gì |
| **Actor** | Thành viên trong nhóm dự án |
| **Bottleneck** | Không biết ai làm gì, phải hỏi lại 2-3 lần/tuần |
| **Metric** | Giảm từ 5+ lần hỏi/tuần xuống dưới 1 lần |
| **Quick gut** | Rule + Workflow |

### Problem Card #3 — Review code/bài tập (tóm tắt)

| Thành phần | Nội dung |
|---|---|
| **Problem** | Review code/bài tập của nhóm mà không có tiêu chuẩn rõ ràng, phải đọc lại nhiều lần |
| **Actor** | Reviewer, trưởng nhóm, giảng viên |
| **Bottleneck** | Mỗi reviewer có cách khác nhau, thiếu checklist/rubric |
| **Metric** | Giảm thời gian review từ 45 phút xuống 20 phút/bài |
| **Quick gut** | Rule + Workflow |

---

## Phần 5: Pitch với nhóm

### Problem tôi đã pitch

**Problem:** Thông báo rải rác trên nhiều nền tảng (Gmail, Outlook, Discord) dẫn đến việc bị trôi tin quan trọng

**Nội dung pitch:**
- Ai gặp vấn đề: Sinh viên, nhân viên làm việc với nhiều kênh
- Workflow hiện tại: Kiểm tra Gmail → Outlook → Discord → Action
- Bottleneck: Phải chuyển qua lại giữa 3 nền tảng, mất 15-20 phút/lần
- Draft workflow tương lai: App tổng hợp + AI ưu tiên, giảm còn 5 phút
- Impact: Tiết kiệm 25-55 phút/ngày, giảm stress

### Kết quả pitch

Nhóm đã tiếp nhận và thảo luận. Sau đó nhóm đã chọn một bài toán khác (Self-service analytics) nhưng cách pitch giúp tôi hiểu rõ hơn về cách trình bày một problem statement rõ ràng.

---

## Phần 6: Challenge với các bài khác

Trong quá trình nhóm thảo luận, tôi đã đặt câu hỏi challenge cho các bài của bạn khác:

1. **Về tính khả thi:** "Bài toán này có thực sự làm được trong thời gian lab không? Scope có quá rộng không?"

2. **Về vấn đề cụ thể:** "Điểm nghẽn cụ thể nằm ở bước nào? Đã đo được thời gian chưa?"

3. **Về tối ưu hóa:** "Chọn công việc này thì tối ưu được gì? Đo bằng metric nào?"

4. **Về phương án thay thế:** "Ngoài AI ra, có phương pháp nào khác tốt hơn không? Ví dụ như rule, workflow, hay process fix?"

Những câu hỏi này giúp nhóm xem xét kỹ hơn từng candidate trước khi hội tụ về một bài.

---

## Phần 7: Bảng tự kiểm

- [x] Scan ít nhất 5 problems từ trải nghiệm thật
- [x] Top 3 Problem Cards đủ rõ để pitch với nhóm
- [x] Draft workflow trước/sau cho top 3
- [x] Pitch problem với nhóm
- [x] Challenge bài của bạn khác bằng câu hỏi đúng trọng tâm

---

*Individual Problem Scan — Trần Đình Đăng, 2A202601998*

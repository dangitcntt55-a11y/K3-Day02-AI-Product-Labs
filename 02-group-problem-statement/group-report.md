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

> Ghi chú: nhóm đã tổng hợp đủ 12 candidate và chọn đề tài Text-to-SQL. Baseline “chờ 2–3 ngày/yêu cầu” hiện là ước lượng từ Quick Problem Card; chưa có interview, survey hoặc ticket log nội bộ. Báo cáo dùng research bên ngoài để kiểm chứng problem class/solution pattern, đồng thời giữ các số liệu nội bộ chưa đo ở trạng thái giả thuyết.

---

# Phase 3 — Group Convergence: từ candidates về 1

## Bước 3.1 — Trình bày top 3

Nhóm đã tổng hợp 12 candidate problems từ các thành viên:

| # | Người đưa ra | Candidate problem | Người gặp vấn đề | Điểm nghẽn | Cảm nhận nhanh |
|---:|---|---|---|---|---|
| 1 | Dương Văn Vũ| Nhân viên nghiệp vụ phải chờ vài ngày để nhận số liệu bán hàng/tồn kho từ đội Data | Sales, Sales Operations, Quản lý kinh doanh và Data Analyst | Làm rõ yêu cầu → tìm schema/KPI → viết và kiểm tra SQL → trả kết quả | Workflow / LLM Feature + Semantic RAG + SQL Guardrails |
| 2 | Cao Nhật Minh | Người nhận cuộc gọi/tin nhắn đáng ngờ khó kiểm tra nhanh danh tính và dấu hiệu lừa đảo trước khi cung cấp thông tin hoặc chuyển tiền | Người dùng điện thoại/Internet tại Việt Nam, ưu tiên người lớn tuổi hoặc người ít kỹ năng số | Bước 2–4: tự đánh giá, tìm thông tin và xác minh nhưng không có checklist thống nhất; có thể tiếp tục tương tác với chính nguồn giả mạo | Workflow — rule/checklist là lớp chính; AI giải thích dấu hiệu; người dùng xác minh qua kênh chính thức |
| 3 | Cao Nhật Minh | Người mua thực phẩm không nhìn thấy đầy đủ món đang có và hạn dùng nên mua trùng hoặc phát hiện quá muộn, dẫn đến phải bỏ đi | Người chịu trách nhiệm mua và chuẩn bị thực phẩm cho hộ gia đình | Bước 3–4: thông tin món đang có và thời điểm nên dùng không xuất hiện đúng lúc lập danh sách mua hoặc chọn bữa | Workflow — khay “dùng trước” và reminder theo rule; AI chỉ gợi ý cách sử dụng nguyên liệu |
| 4 | Cao Nhật Minh | Người dùng thuốc dài hạn có thể quên một lần dùng thuốc hoặc không nhớ mình đã dùng chưa, trong khi người thân thiếu thông tin để nhắc đúng lúc | Người trưởng thành dùng thuốc dài hạn theo đơn và người thân hỗ trợ | Bước 2–4: nhắc giờ không gắn với xác nhận “đã dùng/chưa dùng”, và dữ liệu không được lưu thành lịch sử đơn giản | Rule — lịch nhắc và xác nhận là logic xác định; AI không cần thiết cho lõi, chỉ hỗ trợ nhập liệu và phải có người kiểm tra |
| 5 | Nguyễn Nam Anh | BA Intern mất 4–6 tiếng để viết chi tiết Use Case và tài liệu URD/SRS cho một tính năng do hay “bí ý tưởng” và bỏ sót các trường hợp ngoại lệ (Edge Cases) | BA Intern, PO mentor | Mất 4–6 tiếng/tính năng do bí ý tưởng; dễ bỏ sót các luồng lỗi và Edge Cases | Workflow — AI gợi ý luồng lỗi; BA review và chốt |
| 6 |Nguyễn Nam Anh | BA Intern nộp báo cáo phân tích thiếu logic thực tế, khiến PO mentor phải tốn nhiều thời gian review và hướng dẫn lại từ đầu | BA Intern | Mất 2–3 tiếng/tuần để di chuột, kéo thả thủ công lại khung và mũi tên trên công cụ vẽ | Rule + Workflow — chuyển sang vẽ bằng code Mermaid và dùng AI sinh code |
| 7 |Nguyễn Nam Anh | Báo cáo/tài liệu phân tích thiếu logic thực tế, khiến PO mentor tốn thời gian review và trả bài | PO mentor, BA Intern | Mất 2–3 ngày chờ review; bị PO yêu cầu rework từ đầu do tài liệu thiếu context hệ thống | Workflow — dùng AI làm Sparring Partner để phản biện trong bước Self-analyzing |
| 8 | Trần Anh Thư | Onboarding nhân viên mới | Nhân viên mới, HR/quản lý trực tiếp | Câu hỏi lặp lại nhiều lần vì tài liệu không cá nhân hóa theo vị trí/phòng ban | Workflow rõ, nhưng cần kiểm chứng thêm |
| 9 | Nguyễn Đức Tín | Khi bắt đầu một bài lab, sinh viên phải đọc và đối chiếu nhiều file hướng dẫn để tự tạo danh sách việc cần làm, mất khoảng 25–40 phút và vẫn có thể bỏ sót yêu cầu nộp bài | Sinh viên thực hiện bài lab | Thông tin và yêu cầu bị phân tán trong nhiều file, chưa có checklist tổng hợp rõ ràng | Vấn đề xảy ra ngay đầu quy trình, gây tốn thời gian, tăng áp lực và có nguy cơ làm hoặc nộp bài thiếu yêu cầu; phù hợp Workflow trích xuất yêu cầu + sinh viên xác nhận checklist |
| 10 | Chu Thành Dũng | Tự động trích xuất nội dung slide để tạo Flashcards phục vụ tự học và ôn tập | Sinh viên; đội ngũ nội dung | Khó tổng hợp nhanh kiến thức từ slide để ôn trước các bài kiểm tra trắc nghiệm hằng tuần | Workflow — hữu ích cho sinh viên vì slide thường có cấu trúc tương đối rõ; rủi ro là hình ảnh, sơ đồ và công thức toán học phức tạp có thể bị mất hoặc diễn giải sai |
| 11 | Dương Mạnh Phong | Tổng hợp notes rải rác để ôn tập hoặc làm bài | Bản thân — học viên cần ôn tập trước bài kiểm tra hoặc bài lab lớn | Phải đối chiếu ý trùng và ý thiếu giữa nhiều nguồn như slide, worksheet và ghi chép tay | Workflow rõ, lặp lại và đo được thời gian; dễ so sánh Rule/Workflow/Agent, nhưng tiêu chí “bản tổng hợp đủ tốt” còn khó định nghĩa chính xác |
| 12 | Cao Nam Cường | Bàn giao ca trực Điều dưỡng | Điều dưỡng khoa nội trú, phụ trách khoảng 15–20 bệnh nhân/ca | Gõ lại diễn biến và chỉ số từ sổ tay vào HIS, tốn khoảng 45 phút/ca do ghi chép rải rác, chữ viết tắt và dữ liệu không cấu trúc | Workflow — AI hỗ trợ cấu trúc bản nháp, Điều dưỡng bắt buộc kiểm tra trước khi ghi vào HIS; tiềm năng giảm burnout, tăng ca không lương và sai sót do gõ nhầm thông số sinh hiệu |
| 13 | Trần Đình Đăng (2A202601274) | Thông báo rải rác trên Gmail, Outlook, Discord dẫn đến bỏ sót tin quan trọng | Sinh viên, nhân viên làm việc với nhiều kênh | Phải chuyển qua lại giữa 3 nền tảng, mất 15-20 phút mỗi lần kiểm tra | Workflow |

## Bước 3.2 — Gom trùng / cluster

| Cluster | Candidates included | Pattern chung | Ghi chú |
|---|---|---|---|
| A — Truy cập dữ liệu self-service | #1 — Yêu cầu số liệu Sales/Inventory | Business User cần dữ liệu nhưng phải phụ thuộc Data Analyst để chuyển câu hỏi thành SQL | **PASS — không trùng**; chỉ candidate #1 giải bài toán truy vấn dữ liệu doanh nghiệp |
| B — Hỗ trợ quyết định/công việc cá nhân | #2 — Kiểm tra lừa đảo; #3 — Quản lý thực phẩm; #4 — Lịch dùng thuốc | Hỗ trợ người dùng xử lý một tác vụ đời sống có rủi ro bỏ sót | **PASS — không trùng**; actor, workflow và outcome của ba candidate khác nhau |
| C — Chuẩn hóa tài liệu và quy trình | #5 — Viết Use Case/URD/SRS; #6 — Vẽ sơ đồ bằng Mermaid; #7 — Phản biện tài liệu BA; #8 — Onboarding; #9 — Checklist bài lab | Chuyển thông tin rời rạc hoặc thiếu cấu trúc thành tài liệu/checklist dễ kiểm tra | #5, #8 và #9 **PASS — không trùng**. #6 và #7 cần làm rõ: mô tả candidate #6 nói “thiếu logic” nhưng bottleneck lại là thao tác vẽ; nếu #6 là “vẽ sơ đồ thủ công” thì hai candidate không trùng |
| D — Tổng hợp nội dung học tập | #10 — Slide thành Flashcards; #11 — Tổng hợp notes rải rác | Biến nhiều nội dung học thành tài liệu ôn tập | **PASS — không trùng**; #10 tạo Flashcards từ slide, #11 tạo bản tổng hợp từ nhiều nguồn |
| E — Bàn giao y khoa | #12 — Bàn giao ca trực Điều dưỡng | Cấu trúc ghi chép lâm sàng rời rạc trước khi nhập HIS | **PASS — không trùng**; domain, actor và rủi ro y khoa riêng biệt |

Kết luận gom trùng:

```text
Không có hai candidate nào chắc chắn trùng hoàn toàn.

Candidate #6 và #7 có cách viết ban đầu gần nhau,
nhưng bottleneck/solution khác nhau:
- #6: thao tác vẽ sơ đồ thủ công → Mermaid + AI sinh code;
- #7: tài liệu thiếu logic/context → AI Sparring Partner.

Nhóm cần sửa lại tên candidate #6 cho đúng bottleneck,
sau đó có thể PASS hai candidate này là hai bài toán riêng.
```

## Bước 3.3 — Shortlist

| Candidate | Vì sao vào shortlist | Rủi ro / điều chưa rõ |
|---|---|---|
| Self-service Sales/Inventory query | Actor và workflow rõ; có handoff giữa nghiệp vụ và Data; có thể đo lead time, accuracy và ticket deflection; có thể pilot trên một data mart read-only | Baseline 2–3 ngày chưa có log; chưa biết tỷ lệ ticket đơn giản; accuracy 90% chưa được kiểm chứng |
| Kiểm tra cuộc gọi/tin nhắn có dấu hiệu lừa đảo | Có actor rõ và bằng chứng tại Việt Nam; workflow kiểm tra hiện tại vẽ được; hậu quả mất tiền/lộ dữ liệu lớn; có thể pilot an toàn bằng các mẫu cảnh báo công khai | Chưa có baseline về thời gian xác minh và tỷ lệ quyết định sai; nguy cơ false negative tạo cảm giác an toàn giả; cần giới hạn AI chỉ giải thích dấu hiệu và bắt buộc xác minh qua kênh chính thức |
| Tổng hợp checklist yêu cầu bài lab | Actor là sinh viên và bottleneck nằm ngay đầu workflow; có baseline sơ bộ 25–40 phút; dễ pilot bằng chính repository bài tập; có thể đo thời gian và số yêu cầu bị bỏ sót | Chưa có log để xác nhận baseline; có thể chỉ cần checklist chuẩn hoặc script theo rule; tiêu chí với yêu cầu định tính vẫn cần người học xác nhận |

## Bước 3.4 — Score để đồng thuận

| Candidate | Actor rõ | Workflow rõ | Pain có evidence | Impact đo được | Làm trong lab | So sánh R/W/A được | Nhóm hiểu domain | Tổng |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| **Self-service Sales/Inventory query** | **5** | **5** | **3** | **5** | **4** | **5** | **5** | **32/35** |
| Kiểm tra cuộc gọi/tin nhắn có dấu hiệu lừa đảo | 5 | 4 | 5 | 4 | 4 | 4 | 3 | 29/35 |
| Tổng hợp checklist yêu cầu bài lab | 5 | 5 | 3 | 4 | 5 | 4 | 5 | 31/35 |

Giải thích điểm:

| Candidate | Lý do chấm điểm |
|---|---|
| **Self-service Sales/Inventory query — 32/35** | Actor và handoff giữa Business User/Data Analyst rất rõ; current workflow 5 bước và future workflow vẽ được; metric lead time, accuracy và ticket deflection đo được; so sánh No AI/Rule/Workflow/Agent rõ; nhóm hiểu domain. Trừ điểm vì baseline 2–3 ngày chưa được xác nhận bằng ticket log và pilot cần dữ liệu/schema phù hợp. |
| Kiểm tra cuộc gọi/tin nhắn lừa đảo — 29/35 | Có evidence bên ngoài mạnh và impact lớn, nhưng outcome “phân loại đúng/an toàn” có rủi ro false negative; domain an toàn thông tin cần chuyên gia; khó kiểm chứng bằng người dùng thật trong lab mà vẫn bảo đảm an toàn. |
| Tổng hợp checklist yêu cầu bài lab — 31/35 | Actor, workflow và khả năng làm trong lab rất rõ; nhóm có thể dùng chính repository để pilot. Tuy nhiên impact nhỏ hơn đề tài #1, baseline 25–40 phút chưa có log và Rule/checklist chuẩn có thể đã giải phần lớn problem mà không cần AI. |

Kết luận score:

```text
Đề tài #1 đạt 32/35 và có điểm cao nhất.

Khoảng cách với đề tài checklist bài lab chỉ là 1 điểm,
vì checklist dễ làm trong lab hơn.
Đề tài #1 thắng nhờ impact kinh doanh lớn hơn,
metric đa chiều hơn và thể hiện rõ nhất bài học Rule / Workflow / Agent.
```

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

- **Kiểm tra cuộc gọi/tin nhắn lừa đảo — 29/35:** có evidence và impact lớn, nhưng false negative có thể khiến người dùng tin nhầm nội dung là an toàn. Domain an toàn thông tin cần dữ liệu cập nhật và chuyên gia kiểm chứng; khó pilot với người dùng thật trong lab mà không tạo thêm rủi ro.
- **Tổng hợp checklist yêu cầu bài lab — 31/35:** rất dễ pilot và workflow rõ, nhưng impact nhỏ hơn đề tài #1. Checklist chuẩn hoặc script theo rule có thể giải phần lớn problem; các tiêu chí định tính vẫn cần sinh viên tự đọc và xác nhận.
- **Quản lý thực phẩm và lịch dùng thuốc:** đều có actor rõ nhưng cần pilot theo dõi hành vi tối thiểu 14 ngày. Lịch dùng thuốc còn thuộc domain y tế và lõi reminder có thể giải bằng Rule mà không cần AI.
- **Các candidate BA, onboarding và tài liệu:** có pain thực tế nhưng metric chất lượng như “đủ logic”, “đủ context” hoặc “đủ tốt” còn chủ quan. Candidate #6 cũng cần sửa lại mô tả vì problem nói tài liệu thiếu logic nhưng bottleneck lại là thao tác vẽ sơ đồ.
- **Flashcards và tổng hợp notes:** phù hợp Workflow nhưng chất lượng đầu ra khó thống nhất, đặc biệt với hình ảnh, sơ đồ và công thức. Impact chủ yếu ở phạm vi học tập cá nhân và đã có nhiều công cụ tương tự.
- **Bàn giao ca trực Điều dưỡng:** baseline 45 phút và impact tiềm năng cao, nhưng dữ liệu y tế nhạy cảm, sai số có thể ảnh hưởng an toàn bệnh nhân và tích hợp HIS phức tạp; không phù hợp để deep-dive/pilot nhanh trong lab.

Kết luận:

```text
Nhóm không kết luận các candidate còn lại là problem kém.
Nhóm chỉ chưa chọn chúng cho deep-dive lần này vì:
- impact hoặc scope nhỏ hơn,
- metric khó xác nhận hơn,
- Rule/process fix có thể đã đủ,
- hoặc rủi ro domain vượt khả năng kiểm soát trong lab.
```

Nếu có disagreement, nhóm xử lý thế nào:

```text
Nhóm dùng cùng 7 tiêu chí để chấm cả ba candidate shortlist,
sau đó yêu cầu người chấm giải thích những tiêu chí lệch từ 2 điểm trở lên.

Kết quả:
- Text-to-SQL: 32/35;
- Checklist bài lab: 31/35;
- Kiểm tra lừa đảo: 29/35.

Text-to-SQL được chọn vì có tổng điểm cao nhất,
impact kinh doanh lớn và thể hiện rõ nhất Rule / Workflow / Agent.

Điểm chưa đồng thuận về baseline 2–3 ngày không bị bỏ qua;
nhóm chuyển nó thành giả thuyết cần kiểm chứng bằng ticket log,
thay vì dùng làm lý do loại đề tài.
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
| Quick Problem Card của nhóm | 1 candidate | Workflow 5 bước và actor/handoff cụ thể; lead time được ước lượng 2–3 ngày | Chưa có log hoặc người được phỏng vấn | Xem 2–3 ngày là giả thuyết baseline, không phải kết quả đo |
| Google Analyza case | 2 hệ thống thực tế | Một hệ thống cho sales force không nhất thiết biết code truy cập revenue/inventory database bằng hội thoại | Không công bố baseline 2–3 ngày hoặc target dưới 10 phút của nhóm | Xác nhận problem class, không dùng làm baseline nội bộ |
| LinkedIn enterprise Text-to-SQL | Hơn 300 weekly users | Có nhu cầu self-service data discovery/query writing/debugging trong doanh nghiệp | Expert review chỉ ghi 53% response đúng hoặc gần đúng trên benchmark nội bộ | Giữ human review, semantic context và golden test; không mặc định accuracy 90% |
| Interview nghiệp vụ | 0 — chưa thực hiện | Chưa có kết quả nội bộ | Chưa có kết quả nội bộ | Phỏng vấn tối thiểu 1 người trong lab, mở rộng 3 người sau lab |
| Interview Data Analyst | 0 — chưa thực hiện | Chưa có kết quả nội bộ | Chưa có kết quả nội bộ | Phỏng vấn tối thiểu 1 người trong lab, mở rộng 2 người sau lab |
| Survey / poll | 0 — chưa thực hiện | Chưa có kết quả nội bộ | Chưa có kết quả nội bộ | Khảo sát 5–10 người nếu tiếp cận được đúng actor |
| Ticket/query log | 0 — chưa trích xuất | Chưa có baseline nội bộ | Chưa biết tỷ lệ A/B/C/D | Trong lab xem 5–10 mẫu; sau lab mở rộng 30–50 mẫu |

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
| Interview nghiệp vụ | 0 — cần thực hiện | Cần đo từ lần gần nhất | Không áp dụng | Cần hỏi: chờ, làm rõ hay kiểm kết quả | Có thể problem thật là không biết dùng dashboard | Sửa actor/scope hoặc chuyển sang onboarding/search nếu tín hiệu phản bác mạnh |
| Interview Data Analyst | 0 — cần thực hiện | Cần tách wait time | Cần đo phút/ticket | Cần hỏi: clarify, schema/KPI, SQL hay validation | Có thể phần lớn request thuộc nhóm C/D | Chỉ giữ self-service cho nhóm A/B |
| Survey / poll | 0 — tùy điều kiện | Chọn bucket `<1h` đến `>3 ngày` | Không đo | Bước được chọn nhiều nhất | Có thể pain score dưới 3/5 | Hạ mức ưu tiên hoặc thu hẹp actor |
| Ticket/query log | 0 — cần 5–10 mẫu trong lab | Tính từ timestamp mở/đóng | Tính từ work log nếu có | Đếm vòng hỏi lại và thời gian từng trạng thái | Có thể đa số đã có dashboard hoặc không lặp lại | Cập nhật tỷ lệ A/B/C/D và denominator metric |

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

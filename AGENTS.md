# Workspace instructions

- Chỉ hỗ trợ web application chạy bằng Docker Compose trên Docker Desktop for Windows.
- Mọi project mặc định là đồ án tốt nghiệp MVP; ưu tiên chức năng cốt lõi, tài liệu, test, Docker và khả năng bảo vệ.
- Không mặc định xây dựng production system quy mô lớn, multi-tenant, high availability, mobile, OCR, AI, chữ ký số hoặc tích hợp liên thông.
- Không implement khi outline chưa được người quản lý xác nhận trong chat với Codex.
- Không dùng Git hoặc CI/CD làm điều kiện vận hành framework.
- Mỗi project độc lập; không import source code từ project khác.
- Thư viện dùng chung phải được cài/build trong Docker của từng project.
- Database chạy trong Docker; runtime data bind mount trong project để recreate container không mất dữ liệu.
- Release ZIP không chứa database/runtime-data; seed và dữ liệu demo phải được đóng gói.
- Project trùng mức đỏ bị chặn tuyệt đối cho đến khi thay đổi phạm vi.
- Tài liệu mặc định bằng tiếng Việt; thuật ngữ chuyên ngành và tên code/API có thể dùng English.
- Khi đổi scope, cập nhật outline, requirements, timeline, test plan, tài liệu và approval state.


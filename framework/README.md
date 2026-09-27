# Framework Core

Tài nguyên dùng chung, không thuộc source của sinh viên.

## Scope mặc định

Mọi project được quản lý ở mức đồ án tốt nghiệp MVP: đủ phân tích, thiết kế, triển khai, kiểm thử, chạy Docker và bảo vệ. Không mặc định xây dựng production system quy mô lớn. Chi tiết tại framework/references/scope-policy.md.

## Quy tắc project

- Project nằm trực tiếp dưới projects/student-folder.
- Folder có mã và tên sinh viên, ví dụ SV001_NguyenVanA.
- ZIP dạng student-folder_slug-title_v1.0.0.zip.
- release-manifest.yaml và release-verification.md là artifact nội bộ, không đưa vào ZIP cuối.

Mỗi project phải có database/design/schema.dbml, Mermaid và ảnh ERD, migrations, seed và runtime-data.


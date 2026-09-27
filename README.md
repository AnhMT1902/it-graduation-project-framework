# IT Graduation Project Framework

Framework quản lý vòng đời các đồ án tốt nghiệp dạng web application.

## Mục tiêu

- Nhận input tự do và chuẩn hóa thành hồ sơ project.
- Tạo đề cương trước khi viết code và chờ người quản lý xác nhận trong chat với Codex.
- Phát hiện project trùng giữa các sinh viên trước khi duyệt.
- Giữ mỗi project độc lập, chạy bằng Docker Desktop trên Windows.
- Bắt buộc có thiết kế database, migration, dữ liệu demo và clean-room verification.
- Sinh tài liệu theo nhu cầu từng project, gồm luận văn và slide khi input yêu cầu.

## Cấu trúc

.codex/skills là skill điều phối; framework là schema, template, registry và script; projects chứa từng project; releases chứa ZIP.

## Quy trình

Input to project.yaml to similarity check to outline to chat approval to architecture and database to implementation and test to review to Docker verification to ZIP.

## Lệnh

    .\framework\scripts\New-Project.ps1 -StudentId SV001 -StudentName "Nguyen Van A" -Title "Website quan ly thu vien"
    .\framework\scripts\Validate-Project.ps1 -ProjectPath .\projects\SV001_NguyenVanA
    .\framework\scripts\Package-Project.ps1 -ProjectPath .\projects\SV001_NguyenVanA


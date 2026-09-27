# Graduation project scope policy

Mọi project trong framework mặc định là đồ án tốt nghiệp dạng MVP có thể demo, kiểm thử và bảo vệ. Framework không mặc định xây dựng production system quy mô lớn.

## Bắt buộc

- Ưu tiên bài toán, chức năng cốt lõi, tài liệu, test và khả năng chạy Docker.
- Giới hạn số role, module, workflow, báo cáo và loại dữ liệu ở mức cần thiết cho mục tiêu học thuật.
- Mỗi chức năng ngoài scope phải được ghi rõ trong outline hoặc scope-change request.
- Mọi yêu cầu nâng cao phải được đánh giá theo thời gian, độ phức tạp, khả năng demo và giá trị học thuật.

## Không mặc định bao gồm

- Production hardening ở quy mô doanh nghiệp.
- High availability, horizontal scaling hoặc tối ưu tải lớn.
- Multi-tenant hoặc triển khai cho nhiều đơn vị.
- Mobile app, OCR, AI, chữ ký số hoặc tích hợp liên thông.
- Monitoring, observability, disaster recovery và compliance chuyên sâu.

Các mục trên chỉ được đưa vào khi project input yêu cầu và người quản lý xác nhận rõ; việc bổ sung không được làm mất approval gate hoặc điều kiện chạy được bằng Docker.


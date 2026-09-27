# Database contract

- database/design/schema.dbml là source ERD chính để con người review.
- schema.mmd, erd.svg và erd.png là các biểu diễn được sinh từ DBML.
- Migration tạo database thực tế bên trong Docker.
- Tài khoản demo và seed data được quản lý trong source và đưa vào release.
- Runtime data bind mount dưới database/runtime-data để recreate container không mất dữ liệu.
- Runtime data mặc định bị loại khỏi ZIP release.
- Project phải mô tả cách reset hoặc restore database.


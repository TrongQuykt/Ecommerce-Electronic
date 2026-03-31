# Website Thương Mại Điện Tử Quản Lý Cửa Hàng Công Nghệ Và Điện Tử

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?logo=springboot&logoColor=white)
![Java](https://img.shields.io/badge/Java-007396?logo=java&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-005F9E?logo=thymeleaf&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?logo=bootstrap&logoColor=white)

## Giới thiệu

Dự án xây dựng một nền tảng **thương mại điện tử** chuyên bán sản phẩm công nghệ và điện tử. Hệ thống được phát triển theo kiến trúc **MVC** bằng Spring Boot, cung cấp đầy đủ chức năng mua sắm cho người dùng cuối và công cụ quản trị chuyên sâu cho admin.

Website hỗ trợ:
- Trải nghiệm mua sắm trực tuyến mượt mà (giỏ hàng, thanh toán VNPay, mã giảm giá).
- Quản lý toàn diện cửa hàng (sản phẩm, đơn hàng, kho hàng, doanh thu, báo cáo).
- Tích hợp xác thực email, quên mật khẩu, lịch sử đơn hàng và sản phẩm đã xem.

## Công nghệ sử dụng

### Backend
- **Java + Spring Boot** (MVC)
- **Spring Data JPA** + Hibernate
- **MySQL** (hệ quản trị cơ sở dữ liệu)
- **Spring Security** + JWT (xác thực & phân quyền)
- **Spring Mail** (gửi token quên mật khẩu)
- **VNPay Sandbox** (thanh toán trực tuyến)

### Frontend
- **Thymeleaf** (template engine)
- **Bootstrap 5** + HTML5/CSS3
- **JavaScript** (tương tác giao diện)

### Công cụ phát triển
- IntelliJ IDEA
- Maven
- Visio (thiết kế sơ đồ)

## Tính năng nổi bật

### Người dùng (User)
- Đăng ký / Đăng nhập / Đăng xuất
- Quên mật khẩu & đặt lại mật khẩu qua email (token)
- Cập nhật thông tin cá nhân & địa chỉ giao hàng
- Xem danh mục sản phẩm, tìm kiếm, lọc theo thương hiệu/loại
- Xem chi tiết sản phẩm (hình ảnh, mô tả, giá, thông số)
- Thêm vào giỏ hàng, chỉnh sửa số lượng, xóa sản phẩm
- Áp dụng mã giảm giá
- Đặt hàng & thanh toán (VNPay hoặc COD)
- Xem lịch sử đơn hàng, chi tiết đơn hàng
- Danh sách sản phẩm đã xem gần đây

### Quản trị viên (Admin)
- Quản lý sản phẩm (CRUD)
- Quản lý loại sản phẩm & thương hiệu
- Quản lý phiếu nhập kho
- Quản lý tài khoản khách hàng & quản trị viên
- Quản lý mã giảm giá
- Quản lý đơn hàng (xem, cập nhật trạng thái: chờ xử lý → vận chuyển → hoàn thành → hủy)
- Thống kê doanh thu (theo ngày/tháng/tổng)
- Tra soát giao dịch VNPay
- Export báo cáo Excel

## Cấu trúc cơ sở dữ liệu

Hệ thống sử dụng **19 bảng** chính, bao gồm:
- `user`, `role`, `address`
- `product`, `brand`, `categories`, `warranties`, `conditions`
- `cart`, `cart_item`, `orders`, `order_items`
- `payment`, `payment_method`, `shipment`, `shipment_method`
- `discount`, `receipt_product`, `product_inventories`, `review`, `wishlist`

Chi tiết schema nằm trong file `database/schema.sql` (đã được thiết kế đầy đủ quan hệ khóa ngoại).

## Hướng dẫn cài đặt & chạy

### Yêu cầu hệ thống
- Java 17 trở lên
- MySQL 8.0+
- Maven 3.8+
- IDE: IntelliJ IDEA (khuyến nghị)

### Các bước thực hiện

1. **Clone repository**
   ```bash
   git clone https://github.com/TrongQuykt/Ecommerce-Electronic.git
   cd Ecommerce-Electronic

## Hình ảnh dự án
<img width="605" height="288" alt="Picture3" src="https://github.com/user-attachments/assets/30a58240-95e1-4e7c-bf05-86cb48bc56e9" />
<img width="605" height="287" alt="Picture1" src="https://github.com/user-attachments/assets/1036844c-efd6-42ec-9406-9315cbf0793b" />
<img width="1385" height="658" alt="Picture2" src="https://github.com/user-attachments/assets/49b0f1b0-55f6-4272-8414-19d74607dee7" />
<img width="605" height="287" alt="Picture7" src="https://github.com/user-attachments/assets/bf23e9b1-ae5d-48dd-ace5-9f90f65961fb" />
<img width="605" height="286" alt="Picture8" src="https://github.com/user-attachments/assets/41ccc92e-4851-4ab0-b9b4-125fd6667971" />
<img width="605" height="285" alt="Picture9" src="https://github.com/user-attachments/assets/f0ba6ede-a8dc-4e6a-bfe8-46d9e3e0d921" />
<img width="605" height="286" alt="project-thumbnail" src="https://github.com/user-attachments/assets/fa03163b-da9e-4dba-b3ec-a4fed283abed" />
<img width="605" height="279" alt="Picture5" src="https://github.com/user-attachments/assets/f8a278de-faee-46fa-86bb-ec8947a2485f" />
<img width="605" height="288" alt="Picture6" src="https://github.com/user-attachments/assets/45610343-173c-498b-ba47-e9fe4c827ca4" />
<img width="605" height="286" alt="Picture16" src="https://github.com/user-attachments/assets/9dc3690b-7371-4726-b9b8-eefb84a31e19" />
<img width="605" height="286" alt="Picture17" src="https://github.com/user-attachments/assets/8996b8e5-4947-4e34-ab0c-27cbf2b13f96" />
<img width="605" height="284" alt="Picture18" src="https://github.com/user-attachments/assets/d43d5210-a2df-4fa3-81c7-9fbf215765b8" />
<img width="605" height="287" alt="Picture10" src="https://github.com/user-attachments/assets/cfbe1289-12eb-464b-868c-aa3ac206d6a5" />
<img width="605" height="286" alt="Picture11" src="https://github.com/user-attachments/assets/44cc7c5a-9318-4f3d-aec9-b704fb4e5e22" />
<img width="605" height="286" alt="Picture12" src="https://github.com/user-attachments/assets/ce675a54-606c-49a4-9c15-d19172075b8b" />
<img width="605" height="287" alt="Picture13" src="https://github.com/user-attachments/assets/3741a7fd-1d6a-47de-9f87-43da6cccce40" />
<img width="605" height="287" alt="Picture14" src="https://github.com/user-attachments/assets/fc807e2d-da9e-4978-a4a2-88ecc65fd407" />
<img width="605" height="286" alt="Picture15" src="https://github.com/user-attachments/assets/eb9e0e33-a0eb-4411-b31e-037ff1a5267b" />


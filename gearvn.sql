-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2024 at 06:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

CREATE DATABASE GEARVN 
USE GEARVN
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gearvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `city`, `district`, `street`, `ward`, `user_id`) VALUES
(1, 'Hồ Chí Minh', 'Tân Phú', '262/3 Lũy Bán Bích ', 'Hòa Thạnh', 2),
(2, 'Hồ Chí Minh', 'Tân Phú', '262/3 Lũy Bán Bích ', 'Hòa Thạnh', 1),
(3, 'Hồ Chí Minh', 'Tân Phú', '262/3 Lũy Bán Bích ', 'Hòa Thạnh', 13);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `description`, `name`, `category_id`) VALUES
(1, NULL, 'ASUS', NULL),
(2, NULL, 'ACER ', NULL),
(3, NULL, 'DELL', NULL),
(4, NULL, 'MSI', NULL),
(5, NULL, 'LENOVO', NULL),
(6, NULL, 'HP', NULL),
(7, NULL, 'LG', NULL),
(9, NULL, 'CORSAIR', NULL),
(10, NULL, 'AKKO', NULL),
(11, NULL, 'GIGABYTE', NULL),
(12, NULL, 'SAMSUNG', NULL),
(13, NULL, 'GVN', NULL),
(14, NULL, 'AOC', NULL),
(15, NULL, 'ViewSonic', NULL),
(16, NULL, 'Logitech', NULL),
(17, NULL, 'Cougar', NULL),
(18, NULL, 'GVN x ASUS', NULL),
(19, NULL, 'INTEL', NULL),
(20, NULL, 'AMD', NULL),
(21, NULL, 'Kingston', NULL),
(22, NULL, 'PNY', NULL),
(23, NULL, 'Marshall', NULL),
(24, NULL, 'Ugreen', NULL),
(25, NULL, 'Microsoft', NULL),
(26, NULL, 'APPLE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`) VALUES
(2, 1),
(1, 2),
(3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Màn hình'),
(3, 'Laptop Gaming'),
(4, 'PC GVN'),
(5, 'Tai Nghe'),
(6, 'Chuột'),
(7, 'Bàn Phím'),
(8, 'Ghế'),
(9, 'Main'),
(10, 'Case'),
(11, 'Ổ cứng'),
(12, 'Loa'),
(13, 'VGA'),
(14, 'CPU'),
(15, 'Nguồn'),
(16, 'Tản nhiệt'),
(17, 'RAM'),
(18, 'Thẻ nhớ'),
(19, 'Bàn'),
(20, 'Micro'),
(21, 'Webcam'),
(22, 'Console'),
(23, 'Phụ kiện'),
(24, 'Thiết bị văn phòng'),
(25, 'Macbook');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Like new 99%');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_price` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` int NOT NULL,
  `use_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `code`, `description`, `discount_price`, `name`, `quantity`, `status`, `use_number`) VALUES
(1, 'code50', 'mã giảm 50', 5000000, 'mã giảm giá 50', 10, 1, 10),
(2, 'code10', 'mã giảm 10', 1000000, 'counpon 10', 10, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `status` int NOT NULL,
  `total` double NOT NULL,
  `user_id` bigint NOT NULL,
  `discount_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `status`, `total`, `user_id`, `discount_id`) VALUES
(53, '2024-07-02 22:21:00.472000', 4, 13525000, 13, 2),
(54, '2024-07-03 15:31:48.777000', 5, 44415000, 13, 2),
(55, '2024-07-03 16:55:17.314000', 4, 177035000, 13, 2),
(56, '2024-07-03 21:23:38.893000', 4, 307395000, 2, 2),
(57, '2024-07-03 21:40:32.196000', 4, 81615000, 2, NULL),
(58, '2024-07-04 08:08:31.151000', 4, 43035000, 13, 2),
(59, '2024-07-04 08:10:13.438000', 4, 14025000, 13, NULL),
(61, '2024-07-04 08:51:09.225000', 2, 5725000, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `order_id`, `product_id`) VALUES
(70, 1, 53, 2),
(71, 1, 53, 3),
(72, 1, 54, 13),
(73, 1, 54, 22),
(74, 1, 55, 184),
(75, 1, 55, 190),
(76, 1, 56, 262),
(77, 1, 56, 182),
(78, 1, 56, 13),
(79, 1, 56, 22),
(80, 1, 56, 112),
(81, 1, 57, 14),
(82, 1, 57, 88),
(83, 1, 58, 280),
(84, 1, 59, 63),
(86, 1, 61, 31);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint NOT NULL,
  `amount` double NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `status` int NOT NULL,
  `order_id` bigint NOT NULL,
  `payment_method_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payment_date`, `status`, `order_id`, `payment_method_id`) VALUES
(53, 13525000, '2024-07-02 22:21:00.503000', 1, 53, 2),
(54, 44415000, '2024-07-03 15:31:48.818000', 1, 54, 2),
(55, 177035000, '2024-07-03 16:55:17.359000', 1, 55, 1),
(56, 307395000, '2024-07-03 21:23:38.953000', 1, 56, 2),
(57, 81615000, '2024-07-03 21:40:32.213000', 1, 57, 1),
(58, 43035000, '2024-07-04 08:08:31.194000', 1, 58, 2),
(59, 14025000, '2024-07-04 08:10:13.448000', 1, 59, 2),
(61, 5725000, '2024-07-04 08:51:09.245000', 1, 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`) VALUES
(1, 'COD'),
(2, 'VNPAY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `urlimage` varchar(255) DEFAULT NULL,
  `urlimage1` varchar(255) DEFAULT NULL,
  `urlimage2` varchar(255) DEFAULT NULL,
  `urlimage3` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `quantity_sold` int NOT NULL,
  `status` int NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `condition_id` bigint DEFAULT NULL,
  `warranty_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `urlimage`, `urlimage1`, `urlimage2`, `urlimage3`, `description`, `name`, `price`, `quantity`, `quantity_sold`, `status`, `brand_id`, `category_id`, `condition_id`, `warranty_id`) VALUES
(2, '/images/products/9d52b6d5-78d7-402e-8e51-116160567a27.jpg', '/images/products/09b5888f-83ad-4851-ad89-2aad2931ddc1.jpg', '/images/products/1907d411-4fd1-4dcf-b999-a80893e92b23.jpg', '/images/products/b7f9888a-c1c6-41b6-8043-ba5c92b36167.jpg', 'zxc', 'ASUS TUF Gaming', 7000000, 10, 0, 1, 1, 2, 1, 1),
(3, '/images/products/30bb8942-5d74-4422-953b-f4db695c6c35.jpg', '/images/products/8a52aef9-1962-403c-a422-f274fab21d16.jpg', '/images/products/edcd661b-7457-4dd0-9bba-1f9090542020.jpg', '/images/products/775e21c0-2a83-4745-9ed8-ac29da456f3a.jpg', 'zxc', 'Màn hình ASUS TUF GAMING VG27AQL3A-W 27\" Fast IPS 2K 180Hz', 7490000, 10, 0, 1, 1, 2, 1, 1),
(4, '/images/products/d211bff6-62b6-4239-8a48-bad2dd9a4ce2.jpg', '/images/products/f8042316-4ff2-439b-aec4-fcb4d10b77bc.jpg', '/images/products/3185d3d4-d57c-42b0-b1f1-228dfe34dcd9.jpg', '/images/products/be0de83a-aab7-42a9-a18b-fba4c6674df7.jpg', 'zxc', 'Màn hình ASUS ROG Strix XG259QNS-W 25\" Fast IPS 380Hz chuyên game', 10990000, 10, 0, 1, 1, 2, 1, 1),
(5, '/images/products/df1e7422-043f-4c06-8237-befc043c1aac.jpg', '/images/products/818c86f5-4039-47db-83ae-7d0ff44fce82.jpg', '/images/products/8fd9e55c-c077-4950-ae19-d7a153c127dd.jpg', '/images/products/12b59fc8-7560-4f9e-84d1-1661d5552eb1.jpg', 'zxc', 'Màn hình Asus ROG Strix XG27UCS 27\" Fast IPS 4K 160Hz Gsync chuyên game', 13790000, 10, 0, 1, 1, 2, 1, 1),
(6, '/images/products/c266380f-dc54-4ab9-a6d0-57bab5935ccf.jpg', '/images/products/e20c5cd7-ffbb-4e4f-b683-578d01ba0eda.jpg', '/images/products/a6910a27-ccb3-4710-80fb-2fda75d4eb50.jpg', '/images/products/a86b1d8a-ed79-4253-b4b3-867872981b29.jpg', 'zxc', 'Màn hình ASUS ROG Strix XG259QNS 25\" Fast IPS 380Hz chuyên game', 19990000, 10, 0, 1, 1, 2, 1, 1),
(7, '/images/products/7ae2fde7-58b6-4716-b87d-9ed8d852f7ed.jpg', '/images/products/ebcdc3f8-6b0e-482d-a0e9-83eb1cc53c92.jpg', '/images/products/65f12b16-b879-4f52-8393-605c397bb2ad.jpg', '/images/products/7dadd740-e981-4be2-b40e-979061d72046.jpg', 'zxc', 'Màn hình Asus TUF GAMING VG249Q3A 24\" Fast IPS 180Hz Gsync chuyên game', 3150000, 10, 0, 1, 1, 2, 1, 1),
(8, '/images/products/0a721bc4-0e33-4ea0-a4ac-de51e6500053.jpg', '/images/products/ad3bfc72-9fb0-4b91-8eb9-9dc108d64a84.jpg', '/images/products/f518a2b0-11f8-48a7-a43f-1ccf7ce94539.jpg', '/images/products/65bf1aa4-297b-49e7-8f59-2f6a4039c936.jpg', 'zxc', 'Màn hình ASUS VU279CFE-M 27\" IPS 100Hz viền mỏng', 3990000, 10, 0, 1, 1, 2, 1, 1),
(9, '/images/products/8e288623-aad1-4f13-8e0d-2380eb789e10.jpg', '/images/products/b0751f6b-2b2a-4224-9334-f4e5b91780fd.jpg', '/images/products/9e013d59-4e20-4e78-9a68-9991bcf1c4c1.jpg', '/images/products/de93b40f-c47c-4f07-95d8-2e86c278cc0a.jpg', '', 'Màn hình ASUS VU279CFE-B 27\" IPS 100Hz viền mỏng', 3990000, 10, 0, 1, 1, 2, 1, 1),
(10, '/images/products/cc67911c-fb39-4845-93ee-18729a173df3.jpg', '/images/products/44a19d4a-31e3-40d7-bc49-f33c75b9390e.jpg', '/images/products/e39986f0-db1b-4483-b877-5c50b664104b.jpg', '/images/products/07d76582-5db3-44e3-aec3-e4a1315ca987.jpg', 'zxc', 'Màn hình ASUS VU249CFE-M 24\" IPS 100Hz USBC', 3190000, 10, 0, 1, 1, 2, 1, 1),
(11, '/images/products/4b1ee82f-3fca-496d-a513-18a330be217b.jpg', '/images/products/9c23dfb5-cafe-47c2-895d-114b26fecb58.jpg', '/images/products/011e31b1-5cdd-44fb-8b02-cc54e61ac5c6.jpg', '/images/products/ee489251-ea24-4a29-b008-cf0e98e2a2a2.jpg', 'zxc', 'Màn hình ASUS VU249CFE-B 24\" IPS 100Hz USBC', 3190000, 10, 0, 1, 1, 2, 1, 1),
(12, '/images/products/6ac27c18-56c6-449e-9be8-38f00782c381.jpg', '/images/products/25980e32-6175-4caf-91cb-2c0601b67b01.jpg', '/images/products/b9fc4142-d0d2-4ca7-b57e-35f5712910af.jpg', '/images/products/8d24b8ce-9018-41ce-b743-094acf41a8f7.jpg', 'zxc', 'Màn hình ASUS ProArt PA248QV-P 24\" IPS 75Hz 16:10 chuyên đồ họa', 4950000, 10, 0, 1, 1, 2, 1, 1),
(13, '/images/products/74101e72-3648-4b1b-9c89-7d684b5986ba.jpg', '/images/products/d97b111b-54b5-444c-b385-6ec85049fece.jpg', '/images/products/bc889400-64f1-4cde-9146-5b1ca295d484.jpg', '/images/products/d493b243-529d-4583-a8d0-50cf1fef1c28.jpg', 'zxc', 'Màn hình cong Asus ROG Swift PG34WCDM 34\" OLED 2K 240Hz USBC chuyên game', 39990000, 10, 2, 1, 1, 2, 1, 1),
(14, '/images/products/5ef9b85a-4e04-4edf-aa08-52ee836257a8.jpg', '/images/products/1fea7acd-29ee-4d71-bfe7-019bddbc3a9a.jpg', '/images/products/0b814a16-2d62-473a-ae56-b48d7f2eed77.jpg', '/images/products/13c915e8-8154-4f62-ba8e-0142fdc18bfc.jpg', '', 'Màn hình cong Asus ROG Swift PG49WCD 49\" QD-OLED 2K 144Hz chuyên game', 52990000, 10, 1, 1, 1, 2, 1, 1),
(15, '/images/products/7cc8c0a3-883c-4683-af11-4e3e5c16864d.jpg', '/images/products/8e6e4b55-05f9-469e-ae1a-83a37cd51856.jpg', '/images/products/a78faf5d-a34b-4c07-adb5-841f1520979a.jpg', '/images/products/71ade6c8-702c-436b-87fc-62b474f5a67a.jpg', 'zxc', 'Màn hình ASUS Swift Pro PG248QP 24\" 540Hz G-Sync chuyên game', 24690000, 10, 0, 1, 1, 2, 1, 1),
(16, '/images/products/3dd2e6a6-f53b-40c8-958d-e073475e460e.jpg', '/images/products/708d1819-7b67-4125-9152-f1b0f9ceaf8d.jpg', '/images/products/393fd642-f008-4efc-a753-9ee91ba3f3fb.jpg', '/images/products/d3450812-9b4e-41f3-ac1a-8c1b6207fe1d.jpg', 'zxc', 'Màn hình ASUS ProArt PA328QV 32\" IPS 2K 75Hz HDR10 chuyên đồ họa', 10990000, 10, 0, 1, 1, 2, 1, 1),
(17, '/images/products/dd0fb272-642d-421b-b7fa-49ddb4427d36.jpg', '/images/products/83e55b23-5985-45ad-ac42-f92129005f06.jpg', '/images/products/ccb166e4-b755-4361-bde8-c26a2df89c3d.jpg', '/images/products/e50351c3-300c-4f91-ab01-c42525198a2d.jpg', 'zxc', 'Màn hình LCD ASUS TUF Gaming VG259QM 25\" IPS 280HZ Gsync', 6990000, 10, 0, 1, 1, 2, 1, 1),
(18, '/images/products/3e5de62d-cfda-4d90-9ee9-ea5b51e58b12.jpg', '/images/products/6e8d11a8-3bb2-4460-b6de-f19d8eac8f7c.jpg', '/images/products/704c4c34-bbc0-4111-a183-4a2f37feb530.jpg', '/images/products/d777b295-f8e6-474e-8294-a9f2bac3fe6e.jpg', 'zxc', 'Màn hình ASUS VZ27EHE 27\" IPS 75Hz viền mỏng', 3190000, 10, 0, 1, 1, 2, 1, 1),
(19, '/images/products/cb6e8c3d-67fa-40e7-baa8-aa7b05dc9f00.jpg', '/images/products/f02aab74-8c04-4f31-b794-199792a7f35d.jpg', '/images/products/6f7c08da-330e-479c-9801-b6aca1e57ad9.jpg', '/images/products/913e42c1-cc0c-4352-901f-528e34d1f2b9.jpg', 'zxc', 'Màn hình ASUS VA24EHF 24\" IPS 100Hz viền mỏng', 2250000, 10, 0, 1, 1, 2, 1, 1),
(20, '/images/products/0ff7692e-9233-42c6-b7e4-b609a00260cd.jpg', '/images/products/9169f3b4-c164-498c-9e02-0870a380aa82.jpg', '/images/products/58209059-1c33-4069-8f11-fdc7bc93543d.jpg', '/images/products/8deafcd8-0e18-4297-850d-2f9bb1d86684.jpg', 'zxc', 'Bàn phím Corsair K65 Plus Wireless RGB CSR RED-BLK-GREY (CH-91D401L-NA)', 3890000, 10, 0, 1, 9, 7, 1, 2),
(21, '/images/products/64a11891-0d00-4882-bed7-6f0b09c37aa8.jpg', '/images/products/5522518e-7242-4e00-9d18-7eee63351880.jpg', '/images/products/21104a56-f234-4205-96ad-b2f0f0f21d6f.jpg', '/images/products/d1c49719-7f56-4a6f-88ed-863c8e2523f7.jpg', 'zxc', 'Bàn phím Corsair K70 RGB MK2 SE Rapid Fire (CH-9109114-NA)', 3590000, 10, 0, 1, 9, 7, 1, 2),
(22, '/images/products/19d0a777-de11-4ec1-a123-483df858df25.jpg', '/images/products/6390ea5f-9439-426d-9484-9185995234e8.jpg', '/images/products/a002cb0d-75b4-4a8c-ba68-0c2d0cf5c31f.jpg', '/images/products/6a37c049-e7b8-40e4-bbd3-865049e42c48.jpg', 'zxc', 'Bàn phím cơ Corsair K100 RGB Cherry MX Speed (CH-912A014-NA)', 5390000, 10, 2, 1, 9, 7, 1, 2),
(23, '/images/products/d641deb8-cf81-4033-aad8-06da0a4cb0c3.jpg', '/images/products/1bd721b7-77cd-4f98-b396-bb7d28379bd4.jpg', '/images/products/31b9ca73-9745-4c77-a7a6-29d9b4297193.jpg', '/images/products/44e017b4-0db6-4c55-a8b5-6122bf1526cb.jpg', 'zxc', 'Bàn phím cơ Corsair K100 RGB Midnight Gold-OPX RF (CH-912A21A-NA)', 5790000, 10, 0, 1, 9, 7, 1, 2),
(24, '/images/products/29151d1c-8588-4429-a888-1d844417b35d.jpg', '/images/products/2563aefb-b1ea-4d32-a550-f1b8b5402c20.jpg', '/images/products/6f2594c9-02f5-4fa0-b220-23891bacd26a.jpg', '/images/products/aab48fbf-94cb-4947-9745-60c3b22c356e.jpg', 'zxc', 'Bàn phím Corsair K65 RGB Mini White - MX SPEED (CH-9194114-NA)', 2590000, 10, 0, 1, 9, 7, 1, 2),
(25, '/images/products/5ff4c304-bca6-4d5a-8db1-871a5ace80da.jpg', '/images/products/5b2ca3b6-b2cb-4846-9261-cca96cddef8f.jpg', '/images/products/0297a3db-fffa-4b5f-a7b7-621901fe20ea.jpg', '/images/products/3e9f7025-64ec-4838-8d17-9a177603797d.jpg', 'zxc', 'Bàn phím cơ Corsair K70 TKL RGB Champion Series Cherry MX Speed Switch', 3290000, 10, 0, 1, 9, 7, 1, 2),
(26, '/images/products/70293750-c79c-41e4-a6a2-4c84b93822d7.jpg', '/images/products/98d4ad0d-1234-445e-aa27-c76af7db5d1d.jpg', '/images/products/73a3fa95-a17b-4d4f-aaad-906acb142aa1.jpg', '/images/products/1a0fe254-0092-4573-a42e-e590bd16e432.jpg', 'zxc', 'Bàn phím Corsair K70 RGB MK.2 Low Profile Speed (CH-9109018-NA)', 3590000, 10, 0, 1, 9, 7, 1, 2),
(27, '/images/products/e696cb24-149d-470a-86b5-5ffd752e6c9b.jpg', '/images/products/f167ceb5-3b8e-42e5-a842-c66560fbd2a0.jpg', '/images/products/97a6553b-e820-431c-8664-268a56691741.jpg', '/images/products/4db6c663-078f-460f-8e10-20081e425032.jpg', 'zxc', 'Bàn phím Corsair K95 RGB Platium XT Blue Switch (CH-9127411-NA)', 4290000, 10, 0, 0, 9, 7, 1, 2),
(28, '/images/products/24c1b9e2-249d-4b13-9ec1-cd2d5f1f9072.jpg', '/images/products/28298d71-4fb1-48dc-a46c-d696630aaf65.jpg', '/images/products/d3c3bbe5-9211-44c2-8a14-bc298737fa1f.jpg', '/images/products/9bfcef78-653a-403a-a825-407f625c2d43.jpg', 'zxc', 'Bàn phím cơ Asus ROG Azoth White NX Snow', 5990000, 10, 0, 1, 1, 7, 1, 2),
(29, '/images/products/6c3caa3e-b4e6-4727-bb81-72aea242cf15.jpg', '/images/products/52ebfce8-99fb-4209-b5fd-a656379b298b.jpg', '/images/products/ca6ec88f-af21-4b12-9cb6-13e3d16fd109.jpg', '/images/products/afb8ca69-44a6-44e0-9f8a-a12f2ab8022f.jpg', 'zxc', 'Bàn phím cơ Asus ROG Falchion RX Low Profile Blue Switch', 3890000, 10, 0, 1, 1, 7, 1, 2),
(30, '/images/products/56510ee4-4ceb-4f76-8693-ca35685131f8.jpg', '/images/products/36fb0855-1e5d-43d1-854f-3176eda9bda0.jpg', '/images/products/61fe611e-dff2-4a25-95cd-46dcede7f912.jpg', '/images/products/e9345b09-2f49-4806-94f9-4ef12b0b26b2.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope TKL Red Switch', 3190000, 10, 0, 1, 1, 7, 1, 2),
(31, '/images/products/1ddffcdf-e69a-44d8-94b6-b71e19ec06db.jpg', '/images/products/bdc3ccff-2757-42e8-b783-c6a89b9f4df9.jpg', '/images/products/02e7ef0c-740b-4070-8248-d53844de5227.jpg', '/images/products/590c0129-2cf4-450f-94f6-328c39a34901.jpg', 'zxc', 'Bàn Phím Asus ROG Claymore II Red Switch', 5690000, 10, 1, 1, 1, 7, 1, 2),
(32, '/images/products/8918d536-6d23-426c-8e68-23b07f95bf40.jpg', '/images/products/fe67d967-9b7e-42b6-a5b3-a0ce97999821.jpg', '/images/products/f7344918-3d29-474e-aa64-80170afc0776.jpg', '/images/products/3f759e4c-33e4-4999-9029-4786cc3e9acd.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope II 96 Wireless ROG NX Storm Switch', 3890000, 10, 0, 1, 1, 7, 1, 2),
(33, '/images/products/342df7f1-e775-476d-a4ae-63be0eec4bbc.jpg', '/images/products/2c4025cf-1ec2-4be6-8755-8d1fbdee7a24.jpg', '/images/products/266153ff-dc6e-4b3d-b6bf-5d47499a60bf.jpg', '/images/products/09943c88-6d40-40b0-a3e3-da488df4b1f3.jpg', 'zxc', 'Bàn phím cơ Asus ROG Azoth NX Snow', 5990000, 10, 0, 1, 1, 7, 1, 2),
(34, '/images/products/f20981e2-9eae-4f6d-9479-e40824e0f9f1.jpg', '/images/products/c3a03ae5-e37b-404a-956b-cbdb3dffb9ca.jpg', '/images/products/ce1ebc52-a8df-4a53-acdb-8b9e16b50e2f.jpg', '/images/products/c696ceda-21e2-4809-a5bd-184a8e3a3abe.jpg', 'zxc', 'Bàn phím ASUS TUF Gaming K1', 1050000, 10, 0, 1, 1, 7, 1, 2),
(35, '/images/products/c0dc0b36-1e9e-447d-96ce-5259639a6804.jpg', '/images/products/5036acfa-e52c-46cb-914e-954ff8333e34.jpg', '/images/products/e80bb909-6774-465f-9f6c-31679f5bd76d.jpg', '/images/products/4b5d665e-ece0-4666-a2e4-e349cec9264d.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope TKL Blue Switch', 3190000, 10, 0, 1, 1, 7, 1, 2),
(36, '/images/products/cbbd27ac-0790-4ff4-bc32-fd9f4dfaaf89.jpg', '/images/products/87089f44-06cd-4ded-b4c6-bbcbacf93e95.jpg', '/images/products/9e73bb24-3148-49e4-8c23-d6a68a166f2d.jpg', '/images/products/7a4d42c2-9b87-4130-ae17-c7a6abcc7687.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope NX TKL DELUXE - Red Switch', 1790000, 10, 0, 1, 1, 7, 1, 2),
(37, '/images/products/0765bb8d-e224-447b-a5ae-36587af333d4.jpg', '/images/products/2d9eef66-f42d-4cf5-8b9e-48d10587a9c8.jpg', '/images/products/2cc17e1a-5763-4480-a3af-2c7e1143fa6e.jpg', '/images/products/0ffa800c-c65b-4504-afbe-a1a7b09ab77e.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope NX DELUXE - Red Switch', 3490000, 10, 0, 1, 1, 7, 1, 2),
(38, '/images/products/f8cd82b1-0e6b-4055-bc3c-579b105ffa78.jpg', '/images/products/f8ceb4c9-b535-41fa-b022-9497d6543f6d.jpg', '/images/products/d99956b8-a74f-4546-990d-ae89457a4563.jpg', '/images/products/4ea0f209-3531-47e1-ba2b-5570ab87dab3.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope NX - Red Switch', 3290000, 10, 0, 1, 1, 7, 1, 2),
(39, '/images/products/df0902d1-2f6a-4bfb-a45d-893697d91ded.jpg', '/images/products/74273a9f-5f1c-4a94-9e25-16cf917182b0.jpg', '/images/products/750ce4bd-ccf8-4ba4-8f42-de2e19ea6bab.jpg', '/images/products/f61c0730-dd39-472b-8b23-8ac452a6e09c.jpg', 'zxc', 'Bàn phím Asus ROG Strix Scope RX', 2390000, 10, 0, 1, 1, 7, 1, 2),
(40, '/images/products/7a6d7fd5-e4ab-4c1b-a062-58bceb2e281d.jpg', '/images/products/afc2b11d-679a-46bc-a6f3-ec2b32b96dff.jpg', '/images/products/f05e7a72-72d8-4bc8-8213-d801472a5145.jpg', '/images/products/24df799f-20b5-46fb-b62b-eec4b7806e3f.jpg', 'zxc', 'Bàn phím cơ AKKO MOD007 v3 HE Year of Dragon', 4490000, 10, 0, 1, 10, 7, 1, 2),
(41, '/images/products/ea370117-5270-4b1d-9225-4c17488983d6.jpg', '/images/products/221b1ed5-f24b-427b-bdfa-7bd037e90710.jpg', '/images/products/728d8e47-2603-4562-8c45-db45e0691a1f.jpg', '/images/products/2597bf7c-e091-4401-91bf-98a959644fd7.jpg', 'zxc', 'Bàn phím AKKO MU01 Mountain Seclusion Piano Pro', 2990000, 10, 0, 1, 10, 7, 1, 2),
(42, '/images/products/613cfd99-f81f-4b53-ac39-50d04dd4f38d.jpg', '/images/products/7b4df8ef-6d0d-4fe5-b5eb-04f04c5ebe84.jpg', '/images/products/9ade0639-0dc9-4d66-bcc2-57910b6626e6.jpg', '/images/products/a937b23a-1313-473a-86e0-5559aee941ed.jpg', 'zxc', 'Bàn phím cơ AKKO 3108 RF Dragon Ball Z Goku Akko V3 Cream Yellow switch', 1690000, 10, 0, 1, 10, 7, 1, 2),
(43, '/images/products/cb62f8be-931f-41a2-bfd5-ac90dce305f4.jpg', '/images/products/8f8f9ec6-a174-401d-a92d-0f5b7e96575f.jpg', '/images/products/783e8300-110e-4930-be77-55ce49530dec.jpg', '/images/products/e6a5a1ce-d76e-43e8-96e5-bf7be28135d1.jpg', 'zxc', 'Bàn phím cơ AKKO 3108 RF World Tour Tokyo Akko V3 Cream Blue switch', 1490000, 10, 0, 1, 10, 7, 1, 2),
(44, '/images/products/33f2997e-83e1-4287-bb2c-ab7e34ce8ea3.jpg', '/images/products/448286d6-4522-4fe0-a54c-5043088a1760.jpg', '/images/products/b5e550c2-8801-4e4b-ac0a-30b0ad2adc3e.jpg', '/images/products/82924837-a66f-4cdf-9c53-3a02d670ab42.jpg', 'zxc', 'Bàn phím AKKO 3098 Neon RGB Cream Yellow Pro', 990000, 10, 0, 1, 10, 7, 1, 2),
(45, '/images/products/c1cb0667-f48d-4197-b48f-08d15aa78323.jpg', '/images/products/e9e859b9-d9d1-4efe-b7fc-daa2519cbfd3.jpg', '/images/products/a10def18-aa04-412b-be91-9cfa4c68a354.jpg', '/images/products/716488b7-36e7-42a9-9b9f-ec6fb93ba7bb.jpg', 'zxc', 'Bàn phím MonsGeek M1 QMK Silver AKKO Switch v3 Cream Yellow Pro', 2190000, 10, 0, 1, 10, 7, 1, 2),
(46, '/images/products/e4a9c0be-dace-4c1a-8773-0bac067df780.jpg', '/images/products/2a4728ab-cf36-4c76-8b37-47edb3ea4072.jpg', '/images/products/a2be1d95-4f16-4083-9fbe-05c41d566fed.jpg', '/images/products/d65b85e0-20f1-450c-b8b1-1c3af6b5571b.jpg', 'zxc', 'Bàn phím MonsGeek M1 QMK Black AKKO Switch v3 Cream Yellow Pro', 2190000, 10, 0, 1, 10, 7, 1, 2),
(47, '/images/products/011088c0-4332-4ae3-b9d3-d8d7ae5efcc1.jpg', '/images/products/38e12790-1dc2-4d27-977d-7cc8a70ba01b.jpg', '/images/products/984015fb-ed93-40ab-8c7b-d4a98332079e.jpg', '/images/products/86e6dd4e-7677-470c-a18a-515d98eb7197.jpg', 'zxc', 'Bàn phím cơ AKKO 5075B Plus Blue on White Akko Switch v3 Cream Blue', 2290000, 10, 0, 1, 10, 7, 1, 2),
(48, '/images/products/2a90781f-79d6-4c45-adcf-dc8c15656a6b.jpg', '/images/products/2ff5ad50-b254-4648-99b6-000c60c43563.jpg', '/images/products/0f7de7b7-1e19-4f7c-985b-ed769a66ba85.jpg', '/images/products/bd0e8897-15b8-4879-9880-310dbdfddd77.jpg', 'zxc', 'Bàn phím cơ AKKO 3087 v2 DS Ocean Star Akko V3 Switch Cream Blue', 990000, 10, 0, 1, 10, 7, 1, 2),
(49, '/images/products/1c4facad-5633-4097-889a-2296ec96319c.jpg', '/images/products/0c6ca290-fe22-4681-9a33-955aeada8421.jpg', '/images/products/fad24545-8ec9-497c-9dfb-36859d63a4c4.jpg', '/images/products/d32bebaf-06c3-430f-b14e-669f3bdd23a5.jpg', 'zxc', 'Bàn phím cơ AKKO 5075B Plus-S Black & Silver Akko Switch v3 Cream Yellow Pro', 1790000, 10, 0, 1, 10, 7, 1, 2),
(50, '/images/products/3d0ba364-96a0-4cc6-98ed-a1ea62bf5d03.jpg', '/images/products/01015ba9-fa1b-489b-a9b8-5604574fa68e.jpg', '/images/products/db53cd19-038f-4465-a64a-3f5df26757df.jpg', '/images/products/b2c9b98d-3472-4a01-bc71-7d04ea8c8abc.jpg', 'zxc', 'Màn hình ACER KG270 M5 27\" IPS 180Hz chuyên game', 3790000, 10, 0, 1, 2, 2, 1, 1),
(51, '/images/products/ab1a5700-8770-419f-86b6-61426c276c9e.jpg', '/images/products/876a67eb-f1ef-4984-9441-3f667d99135b.jpg', '/images/products/d6c7c1cb-8a07-4142-945f-8c165717c4cd.jpg', '/images/products/6e7901e9-42ae-44d4-a8c4-27e8a92a5d01.jpg', 'zxc', 'Màn hình ACER KG240Y M5 24\" IPS 180Hz chuyên game', 3030000, 10, 0, 1, 2, 2, 1, 1),
(52, '/images/products/5934744a-408a-4fab-9be2-f524c4a6b1be.jpg', '/images/products/fced702c-55fe-4b8c-b0cc-b1da638a86a6.jpg', '/images/products/4e2b43af-41c6-4820-b3e0-9827ca8245de.jpg', '/images/products/2537bfae-fdc4-4a5b-a0e7-6c3558d9fd3a.jpg', 'zxc', 'Màn hình ACER EK221Q E3 22\" IPS 100Hz', 1850000, 10, 0, 1, 2, 2, 1, 1),
(53, '/images/products/06fd7af5-2ec4-4123-8b61-a65a07dd1a8c.jpg', '/images/products/abdcc5d5-fd00-49c2-94d6-473bcaff8276.jpg', '/images/products/488f6074-4562-46c0-bad8-1c51aed99b9f.jpg', '/images/products/025a6514-0fbc-4a89-9c91-e358a1cad2be.jpg', 'zxc', 'Màn hình Acer K273 E 27\" IPS 100Hz', 2790000, 10, 0, 1, 2, 2, 1, 1),
(54, '/images/products/fe92b14a-2d1d-44a7-a43b-741206cc92d5.jpg', '/images/products/4467116e-f372-4302-a312-0da4953b9346.jpg', '/images/products/c17a9773-06df-4dec-9fe5-3bce94dcb5f0.jpg', '/images/products/d4300dc5-41a4-4a54-b324-27f3bcfd1479.jpg', 'zxc', 'Màn hình Acer R241YB 24\" IPS 75Hz FreeSync viền mỏng chuyên game', 3820000, 10, 0, 1, 2, 2, 1, 1),
(55, '/images/products/978a3e8d-53c8-4dfa-8329-5847a15a0591.jpg', '/images/products/71172f75-5a72-4b99-91c2-9e1fffe773fe.jpg', '/images/products/2c9f1557-d5d5-4f36-ad67-5980a56a33dd.jpg', '/images/products/1287b6d9-7aa5-48a5-9184-f622bf9eff3b.jpg', 'zxc', 'Màn hình ACER VG270 S 27\" IPS 165Hz chuyên game', 4390000, 10, 0, 1, 2, 2, 1, 1),
(56, '/images/products/3801bd5f-672b-4c75-aefc-2975cb4faf5f.jpg', '/images/products/711548b2-f79e-4481-8419-66b5f6457459.jpg', '/images/products/ce227e1a-a720-4a30-8c0f-68d3f45cbab8.jpg', '/images/products/0390359b-89b6-4ff2-aae0-44b0847d87a6.jpg', 'zxc', 'Màn hình MSI MAG 274QRFW 27\" Rapid IPS 2K 180Hz chuyên game', 6390000, 10, 0, 1, 4, 2, 1, 1),
(57, '/images/products/4716cc5b-89ea-4bd0-bb72-fd62b7476a83.jpg', '/images/products/4354c3b4-b9e6-41d6-9f98-6e6407bffb75.jpg', '/images/products/b16309dc-bd26-401b-9684-f7f1bdc92bee.jpg', '/images/products/8db15ba1-a2c8-446c-b222-7b3d0b3ae40d.jpg', 'zxc', 'Màn hình MSI MAG 271QPX QD-OLED 27\" QD-LED 2K 360Hz chuyên game', 25990000, 10, 0, 1, 4, 2, 1, 1),
(58, '/images/products/9febc5e3-1b42-418b-8343-2c1dd9184b99.jpg', '/images/products/0141222b-afdc-48f1-a5ea-a5aab32f317e.jpg', '/images/products/af4207b2-e431-473c-aa0e-15e991d0b8ec.jpg', '/images/products/5042ec6e-1a5a-4c2d-a9a6-28e946b356c5.jpg', 'zxc', 'Màn hình cong MSI OPTIX MAG342CQR 34\" 2K 144Hz chuyên game', 7890000, 10, 0, 1, 4, 2, 1, 1),
(59, '/images/products/e019c948-e2f1-48ca-9121-fff06b91e247.jpg', '/images/products/4433068e-0053-41f4-8e58-38d9985a7f3e.jpg', '/images/products/9f327cfb-5933-46cf-a09d-ca503ee4da7e.jpg', '/images/products/638759b6-2fb9-4fd9-97c9-36dc765f5cde.jpg', 'zxc', 'Màn hình MSI G274QPX 27\" Rapid IPS 2K 240Hz G-Sync chuyên game', 9790000, 10, 0, 1, 4, 2, 1, 1),
(60, '/images/products/1575f800-0469-4ad8-a4e2-b2a3edf3fc40.jpg', '/images/products/9ae7c914-b36a-48a9-8544-86c096a950c7.jpg', '/images/products/3f526da4-620b-4988-a7f5-16c6ebbda1be.jpg', '/images/products/b311c0fc-546d-4649-ba1b-2ec52301b025.jpg', 'zxc', 'Màn hình cong MSI OPTIX G27C4X 27\" 250Hz FreeSync Premium chuyên game', 4490000, 10, 0, 1, 4, 2, 1, 1),
(61, '/images/products/b8e9a33d-4ba5-4f76-b4d6-3a58f48e61d3.jpg', '/images/products/972b14da-c407-47f7-93d2-b876c743c968.jpg', '/images/products/a30b1bf0-1916-455d-9843-e4bbe309ca0e.jpg', '/images/products/15ce58bb-5294-4e00-9017-5f322310f47b.jpg', 'zxc', 'Màn hình MSI OPTIX G274 27\" IPS 170Hz G-Sync chuyên game', 4690000, 10, 0, 1, 4, 2, 1, 1),
(62, '/images/products/ba890bae-03d9-42fe-84f1-2b3c2874e91b.jpg', '/images/products/ab0381fd-210f-42e6-8892-efa2fbaf32c5.jpg', '/images/products/9d97538f-2593-47f0-968a-715baff4b372.jpg', '/images/products/8126af09-a322-4f55-ad05-00c46c87fb0f.jpg', 'zxc', 'Màn hình Dell UltraSharp U3224KB 32\" IPS 6K USBC chuyên đồ họa', 61990000, 10, 0, 1, 3, 2, 1, 1),
(63, '/images/products/ae4fba1a-3f78-4d00-9255-1de4605b46dc.jpg', '/images/products/036a2ce3-53d3-42cb-b416-f31e8386e712.jpg', '/images/products/90f01bad-7dd6-4c1c-a6d1-72608e5a67d2.jpg', '/images/products/b1d839e9-0bf4-4b7b-93db-682bd3b5b739.jpg', 'zxc', 'Màn hình Dell UltraSharp U3023E 30\" IPS 2K', 13990000, 10, 1, 1, 3, 2, 1, 1),
(64, '/images/products/a4966942-e838-438b-bf0f-5693266b4841.jpg', '/images/products/b99e0145-e19c-4323-b230-42535cc35d45.jpg', '/images/products/10d3d22f-4638-4a2a-ae2b-ee6995caa3b5.jpg', '/images/products/2db566c8-95b2-4e22-8ceb-c067048aa95f.jpg', 'zxc', 'Màn hình Dell UltraSharp U2724DE 27\" IPS 2K 120Hz USBC', 11290000, 10, 0, 1, 3, 2, 1, 1),
(65, '/images/products/47c553fd-0ef2-40b5-baab-723ba1f6c3be.jpg', '/images/products/5db02233-af48-4da3-94d0-5e0ee12fa64e.jpg', '/images/products/66dc686c-62c1-42fa-a2a9-7fd36449be6d.jpg', '/images/products/9bb8d659-7c8e-4ae7-8b66-217438eb86d7.jpg', 'zxc', 'Màn hình Dell UltraSharp U2424HE 24\" IPS 120Hz USBC', 6550000, 10, 0, 1, 3, 2, 1, 1),
(66, '/images/products/5dd609de-fab1-4c60-ad47-772777ad382e.jpg', '/images/products/712d56a5-e2bd-4217-942f-e5762a1a3d97.jpg', '/images/products/84849904-bafe-4a87-8193-1990bc130fcd.jpg', '/images/products/ba169fb3-2896-4f48-914a-4cedbd2b8ca3.jpg', 'zxc', 'Màn hình Dell UltraSharp U2424H 24\" IPS 120Hz', 5690000, 20, 0, 1, 3, 2, 1, 1),
(67, '/images/products/52a79dbf-477d-47cd-b6ac-da978571b899.jpg', '/images/products/a6fa94a2-95fd-4631-a7d0-7910951c8b7b.jpg', '/images/products/1dc0cc6a-0da3-4696-98d0-3a8652eea2e3.jpg', '/images/products/7dd5589c-ebbd-4ae9-a302-886317e81c86.jpg', 'zxc', 'Màn hình Dell UltraSharp U2723QE 27\" IPS 4K USBC RJ45 chuyên đồ họa', 12450000, 20, 0, 1, 3, 2, 1, 1),
(68, '/images/products/73f44b81-ebea-4252-9943-70bd52d2d91c.jpg', '/images/products/a84f585c-c961-4b92-9bf7-d6f21d61a4b2.jpg', '/images/products/e387903b-6588-4a49-a271-335580629b1c.jpg', '/images/products/cd70129c-020e-418d-862b-624fd3dfde29.jpg', 'zxc', 'Màn hình Dell UltraSharp U3223QE 32\" IPS 4K USBC chuyên đồ họa', 18690000, 10, 0, 1, 3, 2, 1, 1),
(69, '/images/products/03488324-b236-41cc-9c98-3f2bb5e02528.jpg', '/images/products/19b35c9a-84de-45c2-b945-a1287d55920f.jpg', '/images/products/9d74bce1-2785-4e44-a550-56ecec7b610f.jpg', '/images/products/d7d8e4b6-3328-4a93-8938-7b733a78962f.jpg', 'zxc', 'Màn hình cong Dell Alienware AW3423DW 34\" QD-OLED 2K 175Hz G-Sync Ultimate', 33990000, 10, 0, 1, 3, 2, 1, 1),
(70, '/images/products/a4238381-d272-4347-ace9-f13dd344f7fc.jpg', '/images/products/4e23b1e5-656d-404a-b549-bb658770f68d.jpg', '/images/products/a5f5e10a-146d-49b6-a96e-5f05cea1e839.jpg', '/images/products/d84130b2-fd96-46e4-9ff8-db42865a0dde.jpg', 'zxc', 'Màn hình cong Dell UltraSharp U3824DW 38\" IPS 2K USBC', 27490000, 10, 0, 1, 3, 2, 1, 1),
(71, '/images/products/06c46797-5381-4d87-98cc-dcd9426148b2.jpg', '/images/products/28bc702c-c723-4fd0-a21b-e580ae37f710.jpg', '/images/products/63e3f9a6-24e7-4083-a5d4-48759a7ec1ac.jpg', '/images/products/20275efe-5c64-4750-993c-03547a2f3e20.jpg', 'zxc', 'Màn hình cong Dell UltraSharp U3421WE 34\" IPS 2K RJ45', 19990000, 10, 0, 1, 3, 2, 1, 1),
(72, '/images/products/0a91ec9d-0f48-41ed-a7fe-63827aa4588c.jpg', '/images/products/d82251cf-f208-470c-8225-cc03de7e639f.jpg', '/images/products/e7095aa9-0fd4-4b0f-ae0a-9d3e1c3e23db.jpg', '/images/products/887ab61f-feeb-4b80-aa6f-fa23c0f3bfdc.jpg', 'zxc', 'Màn hình LG 27GS95QE-B UltraGear 27\" OLED 2K 240Hz G-Sync', 19590000, 10, 0, 1, 7, 2, 1, 1),
(73, '/images/products/398068fa-e139-44d2-95fa-245abba654c0.jpg', '/images/products/643b3aef-2cc8-483a-addf-137f5c3cf13c.jpg', '/images/products/ce5aea67-fc7f-4b2b-8ad8-82ec84c5ccfd.jpg', '/images/products/7bdd7abe-0be4-48ad-be2c-7e3eea3dc2c8.jpg', 'zxc', 'Màn hình LG 32GR93U-B UltraGear 32\" IPS 4K 144Hz Gsync chuyên game', 16990000, 10, 0, 1, 7, 2, 1, 1),
(74, '/images/products/6b0b6dc0-3735-4dac-90ab-743ed244b1dd.jpg', '/images/products/79027f32-114b-4d16-8437-1c5b233a51f3.jpg', '/images/products/bbda5b49-f8b7-4c6a-a276-0c97f9925b0b.jpg', '/images/products/e7c98f4f-93dd-4ecb-93dc-45b9721d9ea4.jpg', 'zxc', 'Màn hình LG 32UR500-B 32\" 4K HDR 10', 6990000, 10, 0, 1, 7, 2, 1, 1),
(75, '/images/products/033c3ee1-c911-4edd-9068-6b11f0213661.jpg', '/images/products/3b5b61ed-2aef-41c5-9157-a6485544f7b0.jpg', '/images/products/805ef78b-6d04-4223-b6c4-b0a21de3d75b.jpg', '/images/products/9ee94d58-4f27-4551-9b4d-ae7c7412bfde.jpg', 'zxc', 'Màn hình LG 45GR95QE-B UltraGear 45\" OLED 2K 240Hz G-Sync', 30990000, 10, 0, 1, 7, 2, 1, 1),
(76, '/images/products/3a4a7b7f-6705-4bd1-840b-6662625921e7.jpg', '/images/products/ec3a161a-d051-4f1f-9cdd-87eac93e0797.jpg', '/images/products/eff001d7-70d1-4e5b-a947-4b15a0408971.jpg', '/images/products/6ddf7264-1f82-454d-a36f-cf3234f77859.jpg', 'zxc', 'Màn hình cong LG 38WR85QC-W 38\" Nano IPS 2K 144Hz Gsync', 31050000, 10, 0, 1, 7, 2, 1, 1),
(77, '/images/products/0efc8c6d-d76f-46d3-b6e4-121373b3a715.jpg', '/images/products/480e3f3e-8f05-4906-9746-572b199fe8e6.jpg', '/images/products/b3398bf4-c598-4ec1-bed8-44a68613265a.jpg', '/images/products/587312dc-9c49-46fd-9a21-e35ada78ee05.jpg', 'zxc', 'Màn hình LG 29WQ600-W 29\" IPS 100Hz USBC HDR10 UWFHD', 4990000, 10, 0, 1, 7, 2, 1, 1),
(78, '/images/products/bebc8749-e369-4e9e-8d9c-ef8f5e5b250a.jpg', '/images/products/d21f9482-49ef-4ccd-a99b-9ed674f8e56c.jpg', '/images/products/e2028dc1-a39c-4121-9afb-176ce85f34a8.jpg', '/images/products/72e5ea25-90ab-4e39-b677-42b23c7be114.jpg', 'zxc', 'Màn hình LG 32UN880-B 32\" IPS 4K HDR 10 chuyên đồ họa', 11550000, 10, 0, 1, 7, 2, 1, 1),
(79, '/images/products/9e47e773-8340-4bab-be03-b9785c218102.jpg', '/images/products/40013dd5-d014-47a1-b4d4-2ce202df52cf.jpg', '/images/products/df6f43c0-c150-4f5f-991d-3656ec7078a7.jpg', '/images/products/6b911fb7-840c-4d9a-a7c1-45e87af390a8.jpg', 'zxc', 'Màn hình LG 24GN65R-B 24\" IPS 144Hz HDR10 Freesync chuyên game', 3450000, 10, 0, 1, 7, 2, 1, 1),
(80, '/images/products/234f969c-5ae8-4e40-a977-d571dff281b7.jpg', '/images/products/11c55e6d-3b9c-48a1-99bd-656cd2a38de6.jpg', '/images/products/43cb50e3-adff-4d00-b692-87bd2892a533.jpg', '/images/products/35c00252-c625-4c9a-a604-f8a018394223.jpg', 'zxc', 'Màn hình AORUS FO27Q3 27\" OLED 2K 360Hz chuyên game', 28990000, 10, 0, 1, 11, 2, 1, 1),
(81, '/images/products/c156313c-6f27-45c4-9e57-c5f8fc0cb2d1.jpg', '/images/products/8b3014a2-cfd3-4a8f-b9f9-ad0cc8eff5ba.jpg', '/images/products/b5de179b-8526-4ec0-8b86-1e193d57c9a3.jpg', '/images/products/7057978d-c5fc-474b-9233-8826886c8c7a.jpg', 'zxc', 'Màn hình GIGABYTE M27Q X 27\" IPS 2K 240Hz chuyên game', 10590000, 10, 0, 1, 11, 2, 1, 1),
(82, '/images/products/a21a124a-5dfc-4d86-885e-9fe74a282bce.jpg', '/images/products/4dcb48d8-d9f1-4bfc-bf3c-fe12c4ef93d6.jpg', '/images/products/04c2829a-f0c3-4abe-bdf9-a46b7a6198a8.jpg', '/images/products/0f7b7269-148c-4022-bb9a-d3eca7690201.jpg', 'zxc', 'Màn hình GIGABYTE G24F 2 24\" IPS 180Hz chuyên game', 3390000, 10, 0, 1, 11, 2, 1, 1),
(83, '/images/products/192008ed-eb78-45b0-912c-3a0666bfbd99.jpg', '/images/products/959a7386-b891-435c-960b-7bebeed695ff.jpg', '/images/products/600fa476-2d78-4f04-a6be-7d20290f2cba.jpg', '/images/products/47ae7943-8351-4af9-ae4f-5f3018594e04.jpg', 'zxc', 'Màn hình cong GIGABYTE M32QC 32\" VA 2K 170Hz chuyên game', 7890000, 10, 0, 1, 11, 2, 1, 1),
(84, '/images/products/2116a6ef-37ba-485e-9820-2558a40b336e.jpg', '/images/products/8b72ed90-0b02-40ba-a39b-1b26c3dcc78b.jpg', '/images/products/77b0d32e-f467-4f88-9c57-ac05198ea6ed.jpg', '/images/products/084afa38-3005-4e3f-8af0-f8b1ebe50d6f.jpg', 'zxc', 'Màn hình cong GIGABYTE G34WQC A 34\" 2K 144Hz HDR400 chuyên game', 8390000, 10, 0, 1, 11, 2, 1, 1),
(85, '/images/products/e43140f8-25cb-4619-bd88-00d4a3e13814.jpg', '/images/products/02fcf0ad-56de-44f8-99c1-374fdd89e227.jpg', '/images/products/0978622f-d3fa-4fed-8e97-5f36f68a2321.jpg', '/images/products/2e76ac0a-d3b7-4cc9-97a1-4d99773a1111.jpg', 'zxc', 'Màn hình cong GIGABYTE GS27FC 27\" 180Hz chuyên game', 3990000, 10, 0, 1, 11, 2, 1, 1),
(86, '/images/products/372e527a-848e-4e68-9469-9601908881eb.jpg', '/images/products/a003be7d-f660-4323-bae5-2082a1b32ad4.jpg', '/images/products/d7ac65f6-ec72-41c8-b7d8-97b21af6bc0b.jpg', '/images/products/7634079c-aa76-4ad5-8d7c-259eabf9a5bd.jpg', 'zxc', 'Màn hình cong Samsung Odyssey G9 LS49CG954SE 49\" OLED 2K 240Hz', 33590000, 10, 0, 1, 12, 2, 1, 1),
(87, '/images/products/fa1db58f-359b-4389-8030-4945413eaae8.jpg', '/images/products/76bc8a5f-7ca7-45f5-af3b-b351257942fa.jpg', '/images/products/f386d79b-efe2-43fc-81f4-d0d090c0f7b2.jpg', '/images/products/d54b9a44-b6fd-4265-ae5f-0406a21f09b8.jpg', 'zxc', 'Màn hình cong Samsung Odyssey NEO G9 LS57CG952 57\" 4K 240Hz', 58990000, 10, 0, 1, 12, 2, 1, 1),
(88, '/images/products/a31718ef-2d94-4d47-bed9-be1e347323b1.jpg', '/images/products/03298ccf-5e4d-434c-9daf-c84b93e5ffcd.jpg', '/images/products/41fda668-bff9-475a-8878-fc7d5c850972.jpg', '/images/products/15859af6-8ced-4fde-96f8-39c7900156dd.jpg', 'zxc', 'Màn hình cong Samsung Odyssey G9 LS49CG934 49\" OLED 2K 240Hz', 28590000, 10, 1, 1, 12, 2, 1, 1),
(89, '/images/products/78ae7f85-7e96-4cec-81f7-eb80e1cb71fb.jpg', '/images/products/3ac75714-e570-4476-90d2-3d4aae28bed7.jpg', '/images/products/2027f3c5-6b0b-4f63-9a6a-075e36e75243.jpg', '/images/products/12969143-d02e-46da-bc76-9e3a243afe7f.jpg', 'zxc', 'Màn hình cong Samsung LS27CG552 27\" 2K 165Hz chuyên game', 4990000, 10, 0, 1, 12, 2, 1, 1),
(90, '/images/products/d2979f69-6e5c-4ad5-9124-f4fe21385052.jpg', '/images/products/191a0a33-ea0b-48e8-a59e-c1be15ff2cff.jpg', '/images/products/f01ca7f5-46f4-4519-87d4-3944bcfa1a2f.jpg', '/images/products/aeca821e-d474-4a82-bcc9-f98e37888d2e.jpg', 'zxc', 'Màn hình Samsung LS25BG400 25\" IPS 240Hz HDR10 Gsync', 5090000, 10, 0, 1, 12, 2, 1, 1),
(91, '/images/products/b39ee35d-dc11-4fda-a9fd-46694bbad0af.jpg', '/images/products/808ca7d7-7020-4525-be31-5bab482ac3dd.jpg', '/images/products/df273e80-9102-41ce-ade4-cd667d4884f0.jpg', '/images/products/4cb071fd-897e-40be-a655-0e9bb6968205.jpg', 'zxc', 'Màn hình Samsung ViewFinity LS27B800 27\" IPS 4K USBC chuyên đồ họa', 7990000, 10, 0, 1, 12, 2, 1, 1),
(93, '/images/products/4e8f2ebc-6deb-4033-83a7-4c744ee0ec48.jpg', '/images/products/803a528c-722a-4fc6-aa54-ea79d95d2473.jpg', '/images/products/5007d3e5-36fa-4af3-9a13-c116d5efabd9.jpg', '/images/products/c461de16-cea6-4f5f-bac4-01457eb98752.jpg', 'zxc', 'Laptop gaming Acer Aspire 5 A515 58GM 598J', 18490000, 10, 0, 1, 2, 1, 1, 1),
(94, '/images/products/7956cb77-249b-4d6e-a835-d8b2ab387da1.jpg', '/images/products/e31aa17f-5172-430f-aef7-3191625de466.jpg', '/images/products/f55d0f06-b015-444e-beba-be7778fee399.jpg', '/images/products/f76dcd34-0152-4cfc-a559-11dd64021254.jpg', 'zxc', 'Laptop gaming Acer Nitro V ANV15 51 75GS', 28990000, 10, 0, 1, 2, 1, 1, 1),
(95, '/images/products/62fd3941-7772-4894-b34f-f27d30dbaaad.jpg', '/images/products/096c0cdd-152a-4990-bf9d-bf0655cee432.jpg', '/images/products/20c4d377-f723-448c-a79c-7649ef9ef899.jpg', '/images/products/83ce388c-8ad7-4534-881f-de804abd9d6e.jpg', 'zxc', 'Laptop gaming Acer Predator Helios 18 PH18 72 908N', 102990000, 10, 1, 1, 2, 1, 1, 1),
(96, '/images/products/d3842e29-08dd-4e68-8464-03acc765ebb4.jpg', '/images/products/5de4a88a-c83f-4093-9afe-15ce8df473b1.jpg', '/images/products/60956b2d-5034-4720-bb51-6285de589c87.jpg', '/images/products/8de45d39-6e9e-43d0-b0a5-317e7ac3dcf2.jpg', 'zxc', 'Laptop gaming Acer Nitro 5 Tiger AN515 58 50EE', 19990000, 10, 0, 1, 2, 1, 1, 1),
(97, '/images/products/4380394f-f870-4a57-8c36-db5db753eab1.jpg', '/images/products/63a9d925-0347-4059-b4c9-dbe80cc1286e.jpg', '/images/products/f03f588f-78f3-4b81-a180-ba67f89691b9.jpg', '/images/products/6bf350d5-83cd-486d-b887-2ba64ae1bd87.jpg', 'zxc', 'Laptop gaming Acer Nitro V ANV15 51 72VS', 23990000, 10, 0, 1, 2, 1, 1, 1),
(98, '/images/products/f6359b3e-1bd3-4eff-bb1c-c11e5eb6ba00.jpg', '/images/products/bc90f71d-b0c3-4f67-8b40-59ba57d7b38e.jpg', '/images/products/e4746593-3d03-4512-b6ad-56c13f619e1c.jpg', '/images/products/98819623-6c59-4511-8824-abd3ff8129bf.jpg', 'zxc', 'Laptop gaming Acer Predator Helios Neo 16 PHN16 71 74QR', 47990000, 10, 0, 1, 2, 1, 1, 1),
(99, '/images/products/84f38e23-257f-4668-a0c1-6f837dd1c92e.jpg', '/images/products/3e02f351-2c07-417d-889b-f7e5667d8546.jpg', '/images/products/c5a7ec6e-eda9-4b37-8269-e0b57bff9011.jpg', '/images/products/b24d1f4e-17a0-4d0d-9cca-e14d1a62b3e9.jpg', 'zxc', 'Laptop Acer Swift X14 SFX14 71G 78SY', 39990000, 10, 0, 1, 2, 1, 1, 1),
(100, '/images/products/1994cac7-ad1e-4438-a471-c415ef60dc3a.jpg', '/images/products/4b17af34-1dcd-4b71-a787-ddb80a6a68b0.jpg', '/images/products/24067abc-2938-44f2-86c1-9b58db87320e.jpg', '/images/products/4838b51e-0e9a-4349-9f74-9ea360c77e2d.jpg', 'zxc', 'Laptop gaming Acer Nitro 5 Tiger AN515 58 5935', 25490000, 10, 0, 1, 2, 1, 1, 1),
(101, '/images/products/187eab15-406e-479a-bce3-a91e8d348ef5.jpg', '/images/products/cb696cc6-cf5b-4786-8dd4-fcdb02fa9254.jpg', '/images/products/5e16d69f-fe50-4fa3-b7d5-b16d0d7759ee.jpg', '/images/products/0bfeb7b5-3982-4f84-8e5a-4c358663272a.jpg', 'zxc', 'Laptop gaming Acer Nitro 16 Phoenix AN16 41 R50Z', 28990000, 10, 0, 1, 2, 1, 1, 1),
(102, '/images/products/fdaca5ab-40d5-4858-8e18-277a42297559.jpg', '/images/products/ac0a01d5-5b96-48fb-907f-6d1b18c744ca.jpg', '/images/products/4c634293-ceba-4fa7-8424-093aa78f7c07.jpg', '/images/products/b616d557-dc60-4691-ac8a-e9053fabef80.jpg', 'zxc', 'Laptop gaming Acer Predator Helios Neo 16 PHN16 72 94KC', 55990000, 10, 0, 1, 2, 1, 1, 1),
(103, '/images/products/0bd26ad2-cef1-49ab-85de-48b1c06a2578.jpg', '/images/products/c35f7422-ad7e-4380-b427-78992d9fd8ae.jpg', '/images/products/c02d3f65-7479-4e79-80cf-2f665a5d8c13.jpg', '/images/products/efc82415-027c-4062-b2da-1f745be30ed3.jpg', 'zxc', 'Laptop gaming Acer Nitro 5 AN515 45 R86D', 24490000, 10, 0, 1, 2, 1, 1, 1),
(104, '/images/products/faec607a-6e60-41d2-b362-20f6d295aa43.jpg', '/images/products/10a97fda-1d0e-4963-b942-c2d7773bea06.jpg', '/images/products/d02ed9b8-c8f8-4127-8f65-217166a3e4e1.jpg', '/images/products/a8b197f3-0e91-48d0-a7a3-dbeb724a1ca4.jpg', 'zcx', 'Laptop gaming Acer Nitro 17 Phoenix AN17 51 50B9', 33490000, 10, 0, 1, 2, 1, 1, 1),
(105, '/images/products/0d67f3a5-ffec-4351-97ec-853361e6d0c2.jpg', '/images/products/16b15022-2ce0-4c33-a463-f13a04cc52c6.jpg', '/images/products/1d0860e3-62fd-4b83-a47f-1af0a4ccd175.jpg', '/images/products/bf350048-b0c8-4c99-bdfe-cb65787b7332.jpg', 'zxc', 'Laptop ASUS Vivobook 15 OLED A1505VA MA469W', 23990000, 10, 0, 1, 1, 1, 1, 1),
(106, '/images/products/facabcd9-1b58-45bb-8283-2f0453151de2.jpg', '/images/products/6630b0ab-606d-43b4-badd-3ecdf48049a1.jpg', '/images/products/dc75394a-d4fe-4824-b2ee-3227dcaa5523.jpg', '/images/products/02ec5d8f-0e82-4a16-a1f3-fc06ab51820d.jpg', 'zxc', 'Laptop ASUS Vivobook 14 OLED A1405VA KM095W', 17290000, 10, 0, 1, 1, 1, 1, 1),
(107, '/images/products/361efbf2-0a24-402d-af64-527ec94c54b3.jpg', '/images/products/3c90862d-7734-4394-a874-fdb4fac89388.jpg', '/images/products/bfbaf85c-3ddb-4ac1-8dea-7323eab3a45b.jpg', '/images/products/ab0890b9-38ae-4fd2-9392-c9e5bd05d6cb.jpg', 'zxc', 'Laptop gaming ASUS ROG Zephyrus G16 GU603VU N4019W', 39990000, 10, 0, 1, 1, 1, 1, 1),
(108, '/images/products/c0e8e84c-7aca-4571-9e0c-e438e4e1db4b.jpg', '/images/products/e8ffc493-befc-4d1e-8045-eb8616a695c2.jpg', '/images/products/b6b3f1c9-0b03-41d6-9964-8a3fa015b2fa.jpg', '/images/products/4809131b-92a8-4aaa-85bc-4975f869d339.jpg', 'zxc', 'Laptop gaming ASUS TUF Gaming A15 FA507UV LP090W', 33990000, 10, 0, 1, 1, 1, 1, 1),
(109, '/images/products/a562fe34-04dc-4c8a-8f70-6e818f98840c.jpg', '/images/products/be4b0662-1128-4df1-aae3-6b86ea717d2b.jpg', '/images/products/5ceedaac-5e30-4b18-ac13-e61432871af8.jpg', '/images/products/b96d2529-177b-441f-b2e6-c046d315b482.jpg', 'zxc', 'Laptop gaming ASUS TUF Gaming A15 FA506NC HN011W', 17790000, 10, 0, 1, 1, 1, 1, 1),
(110, '/images/products/8a191850-f231-4d7a-9b36-abbebea1ff77.jpg', '/images/products/178782ae-0aa1-45ca-a13e-e7cb8928be8b.jpg', '/images/products/1afea754-35b3-4813-b537-91d72792d659.jpg', '/images/products/77533511-0b3f-438f-b50a-6d66ad8b7115.jpg', 'zxc', 'Laptop gaming ASUS ROG Zephyrus G16 GU605MI QR116W', 73990000, 10, 0, 1, 1, 1, 1, 1),
(111, '/images/products/bd8a94d0-97de-48fe-b972-4897645f330a.jpg', '/images/products/3d596805-d76e-4f81-8d3c-ab7d6a037c32.jpg', '/images/products/59f4849a-b24e-4c8b-a6b1-f683e6421cdf.jpg', '/images/products/4826e0f4-6552-45dc-bd29-cb9449885157.jpg', 'zxc', 'Laptop gaming ASUS TUF Gaming F15 FX507VU LP198W', 27490000, 10, 0, 1, 1, 1, 1, 1),
(112, '/images/products/36a9eae8-3fc7-48c0-b1f2-2412e18d2c6e.jpg', '/images/products/0eb0b5be-4d53-46ae-b5b4-dfbb94538f06.jpg', '/images/products/f423f1b0-b537-4653-9eab-873d52141704.jpg', '/images/products/87117da4-5000-49a4-9f0f-f5e0107f3cfa.jpg', 'zcx', 'Laptop gaming ASUS ROG Strix SCAR 18 G834JYR R6011W', 117990000, 10, 1, 1, 1, 1, 1, 1),
(113, '/images/products/60fb5d93-3275-4b11-88ec-8b141d260d77.jpg', '/images/products/a453ea45-07b3-4fb5-b08b-fed2bc9bc90d.jpg', '/images/products/6fbe3010-845b-4448-be03-0d80726fd70b.jpg', '/images/products/72a83278-bc23-46f9-960f-c415338a4f91.jpg', 'zxc', 'Laptop gaming ASUS ROG Zephyrus Duo 16 GX650PZ NM031W', 98990000, 10, 0, 1, 1, 1, 1, 1),
(114, '/images/products/cd0b9d9d-4e80-4d87-b3ff-396d2eaea7f8.jpg', '/images/products/20c40072-327c-4d59-9c72-d8713ea67270.jpg', '/images/products/d2e79a34-b8a3-470d-92bc-799c6655640a.jpg', '/images/products/b45ea1ec-1dff-4b5d-8bd1-94ce3d29a80c.jpg', 'zxc', 'Laptop Asus ZenBook Flip OLED UP3404VA KN039W', 28990000, 10, 0, 1, 1, 1, 1, 1),
(115, '/images/products/0785f8c7-1b10-46a5-a09d-edd34a1cbc5d.jpg', '/images/products/c390d93c-fcca-47b4-a30c-d0e6c85585f7.jpg', '/images/products/21f9e967-d4a0-4304-b166-e052e2cbcf4b.jpg', '/images/products/0595ec9e-2426-4ada-8857-70b13298b333.jpg', 'zxc', 'Laptop gaming ASUS ROG Zephyrus G14 GA403UV QS170W', 57990000, 10, 0, 1, 1, 1, 1, 1),
(116, '/images/products/6c530e37-81c5-40d7-b340-568288549538.jpg', '/images/products/ea1ba527-90b1-41f3-bede-99e1513a2974.jpg', '/images/products/278d367e-1cef-4da7-96cc-4928d1fdba2b.jpg', '/images/products/af9f9d41-5f26-4744-974b-fd7129c55f5c.jpg', 'zxc', 'Laptop Asus Vivobook 15 OLED A1505VA L1114W', 17290000, 10, 0, 1, 1, 1, 1, 1),
(117, '/images/products/5cd543c7-6d4b-4fed-92cc-2b12bd49a254.jpg', '/images/products/fdfbe294-04b9-45a5-a475-6edf26692d8d.jpg', '/images/products/2d7c1b9a-a358-495e-ad8c-fcec07c360ba.jpg', '/images/products/4164d1b2-41e3-454c-bcab-77b86d4bd844.jpg', 'zxc', 'Laptop Dell Inspiron 16 5640 C7U161W11IBU', 25890000, 10, 0, 1, 3, 1, 1, 1),
(118, '/images/products/45d01e2e-bf69-43f7-8c16-9dcef79fee0d.jpg', '/images/products/be06509f-4c4f-4b2a-838c-d16abde3ec28.jpg', '/images/products/61713ad2-447d-44d8-a1ef-139ccd801e57.jpg', '/images/products/b780dddb-81be-442f-b829-31fb446d04e3.jpg', 'zxc', 'Laptop Dell Inspiron 14 5440 C5U165W11IBD2', 24990000, 10, 0, 1, 3, 1, 1, 1),
(119, '/images/products/3af8eb27-d0d1-49ac-9ed8-8d1072631701.jpg', '/images/products/6c08eac7-0712-4b2a-acca-bc75d47ff5b0.jpg', '/images/products/35e82f57-be73-49e0-81f7-0b683c30660c.jpg', '/images/products/ca48b360-ca70-4728-827c-36f207d6b0b9.jpg', 'zxc', 'Laptop Dell Inspiron 14 5440 i5U085W11IBU', 18890000, 10, 0, 1, 3, 1, 1, 1),
(120, '/images/products/8f902f25-95b5-4a43-b8da-dc8c3f1526e8.jpg', '/images/products/9f48505a-b2b9-4251-843b-e6793541c3b4.jpg', '/images/products/5e4660d5-b831-431b-9892-fb3b68e7602a.jpg', '/images/products/ab5dd3d7-a948-4511-b766-f29a3933adf7.jpg', 'zxc', 'Laptop Dell Inspiron 15 3530 i5U085W11SLU', 16990000, 10, 0, 1, 3, 1, 1, 1),
(121, '/images/products/c02d64d7-7b4b-49c7-b2ec-e5b58467c025.jpg', '/images/products/fb02a34d-1e7b-4e39-95d1-9072ea2a84d8.jpg', '/images/products/f191a90a-b2fe-4abb-b99e-c0ed3ba0cef3.jpg', '/images/products/af670aeb-de66-407a-a214-4c41cd6fe3a3.jpg', 'zxc', 'Laptop gaming Dell G15 5530 i9H161W11GR4060', 44990000, 10, 0, 1, 3, 1, 1, 1),
(122, '/images/products/3093f46e-602c-425d-92f5-ff25d1b92489.jpg', '/images/products/fee7d76b-3fad-48fe-be0d-2ff8a2f8ec46.jpg', '/images/products/26d5ae41-543d-4be7-a7d9-220d8f2916ab.jpg', '/images/products/0c06ba81-9ba8-45b0-913b-43cdbc8984bf.jpg', 'zxc', 'Laptop gaming Dell G15 5530 i7H161W11GR4060', 39990000, 10, 0, 1, 3, 1, 1, 1),
(123, '/images/products/7bbcba4f-20de-417d-ae9f-a2f62f50144d.jpg', '/images/products/b000568f-e0bd-4b38-b34d-54dba7dac515.jpg', '/images/products/4f183a96-654d-492a-a637-33ac77266eb8.jpg', '/images/products/a6efa332-5a94-49f0-97b2-06073577e356.jpg', 'zxc', 'Laptop gaming Gigabyte G5 KF E3VN313SH', 23290000, 10, 0, 1, 11, 1, 1, 1),
(124, '/images/products/e0881e82-b99e-49e6-b430-d8c1127e9303.jpg', '/images/products/df3639b0-0645-42fa-bb78-632dd6b65071.jpg', '/images/products/f5f51282-e02d-4112-9011-ffed047ac458.jpg', '/images/products/b5c7765c-689a-4d13-9515-7497de84ac8b.jpg', 'zxc', 'Laptop gaming Gigabyte AORUS 15 9MF E2VN583SH', 27490000, 10, 0, 1, 11, 1, 1, 1),
(125, '/images/products/d2238e17-8e93-493c-9a59-3a0966a1a11d.jpg', '/images/products/c4d0fc1f-ae32-4376-9024-e395528ee786.jpg', '/images/products/31ce6528-9895-4af8-aa89-61667b0b94c4.jpg', '/images/products/a8d6fd0a-1da7-41a1-8e7e-7c1d74fe8518.jpg', 'zxc', 'Laptop gaming Gigabyte G5 MF5 52VN353SH', 21990000, 10, 0, 1, 11, 1, 1, 1),
(126, '/images/products/1f9c7147-5a97-4ab0-aee7-1debbb5e92fb.jpg', '/images/products/f3793340-8656-4267-8a4e-4c032d0c52f3.jpg', '/images/products/a918ed19-d368-41f1-97c3-cfd6750e7443.jpg', '/images/products/9a865110-a782-4615-bc02-4ab26be8fe6c.jpg', 'zxc', 'Laptop gaming Gigabyte G6 KF H3VN853SH', 27490000, 10, 0, 1, 11, 1, 1, 1),
(127, '/images/products/f640dbf0-e958-41e8-92dc-8c53d7fbbb40.jpg', '/images/products/46ff15b0-06aa-46e3-8d17-c05a941881a3.jpg', '/images/products/320e9355-e382-4103-8a8f-5699cfd4a85b.jpg', '/images/products/4f0803fc-8a03-4cd3-a9b9-2fb93e72a311.jpg', 'zxc', 'Laptop gaming HP OMEN 16 wf0129TX 8W943PA', 64990000, 10, 0, 1, 6, 1, 1, 1),
(128, '/images/products/da97ad67-82fc-45ce-9b9a-1d2875113535.jpg', '/images/products/201ca689-0d0c-433e-bfb1-446a9a0c4a1e.jpg', '/images/products/2859443e-bdde-437f-a5ae-af5bb30aece1.jpg', '/images/products/a4aa6715-6c0d-4cdd-b291-c231a579f634.jpg', 'zxc', 'Laptop gaming HP VICTUS 16-r0129TX 8C5N4PA', 27990000, 10, 0, 1, 6, 1, 1, 1),
(129, '/images/products/5aee54c0-68cd-4796-9d12-de5d48895d65.jpg', '/images/products/dfd344cc-0142-481f-a734-7f35d47dd1cb.jpg', '/images/products/b26a8f89-62ef-4a52-b143-78d46934e376.jpg', '/images/products/48ed3def-c535-4660-a982-4505405db028.jpg', 'zxc', 'Laptop gaming HP VICTUS 15-fb1022AX 94F19PA', 19990000, 10, 0, 1, 6, 1, 1, 1),
(130, '/images/products/63b4ec6c-570f-4088-8493-5a05f340634d.jpg', '/images/products/66d23eec-eef4-4520-a263-c82916a4ad98.jpg', '/images/products/f31c7be4-caa7-4d2d-ae76-88a61111695f.jpg', '/images/products/51276fae-c4d5-447d-801c-3acf9ed8bf33.jpg', 'zxc', 'Laptop gaming Lenovo LOQ 15AHP9 83DX0085VN', 30990000, 10, 0, 1, 5, 1, 1, 1),
(131, '/images/products/4ec8e6cd-6400-40aa-bbae-cec06f5d7b2b.jpg', '/images/products/db547010-6baa-41cd-99d6-91a68e2dea8e.jpg', '/images/products/c31e9503-d9ae-4a4c-8e5e-1567407c6a3c.jpg', '/images/products/e0b55d27-f0db-4344-adb5-84bd11c64091.jpg', 'zxc', 'Laptop gaming Lenovo Legion 9 16IRX9 83G0001AVN', 136990000, 10, 0, 1, 5, 1, 1, 1),
(132, '/images/products/36d95410-210f-4125-8eaa-11cf8cae0851.jpg', '/images/products/653fa435-f882-4772-81eb-7f1f32e9224d.jpg', '/images/products/f2e0db93-e1f9-487c-8523-791c7febfdc7.jpg', '/images/products/1883246f-7d85-4a9a-bba1-77e3024a1c7f.jpg', 'zxc', 'Laptop gaming Lenovo Legion 7 16IRX9 83FD006JVN', 64990000, 10, 0, 1, 5, 1, 1, 1),
(133, '/images/products/443c4a49-c52f-47d4-8cfe-bed7531e6de5.jpg', '/images/products/c6e0b717-999d-4ae7-821f-6432f5bd4080.jpg', '/images/products/f4ebc8db-b89a-4bc2-9073-fb8cab736999.jpg', '/images/products/c60bcfe8-22ef-42d2-9966-408fd3b0e73a.jpg', 'zxc', 'Laptop gaming Lenovo LOQ 15IRX9 83DV00ERVN', 31990000, 10, 0, 1, 5, 1, 1, 1),
(134, '/images/products/284b384d-1e22-4466-b6d3-76f6721202de.jpg', '/images/products/243ea6a5-18c6-43f1-b9fd-28f3bd64f004.jpg', '/images/products/65f1e31c-3e8b-4865-869b-98e7a4bf6b55.jpg', '/images/products/8bf29b58-68d6-438f-86d0-f844d1017c7e.jpg', 'zxc', 'Laptop gaming Lenovo Legion 5 16IRX9 83DG004YVN', 41990000, 10, 0, 1, 5, 1, 1, 1),
(135, '/images/products/87168f6b-06cb-4fcf-a2b6-bcd1464887e6.jpg', '/images/products/caa6132c-898b-418b-bd97-5b73570cb2c9.jpg', '/images/products/a8153d92-6b4c-4469-97cf-e21be9c4c9b1.jpg', '/images/products/f1ed1de5-7697-493e-b78d-8b520ae4ac72.jpg', 'zxc', 'Laptop gaming Lenovo Legion Pro 7 16IRX9H 83DE001NVN', 82990000, 10, 0, 1, 5, 1, 1, 1),
(136, '/images/products/7f05d9fd-d70d-4c79-b9c0-54402f07d34a.jpg', '/images/products/9d57502e-23b3-45f3-8e2d-a3d80136a688.jpg', '/images/products/dd33388c-2fce-4877-8ebb-d4532e44cb24.jpg', '/images/products/0417ea66-f54c-4978-a133-713692153a3b.jpg', 'zxc', 'Laptop gaming Lenovo Legion Pro 5 16IRX9 83DF0046VN', 52990000, 10, 0, 1, 5, 1, 1, 1),
(137, '/images/products/9e4fbad5-a470-4190-995b-557ab9c97478.jpg', '/images/products/4691f3d6-847f-41f0-ab79-9c74b93afe16.jpg', '/images/products/faf73c3e-395c-49a0-8db0-5d13c6d15a68.jpg', '/images/products/64c6fe0d-581f-4e43-8add-b1e88943b842.jpg', 'zxc', 'Laptop LG Gram Ultra Slim 15Z90RT GAH55A5', 38990000, 10, 0, 1, 7, 1, 1, 1),
(138, '/images/products/f847c49d-469b-4cd0-a6c0-976834c3cc69.jpg', '/images/products/0d6de006-1447-45a7-89a6-ec8adb774f62.jpg', '/images/products/4fa7697a-7480-42c0-9039-f5c0e6c29fa6.jpg', '/images/products/9b565a58-2761-4ea1-a723-b4777ad4d836.jpg', 'zxc', 'Laptop gaming MSI Sword 16 HX B14VEKG 459VN (20th Edition)', 32990000, 10, 0, 1, 4, 1, 1, 1),
(139, '/images/products/cf842514-96cf-4b0d-9d6f-ebabbb21c37e.jpg', '/images/products/5ceffec1-1037-442e-8e46-263ccdc331ca.jpg', '/images/products/b1df34b7-fdf2-4f29-b0f5-486affa20f01.jpg', '/images/products/9b0d90cd-ed6b-4a42-95cb-8e3c2eb20eba.jpg', 'zxc', 'Laptop gaming MSI Katana A15 AI B8VG 466VN (20th Edition)', 38990000, 10, 0, 1, 4, 1, 1, 1),
(140, '/images/products/8bd36452-2bfb-41d0-93b7-9a641cedad86.jpg', '/images/products/26b2fdc5-6988-46e3-be63-5dc2bccdb7b9.jpg', '/images/products/415b35a2-4d50-4675-82fc-0c2edc24e4d1.jpg', '/images/products/661a1d10-d80e-464c-83ed-b123765bf3af.jpg', 'zxc', 'Laptop gaming MSI Stealth 16 AI Studio A1VGG 240VN (20th Edition)', 62990000, 10, 0, 1, 4, 1, 1, 1),
(141, '/images/products/6de55adf-789f-410b-814a-a2351e084207.jpg', '/images/products/43af0488-8964-4abc-8554-d6712fd5c1f2.jpg', '/images/products/dac78d5a-1d9e-45c9-a620-715bdc981647.jpg', '/images/products/0f9447a4-09f8-4c0b-bc57-55c76d916892.jpg', 'zxc', 'Laptop gaming MSI Raider GE68 HX 14VHG 646VN (20th Edition)', 84990000, 10, 0, 1, 4, 1, 1, 1),
(142, '/images/products/4b25af91-4eb4-4c30-8eb9-bdcc1ebc467f.jpg', '/images/products/cb03e330-f342-4144-8bc9-0c0471e6c309.jpg', '/images/products/b2229cbc-b187-4d5c-9ddc-7ea1fea14265.jpg', '/images/products/6ceddc8c-fb75-4345-9ea9-367fe6f980a0.jpg', 'zxc', 'Laptop gaming MSI Titan 18 HX A14VIG 410VN (20th Edition)', 137990000, 10, 0, 1, 4, 1, 1, 1),
(143, '/images/products/c942118a-c2d9-4036-a26b-7e365fa65b08.jpg', '/images/products/3f8fc931-7421-45ee-9ebf-fcdf044da57b.jpg', '/images/products/2ab96c6a-99c0-4115-a7d3-f9bc34c8f733.jpg', '/images/products/e541ce51-9efe-4bfb-8430-3e0dbf58a578.jpg', 'zxc', 'Laptop gaming MSI Bravo 15 B7ED 010VN', 16490000, 10, 0, 1, 4, 1, 1, 1),
(144, '/images/products/a712ae3e-220e-491d-8fa2-f7ee983efd69.jpg', '/images/products/4be4fa50-bcd1-4d1b-891b-9c5474ac72ff.jpg', '/images/products/f56a6a1c-70c2-415d-93b2-8d47444341aa.jpg', '/images/products/d19f1a69-f2ca-40d6-90e3-7902cebec75d.jpg', 'zxc', 'Laptop Gaming MSI Stealth 16 Mercedes AMG A13VG 289VN', 69990000, 10, 0, 1, 4, 1, 1, 1),
(145, '/images/products/f472f18b-5fd1-4b07-b759-62b8d08ec3a3.jpg', '/images/products/ec3e14ca-5eef-4dda-8b0d-ee16e4700b77.jpg', '/images/products/9bc29768-76b8-4b12-92fb-c46afdac9724.jpg', '/images/products/d70fbff9-7532-409f-9975-fd96120d13ff.jpg', 'zxc', 'Màn hình Lenovo Legion Y27qf-30 27\" IPS 2K 240Hz chuyên game', 9690000, 10, 0, 1, 5, 2, 1, 1),
(146, '/images/products/b431185b-c142-4fbb-9e2b-08e13acc75c1.jpg', '/images/products/70706483-728c-4485-bd76-03272bd5ce59.jpg', '/images/products/db510fee-fc83-49de-bca2-ea258c11eabd.jpg', '/images/products/d0a2951b-2bac-47ed-b55a-5253be153e0c.jpg', 'zxc', 'Màn hình Lenovo Legion Y27-30 27\" IPS 165Hz chuyên game', 5490000, 10, 0, 1, 5, 2, 1, 1);
INSERT INTO `products` (`id`, `urlimage`, `urlimage1`, `urlimage2`, `urlimage3`, `description`, `name`, `price`, `quantity`, `quantity_sold`, `status`, `brand_id`, `category_id`, `condition_id`, `warranty_id`) VALUES
(147, '/images/products/87f57dcd-c541-4ce2-8a1d-e0b0d0ad721c.jpg', '/images/products/e30a18d3-2bd7-437f-b337-21366ca07952.jpg', '/images/products/6da693b7-61e8-498e-8e86-78170b286b9d.jpg', '/images/products/8f20ec56-4cec-495c-a9d9-ee4bc65cfc98.jpg', 'zxc', 'Màn hình AOC Q24G2 24\" IPS 2K 165Hz G-Sync chuyên game', 5090000, 10, 0, 1, 14, 2, 1, 1),
(148, '/images/products/07730be7-dde5-40d8-9d1d-fd584e081488.jpg', '/images/products/4c34d817-f144-43bc-ac03-eaa9d748602e.jpg', '/images/products/f9818ced-bc07-4491-847b-f9a446d77d56.jpg', '/images/products/646d2a74-f108-4d07-95ca-d1f08735044f.jpg', 'zxc', 'Màn hình AOC Agon AG275QXR 27\" IPS 2K 170Hz G-Sync chuyên game', 8290000, 10, 0, 1, 14, 2, 1, 1),
(149, '/images/products/ae70c664-381e-490f-926c-467ccf8f74ff.jpg', '/images/products/cbb0182f-e3c1-479c-9d71-3bd9d9bf31f8.jpg', '/images/products/0089ce41-e889-471e-a398-3087bcabdaef.jpg', '/images/products/431c300d-6eea-46ac-8fe0-0fcfa126e95a.jpg', 'zxc', 'Màn hình cong AOC CU34G2X 34\" 2K 144Hz', 7990000, 10, 0, 1, 14, 2, 1, 1),
(150, '/images/products/2674bbf2-9896-42dc-95df-33905cf57a99.jpg', '/images/products/2e8ffd9e-08bb-48b9-b937-1dee265df030.jpg', '/images/products/b8e67372-72ea-4402-8942-b46e2bcfd7f2.jpg', '/images/products/e473bf17-4e31-4586-a8c5-ad9098d635bd.jpg', 'zcx', 'Màn hình AOC Agon Pro AG275QXL 27\" IPS 2K 170Hz G-Sync chuyên game', 8990000, 10, 0, 1, 14, 2, 1, 1),
(151, '/images/products/8e357d25-841f-46b2-ad70-f39f63246d2e.jpg', '/images/products/cacf6b59-283e-4c44-addf-de13452bffa1.jpg', '/images/products/a9faeaaf-7fd9-4eb7-adb6-14e6a4a9d579.jpg', '/images/products/84dcfe07-3376-4aa6-b547-026e4c8128a4.jpg', 'zxc', 'Màn hình ViewSonic VX2780-2K-SHDJ 27\" IPS 2K 75Hz', 5290000, 10, 0, 1, 15, 2, 1, 1),
(152, '/images/products/28af4a11-1105-47dc-a77f-1ef81ebaf801.jpg', '/images/products/7a151916-6f02-4742-adbd-924b070bb742.jpg', '/images/products/77083a83-39b3-4b7f-82d0-ec36a46a8c8b.jpg', '/images/products/eeafd94b-d393-41cc-8dc0-adc1d495c21f.jpg', 'zxc', 'Màn hình ViewSonic VX2758A-2K-PRO-2 27\" IPS 2K 170Hz chuyên game', 5490000, 10, 0, 1, 15, 2, 1, 1),
(153, '/images/products/41eba2c1-041a-46c9-b35e-45dba7c04a7f.jpg', '/images/products/3b6a8845-6960-4819-a7bc-01a538564259.jpg', '/images/products/1a633ea3-b197-466e-9c16-eb9fe1a2ab89.jpg', '/images/products/2b8cbb5f-dcc6-4df4-8b28-99c0a7ac98aa.jpg', 'zxc', 'Màn hình ViewSonic VP2756-4K 27\" IPS 4K chuyên đồ hoạ', 9890000, 10, 0, 1, 15, 2, 1, 1),
(154, '/images/products/f0a924bc-1fa0-41f6-a387-5a87ff806aa8.jpg', '/images/products/7334e00f-c550-4334-b322-66b16950bf07.jpg', '/images/products/896ea33d-5a95-4b7e-9662-8c453ea6ae00.jpg', '/images/products/beb68cbc-bbe6-4604-bd10-11e31cca2947.jpg', 'zxc', 'Màn hình ViewSonic XG2431 24\" IPS 240Hz 1ms chuyên game', 6190000, 10, 0, 1, 15, 2, 1, 1),
(155, '/images/products/f1e0c388-391b-4eda-8e97-c19470f92f72.jpg', '/images/products/198ea7ed-f9a0-4535-8033-4082575c4229.jpg', '/images/products/fb7e9921-f3eb-4021-a940-f8f0911b6a4e.jpg', '/images/products/0e2bf561-c141-48aa-a91d-e18e3c04bdc5.jpg', 'zxc', 'Màn hình ViewSonic VX2882-4KP 28\" IPS 4K 150Hz HDR10 USBC', 12990000, 10, 0, 1, 15, 2, 1, 1),
(156, '/images/products/10e3fc66-7c4f-4abd-a24c-453cf8f531e0.jpg', '/images/products/4b7c02cd-e904-4e98-a1b2-44b54d67ffaa.jpg', '/images/products/202c4c32-fcf4-480c-a473-6229a20767b9.jpg', '/images/products/75299049-69f7-4786-b82d-02ed3fffcac7.jpg', 'zxc', 'Màn hình cong ViewSonic VX3418-2KPC 34\" 2K 144Hz chuyên game', 8690000, 10, 0, 1, 15, 2, 1, 1),
(157, '/images/products/421c5906-78cd-482f-9474-58e262ea98f5.jpg', '/images/products/61ba6f52-ae7e-4b05-aee4-c49b3035eb51.jpg', '/images/products/7ed9c6db-6ed3-4d73-bb67-dab985f902c8.jpg', '/images/products/caa991a0-029b-4fe3-a3b6-ada94a5433d4.jpg', 'zxc', 'Chuột ASUS ROG Strix Impact III Wireless', 1490000, 10, 0, 1, 1, 6, 1, 1),
(158, '/images/products/6128b328-0eac-4ce8-809a-789599f89201.jpg', '/images/products/984d87ab-dbef-44c5-8ab7-496a79cc3036.jpg', '/images/products/2a18addf-88ab-4fe8-a2d1-19c88c7bd8fa.jpg', '/images/products/da01ff2c-a45e-4cbd-b966-bad0c1555d10.jpg', 'zxc', 'Chuột Asus Rog Gladius III Wireless Aimpoint Black', 2790000, 10, 0, 1, 1, 6, 1, 1),
(159, '/images/products/cfd8dfd1-c197-4fb9-8121-2a2d80b34e52.jpg', '/images/products/351543ed-2641-4ca2-98e8-4a75eb7e2a4f.jpg', '/images/products/cce53844-0a81-431b-b515-e1a30f6d731a.jpg', '/images/products/9dd31009-683e-4161-ae11-1ea24597d25e.jpg', 'zxc', 'Chuột ASUS ROG Harpe Ace Aim Lab Edition', 2890000, 10, 0, 1, 1, 6, 1, 1),
(160, '/images/products/4c3f9537-cd43-4990-9996-4c483a66a3c3.jpg', '/images/products/9e6beb91-d673-4f66-bbd4-0487875221ef.jpg', '/images/products/3ce33018-3888-4a96-b8e1-33421ecf17b4.jpg', '/images/products/47533635-2b96-4448-8226-b0abaaeb2c61.jpg', 'zxc', 'Chuột Asus ROG Harpe Ace Aim Lab White', 2890000, 10, 0, 1, 1, 6, 1, 1),
(161, '/images/products/75cb9e30-6416-424d-a0ff-c3c05d30575c.jpg', '/images/products/49b42404-f26e-4ece-9ea4-bb4aaa3102ae.jpg', '/images/products/dfc7bed7-b228-4207-a79d-fbfeee5041fc.jpg', '/images/products/b9182655-725a-4c3e-bb90-d5514c46a0a9.jpg', 'zxc', 'Chuột không dây Corsair Nightsabre RGB (CH-931B011-AP)', 3590000, 10, 0, 1, 1, 6, 1, 1),
(162, '/images/products/99caf6e2-6442-4192-897a-174cdd461e64.jpg', '/images/products/207f22e8-01be-4381-83d6-f3a36c7cfcff.jpg', '/images/products/eca33c1d-f9dc-447f-83b7-d3b7b2a845f6.jpg', '/images/products/092dbdce-af2e-443d-b153-42094981947e.jpg', 'zxc', 'Chuột không dây Corsair Darkstar RGB (CH-931A011-AP)', 3590000, 10, 0, 1, 1, 6, 1, 1),
(163, '/images/products/243f6102-9b6f-43a0-ad58-74cfaf8cd4c4.jpg', '/images/products/eb6300d9-c6f6-43b5-b83c-326da3491c4c.jpg', '/images/products/20082cd9-e4d4-49f8-8264-4c25d9ad2382.jpg', '/images/products/597da72e-30eb-4ab2-b8e8-f6a13d6c28a0.jpg', 'zxc', 'Chuột Corsair Katar Pro Wireless', 890000, 10, 0, 1, 1, 6, 1, 1),
(164, '/images/products/0965b5c9-790a-4a31-9324-952aff52736f.jpg', '/images/products/653144d9-3ce7-4101-bc34-9cf1c58bb272.jpg', '/images/products/188dfb8e-a226-4311-a2b2-39933f2f2e42.jpg', '/images/products/5d704bb6-90c0-47d9-b575-b0093cff695a.jpg', 'zxc', 'Chuột Logitech G Pro X Superlight Wireless Red', 2690000, 10, 0, 1, 16, 6, 1, 1),
(165, '/images/products/ba3594da-7ee3-47d1-93e9-cb91f14644c2.jpg', '/images/products/290022b2-efe2-4b50-af4c-263cfb08db63.jpg', '/images/products/8435a3e1-4625-469c-82ff-0ec6b24cac6f.jpg', '/images/products/1e9d7430-60cf-4dae-9ecb-6a8876f9d045.jpg', 'zxc', 'Chuột Logitech G502 X Plus LightSpeed White', 3290000, 10, 0, 1, 16, 6, 1, 1),
(166, '/images/products/a9934525-3157-4201-ae69-4c154ea154ce.jpg', '/images/products/306f1011-9d73-4c03-abfa-eaf2bcb41696.jpg', '/images/products/4ebeb1ae-dd24-4bc2-ad1e-7e685f75f1cf.jpg', '/images/products/83805e86-7093-49af-94a5-cedb219a6b70.jpg', 'zxc', 'Chuột Logitech G502 Hero Gaming', 900000, 10, 0, 1, 16, 6, 1, 1),
(167, '/images/products/6e1d8c56-ced5-4e8c-a100-23a206886b21.jpg', '/images/products/23035f22-a791-4be2-b11e-d8e845eea1f3.jpg', '/images/products/b110efe1-6dc3-4f36-b9f0-e8b614b889a5.jpg', '/images/products/40d6624f-8d51-4a8b-be6f-25e1992099bf.jpg', 'zxc', 'Ghế chơi game ASUS ROG Chariot Core - SL300', 9990000, 10, 0, 1, 1, 8, 1, 1),
(168, '/images/products/b0657ec5-8641-42fa-b9a9-efa12fc53b3c.jpg', '/images/products/f609c141-2bc1-418f-af2f-834dfa32ad2d.jpg', '/images/products/b3f7d8e4-6c99-4691-8445-b6f6cfcd348e.jpg', '/images/products/536a23fe-5d30-47cc-b5fc-ed2cdec07b03.jpg', 'zxc', 'Ghế chơi game ASUS ROG Chariot', 14990000, 10, 0, 1, 1, 8, 1, 1),
(169, '/images/products/ba7e8c70-3a46-47e4-b671-015528948a54.jpg', '/images/products/e69acf7a-f97a-451d-91f7-4c2148c85fe6.jpg', '/images/products/2522966c-2ad3-4f37-842d-6c949d232973.jpg', '/images/products/c4e29ce8-c5a3-40c0-89b0-68a02c5e65e9.jpg', 'zxc', 'Ghế Corsair T3 RUSH Charcoal 2023 (CF-9010057-WW)', 6790000, 10, 0, 1, 9, 8, 1, 1),
(170, '/images/products/d732e7fa-3a31-4baf-8373-0fc33a1dc5e0.jpg', '/images/products/e39fcdd7-2fd1-4dcc-bc6e-983e76a519c5.jpg', '/images/products/e38b774d-d018-4527-9dd6-2902cab8e934.jpg', '/images/products/f56871cf-b7de-43c5-842f-c5d5b28cd282.jpg', 'zxc', 'Ghế CORSAIR T1 RACE Gaming Chair — Black/White', 8390000, 10, 0, 1, 9, 8, 1, 1),
(171, '/images/products/d3e2cfa5-c8ae-413c-adfd-f132e8425d6e.jpg', '/images/products/8b6c9c99-f1a3-4072-8e0d-e43bd396c5c5.jpg', '/images/products/21bd8932-e049-4fc1-bba8-efe737432426.jpg', '/images/products/e9dc05f5-cd56-4467-88c5-4f7afa17499d.jpg', 'zxc', 'Ghế Corsair TC200 Leatherette Light Grey/White', 7790000, 10, 0, 1, 9, 8, 1, 1),
(172, '/images/products/28d29206-032a-4036-9f68-4cf9b007d3ac.jpg', '/images/products/c9e18bcd-b194-45b8-8eab-6f21449bf04f.jpg', '/images/products/63a268c9-87d3-479f-bec8-bc505f28c224.jpg', '/images/products/9376eff7-6450-47eb-8515-92452905c3e3.jpg', 'zxc', 'Ghế Cougar Ranger Pro Sofa Gaming', 7890000, 10, 0, 1, 17, 8, 1, 1),
(173, '/images/products/c27087d4-f93c-469f-9a7c-64873e1bc05e.jpg', '/images/products/1a44b0d7-7bd3-44e7-a76c-dec7949dfee1.jpg', '/images/products/dc69793f-28e3-4a25-861e-45a78b40e128.jpg', '/images/products/4d477d43-214b-4714-aae7-f8042666ce71.jpg', 'zxc', 'Ghế Cougar Armor Titan Pro Royal', 8690000, 10, 0, 1, 17, 8, 1, 1),
(174, '/images/products/6f66baaa-3e36-4fd7-b6c3-0ba2cb5ad555.jpg', '/images/products/aa7772c3-1409-4736-915e-eb7a4f98ad9b.jpg', '/images/products/54a84cec-731a-402b-9665-c71a94e37f38.jpg', '/images/products/16be817e-7a3e-442c-afb6-738dcbf92b14.jpg', 'zxc', 'Tai nghe Asus ROG Cetra True Wireless', 1690000, 10, 0, 1, 1, 5, 1, 1),
(175, '/images/products/24743197-492f-4ad5-a30f-765053bcc477.jpg', '/images/products/76daa10e-1ace-4875-8f20-0dd223a81ac5.jpg', '/images/products/e525d7be-8324-4ab0-a92d-4fdbf2f0a7c1.jpg', '/images/products/e54e49b3-211f-445a-9061-799077f83c0d.jpg', 'zxc', 'Tai nghe Asus ROG Delta Core', 1990000, 10, 0, 1, 1, 5, 1, 1),
(176, '/images/products/06995e63-589d-4277-8384-e113eb047510.jpg', '/images/products/84aba806-27ed-489a-b872-147a2c8c2b4a.jpg', '/images/products/ab80a28b-4d08-4ec3-b5a2-bf7438f35e47.jpg', '/images/products/55880195-d252-45ec-8399-a25f8a0184e8.jpg', 'zxc', 'Tai nghe Asus ROG THETA 7.1', 5990000, 10, 0, 1, 1, 5, 1, 1),
(177, '/images/products/1f94458f-c6d9-4a32-9949-3b5f23eb906c.jpg', '/images/products/6189bd31-110b-4c33-a143-b3b186c91790.jpg', '/images/products/df34412a-11f9-4123-aa0c-9c00091ed9b4.jpg', '/images/products/78c5cfab-0e7f-425a-b1dc-7136c87161b9.jpg', 'zxc', 'Tai nghe không dây Corsair Virtuoso XT', 6590000, 10, 0, 1, 9, 5, 1, 1),
(178, '/images/products/03766d20-290a-4a06-bc7d-e8ef855d02c6.jpg', '/images/products/b65e875f-2b62-4987-ac99-109855355769.jpg', '/images/products/c6159073-178a-415b-b838-106f964a2a77.jpg', '/images/products/3fc2e8fc-d106-4ace-bf0a-d27b48b25920.jpg', 'zxc', 'Tai nghe Corsair Virtuoso RGB Wireless SE Espresso', 5490000, 10, 0, 1, 9, 5, 1, 1),
(179, '/images/products/5021ffbe-4455-4549-af19-bd6ab0d0c16e.jpg', '/images/products/aee78119-329d-480a-af8d-a2c708b15c80.jpg', '/images/products/3ff797a6-48de-489d-ab20-ca77a890df49.jpg', '/images/products/ff9aae7d-41c1-4231-bcf5-dc67ad7ffeb3.jpg', 'zxc', 'Tai nghe Corsair HS80 RGB Wireless', 3790000, 10, 0, 1, 9, 5, 1, 1),
(180, '/images/products/1124c843-3706-46fa-9dbe-8dc668db9c85.jpg', '/images/products/a66d9fc8-a27b-4be3-91fc-641835a592c0.jpg', '/images/products/37f329e9-2b31-45e8-97e7-b7204f5c4b79.jpg', '/images/products/985398e7-40f5-41ee-b854-de64294e1418.jpg', 'zxc', 'Tai nghe Logitech G733 LIGHTSPEED Wireless Black', 2290000, 10, 0, 1, 16, 5, 1, 1),
(181, '/images/products/3e5e56d2-4a07-404d-b117-0868747d9f71.jpg', '/images/products/c1bf5c3e-a228-4747-8a18-88055192b674.jpg', '/images/products/8282e0cc-d628-461c-9475-ca7d71d034f6.jpg', '/images/products/de2bb876-6316-4e85-b0f5-9ff4eec3683d.jpg', 'zxc', 'Tai nghe Logitech G733 LIGHTSPEED Wireless Lilac', 2390000, 10, 0, 1, 16, 5, 1, 1),
(182, '/images/products/faf2167a-d123-441a-b24a-826b28fb4a48.jpg', '/images/products/9576d9b3-26e8-49f0-b7bf-5c484bb09c1d.jpg', '/images/products/82caeba8-df40-4e91-83c2-d11b7ef1a889.jpg', '/images/products/da1cf047-e367-445b-a82c-e4e307f3559a.jpg', 'ZXC', 'PC GVN x ASUS Back to Future (Intel i9-14900K/ VGA RTX 4090)', 142000000, 10, 1, 1, 18, 4, 1, 1),
(183, '/images/products/fd3f324d-167a-4939-942a-77f5513e2ebd.jpg', '/images/products/238e6ecf-6957-4e8a-9eb2-6078c596d98c.jpg', '/images/products/6f4c5015-89d8-4727-bd0e-ce54f9ba3746.jpg', '/images/products/0c894959-d40a-4b00-8e9a-728bf3c82cf4.jpg', 'zxc', 'PC GVN Intel i9-14900K/ VGA RTX 4060 Ti', 61990000, 10, 0, 1, 13, 4, 1, 1),
(184, '/images/products/1858f322-eee3-464d-bc25-02b0d3306770.jpg', '/images/products/1c770bec-3afb-480e-838a-9feab89c0af1.jpg', '/images/products/7db68f64-d33c-4075-88e5-14bb82b59615.jpg', '/images/products/04c44d03-78fa-4509-8b3e-759bfd3557d0.jpg', 'zxc', 'PC GVN G-STUDIO Intel i9-14900K/ VGA RTX 4090 (Powered by ASUS)', 115000000, 10, 1, 1, 13, 4, 1, 1),
(185, '/images/products/addf4a08-3615-436c-a292-150dea6d48b1.jpg', '/images/products/fdc156f4-365e-4fc7-8223-5a1fbfb3569a.jpg', '/images/products/198cba62-a575-4227-ae62-b71771b7154d.jpg', '/images/products/66375e32-0b13-4a34-ae4c-5ab6a2f6e915.jpg', 'zxc', 'PC GVN x ASUS ROG Hyperion White (Intel i9-14900K/ VGA RTX 4090)', 115000000, 10, 0, 1, 18, 4, 1, 1),
(186, '/images/products/51a900c1-eab1-4f11-96cc-b6ce4da7d52a.jpg', '/images/products/1e915dfa-af2c-4279-b223-428631ac9bd7.jpg', '/images/products/6fe7550e-0801-4dc7-89bf-d2238fd85421.jpg', '/images/products/a2f885a2-b1ff-4473-ba5e-46e82eaf0fec.jpg', 'zxc', 'PC GVN Intel i9-14900KF/ VGA RTX 4080', 89000000, 10, 0, 1, 13, 4, 1, 1),
(187, '/images/products/31c384fb-4de3-47e0-9766-91fcffcd8a88.jpg', '/images/products/5d31d721-c569-4f3e-bc83-8366c9133368.jpg', '/images/products/8095923a-300a-460f-b9c0-8188ab94c77d.jpg', '/images/products/f72ae218-d715-4c27-a962-91e7d07c992b.jpg', 'zxc', 'PC GVN AMD R9-7900X/ VGA RTX 4080 Super', 89000000, 10, 0, 1, 13, 4, 1, 1),
(188, '/images/products/c8f8a657-daa0-4b88-b916-b62ce01f7a08.jpg', '/images/products/f6d144fb-852a-4ea5-b79f-8d8212edd922.jpg', '/images/products/3797a669-bffe-430a-9a23-b3a78b3a2af2.jpg', '/images/products/dba59074-65da-48db-8350-808f10b57c4e.jpg', 'zxc', 'PC GVN G-STUDIO Intel i7-14700K/ VGA RTX 4070 Ti (Powered by ASUS)', 67990000, 20, 0, 1, 13, 4, 1, 1),
(189, '/images/products/ccb3e01d-d7f5-42e3-93aa-7215b2e4fafa.jpg', '/images/products/7483cedb-b347-49ae-8a12-c6a16b0de039.jpg', '/images/products/c2bda699-00a8-49d9-b202-4bee7eb1d0cc.jpg', '/images/products/27edeb0e-aa4f-4d9c-9963-990b4a08d3ef.jpg', 'zxc', 'PC GVN Intel i7-14700F/ VGA RTX 3060', 29990000, 10, 0, 1, 13, 4, 1, 1),
(190, '/images/products/684202cf-c114-4d1f-8f73-81c78ae52a64.jpg', '/images/products/8ff803e7-e957-4933-a769-19d926b3a8bf.jpg', '/images/products/8a634a0e-c222-414c-9e31-ff478de9a6f7.jpg', '/images/products/bcff6d75-24d9-4f6c-b445-2f7f8dd06c3e.jpg', 'zxc', 'PC GVN AMD R7-8700G/ VGA RTX 4070 Ti Super', 62990000, 10, 1, 1, 13, 4, 1, 1),
(191, '/images/products/02c6021a-7762-4a97-a0ee-18344938677f.jpg', '/images/products/2664b083-6272-41ce-a23e-ab5ea9d7e800.jpg', '/images/products/00ea284e-f772-41af-9cca-24695a9f114a.jpg', '/images/products/ad6d65b5-dab7-489c-a24d-c61c24d842bf.jpg', 'zxc', 'PC GVN G-STUDIO Intel i5-13400/ VGA RTX 4060 Ti (Powered by ASUS)', 36990000, 10, 0, 1, 13, 4, 1, 1),
(192, '/images/products/ca4d12c9-03dd-4961-a981-3e28ce523e58.jpg', '/images/products/00e4b24f-9ad7-4c1d-a076-d6ec28ecdb07.jpg', '/images/products/bd732b06-7082-4fab-a194-765664e017ba.jpg', '/images/products/e451b888-0ae2-465d-8b55-13b6828e9abf.jpg', 'zxc', 'Bo mạch chủ ASUS ROG Strix Z790-E GAMING WIFI II DDR5', 13990000, 10, 0, 1, 1, 9, 1, 1),
(193, '/images/products/53d2b4b6-f96a-458a-b9a7-33f2023912d1.jpg', '/images/products/9d5701ca-9572-4073-b2b0-4bdc38490f04.jpg', '/images/products/193edd87-af92-430e-914a-5d200ca1a172.jpg', '/images/products/b30749e2-c1f3-41b3-8c30-8563d1278f2d.jpg', 'zxc', 'Bo mạch chủ ASUS ROG MAXIMUS Z790 DARK HERO', 17990000, 10, 0, 1, 1, 9, 1, 1),
(194, '/images/products/78f275d4-4016-46cf-94f1-f34e3ddfbd9c.jpg', '/images/products/4d78a299-8baa-4a73-a36d-ccc1952543b0.jpg', '/images/products/d8ec20e6-35b0-43bf-8e92-e19417d99f4b.jpg', '/images/products/77efd19c-6c01-42ed-970d-53202729e148.jpg', 'zxc', 'Bo mạch chủ ASUS ROG MAXIMUS Z790 EXTREME DDR5', 31990000, 10, 0, 1, 1, 9, 1, 1),
(195, '/images/products/66c96e79-be41-4868-898b-792cb2e64ed5.jpg', '/images/products/0a2db7a9-c513-4a29-9f41-313a7905ee07.jpg', '/images/products/6c79af5d-ffd0-4a74-90c3-f7c77f477b44.jpg', '/images/products/ec68908d-f036-4448-be71-c189e2bcd85d.jpg', 'zxc', 'Bo mạch ASUS ROG Zenith II Extreme', 19290000, 10, 0, 1, 1, 9, 1, 1),
(196, '/images/products/86c78cf0-aa8b-4a30-ba95-5fc8e6687aaa.jpg', '/images/products/4ae0045d-4545-47cf-9f82-ba60b561142e.jpg', '/images/products/96da797f-9989-4962-92fc-436516df67db.jpg', '/images/products/d0c677dd-68c3-47bf-a6a6-de250296513c.jpg', 'zxc', 'Bo mạch chủ GIGABYTE Z790 AORUS XTREME X ICE', 47990000, 10, 0, 1, 11, 9, 1, 1),
(197, '/images/products/8f404bee-e61a-44af-ad3f-c692391150f7.jpg', '/images/products/222b4fc6-09d4-4bf9-880f-d0c7450c8b9c.jpg', '/images/products/a2ac7a94-62bb-497e-bcce-db6fcbbc63ad.jpg', '/images/products/41a0320c-4f6c-4eab-a11f-7ddfbecb48ea.jpg', 'zxc', 'Bo Mạch Chủ Gigabyte TRX40 Aorus Xtreme', 25990000, 10, 0, 1, 11, 9, 1, 1),
(198, '/images/products/4e925b46-1421-4691-b6b1-5dbcd25640dd.jpg', '/images/products/ede79a08-0fd1-40fa-9297-25564423e829.jpg', '/images/products/89e99904-72f1-4f2d-be1e-336800c414bc.jpg', '/images/products/31908e43-2022-4748-90ea-0ad12947a358.jpg', 'zxc', 'Bo Mạch Chủ GIGABYTE X670E AORUS XTREME (DDR5)', 17990000, 10, 0, 1, 11, 9, 1, 1),
(199, '/images/products/d706f5f9-6100-4587-98d0-d7e494cd5c14.jpg', '/images/products/e26caa5a-7427-4c4a-b6bd-6e7478f3e080.jpg', '/images/products/d17820cd-9fcf-4bc2-94b9-c053fa2e660d.jpg', '/images/products/3ea0a07b-e313-444a-bb8e-7df9e3c9a2c0.jpg', 'zxc', 'Bo Mạch Chủ Gigabyte X570 Aorus Xtreme', 15990000, 10, 0, 1, 11, 9, 1, 1),
(200, '/images/products/83f72a08-ae3a-4294-930b-0c6eb209e28d.jpg', '/images/products/46f82aed-5ea5-44d0-b3d3-8738ebcb3842.jpg', '/images/products/6333f849-e983-459c-8f43-bcc40d004e94.jpg', '/images/products/c47c0031-fec9-41a4-b92e-363769491358.jpg', 'zxc', 'Bo mạch chủ MSI MEG Z790 ACE MAX DDR5', 18990000, 10, 0, 1, 4, 9, 1, 1),
(201, '/images/products/dad28fac-d5f2-487c-b339-bfe0d2e8e78a.jpg', '/images/products/7c863c75-3cf3-41be-9100-fe8d67ce6da8.jpg', '/images/products/7f4b7891-3d45-496a-b0b9-c18eaa1a0f4c.jpg', '/images/products/029b7077-9c1c-45f1-985a-3be11b15d884.jpg', 'zxc', 'Bộ vi xử lý Intel Core i3 14100 / Turbo up to 4.7GHz / 4 Nhân 8 Luồng / 12MB / LGA 1700', 3990000, 10, 0, 1, 19, 14, 1, 1),
(202, '/images/products/a1277194-7acb-437d-ac71-37a00623dc73.jpg', '/images/products/c3a0e7bd-7335-4c7e-8567-5b12e73ec321.jpg', '/images/products/ffc32bd4-aed9-4de3-99e8-9e03a18187b3.jpg', '/images/products/72b478ea-1448-4690-8c82-95a242cba9f0.jpg', 'zxc', 'Bộ vi xử lý Intel Core i5 14500 / Turbo up to 5.0GHz / 14 Nhân 20 Luồng / 24MB / LGA 1700', 6790000, 10, 0, 1, 19, 14, 1, 1),
(203, '/images/products/3f449450-b758-48f0-b3c3-ce8bdd5dc57d.jpg', '/images/products/27a6b318-8b21-4856-a3e1-a7215799aa6c.jpg', '/images/products/7c7a25ed-49e9-4fbb-b0dd-37b7f9d5dabf.jpg', '/images/products/a0edada3-a6db-40ea-8406-ff6aac25d57a.jpg', 'zxc', 'Bộ vi xử lý Intel Core i7 14700 / Turbo up to 5.4GHz / 20 Nhân 28 Luồng / 33MB / LGA 1700', 10990000, 10, 0, 1, 19, 14, 1, 1),
(204, '/images/products/754a516d-5598-4279-878f-003425ad950b.jpg', '/images/products/02a93dea-f182-47bf-9d30-eddadd0263c6.jpg', '/images/products/ce07ad27-4bd8-41b6-a3a2-7408a923d422.jpg', '/images/products/288464e8-d24b-4ef4-9a1c-0bf63b2a2e45.jpg', 'zxc', 'Bộ vi xử lý Intel Core i9 14900 / Turbo up to 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', 15690000, 10, 0, 1, 19, 14, 1, 1),
(205, '/images/products/44f5100b-8810-42ab-be7a-f59f3ee1f71d.jpg', '/images/products/5bbe1b75-fbd1-49df-88ec-cee96c8da773.jpg', '/images/products/b0e9cc8e-6952-4032-b91e-50b8966f3021.jpg', '/images/products/cab17de8-bfca-49f4-a078-1601733c51c3.jpg', 'zxc', 'Bộ vi xử lý Intel Core i9 10980XE / 3.0GHz Turbo 4.6GHz / 18 Nhân 36 Luồng / 24.75MB / LGA 2066', 26990000, 10, 0, 1, 19, 14, 1, 1),
(206, '/images/products/2b5688ef-ea69-428d-8aa6-18e270c9b70f.jpg', '/images/products/d57d67d1-32f7-44cb-95d7-35f5757b25cf.jpg', '/images/products/05ebd139-e910-4c45-99cd-0ff2552a482a.jpg', '/images/products/e7d42ac7-c858-469f-a1d8-d14cf6b8d2f4.jpg', 'zxc', 'Bộ vi xử lý Intel Core i9 10900X / 3.7GHz Turbo 4.5GHz / 10 Nhân 20 Luồng / 19.25MB / LGA 2066', 15490000, 10, 0, 1, 19, 14, 1, 1),
(207, '/images/products/706b573a-8570-469c-aee4-4b5c0c23e9b0.jpg', '/images/products/a6add83f-278f-4754-8099-9d205325f6d5.jpg', '/images/products/e959ad5c-8a83-444a-92d4-f4521b48d105.jpg', '/images/products/8686b922-beb4-4ce8-af1c-15c927471f82.jpg', 'zxc', 'Bộ vi xử lý AMD Ryzen 3 4300G / 3.8GHz Boost 4.0GHz / 4 nhân 8 luồng / 6MB / AM4', 2490000, 10, 0, 1, 20, 14, 1, 1),
(208, '/images/products/68a6efdb-8f7a-4054-a909-ccfd49a22083.jpg', '/images/products/389333cb-439b-41ff-b558-74c9b7ac0281.jpg', '/images/products/fb7bc089-47b0-4616-a35a-44e13f933087.jpg', '/images/products/25f55e03-a5fe-48ae-91a5-b6af4cf3f561.jpg', 'zxc', 'Bộ vi xử lý AMD Ryzen 5 5600X / 3.7GHz Boost 4.6GHz / 6 nhân 12 luồng / 32MB / AM4', 3990000, 10, 0, 1, 20, 14, 1, 1),
(209, '/images/products/64e08095-23a3-4ca5-8958-ce4e3a692d13.jpg', '/images/products/7a2a2298-3ec0-45ea-83ea-90b393a244a5.jpg', '/images/products/fa2955fd-2fe8-409c-83a0-95ad32dbe425.jpg', '/images/products/9e4151ae-1194-42d4-a68b-0b006f2609e3.jpg', 'zxc', 'Bộ vi xử lý AMD Ryzen 7 5800X3D / 3.4GHz Boost 4.5GHz / 8 nhân 16 luồng / 96MB / AM4', 9490000, 10, 0, 1, 20, 14, 1, 1),
(210, '/images/products/735a975c-eaf3-4a4e-b1a9-6a81d9f805ba.jpg', '/images/products/a8378999-f72b-48cf-bde9-064795f49906.jpg', '/images/products/62edc562-990c-448f-af06-a1ef031000be.jpg', '/images/products/0c3575ea-9190-4bec-85c6-30ae18e3285e.jpg', 'zxc', 'Card màn hình ASUS Dual Radeon RX 6600 V3 8GB GDDR6 (DUAL-RX6600-8G-V3)', 5690000, 10, 0, 1, 1, 13, 1, 1),
(211, '/images/products/74078076-cee5-4df8-ae22-2543acd1ec8e.jpg', '/images/products/dbe54b08-372b-44db-ac14-e8176f9d3fe3.jpg', '/images/products/e470b12c-b955-4ce9-83c3-43a3cde02534.jpg', '/images/products/c7ee2524-4c50-4823-8355-36ff9e4ce7c7.jpg', 'zxc', 'Card màn hình ASUS Dual GeForce RTX 4060 Ti OC Edition 16GB GDDR6 (DUAL-RTX4060TI-O16G)', 14790000, 10, 0, 1, 1, 13, 1, 1),
(212, '/images/products/66ef64e8-5e2b-433b-983b-ee5e61175a1b.jpg', '/images/products/ede6363d-fc4e-4f7e-9b1e-d75d8587ba74.jpg', '/images/products/54c94543-1f8b-4e99-9332-0508e5f96c61.jpg', '/images/products/5a0bb108-e54f-45b6-a038-985b245d01f8.jpg', 'zxc', 'Card màn hình ASUS ROG Strix GeForce RTX 4070 SUPER 12GB GDDR6X OC Edition (ROG-STRIX-RTX4070S-O12G-GAMING)', 22990000, 10, 0, 1, 1, 13, 1, 1),
(213, '/images/products/0ff90d1e-2a6f-45c7-8c98-6c977eb4254e.jpg', '/images/products/1f2a49eb-3221-4454-aff2-8337657c1630.jpg', '/images/products/5afd8725-5282-4cb9-91dd-f9be4b7dde53.jpg', '/images/products/6e143eb9-92ec-4569-b0d0-6ee322818d02.jpg', 'zxc', 'Card màn hình ASUS ROG Strix GeForce RTX 4080 SUPER 16GB GDDR6X White OC Edition (ROG-STRIX-RTX4080S-O16G-WHITE)', 38990000, 10, 0, 1, 1, 13, 1, 1),
(214, '/images/products/f9ab57a6-618b-421a-b3f4-12ee700937ca.jpg', '/images/products/4baa5177-6207-4c05-bd0e-7c0d42ecea69.jpg', '/images/products/7dcf0a67-1729-492c-8678-ece329ccaea8.jpg', '/images/products/18d1b2d8-ad16-4b3b-b9e3-76a9f68603c0.jpg', 'zxc', 'Card màn hình ASUS TUF Gaming GeForce RTX 4080 SUPER 16GB GDDR6X OC Edition (TUF-RTX4080S-O16G-GAMING)', 34990000, 10, 0, 1, 1, 13, 1, 1),
(215, '/images/products/b9e60600-6e6a-4b88-9842-93debccad6a0.jpg', '/images/products/4a7c47cb-a503-4884-86df-9fda63c424c1.jpg', '/images/products/f3961c53-cdc1-43e3-980e-884b0db4bdff.jpg', '/images/products/175b903d-7689-459f-8626-19dd1b23618b.jpg', 'zxc', 'Card màn hình ASUS ROG Strix LC GeForce RTX 4090 24GB GDDR6X OC Edition (ROG-STRIX-LC-RTX4090-O24G)', 59990000, 10, 0, 1, 1, 13, 1, 1),
(216, '/images/products/bb794026-815c-484a-9039-0b6bf9007e4b.jpg', '/images/products/b34bb344-6c9f-482f-ba70-d1592342d1e6.jpg', '/images/products/a7a6ff9c-6583-470b-ad2a-2356ca54a513.jpg', '/images/products/453c7fa6-231b-4447-b38b-f7cecdcae919.jpg', 'zxc', 'Card màn hình GIGABYTE GeForce RTX 4080 SUPER GAMING OC 16G (GV-N408SGAMING OC-16GD)', 36990000, 10, 0, 1, 11, 13, 1, 1),
(217, '/images/products/ce55d168-d884-4454-8b0d-7fabef6a947b.jpg', '/images/products/451ab3c5-d14e-443d-acad-f2cc2f15aa1d.jpg', '/images/products/f53276e9-d148-40d7-b0f6-61586a4188e4.jpg', '/images/products/4868b937-b02a-4696-bd9a-850682cff861.jpg', 'zxc', 'Card màn hình GIGABYTE GeForce RTX 4080 SUPER AERO OC 16G (GV-N408SAERO OC-16GD)', 37990000, 10, 0, 1, 11, 13, 1, 1),
(218, '/images/products/f7117df7-b02a-4ad5-bfa3-8d27b335d9dc.jpg', '/images/products/2150011b-89f2-40be-8d2e-6c359926e7be.jpg', '/images/products/f5d82b26-5ace-421d-a954-38cecad0f2d5.jpg', '/images/products/ddbd59fd-3376-4718-adaa-d7844dfe9f6e.jpg', 'zxc', 'Card màn hình GIGABYTE GeForce RTX 4070 Ti SUPER EAGLE OC 16G (GV-N407TSEAGLE OC-16GD)', 27990000, 10, 0, 1, 11, 13, 1, 1),
(219, '/images/products/7b3ba0f5-22ad-4644-9619-579d137664f5.jpg', '/images/products/dbdd44aa-5958-44bb-8724-db063274f62e.jpg', '/images/products/95dc13be-34bc-440e-8519-7ed751f8cc13.jpg', '/images/products/32527936-4960-4b84-ba1c-132b5c7f12ca.jpg', 'zxc', 'Card màn hình GIGABYTE AORUS GeForce RTX 4090 MASTER 24G (GV-N4090AORUS M-24GD)', 55990000, 10, 0, 1, 11, 13, 1, 1),
(220, '/images/products/a7946549-5943-4c27-b3ca-195125c53405.jpg', '/images/products/70c11922-e8f8-49bc-a039-e44c2312f440.jpg', '/images/products/1925381b-6aff-4ed1-9c00-e9564bba616c.jpg', '/images/products/f11d48c9-d045-4c81-bd1d-3706f9cb5259.jpg', 'zxc', 'Card màn hình GIGABYTE AORUS GeForce RTX 4080 XTREME WATERFORCE WB 16GB (GV-N4080AORUSX WB-16GD)', 40490000, 10, 0, 1, 11, 13, 1, 1),
(221, '/images/products/3026fbb4-ed42-4921-9bbc-a0651b4b9161.jpg', '/images/products/dbfd599e-31ea-4c0e-b0b5-820b364f900c.jpg', '/images/products/d5ac9ba9-3b22-423e-9b06-4714d4c3803e.jpg', '/images/products/3920cbd8-7284-4c47-a524-f4403e7ed263.jpg', 'zxc', 'Card màn hình MSI GeForce RTX 4080 SUPER 16G GAMING X SLIM WHITE', 34990000, 10, 0, 1, 4, 13, 1, 1),
(222, '/images/products/ca1c1b60-35b2-40b9-b4b8-27e94a035c97.jpg', '/images/products/61a5709f-2a05-4fb2-be04-04e9c93165b9.jpg', '/images/products/8bc1ab8f-525f-48ac-873b-403d2d234719.jpg', '/images/products/27f2599d-e75d-4268-b836-c66a327cc3fe.jpg', 'zxc', 'Card màn hình MSI GeForce RTX 4080 SUPER 16G EXPERT', 34990000, 10, 0, 1, 4, 13, 1, 1),
(223, '/images/products/4665938c-26e4-411b-be40-8b055257736b.jpg', '/images/products/6501c742-496d-4203-b470-11539adecdbc.jpg', '/images/products/2ca5990a-d307-4aff-bbb4-241efc4d1e94.jpg', '/images/products/539ab876-58ba-49ba-ad75-8a85b65e7a77.jpg', 'zxc', 'Card màn hình MSI GeForce RTX 4080 SUPER 16G GAMING X SLIM', 33990000, 10, 0, 1, 4, 13, 1, 1),
(224, '/images/products/0cbcfb08-475d-48eb-b3c3-51e24c06a35d.jpg', '/images/products/adc55db4-d2d8-4d86-b3a1-a9d0f22df272.jpg', '/images/products/4d86e561-8c45-4ec7-8a61-be1e13300b5a.jpg', '/images/products/33b227bb-7902-47e5-ab3b-e7e8306e9066.jpg', 'zxc', 'Card màn hình MSI GeForce RTX 4090 SUPRIM LIQUID X 24G', 56990000, 10, 0, 1, 4, 13, 1, 1),
(225, '/images/products/adff100c-53d7-4478-8243-43a56f83e9d8.jpg', '/images/products/bd794cdf-843a-44c1-ba27-a8fab7fba983.jpg', '/images/products/48aa67c0-d236-4604-896d-b5e49a0483bf.jpg', '/images/products/4dc46127-f304-4383-be1b-ad01bc209882.jpg', 'zxc', 'Ram Corsair Vengeance RGB Black 48GB (2x24GB) 5200 DDR5 (CMH48GX5M2B5200C38)', 4990000, 10, 0, 1, 9, 17, 1, 1),
(226, '/images/products/2ec687f3-b0a2-426f-8c13-889928ea8a9b.jpg', '/images/products/e276ae85-8d0e-48fe-956a-e41fa5078543.jpg', '/images/products/6e2d1194-19b2-4471-ba3a-82d313c13941.jpg', '/images/products/b92d1409-2a41-4ca0-8d29-c8cf1d4052b9.jpg', 'zxc', 'Ram Corsair Vengeance RGB 32GB (2x16GB) 5200 DDR5 White (CMH32GX5M2B5200C40W)', 3490000, 10, 0, 1, 9, 17, 1, 1),
(227, '/images/products/3b57c90f-45d4-4564-9621-561a268e8384.jpg', '/images/products/80a142ad-a1a0-4093-921b-6dc052165904.jpg', '/images/products/4fc98154-04ed-4ed8-a55c-768a99300115.jpg', '/images/products/bff62fa7-b64e-44f0-881f-c3907a9a9784.jpg', 'zxc', 'RAM Corsair Dominator Platinum 32GB (2x16GB) RGB 6000 DDR5 (CMT32GX5M2X6000C36)', 4990000, 20, 0, 1, 9, 17, 1, 1),
(228, '/images/products/97518db9-a55b-42b5-a863-e7a3f6b9c9cf.jpg', '/images/products/723fee48-8fe4-4209-ba9b-9ead24bbdcf5.jpg', '/images/products/37b97f60-f676-44f0-bf96-0a9ed7111f66.jpg', '/images/products/4af6759a-6057-488c-9ae0-ca557ae8c346.jpg', 'zxc', 'RAM Corsair Dominator Titanium Black 32GB (2x16GB) RGB 6000 DDR5 (CMP32GX5M2B6000C30)', 5590000, 20, 0, 1, 9, 17, 1, 1),
(229, '/images/products/66c7d3ae-e146-4fb0-84f2-926c72e46faa.jpg', '/images/products/1e2b084e-f491-426e-a82f-1306017ccb9b.jpg', '/images/products/7e821697-f2cd-48ae-a90e-74da7e5ed6bc.jpg', '/images/products/370a4a92-0f00-4666-a7ef-a8b3cc2e93a1.jpg', 'zxc', 'Ram GIGABYTE Aorus RGB Memory 32GB (2x16GB) 6000 DDR5 (GP-ARS32G60D5R)', 10990000, 10, 0, 1, 11, 17, 1, 1),
(230, '/images/products/c050ab29-5474-4d1e-a7c1-772a97f9c480.jpg', '/images/products/9fdf5440-c1d7-4724-8a87-6e3b29c0d35b.jpg', '/images/products/2954c377-c62b-448d-8230-5d56d76a5da3.jpg', '/images/products/c1fae0a2-24bc-412e-a4ba-97c2fedbfac2.jpg', 'zxc', 'Ram GIGABYTE Aorus Memory 32GB (2x16GB) 5200 DDR5 (GP-ARS32G52D5)', 7450000, 10, 0, 1, 11, 17, 1, 1),
(231, '/images/products/c76a186a-6445-4df0-9944-4365b2e3fe78.jpg', '/images/products/e3111f98-a9cb-46d0-865d-dc68c92820d1.jpg', '/images/products/900d66b3-738d-40c5-ab84-c36397761a47.jpg', '/images/products/ff81f279-e21a-485c-a3fe-dc1d5cb4e7f5.jpg', 'zxc', 'Ram Kingston HyperX Predator RGB 8GB 3200 (HX432C16PB3A/8)', 1190000, 10, 0, 1, 21, 17, 1, 1),
(232, '/images/products/d0a6887d-7dd7-4abd-9c5f-cc10cd0010c7.jpg', '/images/products/0d6c60dc-16a7-4048-94dc-6767d198d7af.jpg', '/images/products/5caa2c09-1dfa-4168-8e7e-52447341c1bf.jpg', '/images/products/09989775-c679-424f-96d7-6162f200eeda.jpg', 'zxc', 'RAM Kingston Fury Beast RGB 32GB (2x16GB) bus 5200 DDR5 (KF552C40BBAK2-32)', 3390000, 10, 0, 1, 21, 17, 1, 1),
(233, '/images/products/219ff839-2f9a-405e-891a-b928ad77c586.jpg', '/images/products/bfad9595-66f5-4bc9-946e-3447d29ef2fa.jpg', '/images/products/082a9f92-206e-46b7-ae88-d88c4862717c.jpg', '/images/products/8c4bc5a7-5e85-43da-a904-6ee51518e034.jpg', 'zxc', 'RAM DDR5 Kingston Fury Beast 16GB 5200mhz (KF552C40BB-16)', 1690000, 10, 0, 1, 21, 17, 1, 1),
(234, '/images/products/3128e5c0-a53c-4842-a60a-4ed2391737c1.jpg', '/images/products/2c678e5f-16b1-4a4e-a60b-3f3c4419810b.jpg', '/images/products/57f4f6a8-6a42-4046-9d40-17727aef48ec.jpg', '/images/products/5ec60870-da77-468d-886a-a31af3fa8ef2.jpg', 'zxc', 'Ram PNY XLR8 Silver 1x8GB 3600 RGB', 890000, 10, 0, 1, 22, 17, 1, 1),
(235, '/images/products/70bbce90-7895-4f6b-a260-d98dc966c985.jpg', '/images/products/d32d4fa7-02a7-445e-b084-6a4478b0be31.jpg', '/images/products/4b053a64-a580-447b-81af-2fb354a15466.jpg', '/images/products/a5601d7e-271d-4339-b558-636bd2b570c0.jpg', 'zxc', 'Ram PNY XLR8 MAKO 2x16GB 6000 RGB White D5', 3590000, 10, 0, 1, 22, 17, 1, 1),
(236, '/images/products/d28bd6c2-4522-446b-a8c3-9d72abeb233a.jpg', '/images/products/cf10ac06-14b4-42b0-9a0a-a21581fdb5f2.jpg', '/images/products/717f7e0f-a833-4ea8-8eb7-abfbc850425f.jpg', '/images/products/09650c18-6a74-4493-b380-9aec3886ec13.jpg', 'zxc', 'Ổ cứng SSD Corsair MP600 CORE XT 2TB PCIe 4.0 Gen4 (CSSD-F2000GBMP600CXT)', 4990000, 10, 0, 1, 9, 11, 1, 1),
(237, '/images/products/f3ba2a57-2214-4255-8be7-e9be176f99fc.jpg', '/images/products/020729ba-cb22-4f0e-9e51-b6980fb2194d.jpg', '/images/products/6822e88b-fb9a-44b5-896e-58a29782152e.jpg', '/images/products/33120ddd-8007-4baf-a87a-5a42b47f8c78.jpg', 'zxc', 'Ổ Cứng SSD GIGABYTE AORUS Gen4 5000E SSD 500GB (AG450E500G-G)', 1690000, 10, 0, 1, 11, 11, 1, 1),
(238, '/images/products/3247d50d-5e5d-45e1-ba41-6dc97c649d45.jpg', '/images/products/5ee3837a-c3cc-40d6-9114-a8e092429808.jpg', '/images/products/2e5b1461-a452-4b0a-b4e5-f4e8466855e2.jpg', '/images/products/6515e3d5-3f83-42af-b53d-b30427ed836a.jpg', 'zxc', 'SSD GIGABYTE AORUS 1TB M.2 PCIe NVMe gen 4 (Bản không heatsink)', 4890000, 10, 0, 1, 11, 11, 1, 1),
(239, '/images/products/0ffb0e6c-4048-4a78-9f6e-98c4e8d3b7aa.jpg', '/images/products/d5900bf6-4e5e-4d4c-a788-ed1d10e336df.jpg', '/images/products/a2635072-89a3-473d-b681-435564a6f165.jpg', '/images/products/ddddcaa3-daf5-4633-93c2-7f12c3ed7e95.jpg', 'zxc', 'Ổ Cứng SSD Gigabyte Aorus Gen5 10000 2TB (AG510K2TB)', 11990000, 10, 0, 1, 11, 11, 1, 1),
(240, '/images/products/8c6d6948-e3dc-4eef-a677-eeabdcceae2c.jpg', '/images/products/ffa5f199-a56a-4a64-9ab9-12c78b94d7e6.jpg', '/images/products/2dc81efb-0049-417a-a72e-5c879b04e467.jpg', '/images/products/45e9311e-7a1c-4b23-bd94-612f9bc2ef89.jpg', 'zxc', 'Ổ cứng SSD Kingston NV2 1TB M.2 PCIe NVMe Gen4', 1890000, 10, 0, 1, 21, 11, 1, 1),
(241, '/images/products/b1fe2ab9-5dec-460c-b2a6-521ece388c76.jpg', '/images/products/5033cf9f-c5aa-4d76-a520-2c37fe09fc5b.jpg', '/images/products/e62c37de-d4c6-4587-b245-0624a82e01d0.jpg', '/images/products/947914b6-f188-4344-86ef-dd8b16efa575.jpg', 'zxc', 'Ổ Cứng SSD Kingston KC3000 2TB M.2 PCIe gen 4 NVMe (SKC3000D/2048G)', 4690000, 10, 0, 1, 21, 11, 1, 1),
(242, '/images/products/fab11921-bd79-4c06-97b1-61aa15c63108.jpg', '/images/products/d70e34f5-1fa5-46ea-8749-ead91889c822.jpg', '/images/products/9d43bd28-3c38-4f62-bed3-e10f8b0b3d7c.jpg', '/images/products/37cc1485-4c8a-4773-8265-6690f29b9a41.jpg', 'zxc', 'Ổ cứng SSD MSI SPATIUM M480 PRO PCIe 4.0 NVMe M.2 1TB', 2990000, 10, 0, 1, 4, 11, 1, 1),
(243, '/images/products/b2182133-482c-49ab-b48e-97d76bda7a4f.jpg', '/images/products/057178b1-ccad-41ce-b823-915143098922.jpg', '/images/products/2dcf2d0b-498f-402d-83a2-0844fabc3913.jpg', '/images/products/1358b77a-ea08-460d-a60b-d72e1b118537.jpg', 'zxc', 'Ổ cứng SSD MSI SPATIUM M480 PCIe 4.0 NVMe M.2 1TB PLAY', 4190000, 10, 0, 1, 4, 11, 1, 1),
(244, '/images/products/17e2925f-b6a4-4df7-8c9c-958ec94cd490.jpg', '/images/products/19b91a8b-2e5f-4504-87cf-588ede89a77a.jpg', '/images/products/7bcc4044-b803-4376-8e4c-adbf4d103ade.jpg', '/images/products/88dff665-06ce-4b4d-b0e3-2755353e2ec1.jpg', 'zxc', 'Ổ Cứng SSD SamSung 980 500GB M.2 PCIe NVMe', 1790000, 10, 0, 1, 12, 11, 1, 1),
(245, '/images/products/c4fa4310-0063-4049-aa18-6eba52d03a64.jpg', '/images/products/64d8fee8-4420-4924-98ec-f9bddc970aa8.jpg', '/images/products/861eef3a-c93d-4b6c-8dd6-0ffafa629656.jpg', '/images/products/82cf11f3-0a2f-4a5d-b6ab-ca474661946f.jpg', 'zxc', 'Ổ Cứng SSD SamSung 980 Pro 250GB M.2 NVMe', 1890000, 10, 0, 1, 12, 11, 1, 1),
(246, '/images/products/7bfa853c-3372-4ceb-ae78-0e0ffaa93c64.jpg', '/images/products/122ef767-ef2b-4748-977a-9400ac8ebc2f.jpg', '/images/products/9e58d6a9-bf63-46e1-9d94-78b5cfd4f2f3.jpg', '/images/products/c6ce9cc8-72ed-464c-9931-2fcfaa6def44.jpg', 'zxc', 'Ổ Cứng SSD Samsung 990 PRO 2TB M.2 PCIe Gen4 NVMe (MZ-V9P2T0BW)', 6490000, 10, 0, 1, 12, 11, 1, 1),
(247, '/images/products/b0f58641-a352-4678-8436-0734b51c25aa.jpg', '/images/products/64b7e1be-2221-493b-99e2-0545db836db4.jpg', '/images/products/c1c398bc-1f75-43b7-829c-cd8d6a02eefd.jpg', '/images/products/4a7c78d2-1b73-43b2-b19c-f25bf39bae08.jpg', 'zxc', 'Vỏ máy tính ASUS A21 BLACK', 1550000, 10, 0, 1, 1, 10, 1, 1),
(248, '/images/products/bc4d7799-d509-4ade-be1a-a8482ffb6555.jpg', '/images/products/2499f46f-25d2-4603-b4a6-bdac308a0586.jpg', '/images/products/841a802f-2c92-42f1-959d-f12d669d3291.jpg', '/images/products/9a6a42f9-8ae9-4d29-b299-5916738ac420.jpg', 'zxc', 'Vỏ máy tính ASUS TUF Gaming GT502 Black', 3590000, 10, 0, 1, 1, 10, 1, 1),
(249, '/images/products/cbe725cd-76e2-47ad-838c-774594c5909c.jpg', '/images/products/eb95d2d3-01be-49f8-9675-83c5e9a5a8f2.jpg', '/images/products/29ced4f8-bad2-4dae-955f-ffa7962abac7.jpg', '/images/products/1b9ea1db-31e7-4af2-8f72-28d138d39468.jpg', 'zxc', 'Vỏ máy tính ASUS ROG Hyperion GR701 BTF Edition', 11990000, 10, 0, 1, 1, 10, 1, 1),
(250, '/images/products/1c784a25-5c6e-45c5-b397-b85008df0ec9.jpg', '/images/products/2de55681-5153-4a13-8f10-ff6fde5a85e6.jpg', '/images/products/93427362-d3c4-462f-ae81-ab0abde63eff.jpg', '/images/products/2f6d687a-7141-497d-88c4-3871c77f1b9c.jpg', 'zxc', 'Vỏ máy tính ASUS ROG Strix Helios EVA Edition', 8990000, 10, 0, 1, 1, 10, 1, 1),
(251, '/images/products/d9c47130-52dd-4ba7-a815-35f75881eacf.jpg', '/images/products/2cca1be7-52fc-4265-9e0e-b402306cad47.jpg', '/images/products/9cf06310-c211-45c7-85f4-b35c47f3deaf.jpg', '/images/products/bc9b0ffb-9332-43dc-a93c-2e9fe0eef118.jpg', 'zxc', 'Vỏ máy tính ASUS ROG Strix Helios GX601 White', 6990000, 10, 0, 1, 1, 10, 1, 1),
(252, '/images/products/70c243e5-62a5-42df-a69d-8beff7da3519.jpg', '/images/products/bf4e13e0-a9b4-4ce5-b634-84840b252f61.jpg', '/images/products/63467b11-d1de-406f-b9a9-fa3e1eed8ad7.jpg', '/images/products/5ed0709e-c5b4-4e35-93ff-0281f8f8f73a.jpg', 'zxc', 'Vỏ máy tính Corsair 6500X TG Mid-Tower Black (CC-9011257-WW)', 4490000, 10, 0, 1, 9, 10, 1, 1),
(253, '/images/products/ab495917-68c1-4fbf-b276-264c1d979d5d.jpg', '/images/products/e9f699ea-b9de-42c9-807a-23dd8401fc9d.jpg', '/images/products/88bf27cb-4ce9-4b33-b1bc-360d05017632.jpg', '/images/products/d723272a-d91a-43af-bf60-8599e9b95411.jpg', 'zxc', 'Vỏ máy tính Corsair 6500D Airflow TG Mid-Tower Black (CC-9011259-WW)', 4490000, 10, 0, 1, 9, 10, 1, 1),
(254, '/images/products/cd638968-13a2-450f-b78f-4bed4084fe19.jpg', '/images/products/23da404b-f761-4c88-ac2a-cf48d85c4803.jpg', '/images/products/0f82b2f8-31ee-4e8a-84d6-92c91b2a503f.jpg', '/images/products/05f2a696-94b8-4cee-90fd-ec7a36e23b55.jpg', 'zxc', 'Vỏ máy tính Corsair Obsidian 1000D kính cường lực (CC-9011148-WW)', 12990000, 10, 0, 1, 9, 10, 1, 1),
(255, '/images/products/7c3caf7d-2b16-453b-be3c-041e46eac163.jpg', '/images/products/61358f7d-0021-408a-94ef-e9c9b48caf7a.jpg', '/images/products/2587758b-aa90-4be3-bc61-3b02cf44f399.jpg', '/images/products/390569e2-b376-4d90-ba1d-05623784c0b7.jpg', 'zxc', 'Vỏ máy tính GIGABYTE AORUS C700G Glass', 9950000, 10, 0, 1, 11, 10, 1, 1),
(256, '/images/products/45ba77d0-06a4-4c6f-ad5b-81c735311cdc.jpg', '/images/products/f6c711e8-ff0c-4f5a-9352-df6375fb49a0.jpg', '/images/products/d9c548e6-0118-4fd5-a278-b65b6da588af.jpg', '/images/products/78a693c1-0341-4c59-84dc-2682aaa69020.jpg', 'zxc', 'Vỏ máy tính GIGABYTE AORUS C500 GLASS', 4490000, 10, 0, 1, 11, 10, 1, 1),
(257, '/images/products/c8349681-5002-481b-9e0e-1661a309a1ca.jpg', '/images/products/96ba911b-9080-45e8-8c8b-dacda2d12cd3.jpg', '/images/products/3345c733-fe82-4810-97f8-7d02cec83685.jpg', '/images/products/c06fdb1b-6824-4070-b262-7dad3819ddb2.jpg', 'zxc', 'Vỏ máy tính GIGABYTE AORUS C300 Glass Mid-Tower', 2190000, 10, 0, 1, 11, 10, 1, 1),
(258, '/images/products/08158ef2-991c-46af-926a-bf33780ef1e5.jpg', '/images/products/a13e8ffe-36e6-4c08-9893-0a0623da4148.jpg', '/images/products/2fd4c613-facc-4f60-80b8-b708bb158a56.jpg', '/images/products/51a3bece-b0f7-4781-99c9-0d3eda70efc6.jpg', 'zxc', 'Vỏ máy tính MSI MPG SEKIRA 500G Tempered ( Mid Tower )', 5990000, 10, 0, 1, 4, 10, 1, 1),
(259, '/images/products/edaaf779-2792-4693-9324-7957176331c2.jpg', '/images/products/a4887107-348f-424a-a955-1d7479661c22.jpg', '/images/products/4d7fb121-c5e2-4c5f-836b-ee8582daadb8.jpg', '/images/products/c754e78b-0cef-4043-9a18-5eeb7e112996.jpg', 'zxc', 'Vỏ máy tính MSI MAG VAMPIRIC 300R', 3390000, 10, 0, 1, 4, 10, 1, 1),
(260, '/images/products/0fe781bd-c4e7-43a2-a7e5-b413300932da.jpg', '/images/products/f2af8d17-8daf-4d19-be37-d2f93ac564a4.jpg', '/images/products/21453e78-79e9-4e56-95b4-877a28e92982.jpg', '/images/products/c3fcf356-f31a-4944-9e38-00a1df8953f7.jpg', 'zxc', 'Bộ 3 quạt Corsair iCUE Link RX120 RGB White (CO-9051022-WW)', 2490000, 10, 0, 1, 9, 16, 1, 1),
(261, '/images/products/7328a44a-01f5-4c9d-9dfa-9409d1951bd3.jpg', '/images/products/1b6522aa-3d34-4b1f-8c35-2ad8f0e1d115.jpg', '/images/products/9bfcb5d9-8beb-49de-865b-bc90e1c379bc.jpg', '/images/products/e22cd7b3-ae57-429f-928d-5ca8d483795d.jpg', 'zxc', 'Bộ 3 quạt Corsair iCUE Link RX120 RGB (CO-9051018-WW)', 2490000, 10, 0, 1, 9, 16, 1, 1),
(262, '/images/products/04043a71-79ef-4252-9c16-d162e1567348.jpg', '/images/products/2006fbb2-1fc8-4df8-a883-82a7d1d32eca.jpg', '/images/products/b08c0d94-336e-4b48-ad13-f5108ec9f2a6.jpg', '/images/products/a71180a4-bcda-4a90-be33-58ab92440a79.jpg', 'zxc', 'Bộ 3 quạt Corsair QL120 WHITE RGB LED kèm Node Core (CO-9050104-WW)', 2990000, 10, 1, 1, 9, 16, 1, 1),
(263, '/images/products/b43d807e-d4bd-4a12-9d09-650440fa46c2.jpg', '/images/products/ce6d94f4-70fc-470b-9b4b-2e1fb710b463.jpg', '/images/products/11f5861d-abbe-4f50-8d5e-4b74c8ee31f6.jpg', '/images/products/3e39a182-daf8-4e13-be11-e03fbe1970b4.jpg', 'zxc', 'Bộ 3 quạt Corsair LL120 RGB kèm Node PRO (CO-9050072-WW)', 2790000, 10, 0, 1, 9, 16, 1, 1),
(264, '/images/products/163fdb26-fa4a-48b2-815f-c103a921593a.jpg', '/images/products/ffaab3c6-eea4-4aa9-a280-5fd34503cecc.jpg', '/images/products/210cf33c-3050-40a3-a71f-40e7cc969900.jpg', '/images/products/585bb49e-26fc-4f2d-86b2-b5912cc1a48f.jpg', 'zxc', 'Nguồn máy tính ASUS ROG Strix 1000W AURA White Edition - 80 Plus Gold - Full Modular (1000W)', 6990000, 10, 0, 1, 1, 15, 1, 1),
(265, '/images/products/2bf2d971-e84f-41e9-af31-2f657b816237.jpg', '/images/products/c00aa4f9-aa8c-4e6b-b117-42c0e0658221.jpg', '/images/products/fefffa2d-a6fc-411f-b971-f02f3a2c0ff9.jpg', '/images/products/55cdbf80-0c5b-481c-90af-b169231a0df4.jpg', 'zxc', 'Nguồn máy tính ASUS ROG Thor 1200P2 - 80 Plus Platinum - Full Modular (1200W)', 8990000, 10, 0, 1, 1, 15, 1, 1),
(266, '/images/products/edc87a05-fea6-4efc-afca-6cce0294002b.jpg', '/images/products/7263cf03-5510-4963-b1e2-0a5c6da4eae4.jpg', '/images/products/dddffebf-e74f-4988-9460-a2bcd71bed05.jpg', '/images/products/be9c12d8-edbe-4f3e-b01e-e2a269336d32.jpg', 'zxc', 'Nguồn máy tính ASUS ROG Strix 850G - 80 Plus Gold - Full Modular ( 850W )', 4090000, 10, 0, 1, 1, 15, 1, 1),
(267, '/images/products/95dcebf8-89c4-43cf-9290-440409ea1d42.jpg', '/images/products/f708774f-4517-49ef-b735-fc31a336b782.jpg', '/images/products/88b3ed6d-c5ae-41f5-af92-9f5bfef3960d.jpg', '/images/products/2a770b3e-7f88-418c-a7ba-c5d464bd230c.jpg', 'zxc', 'Nguồn máy tính Corsair HX1200 - 80 Plus Platinum - Full Modular (1200W) (CP-9020140-NA)', 7490000, 10, 0, 1, 9, 15, 1, 1),
(268, '/images/products/ded97613-25a4-4974-ad97-371bc5009a3e.jpg', '/images/products/ac42e580-408b-4450-9b2e-47a58c1d99eb.jpg', '/images/products/37c741f8-56d7-4746-8cc3-b6c56dd6df18.jpg', '/images/products/d80b13d4-035d-46ea-8ec7-2d91dfa463eb.jpg', 'zxc', 'Nguồn máy tính Corsair HX850 - 80 Plus Platinum - Full Modular (850W) (CP-9020138-NA)', 4690000, 10, 0, 1, 9, 15, 1, 1),
(269, '/images/products/f875f442-22d7-461a-8734-62834c0d5fc9.jpg', '/images/products/10816b81-b8b0-416b-88cf-ecc9287b9146.jpg', '/images/products/73cff105-8ca3-44a8-87b1-e94e61409662.jpg', '/images/products/6f72ee1c-a062-4ddc-bb4c-0edc32545d2e.jpg', 'zxc', 'Nguồn máy tính Corsair SF750 - 80 Plus Platinum - SFX Factor - Full Modular (750W) (CP-9020186-NA)', 4100000, 10, 0, 1, 9, 15, 1, 1),
(270, '/images/products/d6dd23bb-7f85-44ee-b6ef-aa70cf4810c2.jpg', '/images/products/db9c0636-c757-4491-9da5-7097c6667542.jpg', '/images/products/65f0d12c-abe5-44f0-b007-75fe903aee6f.jpg', '/images/products/29bac2a3-82ab-458b-ace9-0255cdf08b12.jpg', 'zxc', 'Loa Marshall Woburn III Black', 17990000, 10, 0, 1, 23, 12, 1, 1),
(271, '/images/products/2ce6140c-3a80-4d02-967a-9d41e5a3ff12.jpg', '/images/products/3a62658f-e647-4199-af4b-c501e81996ef.jpg', '/images/products/485c9003-6dfb-43e3-887d-752663c7d731.jpg', '/images/products/184244da-1a72-4f95-a1b1-818eac6da71f.jpg', 'zxc', 'Loa Marshall Stanmore III Cream', 11990000, 10, 0, 1, 23, 12, 1, 1),
(272, '/images/products/2b22216c-22b4-43e4-bf44-8b795ceaa000.jpg', '/images/products/76399de6-cf18-477a-b8b9-c162adeb4b8c.jpg', '/images/products/922e3319-7267-4ede-859e-fcf2b394dcd4.jpg', '/images/products/5d78d7dc-8785-4780-a72c-ffbbc6c6fb5d.jpg', 'zxc', 'Máy chơi game Asus ROG Ally White 16GB 512 Z1 Extreme', 15490000, 10, 0, 1, 1, 22, 1, 1),
(273, '/images/products/a19ab563-1bb2-4011-b181-ca00e884af56.jpg', '/images/products/a2c8c8af-db18-419d-88c3-624151900398.jpg', '/images/products/8507964d-9d00-4465-90bd-13c4eb7e657f.jpg', '/images/products/a2dd0f62-9aca-4098-a167-67563920e339.jpg', 'zxc', 'ROG Gaming Charger Dock', 1690000, 10, 0, 1, 1, 22, 1, 1),
(274, '/images/products/570ef0c0-8edc-42a4-b253-272c7c820ad6.jpg', '/images/products/0e31fe07-166f-4ecc-9271-0cce66153c84.jpg', '/images/products/6826358c-1154-47bf-a9a9-7307cb79cff2.jpg', '/images/products/654fc159-1608-4224-81b5-d8ba2ec2ae55.jpg', 'zxc', 'Cổng chuyển đổi USB C Ugreen 10 in 1 CM498 15601', 1190000, 10, 0, 1, 24, 23, 1, 1),
(275, '/images/products/300a6903-5f93-4df3-b0dd-2fbdff88281c.jpg', '/images/products/241041c7-42ac-41db-b033-5c0fc7382b30.jpg', '/images/products/1b6e8351-c577-4f02-be95-f87f7165237c.jpg', '/images/products/5b258632-d90f-44c1-b2e8-ad54acb07b8b.jpg', 'zxc', 'Củ sạc Ugreen RoboGaN Mini CD359 15550 USB-C 30W (Black)', 300000, 10, 0, 1, 24, 23, 1, 1),
(276, '/images/products/7994a8a0-3109-4647-8816-4ef40a44eff9.jpg', '/images/products/b32fd9c8-c09d-44d8-88c0-de5203a0935f.jpg', '/images/products/ac671230-9056-4b8a-9a75-7d3a50c9d11b.jpg', '/images/products/4a71407f-7d57-42c1-8f5a-fc65c7aca2bc.jpg', 'zxc', 'Bộ sạc nhanh GaN Nexode 200W Ugreen CD271 40913', 1990000, 10, 0, 1, 24, 23, 1, 1),
(277, '/images/products/8da969d7-9987-4d0c-aa4e-3836858ff2bb.jpg', '/images/products/cfcc34dc-2b3b-46d2-af58-db03ce55a6ca.jpg', '/images/products/f9084fca-4d2b-4b8c-bcbe-7b31e9e5f46f.jpg', '/images/products/f1863eca-4604-4726-8e75-c8bccd9491bb.jpg', 'zxc', 'Phần mềm Windows 11 Pro Online DwnLd NR FQC-10572', 4490000, 10, 0, 1, 25, 24, 1, 1),
(278, '/images/products/bdfde517-b169-41f4-8859-a9719ae2f467.jpg', '/images/products/ba94107d-969f-4e5e-96f5-b8e7d61d0b14.jpg', '/images/products/fbe468a1-8a2f-4b58-9eb0-2b87a0ddbe4f.jpg', '/images/products/76ffe2c1-c104-44e5-aa02-9c7fa2f197e4.jpg', 'zxc', 'Phần mềm Microsoft 365 Family 6GQ-00083', 1490000, 10, 0, 1, 25, 24, 1, 1),
(279, '/images/products/c9909a04-28aa-4207-b172-3ec1f651071d.jpg', '/images/products/81474f5a-3b57-438e-a71a-986442c94b0d.jpg', '/images/products/0898c3f0-aa84-4b36-9adb-9dbfa17c771b.jpg', '/images/products/d793abc4-c1dd-4684-9776-c7fddb687f56.jpg', 'zxc', 'Macbook Air M2 8GPU 16GB 256GB - Midnight', 30990000, 10, 0, 1, 26, 25, 1, 1),
(280, '/images/products/13c0a1ca-4b35-4478-b26d-6f2e33468f91.jpg', '/images/products/e0346861-1b32-4b7c-8e22-048734830329.jpg', '/images/products/b2fdb6d8-4f84-4856-9b64-3dc2182d868e.jpg', '/images/products/409f239e-b7fe-4f1d-b7ce-9acdf1ec451a.jpg', 'zxc', 'MacBook Pro 13 M2 10GPU 16GB 512GB Space Gray', 43990000, 10, 1, 1, 26, 25, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `quantity_sold` int NOT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `quantity`, `quantity_sold`, `product_id`) VALUES
(3, 10, 0, 2),
(4, 10, 0, 3),
(5, 10, 0, 4),
(6, 10, 0, 5),
(7, 10, 0, 6),
(8, 10, 0, 7),
(9, 10, 0, 8),
(10, 10, 0, 9),
(11, 10, 0, 10),
(12, 10, 0, 11),
(13, 10, 0, 12),
(14, 10, 2, 13),
(15, 10, 1, 14),
(16, 10, 0, 15),
(17, 10, 0, 16),
(18, 10, 0, 17),
(19, 10, 0, 18),
(20, 10, 0, 19),
(21, 10, 0, 20),
(22, 10, 0, 21),
(23, 10, 2, 22),
(24, 10, 0, 23),
(25, 10, 0, 24),
(26, 10, 0, 25),
(27, 10, 0, 26),
(28, 10, 0, 27),
(29, 10, 0, 28),
(30, 10, 0, 29),
(31, 10, 0, 30),
(32, 10, 1, 31),
(33, 10, 0, 32),
(34, 10, 0, 33),
(35, 10, 0, 34),
(36, 10, 0, 35),
(37, 10, 0, 36),
(38, 10, 0, 37),
(39, 10, 0, 38),
(40, 10, 0, 39),
(41, 10, 0, 40),
(42, 10, 0, 41),
(43, 10, 0, 42),
(44, 10, 0, 43),
(45, 10, 0, 44),
(46, 10, 0, 45),
(47, 10, 0, 46),
(48, 10, 0, 47),
(49, 10, 0, 48),
(50, 10, 0, 49),
(51, 10, 0, 50),
(52, 10, 0, 51),
(53, 10, 0, 52),
(54, 10, 0, 53),
(55, 10, 0, 54),
(56, 10, 0, 55),
(57, 10, 0, 56),
(58, 10, 0, 57),
(59, 10, 0, 58),
(60, 10, 0, 59),
(61, 10, 0, 60),
(62, 10, 0, 61),
(63, 10, 0, 62),
(64, 10, 1, 63),
(65, 10, 0, 64),
(66, 20, 0, 67),
(67, 20, 0, 66),
(68, 10, 0, 68),
(69, 10, 0, 69),
(70, 10, 0, 70),
(71, 10, 0, 71),
(72, 10, 0, 72),
(73, 10, 0, 73),
(74, 10, 0, 74),
(75, 10, 0, 75),
(76, 10, 0, 76),
(77, 10, 0, 77),
(78, 10, 0, 78),
(79, 10, 0, 79),
(80, 10, 0, 80),
(81, 10, 0, 81),
(82, 10, 0, 82),
(83, 10, 0, 83),
(84, 10, 0, 84),
(85, 10, 0, 85),
(86, 10, 0, 86),
(87, 10, 0, 87),
(88, 10, 1, 88),
(89, 10, 0, 89),
(90, 10, 0, 90),
(91, 10, 0, 91),
(92, 10, 0, 93),
(93, 10, 0, 94),
(94, 10, 1, 95),
(95, 10, 0, 96),
(96, 10, 0, 97),
(97, 10, 0, 98),
(98, 10, 0, 99),
(99, 10, 0, 100),
(100, 10, 0, 101),
(101, 10, 0, 102),
(102, 10, 0, 103),
(103, 10, 0, 104),
(104, 10, 0, 105),
(105, 10, 0, 106),
(106, 10, 0, 107),
(107, 10, 0, 108),
(108, 10, 0, 109),
(109, 10, 0, 110),
(110, 10, 0, 111),
(111, 10, 1, 112),
(112, 10, 0, 113),
(113, 10, 0, 114),
(114, 10, 0, 115),
(115, 10, 0, 116),
(116, 10, 0, 117),
(117, 10, 0, 118),
(118, 10, 0, 119),
(119, 10, 0, 120),
(120, 10, 0, 121),
(121, 10, 0, 122),
(122, 10, 0, 123),
(123, 10, 0, 124),
(124, 10, 0, 125),
(125, 10, 0, 126),
(126, 10, 0, 127),
(127, 10, 0, 128),
(128, 10, 0, 129),
(129, 10, 0, 130),
(130, 10, 0, 131),
(131, 10, 0, 132),
(132, 10, 0, 133),
(133, 10, 0, 134),
(134, 10, 0, 135),
(135, 10, 0, 136),
(136, 10, 0, 137),
(137, 10, 0, 138),
(138, 10, 0, 139),
(139, 10, 0, 140),
(140, 10, 0, 141),
(141, 10, 0, 142),
(142, 10, 0, 143),
(143, 10, 0, 144),
(144, 10, 0, 145),
(145, 10, 0, 146),
(146, 10, 0, 147),
(147, 10, 0, 148),
(148, 10, 0, 149),
(149, 10, 0, 150),
(150, 10, 0, 151),
(151, 10, 0, 152),
(152, 10, 0, 153),
(153, 10, 0, 154),
(154, 10, 0, 155),
(155, 10, 0, 156),
(156, 10, 0, 157),
(157, 10, 0, 158),
(158, 10, 0, 159),
(159, 10, 0, 160),
(160, 10, 0, 161),
(161, 10, 0, 162),
(162, 10, 0, 163),
(163, 10, 0, 164),
(164, 10, 0, 165),
(165, 10, 0, 166),
(166, 10, 0, 167),
(167, 10, 0, 168),
(168, 10, 0, 169),
(169, 10, 0, 170),
(170, 10, 0, 171),
(171, 10, 0, 172),
(172, 10, 0, 173),
(173, 10, 0, 174),
(174, 10, 0, 175),
(175, 10, 0, 176),
(176, 10, 0, 177),
(177, 10, 0, 178),
(178, 10, 0, 179),
(179, 10, 0, 180),
(180, 10, 0, 181),
(181, 10, 1, 182),
(182, 10, 0, 183),
(183, 10, 1, 184),
(184, 10, 0, 185),
(185, 10, 0, 187),
(186, 20, 0, 188),
(187, 10, 0, 189),
(188, 10, 1, 190),
(189, 10, 0, 191),
(190, 10, 0, 192),
(191, 10, 0, 193),
(192, 10, 0, 194),
(193, 10, 0, 195),
(194, 10, 0, 196),
(195, 10, 0, 197),
(196, 10, 0, 198),
(197, 10, 0, 199),
(198, 10, 0, 200),
(199, 10, 0, 201),
(200, 10, 0, 202),
(201, 10, 0, 203),
(202, 10, 0, 204),
(203, 10, 0, 205),
(204, 10, 0, 206),
(205, 10, 0, 207),
(206, 10, 0, 208),
(207, 10, 0, 209),
(208, 10, 0, 210),
(209, 10, 0, 211),
(210, 10, 0, 212),
(211, 10, 0, 213),
(212, 10, 0, 214),
(213, 10, 0, 215),
(214, 10, 0, 216),
(215, 10, 0, 217),
(216, 10, 0, 218),
(217, 10, 0, 219),
(218, 10, 0, 220),
(219, 10, 0, 221),
(220, 10, 0, 222),
(221, 10, 0, 223),
(222, 10, 0, 224),
(223, 10, 0, 225),
(224, 10, 0, 226),
(225, 20, 0, 227),
(226, 20, 0, 228),
(227, 10, 0, 229),
(228, 10, 0, 230),
(229, 10, 0, 231),
(230, 10, 0, 232),
(231, 10, 0, 233),
(232, 10, 0, 234),
(233, 10, 0, 235),
(234, 10, 0, 236),
(235, 10, 0, 237),
(236, 10, 0, 238),
(237, 10, 0, 239),
(238, 10, 0, 240),
(239, 10, 0, 241),
(240, 10, 0, 242),
(241, 10, 0, 243),
(242, 10, 0, 244),
(243, 10, 0, 245),
(244, 10, 0, 246),
(245, 10, 0, 247),
(246, 10, 0, 248),
(247, 10, 0, 249),
(248, 10, 0, 250),
(249, 10, 0, 251),
(250, 10, 0, 252),
(251, 10, 0, 253),
(252, 10, 0, 254),
(253, 10, 0, 255),
(254, 10, 0, 256),
(255, 10, 0, 257),
(256, 10, 0, 258),
(257, 10, 0, 259),
(258, 10, 0, 260),
(259, 10, 0, 261),
(260, 10, 1, 262),
(261, 10, 0, 263),
(262, 10, 0, 264),
(263, 10, 0, 265),
(264, 10, 0, 266),
(265, 10, 0, 267),
(266, 10, 0, 268),
(267, 10, 0, 269),
(268, 10, 0, 270),
(269, 10, 0, 271),
(270, 10, 0, 272),
(271, 10, 0, 273),
(272, 10, 0, 274),
(273, 10, 0, 275),
(274, 10, 0, 276),
(275, 10, 0, 277),
(276, 10, 0, 278),
(277, 10, 0, 279),
(278, 10, 1, 280),
(279, 10, 0, 186),
(280, 10, 0, 65);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_products`
--

CREATE TABLE `receipt_products` (
  `id` bigint NOT NULL,
  `create_day` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `status` int NOT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `receipt_products`
--

INSERT INTO `receipt_products` (`id`, `create_day`, `image`, `price`, `quantity`, `status`, `product_id`) VALUES
(3, '2024-07-03', '/images/receiptProducts/z5474098960589_707a473701b1012bba37c3d0f34023e9.jpg', 10000000, 10, 1, 2),
(4, '2024-07-03', '/images/receiptProducts/z5474098960589_707a473701b1012bba37c3d0f34023e9.jpg', 10000000, 10, 1, 3),
(5, '2024-07-03', '/images/receiptProducts/z5474098960589_707a473701b1012bba37c3d0f34023e9.jpg', 10000000, 10, 1, 4),
(6, '2024-07-03', '/images/receiptProducts/z5474098960589_707a473701b1012bba37c3d0f34023e9.jpg', 10000000, 10, 1, 5),
(7, '2024-07-03', '/images/receiptProducts/b5a48fc2-700a-487e-9642-1fa1fa2a1978.jpg', 10000000, 10, 1, 6),
(8, '2024-07-03', '/images/receiptProducts/b7297a75-a73e-41d2-b9d8-957bd6465770.jpg', 10000000, 10, 1, 7),
(9, '2024-07-03', '/images/receiptProducts/ad5e0e2c-d831-4543-8727-d2889e482b19.jpg', 10000000, 10, 1, 8),
(10, '2024-07-03', '/images/receiptProducts/414cf5c0-9895-49d3-b5c9-052815bbc7c9.jpg', 10000000, 10, 1, 9),
(11, '2024-07-03', '/images/receiptProducts/6412a688-76d9-4602-a8b4-ad2f06f3d533.jpg', 10000000, 10, 1, 10),
(12, '2024-07-03', '/images/receiptProducts/70e006d2-b671-4131-aa07-87426974ded2.jpg', 10000000, 10, 1, 11),
(13, '2024-07-03', '/images/receiptProducts/29944217-48c5-4b12-9133-0e2056d1c4e0.jpg', 10000000, 10, 1, 12),
(14, '2024-07-03', '/images/receiptProducts/1126611f-4613-4cde-96f9-f3843b7e6810.jpg', 10000000, 10, 1, 13),
(15, '2024-07-03', '/images/receiptProducts/bd9a9277-8a80-4d8a-84a9-fdb296e818c2.jpg', 10000000, 10, 1, 14),
(16, '2024-07-03', '/images/receiptProducts/52af2ca7-1ca8-40f1-ad76-31116e98d15b.jpg', 10000000, 10, 1, 15),
(17, '2024-07-03', '/images/receiptProducts/879fb916-60db-4ffe-927f-0211348a796b.jpg', 10000000, 10, 1, 16),
(18, '2024-07-03', '/images/receiptProducts/ea7278e5-eaff-4a51-9e31-f10846918105.jpg', 10000000, 10, 1, 17),
(19, '2024-07-03', '/images/receiptProducts/d0a7e156-08c2-4610-950c-79b850715ca3.jpg', 10000000, 10, 1, 18),
(20, '2024-07-03', '/images/receiptProducts/06e05806-38a5-4841-b6d8-e7c1b2428c81.jpg', 10000000, 10, 1, 19),
(21, '2024-07-03', '/images/receiptProducts/ca9f8744-f237-4365-89a3-c1e3dcd96124.jpg', 10000000, 10, 1, 20),
(22, '2024-07-03', '/images/receiptProducts/d55ecb48-9853-40b2-868a-614444fd1501.jpg', 10000000, 10, 1, 21),
(23, '2024-07-03', '/images/receiptProducts/86051ba1-f9b3-4a32-9f08-fe174a55491d.jpg', 10000000, 10, 1, 22),
(24, '2024-07-03', '/images/receiptProducts/cc3a9370-39bf-4860-b144-182b38a08746.jpg', 10000000, 10, 1, 23),
(25, '2024-07-03', '/images/receiptProducts/70b56fc5-5e91-4eda-a6a5-455d548931a9.jpg', 10000000, 10, 1, 24),
(26, '2024-07-03', '/images/receiptProducts/2e1d3f0b-db08-459a-a11c-b14d85d99732.jpg', 10000000, 10, 1, 25),
(27, '2024-07-03', '/images/receiptProducts/144bdb43-ace5-4542-b8cd-0bb49ed5c5ab.jpg', 10000000, 10, 1, 26),
(28, '2024-07-03', '/images/receiptProducts/52efbc19-437d-4aea-b2db-ccc8b649a55c.jpg', 10000000, 10, 1, 27),
(29, '2024-07-03', '/images/receiptProducts/f3b64d1b-d727-4d66-a421-4be288c75c89.jpg', 10000000, 10, 1, 28),
(30, '2024-07-03', '/images/receiptProducts/4fc8973a-4055-4708-88fa-2a3c9f8fccd2.jpg', 10000000, 10, 1, 29),
(31, '2024-07-03', '/images/receiptProducts/a52d3a32-b491-4bf6-b9d5-5af568c41061.jpg', 10000000, 10, 1, 30),
(32, '2024-07-03', '/images/receiptProducts/7afe5e04-de00-4ad4-b87d-97a446d9bff6.jpg', 10000000, 10, 1, 31),
(33, '2024-07-03', '/images/receiptProducts/06cb89c8-3f15-4417-886e-606bf792ea72.jpg', 10000000, 10, 1, 32),
(34, '2024-07-03', '/images/receiptProducts/e31f4615-ebf1-412a-a745-2a699eb67cbb.jpg', 10000000, 10, 1, 33),
(35, '2024-07-03', '/images/receiptProducts/3b4d87cc-0802-4223-bc5c-10180e2b85ec.jpg', 10000000, 10, 1, 34),
(36, '2024-07-03', '/images/receiptProducts/a0de74df-67d2-4d4b-84c6-a9ff70a7932b.jpg', 10000000, 10, 1, 35),
(37, '2024-07-03', '/images/receiptProducts/23e8f5e0-91ce-4722-bd6c-35359e2c6067.jpg', 10000000, 10, 1, 36),
(38, '2024-07-03', '/images/receiptProducts/1b6b0908-9d00-49d7-b538-926d25d4cfbd.jpg', 10000000, 10, 1, 37),
(39, '2024-07-03', '/images/receiptProducts/7965b823-e020-44ae-9891-b06335c3fb1d.jpg', 10000000, 10, 1, 38),
(40, '2024-07-03', '/images/receiptProducts/8c114925-184a-4725-b64c-ad4f0abe0c8d.jpg', 10000000, 10, 1, 39),
(41, '2024-07-03', '/images/receiptProducts/f85d4a94-0c5a-4870-bdef-dbb839acf22b.jpg', 10000000, 10, 1, 40),
(42, '2024-07-03', '/images/receiptProducts/e073d895-edb5-4972-a0c1-756061be3c11.jpg', 10000000, 10, 1, 41),
(43, '2024-07-03', '/images/receiptProducts/918c7bdc-1783-43a1-aa8d-bf545229892a.jpg', 10000000, 10, 1, 42),
(44, '2024-07-03', '/images/receiptProducts/85fd833e-11eb-4d07-afa8-061822f1111b.jpg', 10000000, 10, 1, 43),
(45, '2024-07-03', '/images/receiptProducts/2317f882-c212-488d-94b4-5e6cb79bfd42.jpg', 10000000, 10, 1, 44),
(46, '2024-07-03', '/images/receiptProducts/8b5f7214-06b7-44b1-bace-c452ef7a6d2d.jpg', 10000000, 10, 1, 45),
(47, '2024-07-03', '/images/receiptProducts/a73eba2f-19f4-401a-85dc-def23c32ea15.jpg', 10000000, 10, 1, 46),
(48, '2024-07-03', '/images/receiptProducts/ed4c0bc6-b7e1-414a-be90-cc573c675194.jpg', 10000000, 10, 1, 47),
(49, '2024-07-03', '/images/receiptProducts/5b60377a-c428-49bc-8be7-aa35dfab169e.jpg', 10000000, 10, 1, 48),
(50, '2024-07-03', '/images/receiptProducts/44a87de1-6097-4c29-9cd8-6f218f4a5c8d.jpg', 10000000, 10, 1, 49),
(51, '2024-07-03', '/images/receiptProducts/12aaff79-43cf-4412-8ca3-1ef77e5e2bbc.jpg', 10000000, 10, 1, 50),
(52, '2024-07-03', '/images/receiptProducts/b37237aa-2f1d-49c2-924d-e55bdde76d92.jpg', 10000000, 10, 1, 51),
(53, '2024-07-03', '/images/receiptProducts/1ce6f084-7a4c-4455-a258-6f3a5f5c777e.jpg', 10000000, 10, 1, 52),
(54, '2024-07-03', '/images/receiptProducts/44d48687-23dd-4b9e-89f6-6832de917ace.jpg', 10000000, 10, 1, 53),
(55, '2024-07-03', '/images/receiptProducts/086b59b2-d605-4767-840f-288d3d100178.jpg', 10000000, 10, 1, 54),
(56, '2024-07-03', '/images/receiptProducts/0c75f195-2e7b-4b7f-976d-7773f8506c5b.jpg', 10000000, 10, 1, 55),
(57, '2024-07-03', '/images/receiptProducts/e44d9baf-812d-48ba-8fff-e2c5c5ade4f4.jpg', 10000000, 10, 1, 56),
(58, '2024-07-03', '/images/receiptProducts/5afe0af4-430d-4a9a-82f7-1a6132edddfe.jpg', 10000000, 10, 1, 57),
(59, '2024-07-03', '/images/receiptProducts/13838e7c-e224-4d8a-840b-a64483c20f86.jpg', 10000000, 10, 1, 58),
(60, '2024-07-03', '/images/receiptProducts/e3f740ca-17f1-41e9-bd43-7eaabd070fde.jpg', 10000000, 10, 1, 59),
(61, '2024-07-03', '/images/receiptProducts/fd49f9e7-e3a8-489e-8f59-b79a1277a187.jpg', 10000000, 10, 1, 60),
(62, '2024-07-03', '/images/receiptProducts/ba200301-576d-4e33-a133-0f332cbf6808.jpg', 10000000, 10, 1, 61),
(63, '2024-07-03', '/images/receiptProducts/23de6edc-538b-4865-bfa0-d0e9c9c36fab.jpg', 10000000, 10, 1, 62),
(64, '2024-07-03', '/images/receiptProducts/f0421980-c1fb-4448-a2b0-fecf8df20b40.jpg', 10000000, 10, 1, 63),
(65, '2024-07-03', '/images/receiptProducts/e99ff4cb-3e2c-4500-98f4-aa50704737af.jpg', 10000000, 10, 1, 64),
(66, '2024-07-03', '/images/receiptProducts/367d9ede-3b85-4bd5-8e9f-40e2914f3882.jpg', 10000000, 10, 1, 67),
(67, '2024-07-03', '/images/receiptProducts/965e5d33-3c9c-4f69-bd82-43959201a0be.jpg', 10000000, 10, 1, 66),
(68, '2024-07-03', '/images/receiptProducts/f9282d19-0921-4bb0-a7f8-973669d4b748.jpg', 10000000, 10, 1, 67),
(69, '2024-07-03', '/images/receiptProducts/4da8aad9-9759-4e0f-ba6d-9136f49a53da.jpg', 10000000, 10, 1, 68),
(70, '2024-07-03', '/images/receiptProducts/ce25d378-8d24-42fd-8d33-72b8903ebc81.jpg', 10000000, 10, 1, 69),
(71, '2024-07-03', '/images/receiptProducts/d0e12772-9258-49db-8b6a-4eea3c1720c7.jpg', 10000000, 10, 1, 70),
(72, '2024-07-03', '/images/receiptProducts/dfbb058c-4f4d-4c52-8b92-f6ed7ea1cf86.jpg', 10000000, 10, 1, 71),
(73, '2024-07-03', '/images/receiptProducts/0751e016-2c7c-4659-aa30-bd11181cf898.jpg', 10000000, 10, 1, 72),
(74, '2024-07-03', '/images/receiptProducts/62011295-5ab6-49fd-be54-4a9617775f33.jpg', 10000000, 10, 1, 73),
(75, '2024-07-03', '/images/receiptProducts/38551fbd-9b27-4da9-b701-06b7e8055df3.jpg', 10000000, 10, 1, 74),
(76, '2024-07-03', '/images/receiptProducts/1ca7dce3-28e4-434a-8d47-ee3cdb3796fd.jpg', 10000000, 10, 1, 75),
(77, '2024-07-03', '/images/receiptProducts/9c2fdf94-1f74-4820-92e9-e74a741dbfbf.jpg', 10000000, 10, 1, 76),
(78, '2024-07-03', '/images/receiptProducts/b2b191d7-4847-4e56-bff9-4f6c0b32d34f.jpg', 10000000, 10, 1, 77),
(79, '2024-07-03', '/images/receiptProducts/fd443d88-1edb-4f94-8312-6520844466b0.jpg', 10000000, 10, 1, 78),
(80, '2024-07-03', '/images/receiptProducts/2f5a7b71-6a58-490a-a72e-37133a0ec4b3.jpg', 10000000, 10, 1, 79),
(81, '2024-07-03', '/images/receiptProducts/9987158d-45b4-4a37-8ec7-b1ce47864b0b.jpg', 10000000, 10, 1, 80),
(82, '2024-07-03', '/images/receiptProducts/64cb1785-4b97-43fb-a62b-3c93cb82a005.jpg', 10000000, 10, 1, 81),
(83, '2024-07-03', '/images/receiptProducts/c3925300-ccc0-461e-aaa1-2890c684121d.jpg', 10000000, 10, 1, 82),
(84, '2024-07-03', '/images/receiptProducts/e23f9f1c-e3ce-4d78-9be3-525959e0accb.jpg', 10000000, 10, 1, 83),
(85, '2024-07-03', '/images/receiptProducts/0044b324-6bba-416f-b0eb-f559c4345b8c.jpg', 10000000, 10, 1, 84),
(86, '2024-07-03', '/images/receiptProducts/5982a277-f135-4a2c-b4c8-6698a0dea21e.jpg', 10000000, 10, 1, 85),
(87, '2024-07-03', '/images/receiptProducts/8f5e5e02-142c-45a2-be69-eee598a79918.jpg', 10000000, 10, 1, 86),
(88, '2024-07-03', '/images/receiptProducts/f6cc44a8-d5eb-423a-9bd9-1444c76845aa.jpg', 10000000, 10, 1, 87),
(89, '2024-07-03', '/images/receiptProducts/d7d63224-8930-4ae3-873d-fd1e36a2f930.jpg', 10000000, 10, 1, 88),
(90, '2024-07-03', '/images/receiptProducts/ad14b28d-ddb6-4120-a70c-f22638e47932.jpg', 10000000, 10, 1, 89),
(91, '2024-07-03', '/images/receiptProducts/264cff3d-0029-439a-937a-d92162909233.jpg', 10000000, 10, 1, 90),
(92, '2024-07-03', '/images/receiptProducts/3ca5203c-9a89-4f2a-8bed-a6d106d52671.jpg', 10000000, 10, 1, 91),
(93, '2024-07-03', '/images/receiptProducts/1caec783-8ea8-4989-8da0-5c9013c9bd92.jpg', 10000000, 10, 1, 93),
(94, '2024-07-03', '/images/receiptProducts/255b6d61-2d28-4374-a90f-807dfe3d8aff.jpg', 10000000, 10, 1, 94),
(95, '2024-07-03', '/images/receiptProducts/c5e55d9d-8fd3-4e1f-a26b-5f763465e1d2.jpg', 10000000, 10, 1, 95),
(96, '2024-07-03', '/images/receiptProducts/11eb900b-a2d0-4a45-be50-f3b26ca85b25.jpg', 10000000, 10, 1, 96),
(97, '2024-07-03', '/images/receiptProducts/fcb5a38d-dda9-4c1c-af7e-47a247c184ae.jpg', 10000000, 10, 1, 97),
(98, '2024-07-03', '/images/receiptProducts/0f60b0c7-0999-43b9-8093-7015b7ba4935.jpg', 10000000, 10, 1, 98),
(99, '2024-07-03', '/images/receiptProducts/3a35d96c-db0a-41d9-950f-06503ad149a7.jpg', 10000000, 10, 1, 99),
(100, '2024-07-03', '/images/receiptProducts/d2041788-bd00-438a-8ed0-5ea2fee81c29.jpg', 10000000, 10, 1, 100),
(101, '2024-07-03', '/images/receiptProducts/a23e6d1e-3fa2-4c5c-8e5e-ab9631837134.jpg', 10000000, 10, 1, 101),
(102, '2024-07-03', '/images/receiptProducts/aba28c1f-eeb3-441d-a04c-06aea8d1bcd4.jpg', 10000000, 10, 1, 102),
(103, '2024-07-03', '/images/receiptProducts/9185edd4-dc26-4310-bdec-fea83967dca4.jpg', 10000000, 10, 1, 103),
(104, '2024-07-03', '/images/receiptProducts/74606189-87be-452a-8aa3-0a97b65d052e.jpg', 10000000, 10, 1, 104),
(105, '2024-07-03', '/images/receiptProducts/c6140b84-4b75-45fb-aa6c-0eab8ae1b916.jpg', 10000000, 10, 1, 105),
(106, '2024-07-03', '/images/receiptProducts/6db22f46-6c0b-404d-859d-deaad906525b.jpg', 10000000, 10, 1, 106),
(107, '2024-07-03', '/images/receiptProducts/29c459f1-9851-4e5d-b91e-0318bcc4b8ad.jpg', 10000000, 10, 1, 107),
(108, '2024-07-03', '/images/receiptProducts/ff028f12-5d98-429a-946d-19395f4fa49c.jpg', 10000000, 10, 1, 108),
(109, '2024-07-03', '/images/receiptProducts/346a4ce7-7eb6-4663-80c1-2222313c00d4.jpg', 10000000, 10, 1, 109),
(110, '2024-07-03', '/images/receiptProducts/04b1f35c-b02e-4c0b-8eca-2f4afbc5948c.jpg', 10000000, 10, 1, 110),
(111, '2024-07-03', '/images/receiptProducts/9b65e52f-8c7c-419f-af47-ffa70d4d1feb.jpg', 10000000, 10, 1, 111),
(112, '2024-07-03', '/images/receiptProducts/547f7927-35ae-4475-a482-77d07f8235f8.jpg', 10000000, 10, 1, 112),
(113, '2024-07-03', '/images/receiptProducts/909e4a7c-0509-4828-a92c-98acfe373545.jpg', 10000000, 10, 1, 113),
(114, '2024-07-03', '/images/receiptProducts/3b40ff47-d4ba-4dcb-9df9-77657b4eeb57.jpg', 10000000, 10, 1, 114),
(115, '2024-07-03', '/images/receiptProducts/34a71196-7d7b-4f76-ae65-e5baa36fd95b.jpg', 10000000, 10, 1, 115),
(116, '2024-07-03', '/images/receiptProducts/d85e4ca0-150b-41ee-8156-a9e0d498a673.jpg', 10000000, 10, 1, 116),
(117, '2024-07-03', '/images/receiptProducts/cfca1c1a-ad50-4bb7-a603-a574c2f8beae.jpg', 10000000, 10, 1, 117),
(118, '2024-07-03', '/images/receiptProducts/4bd409a8-4ea6-4719-920a-02397fa1d66c.jpg', 10000000, 10, 1, 118),
(119, '2024-07-03', '/images/receiptProducts/e6653a3a-0211-4cf4-89ad-1cf82c5f1744.jpg', 10000000, 10, 1, 119),
(120, '2024-07-03', '/images/receiptProducts/ef82eb3f-4f32-4f7a-821b-f014efcc25a9.jpg', 10000000, 10, 1, 120),
(121, '2024-07-03', '/images/receiptProducts/3315e87c-5563-429f-aa81-a4e6b719edfa.jpg', 10000000, 10, 1, 121),
(122, '2024-07-03', '/images/receiptProducts/00787698-3a39-4aba-80d0-77227201f634.jpg', 10000000, 10, 1, 122),
(123, '2024-07-03', '/images/receiptProducts/614f0630-a81a-4170-a67f-186385c0b931.jpg', 10000000, 10, 1, 123),
(124, '2024-07-03', '/images/receiptProducts/943aae98-4e15-4975-9983-6a2a591208e7.jpg', 10000000, 10, 1, 124),
(125, '2024-07-03', '/images/receiptProducts/8fbeac2a-a3cb-4c08-946d-d4dea5df3510.jpg', 10000000, 10, 1, 125),
(126, '2024-07-03', '/images/receiptProducts/7f56387c-1942-4198-be1b-7dead848e705.jpg', 10000000, 10, 1, 126),
(127, '2024-07-03', '/images/receiptProducts/d2ab7ba3-6e64-40cd-a0e3-e96139ab718a.jpg', 10000000, 10, 1, 127),
(128, '2024-07-03', '/images/receiptProducts/5e1ddfa5-b3f9-490c-9d36-5bd102c85829.jpg', 10000000, 10, 1, 128),
(129, '2024-07-03', '/images/receiptProducts/98250027-250e-4a54-9ea9-f72ba6c72fe7.jpg', 10000000, 10, 1, 129),
(130, '2024-07-03', '/images/receiptProducts/feb25b59-0a4f-404e-a626-bb2eea9f837f.jpg', 10000000, 10, 1, 130),
(131, '2024-07-03', '/images/receiptProducts/d9951472-1a9b-4a6e-b46c-0eb394e37c08.jpg', 10000000, 10, 1, 131),
(132, '2024-07-03', '/images/receiptProducts/54a92e52-d67f-4b74-91e4-09b39db1218a.jpg', 10000000, 10, 1, 132),
(133, '2024-07-03', '/images/receiptProducts/0bf0c936-b0fb-471a-80cb-a33b1b46b343.jpg', 10000000, 10, 1, 133),
(134, '2024-07-03', '/images/receiptProducts/3c32909c-94b7-433c-93f3-1063702d6bd5.jpg', 10000000, 10, 1, 134),
(135, '2024-07-03', '/images/receiptProducts/7cf8306d-f0aa-4ce8-93f7-d87771ed67f8.jpg', 10000000, 10, 1, 135),
(136, '2024-07-03', '/images/receiptProducts/98a605c2-92a2-489f-b696-f17a7c3359d6.jpg', 10000000, 10, 1, 136),
(137, '2024-07-03', '/images/receiptProducts/754bd8d8-0c63-4018-b474-ffe4ff793567.jpg', 10000000, 10, 1, 137),
(138, '2024-07-03', '/images/receiptProducts/cd290f19-5c65-4ccc-a270-0af83547d494.jpg', 10000000, 10, 1, 138),
(139, '2024-07-03', '/images/receiptProducts/ced1496e-91f3-4415-a82f-7c823eb637a1.jpg', 10000000, 10, 1, 139),
(140, '2024-07-03', '/images/receiptProducts/35a52eff-8ced-479e-ab5a-5ed6349db1a7.jpg', 10000000, 10, 1, 140),
(141, '2024-07-03', '/images/receiptProducts/9de68d1d-b580-4b34-bf55-577b97778ab6.jpg', 10000000, 10, 1, 141),
(142, '2024-07-03', '/images/receiptProducts/aff8fa19-a324-4d7d-879b-6528c5a30d65.jpg', 10000000, 10, 1, 142),
(143, '2024-07-03', '/images/receiptProducts/e200b30a-0b00-4f88-9561-19cd8e325781.jpg', 10000000, 10, 1, 143),
(144, '2024-07-03', '/images/receiptProducts/9d8a831a-e420-4500-85b8-497d9771b692.jpg', 10000000, 10, 1, 144),
(145, '2024-07-03', '/images/receiptProducts/0532d182-f3c0-4c2d-9c5d-af61807edca7.jpg', 10000000, 10, 1, 145),
(146, '2024-07-03', '/images/receiptProducts/4eac1c70-0543-472d-a15b-9c1049ac5df2.jpg', 10000000, 10, 1, 146),
(147, '2024-07-03', '/images/receiptProducts/b5ffe182-70b5-4c5e-8aaa-278306de6f05.jpg', 10000000, 10, 1, 147),
(148, '2024-07-03', '/images/receiptProducts/315ffd0c-dc92-44fe-91d5-072d56349592.jpg', 10000000, 10, 1, 148),
(149, '2024-07-03', '/images/receiptProducts/01d3671e-e3b0-42e2-9ce4-c03c94dca7f4.jpg', 10000000, 10, 1, 149),
(150, '2024-07-03', '/images/receiptProducts/965d599c-9b65-4fdf-a82b-ee0350616c71.jpg', 10000000, 10, 1, 150),
(151, '2024-07-03', '/images/receiptProducts/56a30cf6-e752-4b10-bc98-5d0f9c220522.jpg', 10000000, 10, 1, 151),
(152, '2024-07-03', '/images/receiptProducts/e13dac5c-4dc3-4b44-98b0-110bb06e8ce0.jpg', 10000000, 10, 1, 152),
(153, '2024-07-03', '/images/receiptProducts/1328c143-ad08-40f0-abc8-a8a2e3112040.jpg', 10000000, 10, 1, 153),
(154, '2024-07-03', '/images/receiptProducts/28d0837a-29fc-480c-bcfe-05b3187cb393.jpg', 10000000, 10, 1, 154),
(155, '2024-07-03', '/images/receiptProducts/99c35578-1385-4a1c-986b-9fc99243ecdc.jpg', 10000000, 10, 1, 155),
(156, '2024-07-03', '/images/receiptProducts/1e64d91f-8298-49b2-94d5-e38345be01ca.jpg', 10000000, 10, 1, 156),
(157, '2024-07-03', '/images/receiptProducts/e0c3ad14-d169-41a7-a950-49a124a38ac4.jpg', 10000000, 10, 1, 157),
(158, '2024-07-03', '/images/receiptProducts/bb6ce3de-8aac-4027-b44f-f484921437ec.jpg', 10000000, 10, 1, 158),
(159, '2024-07-03', '/images/receiptProducts/e2c3d6f7-64db-4bc8-9099-494c28fcd53a.jpg', 10000000, 10, 1, 159),
(160, '2024-07-03', '/images/receiptProducts/38956cea-c90f-4eb5-b85d-c842d9d6f228.jpg', 10000000, 10, 1, 160),
(161, '2024-07-03', '/images/receiptProducts/0939c8c3-cccd-47e1-a953-4c3e8f737cd3.jpg', 10000000, 10, 1, 161),
(162, '2024-07-03', '/images/receiptProducts/0688a11e-9840-4706-bb4c-d0145d579f07.jpg', 10000000, 10, 1, 162),
(163, '2024-07-03', '/images/receiptProducts/2f45d095-c61e-4da2-963d-0433717ef248.jpg', 10000000, 10, 1, 163),
(164, '2024-07-03', '/images/receiptProducts/a79be320-b3bb-493c-b46e-dbdd700ae948.jpg', 10000000, 10, 1, 164),
(165, '2024-07-03', '/images/receiptProducts/2d2dab45-e142-418a-beaf-30c0b5514b02.jpg', 10000000, 10, 1, 165),
(166, '2024-07-03', '/images/receiptProducts/1df19797-2a7d-4c75-bebe-0007eda16b00.jpg', 10000000, 10, 1, 166),
(167, '2024-07-03', '/images/receiptProducts/d19ad10f-88fd-409b-88c5-d32c0f540b4d.jpg', 10000000, 10, 1, 167),
(168, '2024-07-03', '/images/receiptProducts/33fb3ac8-4880-4a13-b308-b2edcf899c66.jpg', 10000000, 10, 1, 168),
(169, '2024-07-03', '/images/receiptProducts/0c014022-12f8-4929-b13e-4ce74ef7deb7.jpg', 10000000, 10, 1, 169),
(170, '2024-07-03', '/images/receiptProducts/86035b0d-f89f-4653-88d5-473f4f6695cd.jpg', 10000000, 10, 1, 170),
(171, '2024-07-03', '/images/receiptProducts/43b73da4-e4ed-4b6a-ae5c-937bbac50f7b.jpg', 10000000, 10, 1, 171),
(172, '2024-07-03', '/images/receiptProducts/60ba7fb7-10fc-4de0-b8f0-afc49eb37950.jpg', 10000000, 10, 1, 172),
(173, '2024-07-03', '/images/receiptProducts/4a87c9bb-d0d3-4455-bead-29c1db676682.jpg', 10000000, 10, 1, 173),
(174, '2024-07-03', '/images/receiptProducts/f25210a6-0015-462f-a2fe-f5d8dded69a0.jpg', 10000000, 10, 1, 174),
(175, '2024-07-03', '/images/receiptProducts/f76da0a1-21c8-49a0-b16e-0b92ced6f40c.jpg', 10000000, 10, 1, 175),
(176, '2024-07-03', '/images/receiptProducts/5701758f-b87f-4d18-8513-86873a645c70.jpg', 10000000, 10, 1, 176),
(177, '2024-07-03', '/images/receiptProducts/a4f11efd-6e1d-4aea-8f0d-e710df9ba3a0.jpg', 10000000, 10, 1, 177),
(178, '2024-07-03', '/images/receiptProducts/eda6fa5d-a019-4311-9c09-ff43f4471e57.jpg', 10000000, 10, 1, 178),
(179, '2024-07-03', '/images/receiptProducts/eed0a1fd-092e-4689-8c94-22eb28bae8af.jpg', 10000000, 10, 1, 179),
(180, '2024-07-03', '/images/receiptProducts/d8af0639-c1bc-4d06-9c50-ba288a392088.jpg', 10000000, 10, 1, 180),
(181, '2024-07-03', '/images/receiptProducts/e2b743fd-27e0-4dd3-8c0c-ffeb5ba95360.jpg', 10000000, 10, 1, 181),
(182, '2024-07-03', '/images/receiptProducts/44f7116e-394b-4528-bf25-bc6bc2a50447.jpg', 10000000, 10, 1, 182),
(183, '2024-07-03', '/images/receiptProducts/b602bbce-3ddb-434f-a546-5ddccbcbc6ff.jpg', 10000000, 10, 1, 183),
(184, '2024-07-03', '/images/receiptProducts/3ec10183-6e34-4c0e-9f9e-51dfe42dacb0.jpg', 10000000, 10, 1, 184),
(185, '2024-07-03', '/images/receiptProducts/f3f28694-9bac-4164-ad14-85ed3f9995c1.jpg', 10000000, 10, 1, 185),
(186, '2024-07-03', '/images/receiptProducts/4701f57e-8707-4874-9f5d-c6316a974ef0.jpg', 10000000, 10, 1, 187),
(187, '2024-07-03', '/images/receiptProducts/596273ae-4404-4f7e-84d2-ad00b402f7bd.jpg', 10000000, 10, 1, 188),
(188, '2024-07-03', '/images/receiptProducts/c0ce62a9-3789-40cd-aec8-ced4209e49a1.jpg', 10000000, 10, 1, 189),
(189, '2024-07-03', '/images/receiptProducts/3eb079ba-38a4-4a8b-b55f-12547c0679ab.jpg', 10000000, 10, 1, 190),
(190, '2024-07-03', '/images/receiptProducts/7fe02469-9eae-48c0-a049-169d57afbf45.jpg', 10000000, 10, 1, 191),
(191, '2024-07-03', '/images/receiptProducts/219dd7a7-60fb-418b-931e-ffac3678eb9b.jpg', 10000000, 10, 1, 192),
(192, '2024-07-03', '/images/receiptProducts/5bd7397e-d3dd-49bb-b575-686689dcb7f4.jpg', 10000000, 10, 1, 193),
(193, '2024-07-03', '/images/receiptProducts/8dfb6f97-3bd2-4868-8232-f928dbf8cd9e.jpg', 10000000, 10, 1, 194),
(194, '2024-07-03', '/images/receiptProducts/220d086b-9050-43b4-910b-389e93fe40d7.jpg', 10000000, 10, 1, 195),
(195, '2024-07-03', '/images/receiptProducts/468a4119-eb84-49d9-a6de-8185c22d1afe.jpg', 10000000, 10, 1, 196),
(196, '2024-07-03', '/images/receiptProducts/29831430-0519-4088-8947-7c180fdd18c2.jpg', 10000000, 10, 1, 197),
(197, '2024-07-03', '/images/receiptProducts/5a7d110c-eb63-45e1-86db-73c9253104c0.jpg', 10000000, 10, 1, 198),
(198, '2024-07-03', '/images/receiptProducts/70689e6c-512a-4e0f-a792-48b7a3a111b3.jpg', 10000000, 10, 1, 199),
(199, '2024-07-03', '/images/receiptProducts/95736439-0614-493b-a141-53bb5e8b1af7.jpg', 10000000, 10, 1, 200),
(200, '2024-07-03', '/images/receiptProducts/714a2875-39ad-4cdd-a11f-d3dc5bc1a95c.jpg', 10000000, 10, 1, 201),
(201, '2024-07-03', '/images/receiptProducts/e5d84f8c-4ab3-4834-be62-943cadf4f35f.jpg', 10000000, 10, 1, 202),
(202, '2024-07-03', '/images/receiptProducts/38bfaf51-55f6-42f5-beab-76d7334fd783.jpg', 10000000, 10, 1, 203),
(203, '2024-07-03', '/images/receiptProducts/368ac7b9-3db6-4895-87b9-5eb2f8cf9bef.jpg', 10000000, 10, 1, 204),
(204, '2024-07-03', '/images/receiptProducts/f69ececb-a7c5-49b4-9a9c-141d956848e1.jpg', 10000000, 10, 1, 205),
(205, '2024-07-03', '/images/receiptProducts/e25887b8-18c5-430a-970e-589628e76e62.jpg', 10000000, 10, 1, 206),
(206, '2024-07-03', '/images/receiptProducts/39150205-f8e0-4f43-89fd-f7b2ac2b9075.jpg', 10000000, 10, 1, 207),
(207, '2024-07-03', '/images/receiptProducts/6723055e-7ddb-4628-b1ef-37f35ae5f53d.jpg', 10000000, 10, 1, 208),
(208, '2024-07-03', '/images/receiptProducts/0fe7b8f4-3029-4603-8949-0e23161be195.jpg', 10000000, 10, 1, 209),
(209, '2024-07-03', '/images/receiptProducts/a59d738f-f24b-4861-ab53-586f0de2c0c4.jpg', 10000000, 10, 1, 210),
(210, '2024-07-03', '/images/receiptProducts/cdd0843b-da7a-4366-9800-1686988628f3.jpg', 10000000, 10, 1, 211),
(211, '2024-07-03', '/images/receiptProducts/2b950cce-50f7-4a37-b262-40e9c8cf506b.jpg', 10000000, 10, 1, 212),
(212, '2024-07-03', '/images/receiptProducts/aed16198-73da-42c6-a3b1-a91791801db8.jpg', 10000000, 10, 1, 213),
(213, '2024-07-03', '/images/receiptProducts/8c55b6b7-3a3b-439f-ba89-21d73d45ba59.jpg', 10000000, 10, 1, 214),
(214, '2024-07-03', '/images/receiptProducts/c328c8e0-fbd8-4f69-bbc3-a2e76f8e77f2.jpg', 10000000, 10, 1, 215),
(215, '2024-07-03', '/images/receiptProducts/8d30b9a5-e8f1-4f0c-82ea-98ef7f241060.jpg', 10000000, 10, 1, 216),
(216, '2024-07-03', '/images/receiptProducts/69f4a63a-97ab-4570-8dab-f7ad90d685d5.jpg', 10000000, 10, 1, 217),
(217, '2024-07-03', '/images/receiptProducts/6c3a6d62-d25e-4d5a-8df1-abc14fdc3e17.jpg', 10000000, 10, 1, 218),
(218, '2024-07-03', '/images/receiptProducts/2e8fdfe8-8df7-41be-b956-ea13eed2b2d3.jpg', 10000000, 10, 1, 219),
(219, '2024-07-03', '/images/receiptProducts/1eb9689f-ea7a-42fa-8de1-4e2845aec752.jpg', 10000000, 10, 1, 220),
(220, '2024-07-03', '/images/receiptProducts/e27da3d2-9c80-4326-b89b-d97572ab71bf.jpg', 10000000, 10, 1, 221),
(221, '2024-07-03', '/images/receiptProducts/b100d5d6-4607-4b66-bf4a-303f651d392b.jpg', 10000000, 10, 1, 222),
(222, '2024-07-03', '/images/receiptProducts/0529a0ff-e225-4bb5-bc15-1610c1d1d71d.jpg', 10000000, 10, 1, 223),
(223, '2024-07-03', '/images/receiptProducts/cda8e720-5b27-48d0-bb3c-b3e334af7865.jpg', 10000000, 10, 1, 224),
(224, '2024-07-03', '/images/receiptProducts/3ed8050b-9196-472d-9887-0cea93c47479.jpg', 10000000, 10, 1, 225),
(225, '2024-07-03', '/images/receiptProducts/09870241-b737-4d76-9fd6-31e2a104558a.jpg', 10000000, 10, 1, 226),
(226, '2024-07-03', '/images/receiptProducts/391e4b2b-2a8d-4459-914d-842791d1d3a4.jpg', 10000000, 10, 1, 227),
(228, '2024-07-03', '/images/receiptProducts/31dde3de-fa08-467b-ad16-58b3b48bdf1d.jpg', 10000000, 10, 1, 228),
(229, '2024-07-03', '/images/receiptProducts/016904fc-060e-4d9a-a65d-ee0ebad7023f.jpg', 10000000, 10, 1, 228),
(230, '2024-07-03', '/images/receiptProducts/52e4af2e-f6cf-41ea-8274-08106827416a.jpg', 10000000, 10, 1, 229),
(231, '2024-07-03', '/images/receiptProducts/3bb9bf79-ce4b-4498-b082-3239bdbef027.jpg', 10000000, 10, 1, 230),
(232, '2024-07-03', '/images/receiptProducts/85306453-684b-47aa-82eb-879ccbd9081d.jpg', 10000000, 10, 1, 231),
(233, '2024-07-03', '/images/receiptProducts/08952910-b923-4c4c-a655-f3013796861f.jpg', 10000000, 10, 1, 232),
(234, '2024-07-03', '/images/receiptProducts/1ca1d2f2-fe7e-49aa-b8e6-5511a09bcb93.jpg', 10000000, 10, 1, 233),
(235, '2024-07-03', '/images/receiptProducts/98fa7e18-6b3d-4955-ad1f-4fab719e3170.jpg', 10000000, 10, 1, 234),
(236, '2024-07-03', '/images/receiptProducts/c73b1532-0179-4da1-b1ef-e3d9523f7803.jpg', 10000000, 10, 1, 235),
(237, '2024-07-03', '/images/receiptProducts/1e88b3d5-06dc-4167-8e35-281d1b5b9888.jpg', 10000000, 10, 1, 236),
(238, '2024-07-03', '/images/receiptProducts/c6d9cca6-b125-4a83-b212-a20eaa231b03.jpg', 10000000, 10, 1, 237),
(239, '2024-07-03', '/images/receiptProducts/70ea2a0b-1d7b-4857-9ff7-5c6929b204b9.jpg', 10000000, 10, 1, 238),
(240, '2024-07-03', '/images/receiptProducts/c39dd16c-5127-4e53-ae0a-5b8327ddff37.jpg', 10000000, 10, 1, 239),
(241, '2024-07-03', '/images/receiptProducts/831d5b97-217a-430c-aaa6-bdc99d62dafe.jpg', 10000000, 10, 1, 240),
(242, '2024-07-03', '/images/receiptProducts/e7eb7a62-de4a-4260-b988-85e7fb1bc8d2.jpg', 10000000, 10, 1, 241),
(243, '2024-07-03', '/images/receiptProducts/d743b904-ae18-42b8-a2f1-b4dd9a431d42.jpg', 10000000, 10, 1, 242),
(244, '2024-07-03', '/images/receiptProducts/921b14bd-9144-4950-97e0-796b480db9ce.jpg', 10000000, 10, 1, 243),
(245, '2024-07-03', '/images/receiptProducts/364c6610-9d81-415c-9546-f8624a07f91c.jpg', 10000000, 10, 1, 244),
(246, '2024-07-03', '/images/receiptProducts/5c831d1e-8024-4c71-915b-afdc9c70e1ef.jpg', 10000000, 10, 1, 245),
(247, '2024-07-03', '/images/receiptProducts/2f1004db-5a50-465b-869a-c26b27d2ce90.jpg', 10000000, 10, 1, 246),
(248, '2024-07-03', '/images/receiptProducts/7a7b9e8f-febd-45f1-9ae2-e96501ff3412.jpg', 10000000, 10, 1, 247),
(249, '2024-07-03', '/images/receiptProducts/4ec33e5f-d348-426d-a746-03ac7078ea94.jpg', 10000000, 10, 1, 248),
(250, '2024-07-03', '/images/receiptProducts/cda82927-4bcb-4493-aebd-37affe76152c.jpg', 10000000, 10, 1, 249),
(251, '2024-07-03', '/images/receiptProducts/733a8b54-68f0-4f5d-8488-7b0882d9d280.jpg', 10000000, 10, 1, 250),
(252, '2024-07-03', '/images/receiptProducts/42a9fbe9-13ac-435f-9bcf-1f2f143d7585.jpg', 10000000, 10, 1, 251),
(253, '2024-07-03', '/images/receiptProducts/239d1513-7f94-4dbc-9361-c119266a45ae.jpg', 10000000, 10, 1, 252),
(254, '2024-07-03', '/images/receiptProducts/4fb48f26-17d1-4dc0-b4f1-03134ae4fabd.jpg', 10000000, 10, 1, 253),
(255, '2024-07-03', '/images/receiptProducts/c3dc420a-e1ae-4540-897f-5116baee17a2.jpg', 10000000, 10, 1, 254),
(256, '2024-07-03', '/images/receiptProducts/30ba44e0-1920-4235-976f-d5829918527d.jpg', 10000000, 10, 1, 255),
(257, '2024-07-03', '/images/receiptProducts/58db0e68-8509-4e57-945e-2bac9684c0ce.jpg', 10000000, 10, 1, 256),
(258, '2024-07-03', '/images/receiptProducts/c61ee577-6a99-4d44-81a7-b421d722acb4.jpg', 10000000, 10, 1, 257),
(259, '2024-07-03', '/images/receiptProducts/ace6e9fe-bef1-423d-99a3-e7d86364dfbb.jpg', 10000000, 10, 1, 258),
(260, '2024-07-03', '/images/receiptProducts/15ff20ae-8c4f-4844-a89c-533c14efc3de.jpg', 10000000, 10, 1, 259),
(261, '2024-07-03', '/images/receiptProducts/d3b1020e-19f5-4f15-aadd-e0fde9d021dc.jpg', 10000000, 10, 1, 260),
(262, '2024-07-03', '/images/receiptProducts/82d06cb6-e29a-4169-8ab0-e6d512fd7256.jpg', 10000000, 10, 1, 261),
(263, '2024-07-03', '/images/receiptProducts/9f2ae207-d732-4a75-bd4f-680af55cf377.jpg', 10000000, 10, 1, 262),
(264, '2024-07-03', '/images/receiptProducts/c0e87c14-3e04-4bbf-9a6c-2b1d1e5f5f95.jpg', 10000000, 10, 1, 263),
(265, '2024-07-03', '/images/receiptProducts/56dd68c7-9fc6-489a-b07e-998aa7da1ea5.jpg', 10000000, 10, 1, 264),
(266, '2024-07-03', '/images/receiptProducts/87fdaa35-c86b-4915-a3ac-3df9067c9569.jpg', 10000000, 10, 1, 265),
(267, '2024-07-03', '/images/receiptProducts/47f90d1b-32d3-4fe8-8c45-9bae3b61b6cf.jpg', 10000000, 10, 1, 266),
(268, '2024-07-03', '/images/receiptProducts/1e78a73a-9780-49c9-a2dc-a90a57001906.jpg', 10000000, 10, 1, 267),
(269, '2024-07-03', '/images/receiptProducts/2cfaa0af-e64d-49e4-b192-3d7e72954d90.jpg', 10000000, 10, 1, 268),
(270, '2024-07-03', '/images/receiptProducts/20f9699d-c7aa-4528-8c51-6905eb1019c2.jpg', 10000000, 10, 1, 269),
(271, '2024-07-03', '/images/receiptProducts/298e8b90-fe37-4e07-ac18-4d3275d0021d.jpg', 10000000, 10, 1, 270),
(272, '2024-07-03', '/images/receiptProducts/c99ae00c-c7a0-4948-972d-677bede9d273.jpg', 10000000, 10, 1, 271),
(273, '2024-07-03', '/images/receiptProducts/71e4b53d-fb9a-428d-9279-54ef7e7c7174.jpg', 10000000, 10, 1, 272),
(274, '2024-07-03', '/images/receiptProducts/08ea189d-faca-480d-8c69-3903b87b66ed.jpg', 10000000, 10, 1, 273),
(275, '2024-07-03', '/images/receiptProducts/1c267b29-4133-4cb9-89e5-cbad0ff4cf28.jpg', 10000000, 10, 1, 274),
(276, '2024-07-03', '/images/receiptProducts/24579b2d-7c08-423f-b9c9-91ba46d8a5e3.jpg', 10000000, 10, 1, 275),
(277, '2024-07-03', '/images/receiptProducts/0cb87606-26b9-49d0-89b9-677c6e267060.jpg', 10000000, 10, 1, 276),
(278, '2024-07-03', '/images/receiptProducts/3aecb1b6-b92e-415e-ab58-74b61dd31628.jpg', 10000000, 10, 1, 277),
(279, '2024-07-03', '/images/receiptProducts/4aa46ff6-d86e-4d85-8b68-8b0221b8f942.jpg', 10000000, 10, 1, 278),
(280, '2024-07-03', '/images/receiptProducts/02d95c64-828a-4dcc-ae9d-cfe434571ddf.jpg', 10000000, 10, 1, 279),
(281, '2024-07-03', '/images/receiptProducts/672bbd38-1668-40a7-a4d9-b9b8c9e1309a.jpg', 10000000, 10, 1, 280),
(282, '2024-07-03', '/images/receiptProducts/b0a6abe4-c827-4bd0-ac26-35f31aeb44ee.jpg', 10000000, 10, 1, 188),
(283, '2024-07-03', '/images/receiptProducts/3bd83b53-8762-4243-97c3-34614927b755.jpg', 10000000, 10, 1, 66),
(284, '2024-07-03', '/images/receiptProducts/ead05b15-34ab-472c-a07f-5d5386c64dfc.jpg', 10000000, 10, 1, 186),
(285, '2024-07-03', '/images/receiptProducts/2e903d1c-279c-44b7-b6f0-eaa20d40618f.jpg', 10000000, 10, 1, 65);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` int NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `description`, `name`) VALUES
(1, NULL, 'ADMIN'),
(2, NULL, 'USER'),
(3, NULL, 'STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint NOT NULL,
  `shipment_date` datetime(6) DEFAULT NULL,
  `status` int NOT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `order_id` bigint NOT NULL,
  `shipment_method_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `shipment_date`, `status`, `tracking_number`, `order_id`, `shipment_method_id`) VALUES
(52, '2024-07-02 22:21:00.508000', 1, 'z68RiLxMcFL1njeaaCwD', 53, 1),
(53, '2024-07-03 15:31:48.824000', 1, 'U9LFw7D5Cq4H27WKnQ7q', 54, 1),
(54, '2024-07-03 16:55:17.363000', 1, '4aZ9oGsiQF46QEQ6jOte', 55, 2),
(55, '2024-07-03 21:23:38.960000', 1, '47jHKnx5B8lntta2H71d', 56, 1),
(56, '2024-07-03 21:40:32.217000', 1, 'k58gIb8qpa3wfXHw5SkB', 57, 1),
(57, '2024-07-04 08:08:31.198000', 1, 'Wuv8hVBonDYwoJJ0XYFb', 58, 2),
(58, '2024-07-04 08:10:13.451000', 1, 'yxOLX7eHeLIE0Uc7mq0G', 59, 1),
(60, '2024-07-04 08:51:09.251000', 1, 'ZduDVKzTDyyEYh41SlN1', 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_methods`
--

CREATE TABLE `shipment_methods` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shipment_methods`
--

INSERT INTO `shipment_methods` (`id`, `name`) VALUES
(1, 'ViettelPost'),
(2, 'GHTK');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `reset_token` varchar(50) DEFAULT NULL,
  `token_expiry_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `phone`, `provider`, `username`, `reset_token`, `token_expiry_date`) VALUES
(1, 'vyquy633@gmail.com', '$2a$10$qodbH9QgyeeyT7KkU9QjN.Z8tV530WkerdjVFzS9xzOTEllZIf5Tq', '0945449758', NULL, 'admin', NULL, NULL),
(2, 'kadyn.kristan@foundtoo.com', '$2a$10$xkFX40d8xUd4.RvxJ0rlAOsOIIdZfLwfcoSh2k.6K6bz7KyeJxFJ6', '0945449750', NULL, 'user1', '7630f280-6e41-480b-84ae-c5afc219c4ed', '2024-07-01 21:41:38.947759'),
(13, 'trongquy029@gmail.com', '$2a$10$qz7D/ew1KTIIRGY8lO1mwOUbCqK856Zv8BzeqAU0.NeBWZSykJjFS', '0945449752', NULL, 'Trọng Qúy', 'b6e0cd28-0867-4c77-9383-ab2e1a26a170', '2024-07-03 15:44:48.629553'),
(14, 'ninhkhoi36@gmail.com', '$2a$10$sr1Hv6//u5LCsys/TfdgU./JV6PbF9BtdDjW1LCq2axpGk//dUkey', '0945449760', NULL, 'user3', NULL, NULL),
(16, 'trongquy111@gmail.com', '$2a$10$ieQlZoQxWZQkkiEI4qqS9u.IUmlLMlgXLFXs45mTWta7mw9Og1ceK', '0945449761', NULL, 'user4', NULL, NULL),
(18, 'staff123@gmail.com', '$2a$10$3bswPyruIPNomOOplmNyTO3bRipTGVrwTJ1SSU8wcHyDFpiA9WYWS', '0945449744', NULL, 'staff', NULL, NULL),
(22, 'vyquy131@gmail.com', '$2a$10$3BleaUH5FsBX.BLl3bhMBOfk5ZSSeRNm3R6AZcwXgta0tBPomW1ru', '0945449700', NULL, 'user5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(13, 2),
(14, 2),
(16, 2),
(22, 2),
(18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `name`) VALUES
(1, '12 tháng'),
(2, '24 tháng');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`) VALUES
(5, 13, 13),
(6, 14, 13),
(9, 12, 13),
(10, 19, 13),
(11, 22, 13),
(12, 25, 13),
(13, 57, 13),
(14, 4, 13),
(15, 4, 2),
(16, 13, 2),
(17, 57, 2),
(18, 14, 2),
(19, 2, 2),
(20, 3, 2),
(21, 86, 1),
(22, 11, 1),
(23, 87, 1),
(24, 88, 1),
(25, 67, 1),
(26, 95, 1),
(27, 93, 1),
(28, 94, 1),
(29, 91, 1),
(30, 101, 1),
(31, 103, 1),
(32, 102, 1),
(33, 113, 1),
(34, 114, 1),
(35, 118, 1),
(36, 120, 1),
(37, 122, 1),
(38, 232, 1),
(39, 236, 1),
(40, 24, 1),
(41, 6, 1),
(42, 4, 1),
(43, 3, 1),
(44, 5, 1),
(45, 202, 1),
(46, 116, 2),
(47, 34, 2),
(48, 267, 2),
(49, 3, 13),
(50, 2, 13),
(51, 263, 13),
(52, 34, 1),
(53, 184, 13),
(54, 190, 13),
(55, 262, 2),
(56, 182, 2),
(57, 22, 2),
(58, 112, 2),
(59, 147, 2),
(60, 88, 2),
(61, 5, 2),
(62, 28, 13),
(63, 48, 13),
(64, 5, 13),
(65, 88, 13),
(66, 280, 13),
(67, 82, 13),
(68, 63, 13),
(69, 67, 13),
(70, 26, 13),
(71, 20, 13),
(72, 95, 13),
(73, 42, 13),
(74, 270, 13),
(75, 65, 13),
(76, 31, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr1tcj8kqft8gecp5kmnarw7cs` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9q7xi3v910jhoa63aaiyibqex` (`category_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpay9408fi1tlnkqv3fhetr6hy` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpcttvuq4mxppo8sxggjtn5i2c` (`cart_id`),
  ADD KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  ADD KEY `FKsxfvku34v9ujavmj9ao69vo8s` (`discount_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  ADD KEY `FKocimc7dtr037rh4ls4l95nlfi` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK81gagumt0r8y3rmudcgpbk42l` (`order_id`),
  ADD KEY `FKce1n8pa67lq4l57l9mhugdgab` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  ADD KEY `FKohbxmm9fe67q7j6amhplj45gl` (`condition_id`),
  ADD KEY `FK250cpo4p2bvteaaw016n0ndsk` (`warranty_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK53md215ibhaod6dw7af2qussf` (`product_id`);

--
-- Indexes for table `receipt_products`
--
ALTER TABLE `receipt_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjhrymyvn7igm8cvuxjp32k03p` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpl51cejpw4gy5swfar8br9ngi` (`product_id`),
  ADD KEY `FKsdlcf7wf8l1k0m00gik0m6b1m` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrnt4wht95lxxplspltrg9681s` (`order_id`),
  ADD KEY `FKbov5hms6y1devs83qolmp47h5` (`shipment_method_id`);

--
-- Indexes for table `shipment_methods`
--
ALTER TABLE `shipment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`),
  ADD UNIQUE KEY `UK589idila9li6a4arw1t8ht1gx` (`phone`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKl7ao98u2bm8nijc1rv4jobcrx` (`product_id`),
  ADD KEY `FKb2s87ckgdvb03oa50j48bn3jy` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `receipt_products`
--
ALTER TABLE `receipt_products`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `shipment_methods`
--
ALTER TABLE `shipment_methods`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `FKr1tcj8kqft8gecp5kmnarw7cs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `FK9q7xi3v910jhoa63aaiyibqex` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKpay9408fi1tlnkqv3fhetr6hy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKpcttvuq4mxppo8sxggjtn5i2c` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKsxfvku34v9ujavmj9ao69vo8s` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKocimc7dtr037rh4ls4l95nlfi` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKce1n8pa67lq4l57l9mhugdgab` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK250cpo4p2bvteaaw016n0ndsk` FOREIGN KEY (`warranty_id`) REFERENCES `warranties` (`id`),
  ADD CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FKohbxmm9fe67q7j6amhplj45gl` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`);

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `FK53md215ibhaod6dw7af2qussf` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `receipt_products`
--
ALTER TABLE `receipt_products`
  ADD CONSTRAINT `FKjhrymyvn7igm8cvuxjp32k03p` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FKpl51cejpw4gy5swfar8br9ngi` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKsdlcf7wf8l1k0m00gik0m6b1m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `FKbov5hms6y1devs83qolmp47h5` FOREIGN KEY (`shipment_method_id`) REFERENCES `shipment_methods` (`id`),
  ADD CONSTRAINT `FKrnt4wht95lxxplspltrg9681s` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `FKb2s87ckgdvb03oa50j48bn3jy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKl7ao98u2bm8nijc1rv4jobcrx` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

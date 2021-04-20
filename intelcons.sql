-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2021 at 04:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intelcons`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Khoa răng hàm mặt mắt'),
(2, 'Khoa sản '),
(3, 'Khoa nhiễm khuẩn tổng hợp'),
(4, 'Khoa tim học tổng quát'),
(5, 'Khoa hô hấp'),
(6, 'Khoa tai mũi họng'),
(7, 'Khoa cơ xương khớp'),
(8, 'Khoa ung bướu và y học hạt nhân'),
(9, 'Khoa ngoại thần kinh'),
(10, 'Khoa bệnh lý máu não'),
(11, 'Khoa ngoại niệu - ghép thận');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  `location_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `latitude` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `fullname`, `phone`, `address`, `image`, `department_id`, `hospital_id`, `location_id`, `longitude`, `latitude`) VALUES
(1, 'Trần Văn Thiệp', '0838995564', '12 Chu Văn An, phường Điện Bàn, quận Ba Đình, Tp. Hà Nội', '/intelcons-api/upload/img/doctors/chris.jpg', 1, 1, 'MB', '105.83631215495613', '21.03254956703652'),
(2, 'Hoàng Thị Mỹ Ý', '0913748499', 'Số 61 Vũ Thạnh, Phường Ô chợ dừa, quận Đống Đa, Tp. Hà Nội', '/intelcons-api/upload/img/doctors/dressar.jpg', 2, 2, 'MB', '105.82685445071974', '21.026760502589347'),
(3, 'Trần Duy Hưng', '0397687456', 'Số 22 Nguyễn Du, Phường Nguyễn Trãi, Tp. Hà Giang', '/intelcons-api/upload/img/doctors/chroste.png', 3, 3, 'MB', '104.98446733911202', '22.812686408323'),
(4, 'Chương Vĩnh Thụy', '0893423343', '125 Tôn Đức Thắng, Hòa An, Liên Chiểu, Tp. Đà Nẵng', '/intelcons-api/upload/img/doctors/fiora.png', 4, 4, 'MT', '108.17473433953332', '16.059177131166592'),
(5, 'Nguyễn Tiến Cường', '0483431222', '124 Trương Định, phường Trần Phú, Tp. Quảng Ngãi', '/intelcons-api/upload/img/doctors/hemthword.png', 5, 5, 'MT', '108.78660366173504', '15.122725818627652'),
(6, 'Lê Thị Thu Hằng', '0124354588', '137 Mai Hắc Đế, phường Tân Thành, Tp. Buôn Ma Thuột, tỉnh Đăk Lăk', '/intelcons-api/upload/img/doctors/julia.png', 6, 6, 'MT', '108.03165525059822', '12.668440873471893'),
(7, 'Lê Thanh Thúy', '0321239994', '44 Quang Trung, phường 3, quận Gò Vấp, Tp. Hồ Chí Minh', '/intelcons-api/upload/img/doctors/kendall.jpg', 7, 7, 'MN', '106.67849802174361', '10.827422359857877'),
(8, 'Nguyễn Thanh Hưng', '0954888333', '22/2 Dốc Mơ 1, Gia Tân 1, huyện Thống Nhất, tỉnh Đồng Nai', '/intelcons-api/upload/img/doctors/keslines.png', 8, 8, 'MN', '107.16596835666925', '11.05802555532663'),
(9, 'Kiều Ánh Nguyệt', '0782349944', '796/12 Sư Vạn Hạnh, Phường 12, Quận 10, Tp. Hồ Chí Minh', '/intelcons-api/upload/img/doctors/keslints.png', 9, 9, 'MN', '106.66902754157327', '10.774247896591373'),
(10, 'Thế Thanh Thiên', '0943112333', '112 Bạch Mai, Cầu Dền, quận Hai Bà Trưng, Tp. Hà Nội ', '/intelcons-api/upload/img/doctors/kyle.jpg', 10, 10, 'MB', '105.85153973537588', '21.00642601795599'),
(11, 'Văn Thiên Ánh', '0342234113', '144, Nguyễn Văn Cừ, P.Ninh Xá, Tp. Bắc Ninh', '/intelcons-api/upload/img/doctors/osteis.png', 11, 1, 'MB', '106.05495209490189', '21.174533253083737'),
(12, 'Phạm Lương Tuấn', '0988344432', '88 Đường Bùi Thị Xuân, Phường 2, Tp. Đà Lạt, Lâm Đồng', '/intelcons-api/upload/img/doctors/phill.png', 1, 2, 'MT', '108.44160311875999', '11.947378138899655'),
(13, 'Trần Quý Khánh', '0893243334', '55 Ngô Quyền, Thống Nhất, Kon Tum', '/intelcons-api/upload/img/doctors/rumble.jpg', 2, 3, 'MT', '108.01249799109502', '14.347791197172791'),
(14, 'Vương Thế Thanh', '0933499943', '23/4 Lê Văn Việt, Tân Phú, Tp. Thủ Đức', '/intelcons-api/upload/img/doctors/thresh.jpg', 3, 4, 'MN', '106.80829070878544', '10.849315170706706'),
(15, 'Ngô Tuấn Kiệt', '0499943934', '5 Sư Vạn Hạnh, Quận 10, Tp. Hồ Chí Minh', '/intelcons-api/upload/img/doctors/totest.jpg', 4, 5, 'MN', '106.67163504264026', '10.77058802964137');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hotline` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `location_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `latitude` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ranking` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `address`, `hotline`, `image`, `location_id`, `longitude`, `latitude`, `ranking`) VALUES
(1, 'Bệnh viện Nhiệt Đới Tp. HCM', '764 Võ Văn Kiệt, Phường 1, Quận 5, Tp. Hồ Chí Minh', '(84 28) 39235804 ', '/intelcons-api/upload/img/hospitals/nhietdoihcm.jpg', 'MN', '106.6789226749288', '10.75281412510301', 1),
(2, 'Bệnh viện Ung Bướu Tp. HCM', 'Số 3 Nơ Trang Long, Phường 7, Quận Bình Thạnh, Tp. Hồ Chí Minh', '02838433021', '/intelcons-api/upload/img/hospitals/dakhoahagiang.jpg', 'MN', '106.69432736699056', '10.80510965480592', 1),
(3, 'Bệnh viện Từ Dũ Tp. HCM', '284 Cống Quỳnh, Quận 1, Tp. Hồ Chí Minh', '19007237', '/intelcons-api/upload/img/hospitals/tuduhcm.jpg', 'MN', '106.68591101248705', '10.768940391214509', 1),
(4, 'Bệnh viện Ung Bướu Hà Nội', '42A Thanh Nhàn, Hai Bà Trưng, Hà Nội', '091 554 61 16', '/intelcons-api/upload/img/hospitals/ungbuouhanoi.jpg', 'MB', '105.86028864146327', '21.003301822361387', 1),
(5, 'Bệnh viện Đa khoa tỉnh Hà Giang', '11 Minh Khai, Phường Minh Khai, Tp. Hà Giang', '0219 3866 411', '/intelcons-api/upload/img/hospitals/dakhoahagiang.jpg', 'MB', '104.98459595498957', '22.82009696475408', 1),
(6, 'Bệnh viện Đa khoa tỉnh Nam Định', 'Số 2 đường Trần Quốc Toản, thành phố Nam Định, Trần Đăng Ninh, Nam Dinh, Nam Định', '0228 3849 233', '/intelcons-api/upload/img/hospitals/dakhoanamdinh.jpg', 'MB', '106.17327349727353', '20.426370653968732', 1),
(7, 'Bệnh viện Đà Nẵng', '124 Hải Phòng, Thạch Thang, Hải Châu, Đà Nẵng', '0236 3821 118', '/intelcons-api/upload/img/hospitals/benhviendanang.jpg', 'MT', '108.21610755672825', '16.072593677344745', 1),
(8, 'Bệnh viện Đa khoa Vùng Tây Nguyên', '184 Trần Quý Cáp, Tự An, Thành phố Buôn Ma Thuột, Đắk Lắk', '0262 3919 009', '/intelcons-api/upload/img/hospitals/dakhoavungtaynguyen.jpg', 'MT', '108.05601655800321', '12.664193879753299', 1),
(9, 'Bệnh viện Đa khoa Trung tâm Tiền Giang', '02 Đường Hùng Vương, Phường 1, Thành phố Mỹ Tho, Tiền Giang', '0273 3872 363', '/intelcons-api/upload/img/hospitals/dakhoatrungtamtiengiang.jpg', 'MN', '106.36513621141549', '10.3553506005381', 1),
(10, 'Bệnh viên Nhân dân 115', '527 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh', '028 3865 4249', '/intelcons-api/upload/img/hospitals/nhandan115.jpg', 'MN', '106.66631559927713', '10.774582813311792', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
('MB', 'Miền Bắc'),
('MN', 'Miền Nam'),
('MT', 'Miền Trung');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `post_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `type`, `content`, `author`, `image`, `post_date`) VALUES
(1, 'Ung thư gan – Tầm soát và điều trị', 'Ung thư gan', 'Ung thư gan là nguyên nhân gây tử vong hàng thứ 3 trong các loại ung thư trên thế giới. Bệnh rất phổ biến tại các nước đang phát triển, đặc biệt là tại Đông Á và Đông Nam Á. Những nguyên nhân chính dẫn tới ung thư gan là nhiễm viêm gan siêu vi B, siêu vi C, hay xơ gan mãn tính. Sự phổ biến của những bệnh này tại Việt Nam (VN) đòi hỏi việc nâng cao nhận thức của cộng đồng về ung thư gan và một chương trình tầm soát bệnh gan trên cả nước. Ung thư gan đang trở thành một gánh nặng cho hệ thống y tế toàn cầu. Do bệnh phát triển chủ yếu từ những bệnh gan mãn tính như viêm gan siêu vi B hay C, tiêm chủng ngừa viêm gan B, liệu pháp trị siêu vi C và giảm uống rượu là những phương pháp tốt nhất để ngăn ngừa bệnh. Đối với bệnh nhân có nguy cơ cao, tham gia chương trình tầm soát là một cách ít tốn kém nhất để phát hiện bệnh sớm và chữa bệnh. Bệnh ung thư gan hoàn toàn có thể chữa trị được với tỉ lệ sống sót-5 năm cao nếu được phát hiện sớm. Trong tình hình Việt Nam chưa có một hệ thống ghép gan chính thức (dưới 20 ca ghép gan tính đến năm 2010), liệu pháp cắt bỏ và đốt tế bào là những phương pháp có thể thực hiện được với tỉ lệ thành công cao (34). Điều cần thiết là những bệnh nhân có nguy cơ bị ung thư gan cao, như xơ gan, viêm gan siêu vi B hay C mãn tính, cần tham gia chương trình tầm soát để có thể phát hiện ung thư gan sớm và chữa trị kịp thời.', 'Nguyễn H. Trưởng', '/intelcons-api/upload/img/news/liver-cancer.jpg', '2019-12-01'),
(2, 'Làm xét nghiệm gì để chẩn đoán ung thư tuyến tụy?', 'Ung thư tuyến tụy', 'Ở giai đoạn sớm, triệu chứng của ung thư tụy thường nghèo nàn. Vì thế, bệnh thường được phát hiện ở giai đoạn muộn, tiên lượng rất dè dặt. Tụy là một tạng thuộc hệ tiêu hóa, nằm sau phúc mạc, sát thành bụng sau, phía trước tụy được che phủ bởi dạ dày. Tụy được chia thành 3 phần chính lần lượt từ phải qua trái gồm: đầu tụy, thân tụy, đuôi tụy. Ung thư tuyến tụy xảy ra khi tế bào ung thư phát triển trong chủ mô của tuyến tụy. Tụy là một tuyến nằm phía sau dạ dày và phía trước cột sống. Tụy sản xuất ra dịch tiêu hóa và các hormon điều hòa lượng đường huyết trong máu. Tế bào của tụy ngoại tiết sản xuất ra dịch tiêu hóa thức ăn, còn tế bào của tụy nội tiết sản xuất insulin và một số hormone khác. Để chẩn đoán ung thư tuyến tụy, thông thường các bác sĩ sẽ hỏi về tiền sử bệnh, khám lâm sàng và chỉ định làm một số xét nghiệm để xác định nguyên nhân bệnh lý và kiểm tra độ lan rộng của khối u như: Chụp cắt lớp bụng, Chụp cộng hưởng từ, Siêu âm qua nội soi - Nội soi ổ bụng chẩn đoán, ...', 'Hà An', '/intelcons-api/upload/img/news/ungthutuyentuy.jpg', '2020-03-02'),
(3, 'Dấu hiệu nhận biết ung thư amidan', 'Ung thư amidan', 'Các triệu chứng ung thư amidan thường không đặc hiệu, tuy nhiên, dấu hiệu thường gặp trong chuyên khoa tai mũi họng có thể là dấu hiệu gợi ý. Thủ phạm gây ung thư amidan. Cổ họng có ba loại amidan: amidan họng (adenoids) nằm ở mặt sau của cổ họng, amidan palatine nằm ở hai bên cổ họng, và các amidan ngôn ngữ (lingual amidan) nằm ở phần cuống lưỡi. Ung thư amidan là bệnh ung thư phát sinh từ các tế bào thuộc amidan. Theo các nhà nghiên cứu, ung thư amidan là bệnh thường gặp, chiếm tỷ lệ 13-15% trong ung thư vùng đầu cổ. Nam mắc bệnh nhiều gấp 4 lần nữ, thường gặp ở tuổi 50-60. Theo ghi nhận, trên 90% ung thư amidan được phát hiện khi giai đoạn muộn. Có rất nhiều lý do khiến ung thư vùng này được phát hiện muộn. Trong đó có các yếu tố nhận biết mơ hồ và nguyên nhân đa dạng.  Theo các chuyên gia yếu tố nguy cơ dẫn đến ung thư amidan là hút thuốc lá, nguy cơ tùy thuộc số điếu hút, số năm hút và tuổi bắt đầu hút.  Nghiện rượu có nguy cơ gấp 6 lần. Vừa hút thuốc vừa uống rượu có nguy cơ gấp 15 lần. Ngoài ra, còn phải kể đến thói quen quan hệ tình dục bằng miệng.  Do HPV type 16, theo Viện Y tế Quốc gia Mỹ (NIH), số ca mắc ung thư amidan gia tăng, có thể là do sự gia tăng các bệnh nhiễm trùng virus HPV (virus lây truyền qua đường tình dục). Vệ sinh răng miệng kém, viêm nhiễm mạn tính cũng làm tăng nguy cơ ung thư amidan. Chế độ ăn uống thiếu vitamin A, ít rau xanh, củ quả, trái cây hoặc là chế độ ăn nhiều thịt đặc biệt là các loại thịt muối hoặc hun khói cũng là yếu tố nguy cơ ung thư amidan. Yếu tố môi trường như hít khói bụi, làm việc căng thẳng bị stress… cũng là yếu tố gây ung thư amidan. Tuy nhiên hiện nay nguyên nhân gây ung thư amidan vẫn chưa được biết một cách chính xác nhưng người ta có thể xác định được các yếu tố làm cho amidan bị tổn thương và dẫn tới ung thư.', 'Hà An', '/intelcons-api/upload/img/news/ungthuamidan.png', '2021-01-03'),
(4, 'Ung thư da: Nguyên nhân, triệu chứng, chẩn đoán và điều trị', 'Ung thư da', 'Ung thư da là gì? Ung thư da là một trong các ung thư thường gặp và khá dễ chẩn đoán. Ung thư da (không kể ung thư hắc tố) là các ung thư xuất phát từ biểu mô da che phủ mặt ngoài cơ thể, gồm nhiều lớp tế bào. Lớp tế bào đáy sinh ra ung thư tế bào đáy, lớp tế bào vảy sinh ra ung thư biểu mô vảy. Các  tuyến phụ thuộc của da như tuyến mồ hôi, tuyến bã sinh ra ung thư tuyến mồ hôi, tuyến bã...Ung thư da hay gặp ở người da trắng, chủ yếu ở người già, nam nhiều hơn nữ. Bệnh thường xuất hiện ở vùng da hở với tỷ lệ 90% ở vùng đầu mặt cổ. Tỉ lệ mắc ung thư da ở Việt Nam vào khoảng 2,9-4,5/100.000 dân. Ung thư da có chữa được không ? Ung thư da có thể điều trị khỏi bệnh hoàn toàn nếu được phát hiện sớm. Ung thư da là gì? Ung thư da là một trong các ung thư thường gặp và khá dễ chẩn đoán. Ung thư da (không kể ung thư hắc tố) là các ung thư xuất phát từ biểu mô da che phủ mặt ngoài cơ thể, gồm nhiều lớp tế bào. Lớp tế bào đáy sinh ra ung thư tế bào đáy, lớp tế bào vảy sinh ra ung thư biểu mô vảy. Các  tuyến phụ thuộc của da như tuyến mồ hôi, tuyến bã sinh ra ung thư tuyến mồ hôi, tuyến bã… Ung thư da hay gặp ở người da trắng, chủ yếu ở người già, nam nhiều hơn nữ. Bệnh thường xuất hiện ở vùng da hở với tỷ lệ 90% ở vùng đầu mặt cổ. Tỉ lệ mắc ung thư da ở Việt Nam vào khoảng 2,9-4,5/100.000 dân. Ung thư da có chữa được không ? Ung thư da có thể điều trị khỏi bệnh hoàn toàn nếu được phát hiện sớm.', 'Nguyễn Quốc Anh', '/intelcons-api/upload/img/news/skin-cancer.jpg', '2018-12-23'),
(5, 'Mách bạn cách phòng tránh ung thư khoang miệng', 'Ung thư khoang miệng', 'Khi được phát hiện sớm, ung thư khoang miệng có thể được chữa khỏi hoàn toàn bằng phẫu thuật. Tuy nhiên, đa phần người bệnh đến viện vào giai đoạn muộn. Ung thư khoang miệng là bệnh ác tính có thể xuất hiện ở bất kỳ vị trí nào trong khoang miệng như lợi, lưỡi, môi, má, vòm việng, sàn miệng. Do triệu chứng bệnh khá giống với các bệnh lý viêm nhiễm tại miệng nên người bệnh thường đến bệnh viện khi bệnh đã ở giai đoạn muộn, do đó việc điều trị trở nên khó khăn, tốn kém mà hiệu quả không cao. Ung thư biểu mô khoang miệng chiếm 30-40% các ung thư vùng đầu cổ. Nguyên nhân gây ra căn bệnh này chủ yếu là do thói quen hút thuốc lá thường xuyên, hay niêm mạc miệng bị kích thích bởi vật nhọn như răng, đũa, xương cá... ', 'Lê Thị Thu Hằng', '/intelcons-api/upload/img/news/ungthukhoangmieng.jpg', '2020-11-02'),
(6, 'Những điều cần biết dành cho bệnh nhân ung thư tuyến giáp điều trị I-131', 'Ung thư tuyến giáp', 'Phẫu thuật. Cắt toàn bộ tuyến giáp là phương pháp đầu tay trong điều trị ung thư tuyến giáp và vét hạch cổ. Thông thường, ung thư tuyến giáp giai đoạn sớm cỏ thể chỉ cần phẫu thuật. Đối với những trường hợp có di căn hạch cổ, bác sĩ có thể chỉ định thêm điều trị bộ trợ bằng I-131 sau phẫu thuật. Bệnh nhân đã được phẫu thuật cắt giáp toàn bộ cần phải uống thuốc hormone tuyến giáp cho đến hết đời. Điều trị I-131. Tế bào tuyến giáp có khả năng hấp thu i-ốt rất tốt. Do vậy, I-131 có thể được sử dụng hiệu quả để phá hủy những mô giáp còn lại (lành tính và ung thư) sau khi phẫu thuật. I-131 sau khi hấp thu vào sẽ phá hủy ADN và làm chết tế bào tuyến giáp. Đồng thời do không có đặc tính bắt giữ I-131 nên các tế bào khác của các cơ quan khác trong cơ thể sẽ ít chịu tác động của dược chất phóng xạ này. Ở một số bệnh nhân, I-131 tác động đến tuyến nước bọt, có thể gây ra các tác dụng phụ như khô miệng. Nếu sử dụng I-131 liều cao thì cũng có nguy cơ dẫn đến ung thư khác nhưng tỷ lệ này là vô vùng thấp. Tuy nhiên, bác sĩ điều trị sẽ giúp cân bằng lợi ích và nguy cơ khi điều trị cho bệnh nhân. Trước khi điều trị I-131 bác sĩ sẽ hướng dẫn bệnh nhân ngừng hormone tuyến giáp từ 4-6 tuần, tăng khả năng hấp thu I-131 để đạt hiệu quả điều trị tối đa. Khi chỉ số TSH đạt tới mức cần thiết theo yêu cầu của bác sĩ, bệnh nhân được uống I-131 liều nhỏ và chụp xạ hình chẩn đoán với I-131. Xét nghiệm này giúp bác sĩ có thể ước lượng được phần mô giáp cần phá hủy là bao nhiêu cũng như đánh giá tổn thương di căn xa ở phổi và các vị trí khác. Điều trị UTTG tiến triển. Ung thư tuyến giáp thường ít khi di căn xa nhưng khi đã có di căn xa thì vấn đề cũng cần xem xét cẩn trọng. Mặc dù phẫu thuật và điều trị I-131 là hai phương pháp chính nhưng những phương pháp này cũng có khi không hiệu quả. Trong tình huống này, xạ trị ngoài là phương pháp có thể áp dụng để điều trị di căn xương và các di căn khác. Điều trị xạ trị có thể làm giảm tốc độ phát triển và sự lan tràn của tế bào ác tính. Ngoài ra, điều trị đích cũng là một phương pháp mới đang được nghiên cứu và bước đầu ứng dụng cho bệnh nhân ung thư tuyến giáp giai đoạn tiến triển. Theo dõi bệnh nhân ung thư tuyến giáp. Theo dõi định kỳ là cần thiết đối với tất cả các bệnh nhân ung thư tuyến giáp bởi vì bệnh có thể tái phát sau điều trị. Các xét nghiệm chính cần làm trong quá trình theo dõi bệnh là siêu âm vùng cổ và xét nghiệm máu. Bên cạnh đó bệnh nhân phải dùng thuốc hormone tuyến giáp (levothyroxine) từ sau khi mổ cắt tuyến giáp đến hết đời. Liều thuốc hormone phụ thuộc vào giai đoạn bệnh. Nồng độ TSH là chỉ số nhạy nhất để theo dõi liều Levothyroxine có thích hợp không khi dùng cho mỗi bệnh nhân. Ngoài ra, chỉ số Tg (thyroglobulin) cũng là dấu ấn ung thư quan trọng trong quá trình theo dõi. Tg (thyroglobin) là protein được sản xuất bởi hầu hết các loại tế bào ung thư tuyến giáp và mô giáp bình thường. Do vậy sau khi đã được phẫu thuật cắt giáp toàn bộ và điều trị hủy mô giáp bằng I-131, chỉ số Tg được dùng để theo dõi bệnh. Nếu chỉ số này cao trong huyết thanh thì có thể nghi ngờ do bệnh tái phát và kết hợp thêm với một số xét nghiệm chẩn đoán khác. Tg có thể được định lượng khi bệnh nhân đang dùng hormone hoặc ngừng hormone tuyến giáp. Tuy nhiên, có hơn 25% số bệnh nhân không thể định lượng Tg chính xác do nồng độ kháng thể kháng Tg (ATg) trong huyết thanh cao hơn bình thường. Hơn nữa ở những bệnh nhân có nguy cơ tái phát cao, chụp xạ hình toàn thân chẩn đoán với I-131 sau khi ngừng thuốc hormone cũng có thể được áp dụng để bổ trợ cùng với xét nghiệm Tg và siêu âm cổ.', 'YLong Niê Kdăm', '/intelcons-api/upload/img/news/ungthutuyengiap.jpg', '2019-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `predict_detail_doctors`
--

CREATE TABLE `predict_detail_doctors` (
  `id` bigint(20) NOT NULL,
  `predict_id` bigint(20) DEFAULT NULL,
  `doctor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predict_detail_doctors`
--

INSERT INTO `predict_detail_doctors` (`id`, `predict_id`, `doctor_id`) VALUES
(1, 7, 1),
(2, 7, 2),
(3, 7, 3),
(4, 8, 4),
(5, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `predict_detail_hospitals`
--

CREATE TABLE `predict_detail_hospitals` (
  `id` bigint(20) NOT NULL,
  `predict_id` bigint(20) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predict_detail_hospitals`
--

INSERT INTO `predict_detail_hospitals` (`id`, `predict_id`, `hospital_id`) VALUES
(1, 7, 1),
(2, 7, 2),
(3, 7, 3),
(4, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `predict_records`
--

CREATE TABLE `predict_records` (
  `id` bigint(20) NOT NULL,
  `baso` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `eos` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mono` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `neu` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lym` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `wbc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hgb` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `rbc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mch` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mchc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mcv` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mpv` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `rdw` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pdw` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `plt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tpttbm` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL,
  `predict` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predict_records`
--

INSERT INTO `predict_records` (`id`, `baso`, `eos`, `mono`, `neu`, `lym`, `wbc`, `hct`, `hgb`, `rbc`, `mch`, `mchc`, `mcv`, `mpv`, `rdw`, `pdw`, `plt`, `tpttbm`, `pct`, `timestamp`, `predict`, `user_id`) VALUES
(7, '1', '1', '1', '1', '1.2', '1.34', '1.45', '12', '4.56', '6.42', '4.52', '5.42', '1', '12', '2.4', '4.22', '34.3', '1.32', '31/12/2020 13:30:14', 'C53', 12),
(8, '1', '1', '1', '1', '1.2', '1.34', '1.45', '12', '4.56', '6.42', '4.52', '5.42', '1', '12', '2.4', '4.22', '34.3', '1.32', '31/12/2020 13:30:14', 'C53', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` char(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `identify` bigint(20) DEFAULT NULL,
  `age` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gaurdian` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gaurdian_phone` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `height` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `weight` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `blood_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `phone`, `address`, `gender`, `identify`, `age`, `gaurdian`, `gaurdian_phone`, `height`, `weight`, `blood_type`) VALUES
(12, 'hao', 'admin', '123456', '171106155478', 'vu tung phuong 2', 1, 277568915, '29', 'nguoi bao ho', '123456789', '180', '56', 'O'),
(13, 'hao', 'test', '123456', '123456789', 'vu tung phuong 2, quan binh thanh', 0, 277568915, '29', 'hao test', '123456789', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predict_detail_doctors`
--
ALTER TABLE `predict_detail_doctors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `predict_id` (`predict_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `predict_detail_hospitals`
--
ALTER TABLE `predict_detail_hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `predict_id` (`predict_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `predict_records`
--
ALTER TABLE `predict_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `predict_detail_doctors`
--
ALTER TABLE `predict_detail_doctors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `predict_detail_hospitals`
--
ALTER TABLE `predict_detail_hospitals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `predict_records`
--
ALTER TABLE `predict_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`),
  ADD CONSTRAINT `doctors_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `predict_detail_doctors`
--
ALTER TABLE `predict_detail_doctors`
  ADD CONSTRAINT `predict_detail_doctors_ibfk_1` FOREIGN KEY (`predict_id`) REFERENCES `predict_records` (`id`),
  ADD CONSTRAINT `predict_detail_doctors_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `predict_detail_hospitals`
--
ALTER TABLE `predict_detail_hospitals`
  ADD CONSTRAINT `predict_detail_hospitals_ibfk_1` FOREIGN KEY (`predict_id`) REFERENCES `predict_records` (`id`),
  ADD CONSTRAINT `predict_detail_hospitals_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);

--
-- Constraints for table `predict_records`
--
ALTER TABLE `predict_records`
  ADD CONSTRAINT `predict_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

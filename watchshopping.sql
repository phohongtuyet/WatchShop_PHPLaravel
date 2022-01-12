-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 12, 2022 lúc 06:01 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watchshopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

DROP TABLE IF EXISTS `baiviet`;
CREATE TABLE IF NOT EXISTS `baiviet` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoidung_id` bigint(20) UNSIGNED NOT NULL,
  `chude_id` bigint(20) UNSIGNED NOT NULL,
  `tieude` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8mb4_unicode_ci,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `luotxem` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binhluan` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `kiemduyet` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hienthi` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `baiviet_nguoidung_id_foreign` (`nguoidung_id`),
  KEY `baiviet_chude_id_foreign` (`chude_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `nguoidung_id`, `chude_id`, `tieude`, `tieude_slug`, `tomtat`, `noidung`, `luotxem`, `binhluan`, `kiemduyet`, `hienthi`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Trên tay Xiaomi Watch S1: Mặt tròn cổ điển làm từ kính sapphire, pin dùng 12 ngày có hỗ trợ sạc không dây, giá từ 3.9 triệu', 'tren-tay-xiaomi-watch-s1-mat-tron-co-dien-lam-tu-kinh-sapphire-pin-dung-12-ngay-co-ho-tro-sac-khong-day-gia-tu-39-trieu', NULL, '<h3><strong>Cùng nhau mở hộp Xiaomi Watch S1 để xem bên trong có gì nha!</strong></h3><p>Bên ngoài hộp đựng của Xiaomi Watch S1 có thiết kế vuông vức giống như các hộp đựng đồng hồ khác, vỏ hộp có màu đen là chủ đạo trông khá mạnh mẽ và cá tính. Ở mặt trước, vỏ hộp thiết kế đơn giản với phần tên sản phầm \'XIAOMI WATCH S1\' được in nổi trông cũng khá ấn tượng, nổi bật.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/vohopxiaomiwatchs12-_1920x1080-800-resize.jpg\" alt=\"Vỏ hộp Xiaomi Watch S1\"></p><p><i>Mặt trước hộp đựng Xiaomi Watch S1. Nguồn: Sami Luo Tech.</i></p><p>Ở mặt sau, hộp đựng của Xiaomi Watch S1 được nhà sản xuất in lên các thông số cấu hình nổi bật liên quan đến sản phẩm.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/vohopxiaomiwatchs1-_1920x1080-800-resize.jpg\" alt=\"Vỏ hộp Xiaomi Watch S1\"></p><p><i>Mặt sau hộp đựng Xiaomi Watch S1. Nguồn: Sami Luo Tech.</i></p><p>Tiếp theo, mời các bạn cùng mình khám phá bên trong hộp đựng Xiaomi Watch S1 có gì nha! Sau khi mở hộp, ngoài chiếc đồng hồ ra thì chúng ta cũng sẽ bắt gặp thêm sách hướng dẫn sử dụng, đế sạc không dây và cáp sạc USB Type-C. Tuy phụ kiện đi kèm khá đơn giản nhưng chừng ấy đã quá đủ cho một chiếc đồng hồ thông minh rồi.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs13-_2000x1499-800-resize.jpg\" alt=\"Phụ kiện đi kèm Xiaomi Watch S1\"></p><p><i>Phụ kiện đi kèm với chiếc đồng hồ Xiaomi Watch S1. Nguồn: Weibo.</i></p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/sachhuongdanxiaomiwatchs1-_1920x1080-800-resize.jpg\" alt=\"Sách hướng dẫn Xiaomi Watch S1\"></p><p><i>Sách hướng dẫn sử dụng của Xiaomi Watch S1. Nguồn: Sami Luo Tech.</i></p><h3><strong>Xiaomi Watch S1 có thiết mặt tròn cổ điển và được hoàn thiện tinh xảo từ vật liệu cao cấp</strong></h3><p>Xiaomi Watch S1 có thiết kế mặt tròn cổ điển với kích thước 46.6 mm cùng độ dày 11 mm, ấn tượng hơn khi phần khung viền được hoàn thiện bởi thép không gỉ 304 được gia công tinh xảo, nhìn rất bắt mắt. Bên cạnh đó thì chiếc đồng hồ có khối lượng chỉ 32 gram, mang lại cảm giác đeo nhẹ nhàng và thoải mái trong suốt quá trình sử dụng.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs113-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Xiaomi Watch S1 với thiết kế khung viền thép không gỉ. Nguồn: Weibo.</i></p><p>Về mặt trước, Xiaomi Watch S1 được hãng trang bị tấm nền AMOLED có kích thước 1.43 inch với độ phân giải 466 x 466 pixel cùng mật độ điểm ảnh 326 ppi. Chưa dừng lại ở đó, mặt đồng hồ còn được hoàn thiện bởi kính sapphire giúp bề mặt thiết bị có khả năng chống ăn mòn, chống trầy xước cũng như rất khó bị phá vỡ. Mình tin rằng đây sẽ là điểm nổi bật trên Mi Watch S1 khi so với nhiều sản phẩm khác có trên thị trường hiện nay.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs18-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Xiaomi Watch S1 được trang bị kính sapphire chắc chắn. Nguồn: Weibo.</i></p><p>Nếu như bạn để ý kỹ thì sẽ thấy trên bề mặt của Xiaomi Watch S1 sẽ được khắc 12 vạch màu trắng tương ứng 12 khung giờ trong ngày. Với thiết kế này, thiết bị trông khá giống với những mẫu đồng hồ cơ truyền thống, mang lại sự gần gũi và giúp chiếc đồng hồ dễ tiếp cận hơn với nhiều người tiêu dùng.&nbsp;</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs16-_2000x1500-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Xiaomi Watch S1 có thiết kế khá giống đồng hồ cơ truyền thống. Nguồn: Weibo.</i></p><p>Cạnh phải của Xiaomi Watch S1 là nơi đặt 2 phím bấm vật lý, giúp bạn truy cập vào giao diện cũng như các ứng dụng nhanh chóng. Bên dưới hai phím bấm sẽ là nơi đặt loa ngoài nhằm hỗ trợ cho tính năng nghe gọi thông qua kết nối Bluetooth.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs110-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Cạnh phải của Xiaomi Watch S1 là nơi đặt 2 phím bấm vật lý và loa ngoài. Nguồn: Weibo.</i></p><p>Mặt đáy của Xiaomi Watch S1 được hoàn thiện tỉ mỉ với cụm cảm biến quang học đặt ở vị trí trung tâm. Cụm cảm biến này có chức năng đo nhịp tim, nồng độ oxi trong máu - SpO2, giấc ngủ,... Từ đó giúp bạn theo dõi sức khỏe cũng như hỗ trợ cho việc tập luyện thể dục, thể thao.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs15-_2000x1500-800-resize.jpg\" alt=\"Mặt đáy của Xiaomi Watch S1\"></p><p><i>Mặt đáy của Xiaomi Watch S1 là nơi chứa hệ thống cảm biến. Nguồn: Weibo.</i></p><p>Dây đeo của Xiaomi Watch S1 khá chắc chắn bởi thanh chốt cố định với thân đồng hồ và chúng ta cũng dễ dàng mở ra khi cần thay đổi dây đeo. Ngoài ra, thiết bị cũng sẽ có 3 tùy chọn màu sắc đó là đen, xanh, nâu và nếu như bạn muốn trở nên sang trọng hơn thì mình nghĩ bạn nên lựa chọn dây da nhé!</p><h3><strong>Xiaomi Watch S1 chạy hệ điều hành MIUI for Watch cùng nhiều tính năng xịn sò</strong></h3><p>Với mẫu đồng hồ Watch S1, Xiaomi quyết định sử dụng hệ điều hành MIUI for Watch, một hệ sinh thái riêng của hãng và vẫn được hỗ trợ cài đặt ứng dụng bên thứ 3. Xiaomi Watch S1 có thể&nbsp;tương thích với cả điện thoại chạy hệ điều hành Android lẫn iOS, tuy nhiên thiết bị sẽ hoạt động tốt hơn với những mẫu smartphone sử dụng hệ điều hành MIUI.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs19-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1 với hệ điều hành MIUI for Watch\"></p><p><i>Xiaomi Watch S1 với hệ điều hành MIUI for Watch. Nguồn: Weibo.</i></p><p>Bên cạnh đó, Xiaomi Watch S1 được tích hợp 117 chế độ thể thao như: Đi bộ, chạy bộ, đạp xe,... Cùng với đó là khả năng đo nhịp tim và nồng độ oxi trong máu SpO2 liên tục. Nhằm giúp chúng ta dễ dàng theo dõi quá trình luyện tập, cải thiện và nâng cao sức khỏe. Ngoài ra, Watch S1 cũng có hệ thống định vị GNSS dùng để xác định vị trí trên bản đồ, vẽ và theo dõi lộ trình hoạt động của chúng ta chuyên nghiệp&nbsp;hơn.&nbsp;</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs112-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Xiaomi Watch S1 được tích hợp 117 chế độ thể thao. Nguồn: Weibo.</i></p><p>Một điểm nổi bật khác trên Xiaomi Watch S1 là có hỗ trợ sạc không dây (Qi), giúp chiếc đồng hồ này nổi trội hơn so với những mẫu đồng hồ chỉ được trang bị chân sạc dạng tiếp xúc điểm-điểm. Theo nhà sản xuất công bố thì Mi Watch S1 có thể sử dụng được 12 ngày và tối đa lên đến 24 ngày nếu như bật chế độ chờ. Mình nghĩ rằng thời lượng sử dụng pin như này là đủ để đáp ứng cho nhu cầu sử dụng của chúng ta và mang đến trải nghiệm tốt nhất khi đeo trên tay.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs118-_1920x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1 có hỗ trợ sạc không dây\"></p><p><i>Xiaomi Watch S1 có hỗ trợ sạc không dây. Nguồn: Cymye.</i></p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs113-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1 có thời gian sử dụng lâu dài\"></p><p><i>Xiaomi Watch S1 có thời gian sử dụng tối đa lên đến 24 ngày. Nguồn: Weibo.</i></p><h3><strong>Tổng kết</strong></h3><p>Nhìn chung, Xiaomi Watch S1 có nhiều điểm nổi bật với phần thiết kế mặt tròn cổ điển, khung viền thép không gỉ cùng mặt kính sapphire bền bỉ và nhiều tính năng luyện tập thể thao, theo dõi sức khỏe rất hữu ích. Watch S1 có giá tại thị trường Trung Quốc là 1.099 Nhân dân tệ (khoảng 3.9 triêu đồng), đây theo mình là mức giá rất phù hợp và thậm chí khá hời cho một mẫu đồng hồ thông minh sở hữu nhiều ưu điểm như trên.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs116-_1620x1080-800-resize.jpg\" alt=\"Xiaomi Watch S1\"></p><p><i>Xiaomi Watch S1 là lựa chọn nên cân nhắc. Nguồn: Weibo.</i></p><p>Rất có thể Xiaomi Watch S1 sẽ sớm được bán chính thức tại Việt Nam và lên kệ ở <a href=\"https://www.thegioididong.com/\">Thế Giới Di Động</a>.&nbsp;Vậy bạn nghĩ sao về Xiaomi Watch S1? Bạn có lựa chọn Xiaomi Watch S1 hay không? Hãy để lại bình luận bên dưới cho mình và mọi người được biết nhé! Cảm ơn bạn đã dành thời gian quan tâm và theo dõi bài viết của mình.</p><p><img src=\"https://cdn.tgdd.vn/Files/2022/01/08/1409854/xiaomiwatchs114-_1620x1080-800-resize.jpg\" alt=\"Hy vọng Xiaomi Watch S1 sớm được ra mắt tại Việt Nam\"></p><p><i>Hi vọng Xiaomi Watch S1 sớm được ra mắt tại Việt Nam. Nguồn: Weibo.</i></p>', 0, 1, 1, 1, '2022-01-10 19:25:51', '2022-01-10 19:25:51'),
(2, 1, 4, 'Cách đo giấc ngủ trên Amazfit GTS/GTR 3 Series, giúp bạn biết được mình đã có một ngủ ngon hay không', 'cach-do-giac-ngu-tren-amazfit-gtsgtr-3-series-giup-ban-biet-duoc-minh-da-co-mot-ngu-ngon-hay-khong', NULL, '<h2>Việc có một giấc ngủ ngon là tốt nhưng làm sao bạn biết được bạn ngủ có ngon không, hãy cùng mình xem cách đo giấc ngủ trên&nbsp;<a href=\"http://www.thegioididong.com/dong-ho-thong-minh/amazfit-gts-3\">Amazfit GTS</a>/<a href=\"http://www.thegioididong.com/dong-ho-thong-minh/amazfit-gtr-3\">GTR 3 Series</a> ngay nhé.</h2><h3><strong>Cách đo giấc ngủ trên Amazfit GTS/GTR 3 Series</strong></h3><p>Để sử dụng tính năng đo giấc ngủ thì bạn chỉ cần <strong>đeo đồng hồ ngay luôn lúc ngủ</strong> và việc đo thì đồng hồ sẽ tự đo cho bạn. Sau đó vào buổi sáng nếu bạn muốn xem tối hôm qua bạn đã ngủ như thế nào thì hãy mở bảng công cụ của đồng hồ lên và <strong>tìm đến mục Sleep</strong>, toàn bộ dữ liệu giấc ngủ của bạn sẽ được hiện lên màn hình, bạn có thể vuốt lên hoặc xuống để xem thêm.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/06/1409463/dogiacngu_1280x720-800-resize.jpg\" alt=\"Đo giấc ngủ\"></figure><p>Trải nghiệm của bạn với tính năng này trên&nbsp;Amazfit GTS/GTR 3 Series&nbsp;là gì ? Hãy nói cho mình biết bên dưới phần bình luận. Đừng quên chia sẻ bài viết đến với mọi người nếu bạn thấy nó hữu ích nhé.</p>', 0, 1, 1, 1, '2022-01-10 19:28:45', '2022-01-10 19:28:45'),
(3, 2, 3, 'Bạn có smartwatch cũ và đang mê đắm Apple Watch Series 7, Samsung Galaxy Watch 4? Tham gia thu cũ đổi mới ngay thôi!', 'ban-co-smartwatch-cu-va-dang-me-dam-apple-watch-series-7-samsung-galaxy-watch-4-tham-gia-thu-cu-doi-moi-ngay-thoi', NULL, '<h3><strong>Thời gian diễn ra</strong></h3><p><strong>Thời gian:</strong> Đến hết 31/1/2022 hoặc đến khi có thông báo mới.</p><p>Hãng áp dụng:&nbsp;<a href=\"https://www.topzone.vn/\">Apple</a>&nbsp;và&nbsp;<a href=\"https://www.thegioididong.com/Samsung\">Samsung</a>.</p><h3><strong>Nội dung chương trình</strong></h3><p><strong>Thông tin chung:</strong></p><ul><li>Thu smartwatch cũ, lên đời Apple Watch S7 hoặc Samsung Galaxy Watch 4.</li><li>Giá thu máy cũ lên đến 6.950.000 đồng, tham khảo mức giá thu cũ theo loại máy <a href=\"https://docs.google.com/spreadsheets/d/1TyatzdYeRjmjN6LxVMznXM0175pNjUkHXGylMFeiD9w/edit?usp=sharing\">TẠI ĐÂY</a>.</li><li>Đã vậy, còn kèm trợ giá 666.000 đồng để đổi sang Apple Watch S7 và&nbsp;333.000 đồng khi đổi sang&nbsp;Samsung Galaxy Watch 4.</li></ul><p><a href=\"https://https//docs.google.com/spreadsheets/d/1s1JHcr6TyMKTYbyatCK41zehBu5l7TVEjaL3M2NnsEQ/edit?usp=sharin\"><strong>DANH SÁCH SMARTWATCH THU CŨ ĐỔI MỚI</strong></a></p><p><strong>Lưu ý :</strong></p><ul><li>Thông tin chỉ mang tính tham khảo, quý khách cần mang máy cũ đến các siêu thị Thế Giới Di Động&nbsp; hoặc Điện Máy Xanh gần nhất để được hỗ trợ, xác định mức giá thu cũ.</li><li>Chương trình chỉ áp dụng cho khách hàng sử dụng các mẫu smartwatch Samsung, Apple Watch cũ trong danh sách.</li><li>Khách hàng dùng Apple Watch sẽ được hỗ trợ thu cũ đổi sang&nbsp;Apple Watch S7 (mới).</li><li>Khách hàng dùng smartwatch Samsung cũ sẽ được hỗ trợ thu cũ đổi thành&nbsp;Samsung Galaxy Watch 4&nbsp;(mới).</li><li>KHÔNG hỗ trợ trường hợp thu cũ Apple Watch để đổi sang&nbsp;Samsung Galaxy Watch 4&nbsp;hoặc ngược lại.</li><li>Khách hàng vẫn được hưởng đầy đủ khuyến mãi hệ thống (nếu có) ở thời điểm thực hiện thu cũ - đổi mới. Hãy tham khảo ví dụ bên dưới đây:</li></ul><p><strong>Ví dụ:&nbsp;</strong><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/samsung-galaxy-watch-4-classic-46mm\">Samsung Galaxy Watch 4 Classic 46mm</a> ngày 05/01/2022 đang có giá bán 8.990.000đ và các khuyến mãi:</p><ul><li>Mua online giảm sốc 20% (tương đương 1.798.000 đồng), còn 7.192.000 đồng. (1)</li><li>Tặng dây da chính hãng Samsung. (2)</li><li>Tặng đế sạc đôi không dây Samsung. (3)</li><li>&nbsp;Giảm 15% và Trả góp 0% khi mua kèm điện thoại, Máy tính bảng Samsung giá trên 5.000.000 đồng. (4)</li></ul><p>Như vậy, khi tham gia mua kèm bạn sẽ nhận được các quà tặng ở mục (2), (3), được trợ giá 333.000đ (trừ vào giá bán sản phẩm: 8.990.000đ) và khấu trừ phần chi phí thu lại từ máy cũ của bạn.</p><p><strong>KHÔNG</strong> áp dụng cùng khuyến mãi ở mục (1), (4). Các bạn lưu ý nhé!</p>', 0, 0, 1, 1, '2022-01-10 19:30:36', '2022-01-10 19:44:30'),
(4, 2, 2, 'So sánh bộ 3 đồng hồ Amazfit GTS 3 và Amazfit GTR 3 Series: Đâu là phiên bản phù hợp nhất dành cho bạn?', 'so-sanh-bo-3-dong-ho-amazfit-gts-3-va-amazfit-gtr-3-series-dau-la-phien-ban-phu-hop-nhat-danh-cho-ban', NULL, '<h2>Màn hình của thiết bị nào có chất lượng hiển thị tốt nhất? Bộ 3 đồng hồ GTS 3 và GTR 3 Series hướng đến người dùng nào? Sau đây mời các bạn cùng mình so sánh Amazfit GTS 3 và GTR 3 Series để tìm hiểu rõ hơn nhé!</h2><p>&nbsp;</p><p>Để dễ hình dung hơn về sự khác nhau giữa 3 mẫu đồng hồ của Amazfit thì các bạn có thể tham khảo qua bảng so sánh dưới đây nhé!</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit_1300x609-800-resize.jpg\" alt=\"Bảng so sánh nhanh về tính năng\"></figure><p><i>Bảng so sánh nhanh giữa bộ 3 smartwatch của Amazfit.</i></p><h3><strong>Trọng lượng và thiết kế bộ 3 đồng hồ Amazfit GTS 3/GTR 3 Series có gì khác nhau?</strong></h3><p>Về diện mạo bên ngoài thì mình thấy Amazfit GTS 3 nổi bật hơn bởi thiết kế mặt vuông trẻ trung và năng động. Còn bộ đôi GTR 3 Series mang thiết kế mặt tròn cổ điển truyền thống nhưng vẫn toát lên một vẻ đẹp sang trọng.&nbsp;Cả 3 mẫu smartwatch của Amazfit đều được hoàn thiện từ hợp kim nhôm và được trang bị núm xoay&nbsp;(navigation crown). Khi trải nghiệm thì mình thấy các núm xoay này cho tốc độ phản hồi khá nhanh, các thao tác như truy cập ứng dụng hay cuộn trang trở nên dễ dàng hơn rất nhiều.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-pro-16_1280x720-800-resize.jpg\" alt=\"Amazfit GTR 3 Pro\"></figure><p><i>Các thao tác sử dụng trên đồng hồ nhanh hơn bởi nút nút xoay&nbsp;(ảnh: Amazfit GTR 3 Pro).</i></p><p>Một trong những điểm mà mình rất thích khi dùng Amazfit GTS 3 đó là cảm giác đeo cực kỳ thoải mái bởi vì khối lượng thiết bị chỉ có 24.4 gam mà thôi. Đôi lúc mình cứ ngỡ như đang đeo một chiếc vòng đeo tay thông thường vậy. Chính vì điều này nên mình nghĩ các bạn hoàn toàn có thể sử dụng Amazfit GTS 3 xuyên suốt cả ngày dài mà không sợ bị mỏi tay.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gts-3-23_1280x720-800-resize.jpg\" alt=\"Amazfit GTS 3\"></figure><p><i>Cảm giác đeo Amazfit GTS 3 nhẹ nhàng và thoải mái.</i></p><p>Trong khi đó thì bộ đôi Amazfit GTR 3 và GTR 3 Pro sẽ có khối lượng nhỉnh hơn một chút là 32 gam. Tuy nhiên, mình thấy cảm giác đeo trên tay của những chiếc smartwatch này vẫn rất dễ chịu cho dù mình sử dụng bình thường hoặc khi mình đi tập thể dục.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-34_1280x720-800-resize.jpg\" alt=\"Amazfit GTR 3\"></figure><p><i>Trải nghiệm thể thao trên Amazfit GTR 3 Series khá tốt (ảnh: Amazfit GTR 3).</i></p><p>Ở mặt trước thì cả 3 mẫu đồng hồ này đều được trang bị tấm nền AMOLED hứa hẹn sẽ mang đến chất lượng hiển thị sắc nét. Tuy nhiên, mình lại thích mặt đồng hồ vuông kích thước 1.75 inch cùng độ phân giải Ultra HD trên Amazfit GTS 3 hơn. Lý do là bởi mặt đồng hồ vuông cho không gian hiển thị rộng hơn và mình có thể theo dõi đầy đủ các nội dung hiển thị trên màn hình, không có hiện tượng bị cắt xén xuống hàng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gts-3-27_1280x720-800-resize.jpg\" alt=\"Amazfit GTS 3\"></figure><p><i>Amazfit GTS 3 với thiết kế mặt vuông dễ tiếp cận vào thao tác.</i></p><p>Trong khi đó, Amazfit GTR 3 sở hữu thiết kế mặt tròn với kích thước nhỏ hơn là 1.39 inch cùng độ phân giải HD, mật độ điểm ảnh 326 ppi nên nội dung hiển thị&nbsp;bị cắt xén một chút. Bù lại thì màn hình của chiếc đồng hồ này mang đến chất lượng hiển thị sắc nét và độ sáng cao nên mình có thể dễ dàng sử dụng thiết bị ở ngoài trời nắng gắt.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-5_1280x720-800-resize.jpg\" alt=\"Huami Amazfit \"></figure><p><i>Amazfit GTR 3 có màn hình hiển thị nịnh mắt.</i></p><p>Tương tự như GTR 3 thì Amazfit GTR 3 Pro cũng sở hữu mặt đồng hồ hình tròn nên nội dung hiển thị không được đầy đủ cho lắm. Tuy nhiên, chiếc smartwatch này lại sở hữu màn hình lớn với kích thước 1.45 inch cùng độ phân giải Ultra HD với mật độ điểm ảnh lên đến 331 ppi. Do đó, mình đánh giá khả năng hiển thị trên Amazfit GTR 3 Pro sẽ nhỉnh hơn một chút so với GTR 3.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-pro-23_1280x720-800-resize.jpg\" alt=\"Amazfit GTR 3 Pro\"></figure><p><i>Amazfit GTR 3 Pro có màn hình kích thước lớn với 1.45 inch.</i></p><h3><strong>Tính năng trên bộ 3 đồng hồ Amazfit GTS 3 và GTR 3 Series có gì nổi bật?</strong></h3><p>Cả 3 mẫu đồng hồ Amazfit GTS 3 và GTR 3 Series đều được nâng cấp lên hệ điều hành mới là Zepp OS, do Huami tự phát triển. Mình đã thử kết nối những chiếc đồng hồ này với smartphone Android hay iOS thì Zepp OS đều có thể tương thích tốt và quá trình ghép đôi diễn ra rất nhanh chóng. Dành cho những bạn nào chưa biết thì cả 3 chiếc đồng hồ của Amazfit đều được hỗ trợ Bluetooth v5.1 để giao tiếp với điện thoại thông qua ứng dụng Zepp.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gts-3-9_1280x720-800-resize.jpg\" alt=\"Quá trình ghép đôi giữa đồng hồ Amazfit với điện thoại diễn ra rất nhanh chóng (ảnh Amazfit GTS 3).\"></figure><p><i>Quá trình ghép đôi giữa đồng hồ Amazfit với điện thoại diễn ra rất nhanh chóng (ảnh Amazfit GTS 3).</i></p><p>Về mặt tính năng hỗ trợ theo dõi sức khỏe, cả Amazfit GTS 3 và GTR 3 Series đều được trang bị cảm biến sinh trắc học chuyên dụng BioTracker PPG 3.0 (đo nhịp tim, nồng độ oxi trong máu SpO2, giấc ngủ,...) cùng hơn 150 chế độ luyện tập thể dục như: Chạy ngoài trời, đi bộ, đạp xe,... Mình có thử đeo từng chiếc smartwatch này trong lúc đạp xe thì tất cả đều nhận diện được rằng mình đang hoạt động thể chất một cách nhanh chóng. Kể cả khi mình dừng bài tập đạp xe thì thiết bị của Amazfit vẫn có thể nhận ra điều đó, tránh được tình trạng hiển thị thông số ảo.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-pro-29-copy_1280x720-800-resize.jpg\" alt=\"Huami Amazfit\"></figure><p><i>Bộ 3 đồng hồ GT 3 Series hỗ trợ hơn 150 chế độ thể thao (ảnh: Amazfit GTR 3 Pro).</i></p><p>Một tính năng mà mình ấn tượng nhất trên dòng sản phẩm mới của Amazfit đó là \'One-tap Measuring\' (1 chạm biết ngay 4 chỉ số sức khỏe). Với chế độ này thì chúng ta chỉ cần chờ khoảng 45 giây để đồng hồ đo được 4 chỉ số sức khỏe: Nồng độ oxi trong máu SpO2, nhịp tim, mức độ căng thẳng, nhịp thở. Tuy nhiên, nếu tay của chúng ta bị run trong quá trình đo thì thiết bị sẽ không đo được chỉ số SpO2. Chính vì thế, các bạn lưu ý giữ cổ tay mình thật cố định khi sử dụng chế độ này nha!</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-pro-27_1280x720-800-resize.jpg\" alt=\"1 chạm biết ngay 4 chỉ số sức khỏe (ảnh: Amazfit GTR 3 Pro).\"></figure><p><i>1 chạm biết ngay 4 chỉ số sức khỏe (ảnh: Amazfit GTR 3 Pro).</i></p><p>Tuy nhiên, cá nhân mình thích chiếc Amazfit GTR 3 Pro bởi thiết bị có hỗ trợ khả năng nghe gọi trực tiếp (do chiếc smartwatch này có trang bị mic thoại và loa ngoài). Lý do là bởi vì mình sẽ không cần phải lấy điện thoại ra để nghe gọi mỗi khi đi đường nữa. Thay vào đó thì mình chỉ cần giơ đồng hồ lên và trả lời cuộc gọi mà thôi, quá tiện lợi đúng không nào các bạn?</p><h3><strong>Giữa Amazfit GTS 3, GTR 3 và GTR 3 Pro thì đâu mới là sự lựa chọn dành cho bạn?</strong></h3><p>Nhìn chung, ba mẫu đồng hồ Amazfit GTS 3 và GTR 3 Series đều có những nét nổi bật riêng và hướng đến những đối tượng người dùng khác nhau. Amazfit GTS 3 mang vóc dáng trẻ trung, năng động và mình nghĩ chiếc đồng hồ này rất phù hợp với những bạn nữ thích sự nhỏ gọn, nhẹ nhàng nhưng vẫn đảm bảo tính thời trang.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gts-3-26_1280x720-800-resize.jpg\" alt=\"Amazfit GTS 3 hướng đến người dùng thích sự trẻ trung năng động.\"></figure><p><i>Amazfit GTS 3 hướng đến người dùng thích sự trẻ trung năng động.</i></p><p>Trong khi đó thì Amazfit GTR 3 sẽ rất phù hợp với những ai thích một chiếc đồng hồ có vẻ bề ngoài cổ điển nhưng có đầy đủ tính năng của một chiếc smartwatch. Ngoài ra thì thời lượng sử dụng pin lâu dài trên GTR 3 sẽ rất hữu dụng nếu bạn thường xuyên phải đi công tác hoặc du lịch.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-38_1280x720-800-resize.jpg\" alt=\"Amazfit GTR 3\"></figure><p><i>Amazfit GTR 3 thích hợp cho những bạn thích sự cổ điển và có nhu cầu sử dụng pin lâu dài.</i></p><p>Cuối cùng, Amazfit GTR 3 Pro sẽ phù hợp với những ai có nhu cầu sử dụng nâng cao và muốn trải nghiệm nhiều tính năng hơn như nghe gọi trực tiếp hoặc lưu trữ nhạc, kết nối Wi-Fi,... Chính vì lẽ đó mà mình thấy giá của Amazfit GTR 3 Pro cao hơn một chút so với 2 mẫu đồng hồ bên trên.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2022/01/01/1408506/amazfit-gtr-3-pro-33_1280x720-800-resize.jpg\" alt=\"Amazfit GTR 3 Pro\"></figure><p><i>Amazfit GTR 3 Pro hướng đến người dùng có nhu cầu sử dụng nâng cao.</i></p><p>Vậy bạn nghĩ như thế nào về Amazfit GTS 3 và GTR 3 Series? Bạn sẽ lựa chọn chiếc đồng hồ nào? Hãy để lại bình luận bên dưới để cho mình và mọi người được biết nhé! Cảm ơn bạn đã dành thời gian quan tâm và theo dõi bài viết của mình.</p>', 0, 1, 1, 1, '2022-01-10 19:32:44', '2022-01-10 19:35:31'),
(5, 2, 2, 'So sánh sự khác biệt giữa Amazfit GTS 2, GTS 2e và GTS 2 Mini', 'so-sanh-su-khac-biet-giua-amazfit-gts-2-gts-2e-va-gts-2-mini', NULL, '<p>Cả hai&nbsp;chiếc&nbsp;GTS 2e và&nbsp;GTS 2&nbsp;Mini khác gì so với GTS 2? Những tính năng nào trên GTS 2 Mini và GTS 2e&nbsp;bị lượt bỏ? Đó là những câu của đại đa số&nbsp;người dùng&nbsp;và những câu hỏi này sẽ có&nbsp;lời giải đáp trong bài viết này.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini.jpg?v=1621478429553\" alt=\"So sánh đồng hồ Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p>&nbsp;</p><h2><strong>Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini: Thiết kế và màn hình</strong></h2><p>Cả Amazfit GTS 2 và GTS 2e đều có cùng một màn hình&nbsp;Super Retina 1,65 inch. Điểm khác biệt ở đây&nbsp;là ở lớp kính bao phủ màn hình, GTS 2&nbsp;có một tấm kính cong 3D còn GTS 2e có lớp&nbsp;kính cong 2,5D. Sẽ rất khó để bạn nhận biết sự khác biệt này nên về cơ bản&nbsp;thì thiết kế của cả 2 con&nbsp;đều giống nhau. Vì vậy, bạn không thể làm sai với một trong hai.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-6.jpg?v=1621478429657\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini (Từ trái qua)</i></p><p>&nbsp;</p><p>Tuy nhiên, Amazfit GTS 2 Mini lại&nbsp;có màn hình AMOLED 1.55 inch nhỏ&nbsp;và kém sắc nét hơn. Màn hình này không phải là xấu tuy nhiên nếu so nó với 2 chiếc đồng hồ ở trên thì quả là không thể bằng được.&nbsp;Nếu bạn là người có cổ tay mảnh mai, bạn có thể muốn mua Mini thay vì GTS 2 lớn hơn.</p><p>Về&nbsp;thiết kế:<strong> Amazfit GTS 2</strong> sở hữu 3 màu đen, xám và vàng. Kích thước vỏ là 42mm, dày 9,7mm. Vỏ được làm từ hợp kim nhôm với mặt sau bằng nhựa và được kết hợp với dây đeo silicone 20mm. Chỉ có một nút vật lý duy nhất năm bên cạnh phải, nó có khả năng chống thấm nước lên đến 50 mét.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-3.jpg?v=1621478429607\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini</i></p><p>&nbsp;</p><p>Còn <i><strong>GTS 2e</strong></i> cũng sở hữu thiết kế tương tự nhưng không có lỗ loa và màu sắc cũng có chút khác biệt so với GTS 2 là màu Đen, Xanh viền Bạc và Tím viền Vàng. Thật sự mình không quá ấn tượng với cách phối màu dây của Huami cho phiên bản GTS 2e này.</p><p><strong>Amazfit GTS 2 Mini</strong> có các màu đen, hồng và xanh lá cây và kích thước vỏ máy là 40mm, có dày độ dày mỏng hơn GTS 2 là 8,95mm. Vỏ đồng hồ vẫn được là hợp kim nhôm và vỏ nhựa cao cấp. Nó đi kèm với dây đeo silicone có cùng kích thước và tiêu chuẩn chống&nbsp;nước 5ATM. Bởi vì sở hữu kích thước nhỏ và mỏng hơn nên 1 số tính năng trên GTS 2 Mini sẽ bị lượt bỏ.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-5.jpg?v=1621478429640\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini (Từ trên xuống)</i></p><p>&nbsp;</p><p>Về thời lượng pin thì GTS 2 hoạt động được 7 ngày với các tác vụ thông thường,&nbsp;20 ngày khi sử dụng cơ bản và 3,5 ngày khi sử dụng thường xuyên.</p><p>Với GTS 2e thì thời lượng pin sẽ nhỉnh hơn GTS 2 một tí khi nó có thể hoạt động được 10 ngày với các tác vụ thông thường, 22 ngày ở chế độ tiết kiệm pin và 5 ngày sử dụng ở nhu cầu bình thường.</p><p>GTS 2 Mini thì hoạt động được 14 ngày khi sử dụng thông thường, 21 ngày sử dụng cơ bản và 7 ngày sử dụng thường xuyên.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-4.jpg?v=1621478429623\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini</i></p><p>&nbsp;</p><p>Những con số này cho thấy GTS 2 Mini sẽ cung cấp nhiều thời gian hoạt động hơn.</p><p>&nbsp;</p><h2><strong>Amazfit GTS 2 Mini vs GTS 2 vs GTS 2e: Các tính năng theo dõi thể dục và thể thao</strong></h2><p>Đồng hồ thông minh Amazfit của Huami được xem là có chung chí hướng với Fitbit khi họ luôn nâng cấp trải nghiệm người dùng và kết hợp tinh tế giữa các tính năng theo dõi thể dục và đồng hồ thông minh.</p><p>Khả năng theo dõi hoạt động thể chất trên các mẫu đồng hồ thông minh Amazfit chắc chắn đã gây ấn tượng với những ai đã từng sử dụng. Cả GTS 2,&nbsp;GTS 2e hay GTS 2 Mini đều sở hữu các cảm biến chuyển động chính cho phép nó theo dõi hoạt động hàng ngày và theo dõi giấc ngủ cực kì chính xác.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-7.jpg?v=1621478429677\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini</i></p><p>&nbsp;</p><p>Với cảm biến BioTracker 2 PPG của Huami mang đến khả năng theo dõi nhịp tim 24/24, nhịp tim trong khi tập thể dục và cung cấp các tính năng như hệ thống đánh giá sức khỏe PAI và theo dõi căng thẳng. Nó cũng cho phép các phép đo oxy trong máu có thể được theo dõi liên tục hoặc kiểm tra ngay tại chỗ. Điểm khác biệt ở đây là trong cả ba chiếc đồng hồ chỉ có GTS 2e là sở hữu cảm biến&nbsp;nhiệt độ dùng để đo nhiệt độ qua da.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-2.jpg?v=1621478429590\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini</i></p><p>&nbsp;</p><p>Cả 2 đều sở hữu GPS +&nbsp;GLONASS để thiết&nbsp;lập bản đồ các hoạt động ngoài trời của bạn. Điểm khác biệt duy nhất đó là GTS 2 Mini chỉ hỗ trợ theo dõi có 70 môn thể thao còn GTS 2 và GTS 2e&nbsp;là 90. Ngoài ra thì GTS 2 Mini có hỗ trợ theo dõi chu kỳ kinh nguyệt nữa đây là điều mà 2 chiếc đồng hồ kia vẫn chưa có.</p><p>&nbsp;</p><h2><strong>Amazfit GTS 2 Mini vs&nbsp;GTS 2 vs GTS 2e: Các tính năng của đồng hồ thông minh</strong></h2><p>Cả ba chiếc đồng hồ này&nbsp;đều tương thích tốt với các thiết bị Android và iOS, cho phép bạn xem thông báo, chọn từ nhiều loại mặt đồng hồ có thể tùy chỉnh.</p><p>Tuy nhiên&nbsp;Amazfit GTS 2 Mini không hỗ trợ điều khiển bằng giọng nói ngoại tuyến. Nó cũng không đi kèm trợ lý thông minh&nbsp;Amazon Alexa tích hợp sẵn như trên GTS 2 và GTS 2e</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/so-sanh-dong-ho-huami-amazfit-gts-2-vs-gts-2e-vs-gts-2-mini-1.jpg?v=1621478429573\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i>Đồng hồ&nbsp;Amazfit GTS 2 vs GTS 2e vs GTS 2 Mini</i></p><p>&nbsp;</p><p>Như các bạn đã biết thì GTS 2 có cả loa và mic để thực hiện nhận cuộc gọi trên đồng hồ. Còn với GTS 2e và GTS 2 Mini thì&nbsp;chỉ hỗ trợ mic để bạn điều khiển trợ lý ảo. Đó là lý do chính khiến GTS 2 Mini và GTS 2e&nbsp;có mức giá dễ chịu hơn</p><p>Amazfit GTS 2 đi kèm với 3GB bộ nhớ trong để lưu nhạc điều&nbsp;mà GTS 2e và GTS 2&nbsp;Mini không có. Điều đó có nghĩa là bạn không thể lưu trữ nhạc trên đồng hồ. Tuy nhiên, bạn có thể điều khiển nhạc của điện thoại thông qua đồng hồ bằng kết nối Bluetooth.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/021/944/files/techwearvn-so-sanh-amazfit-gts-2-gts-2-mini-gts-2e-jpeg.jpg?v=1620987696662\" alt=\"So sánh Amazfit GTS 2 vs GTS 2e&nbsp;vs GTS 2 Mini\"></figure><p><i><strong>Bảng so sánh đồng hồ Amazfit GTS 2, GTS 2e và GTS 2 Mini</strong></i></p><p>&nbsp;</p><p><strong>Kết luận</strong></p><p>Cả ba chiếc GTS 2, GTS 2e và GTS 2 Mini đều là những chiếc đồng hồ thông minh tốt. Tùy theo nhu cầu, kích cỡ và hầu bao của mỗi người mà bạn hoàn toàn có thể thoải mái lựa chọn&nbsp;cho mình một chiếc smartwatch phù hợp.</p><p>Nếu bạn muốn 1 chiếc Smartwatch có thể nhận cuộc gọi, lưu trữ nhạc và trợ lý thông minh thì hãy chọn GTS 2. Những tính năng này thông thường khá ít người dùng vì điện thoại có thể làm những việc này 1 các tốt hơn. Nếu bạn không cần lưu trữ nhạc và nhận cuộc gọi trên đồng hồ hãy chọn GTS 2e với thiết kế tương tự GTS 2.</p><p>Nếu cổ tay của bạn không phù hợp với 2 mẫu đồng hồ trên hoặc số tiền bạn muốn bỏ ra chỉ trong tầm giá 2 triệu thì GTS 2 Mini hoàn toàn đáp ứng mọi điều kiện mà bạn đưa ra.</p>', 1, 1, 1, 1, '2022-01-10 19:34:54', '2022-01-12 03:07:39');
INSERT INTO `baiviet` (`id`, `nguoidung_id`, `chude_id`, `tieude`, `tieude_slug`, `tomtat`, `noidung`, `luotxem`, `binhluan`, `kiemduyet`, `hienthi`, `created_at`, `updated_at`) VALUES
(6, 1, 4, '6 tiêu chí giúp bạn sở hữu ngay một chiếc đồng hồ thông minh cực chất', '6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho-thong-minh-cuc-chat', NULL, '<h3>Khả năng tương thích với điện thoại</h3><p>Các dòng smartwatch hiện nay có khả năng tương thích khá tốt với&nbsp;<strong>nhiều dòng điện thoại</strong>&nbsp;khác nhau. Đa số các dòng Android Wear (Huawei, Xiaomi,...) và smartwatch của&nbsp;Samsung (Tizen OS) đều tương thích khá tốt với cả hai nền tảng&nbsp;<strong>Android</strong>&nbsp;và<strong>&nbsp;iOS</strong>.</p><p>Các đồng hồ thông minh sử dụng hệ điều hành tùy biến riêng của Huawei, Samsung, Garmin, Polar và các hãng khác sản xuất khác cũng tương thích với cả Android và iOS, nhưng bạn phải cài thêm một <strong>ứng dụng hỗ trợ riêng</strong>.</p><p>Riêng&nbsp;<strong>Apple Watch</strong>&nbsp;lại kén chọn hơn, nó chỉ tối khi kết nối với iPhone,&nbsp;iPad, trong khi không hỗ trợ chính thức cho Android. Tuy nhiên người dùng vẫn có cách kết nối Apple Watch với Android nhưng khá phức tạp và cũng không đem lại hiệu quả sử dụng cao.</p><p>Vì thế trước khi chọn mua smartwatch bạn hãy đảm bảo rằng smartwatch bạn mua tương thích với phiên bản Android hoặc iOS của điện thoại bạn đang dùng, để sử dụng đồng hồ được tối ưu và hiệu quả nhất nhé.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh-3.jpg\" alt=\"Khả năng tương thích với điện thoại\"></figure><h3>2Lựa chọn chất liệu dây</h3><p>Chất liệu dây đồng hồ cũng là yếu tố quyết định đến thời gian sử dụng lâu hay mau của một chiếc đồng hồ.&nbsp;Chất liệu dây đồng hồ là một trong những yếu tố giúp cho đồng hồ của bạn trở nên đẹp hơn hay không,&nbsp;cũng như quyết định đến tính thời trang của đồng hồ.</p><p>Mỗi loại dây đồng hồ sẽ thể hiện <strong>tính cách</strong> và <strong>gu thời trang</strong> khác nhau của mỗi người, thậm chí tùy theo tính chất công việc, giới tính và độ tuổi mà cách chọn dây đồng hồ cũng không giống nhau.</p><p>Hiện nay có 3 loại dây đồng hồ phổ biến bao gồm dây kim loại, dây da và dây Silicon:</p><ul><li><strong>Dây kim loại</strong>: Đây là loại dây đeo&nbsp;sang trọng, thanh lịch được nhiều người lựa chọn.&nbsp;Loại dây này sử dụng vật liệu kim loại (kim loại mạ vàng, gốm Ceramic,&nbsp;Titanium,...). Người dùng còn có thể dễ dàng điều chỉnh độ rộng dây phù hợp với cổ tay hơn.</li><li><strong>Dây da</strong>: Là loại dây được làm bằng da động vật hoặc da nhân tạo có độ mềm, nhẹ và ôm tay tốt hơn, tuy nhiên người dùng cần phải bảo quản dây cẩn thận vì dây dễ bị tác động bởi điều kiện môi trường.</li><li><strong>Dây&nbsp;Silicon</strong>: Là 1 loại cao su cao cấp,&nbsp;chất liệu nhẹ, có độ bền chắc, chịu áp lực tốt và chống nước tốt hơn nhiều so với dây da và dây kim loại. Ngoài ra,&nbsp;đây cũng là nguyên tố có mặt nhiều thứ hai trong cấu tạo của lớp vỏ trái đất đấy nhé.</li></ul><h4><strong>Dây kim loại</strong></h4><p>Dây kim loại là loại dây đeo phổ biến, được nhiều người ưa chuộng vì dây kim loại có thiết kế <strong>chắc chắn</strong>, độ bền cao, cứng cáp, mang vẻ đẹp <strong>ánh kim</strong> sang trọng, phù hợp cho mọi lứa tuổi, thoáng mát khi đeo. Bên cạnh đó dây kim loại còn có thể điều chỉnh kích thước dây một cách <strong>linh hoạt</strong>&nbsp;bằng cách tháo rời hoặc lắp thêm các mắt xích sao cho vừa với tay người đeo.</p><p>Tuy nhiên, sợi dây kim loại cũng có nhược điểm nhất định, đó là trọng lượng <strong>nặng</strong>, giá thành cao khoảng từ <strong>300.000 đồng - 1 triệu đồng</strong>. Nếu mua ngay hàng giả, hàng kém chất lượng dây sẽ dễ bị phai màu (nếu sợi dây được mạ), dễ bị gỉ sét và thậm chí gây dị ứng, khó chịu cho những làn <strong>da nhạy cảm</strong>.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--24.jpg\" alt=\"dây kim loại\"></figure><p><i>Ảnh minh họa là Apple Watch S5 LTE 44mm viền thép dây thép</i></p><p>Một số loại dây đeo kim loại khác:</p><p>-<strong> Thép không gỉ</strong>: Là loại dây phổ thông, có giá thành hợp lý được nhiều người lựa chọn.</p><p>- <strong>Titanium</strong>: Loại dây đeo cao cấp, có giá thành cao, cho khả năng chống ăn mòn tốt, nhẹ hơn thép 40% nhưng lại bền hơn tới 5 lần.</p><p>- <strong>Vàng nguyên khối 18K</strong>: Là loại dây đi kèm cùng các thương hiệu đồng hồ xa xỉ, với vẻ đẹp sang trọng, thu hút mọi ánh nhìn.</p><h4><strong>Dây da</strong></h4><p>Dây da được xem là chất liệu phổ biến nhất từ trước tới nay, vì dây da ôm sát vào cổ tay mà vẫn tạo cảm giác thoải mái cho người đeo. Loại dây đồng hồ này thường được ưa chuộng đối với người đứng tuổi, nhân viên văn phòng và ở các nước xứ lạnh bởi dây da có vẻ sẽ giữ ấm tốt hơn so với chất liệu dây bằng kim loại và dây vải.</p><p>Tuy nhiên, thời gian sử dụng của dây da thường chỉ kéo dài từ <strong>6 tháng</strong> đến <strong>2 năm</strong>, và khi gặp nước cũng như các điều kiện thời tiết khắc nghiệt của nhiệt độ thì dây da có vẻ không chịu được độ bền như mong muốn.</p><p>Có 2 loại dây da thường sử dụng:</p><p>- <strong>Da tự nhiên</strong>: Có nguồn gốc từ da động vật như da bò, da cá sấu,... mang vẻ đẹp cao cấp, sang trọng, thoáng khí và cảm giác đeo được thoải mái nhất.</p><p>- <strong>Da nhân tạo</strong>: Giá thành rẻ, dễ tìm mua, có nhiều hoa văn đẹp giống như da thật, tuy nhiên dây đeo da nhân tạo thường có độ bền thấp, khá cứng, đeo lâu sẽ đau tay và không thoát khí.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--25.jpg\" alt=\"đồng hồ dây da\"></p><p><i>Ảnh minh họa là&nbsp;Samsung Galaxy Watch 3 45mm viền thép dây da</i></p><h4>Dây&nbsp;Silicone</h4><p>Silicone là một loại <strong>polymer tổng hợp</strong>, có nhiều đặc tính ưu việt như chịu nhiệt độ cao, không thấm nước, <strong>đàn hồi</strong>, mềm mịn, thoải mái khi đeo, không có mùi hôi như cao su. Bên cạnh đó dây Silicone rất đa dạng về kiểu dáng, màu sắc, được sử dụng phổ biến trên smartwatch và đồng hồ định vị trẻ em.</p><p>Tuy nhiên dây Silicone lại rất dễ bám bẩn tuy nhiên cũng rất dễ lau chùi, nên khách hàng có thể yên tâm khi sử dụng.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--26.jpg\" alt=\"dây Silicon\"></p><p><i>Ảnh minh họa là&nbsp;Oppo Watch 41mm dây silicone</i></p><h3>3Chọn đường kính mặt đồng hồ&nbsp;</h3><p>Đồng hồ thực sự chỉ đẹp khi chúng phù hợp với <strong>cổ tay</strong>. Đồng hồ cũng như<strong> trang phục</strong>, muốn đeo đẹp thì nhất định phải phù hợp với màu da, vóc dáng. Vì vậy, trước khi mua một chiếc đồng hồ người dùng nên chú ý đến việc <strong>chọn size mặt đồng hồ</strong>. Size mặt đồng hồ phù hợp với cổ tay sẽ làm tăng thêm phong cách của bạn.</p><p>Size đồng hồ càng lớn thì độ dày của nó cũng sẽ <strong>tăng theo</strong> và ngược lại, đường kính của đồng hồ được tính theo chiều ngang của cổ tay. Hiện nay có <strong>5&nbsp;loại </strong>kích thước đồng hồ smartwatch phổ biến đó là: 38mm, 40mm, 42mm, 44mm, 46mm.</p><p><strong>38mm</strong></p><p>Kích thước đồng hồ này phù hợp với cổ tay nhỏ đến trung bình&nbsp;từ <strong>15.2</strong> đến <strong>17.8 cm</strong>. Bất kì chiếc đồng hồ nào có đường kính nhỏ hơn 38mm thường phù hợp với nữ giới hơn là nam.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--23.jpg\" alt=\"đường kính mặt đồng hồ 38mm\"></figure><p><i>Ảnh minh họa là kích thước đường kính mặt đồng hồ 38mm của&nbsp;Apple Watch S3 GPS 38mm viền nhôm dây cao su</i></p><p>Đây là loại đồng hồ loại lớn (cỡ thể thao) được nam giới sử dụng nhiều hơn, đối với kích thước này thì cổ tay <strong>18cm</strong> đến dưới <strong>18.5cm</strong> là rất phù hợp, còn nếu lớn hơn 18.5cm mặt đồng hồ có thể hơi nhỏ hơn so với cổ tay.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--3.jpg\" alt=\"Đồng hồ có kích thước mặt 40mm\"></figure><p><i>Ảnh minh họa là kích thước đường kính mặt đồng hồ 40mm của&nbsp;Samsung Galaxy Watch Active 2 40mm&nbsp;viền nhôm</i></p><p>&nbsp;</p><p><strong>42mm</strong></p><p>Nếu cổ tay bạn có kích thước <strong>18.5cm</strong>&nbsp;đến <strong>19cm</strong> thì đây là lựa chọn khá hoàn hảo dành cho bạn, thay vì kích thước 40mm quá nhỏ so với cổ tay thì kích thước <strong>42mm</strong> được nhiều nam giới lựa chọn, vì nữ giới đeo kích thước này nhìn quá lớn so với tay.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--4.jpg\" alt=\"kích thước đường kính mặt đồng hồ 42mm\"></p><p><i>Ảnh minh họa là kích thước đường kính mặt đồng hồ 42mm của&nbsp;Huawei Watch GT2 42mm dây da</i></p><p>&nbsp;</p><p><strong>44mm</strong></p><p>Từ kích thước đường kính mặt đồng hồ size <strong>44mm</strong> trở lên là kích thước rất lớn, kích thước này chỉ phù hợp cho nam giới có cổ tay <strong>19.5cm</strong> đến <strong>20cm</strong>, đây là loại rất lớn nên nữ giới cần cân nhắc kỹ trước khi mua để đeo hàng ngày.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--5.jpg\" alt=\"kích thước đường kính mặt đồng hồ 44mm\"></p><p><i>Ảnh minh họa là kích thước đường kính mặt đồng hồ 44mm của&nbsp;Apple Watch S5 44mm viền nhôm dây cao su</i></p><p>&nbsp;</p><p><strong>46mm</strong></p><p>Kích thước <strong>46mm</strong> là kích thước lớn phù hợp với cổ tay nam từ <strong>20cm</strong> đến <strong>21.5cm</strong>, tuy nhiên cũng tùy vào sở thích cá nhân mà bạn hoàn toàn có thể lựa chọn kích thước to hơn hoặc nhỏ hơn để thể hiện phong cách và cá tính riêng của bản thân.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--6.jpg\" alt=\"kích thước đường kính mặt đồng hồ 46mm \"></p><p><i>Ảnh minh họa là kích thước đường kính mặt đồng hồ 46mm của&nbsp;Oppo Watch 46mm dây silicone đen</i></p><p>&nbsp;</p><p><strong>Một số lưu ý khi chọn đường kính mặt đồng hồ</strong>:</p><ul><li>Cổ tay nhỏ thì không nên chọn đồng hồ có mặt quá dày.</li><li>Nếu bạn có cổ tay mỏng nhưng bề ngang tay to thì nên chọn size đồng hồ <strong>lớn hơn một size</strong>. Ví dụ: Size đồng hồ theo cổ tay bạn là 30mm thì bạn nên chọn đồng hồ size 32mm để khi đeo được thoải mái, phù hợp.</li><li>Nếu thích đồng hồ mặt vuông để có cảm giác to và khoẻ khoắn thì nên chọn size mặt <strong>nhỏ hơn</strong> size tiêu chuẩn 1 đến 2 size.</li><li>Nếu bạn có vóc dáng cao to, thể thao thì nên chọn size đồng hồ có <strong>kích thước lớn.</strong></li><li>Nếu bạn thích phong cách thanh lịch và là dân văn phòng thì nên chọn size đồng hồ có <strong>độ dày vừa phải</strong>, hoặc <strong>hơi mỏng</strong> để có thể diện chung với sơ mi hoặc áo vest.</li><li>Còn nếu bạn thích phong cách năng động, mạnh mẽ thì có thể lựa chọn những thiết kế “hầm hố” <strong>bản to</strong> để thể hiện cá tính.</li></ul><h3>4Hình dáng mặt smartwatch</h3><p><strong>Vuông</strong></p><p>Đồng hồ mặt vuông thường phù hợp cho cổ tay lớn cổ tay có chu vi từ&nbsp;<strong>17 cm</strong>&nbsp;trở lên. Nếu bạn có cổ tay lớn bạn nên lựa chọn mặt đồng hồ có đường kính tối thiểu&nbsp;<strong>37</strong>&nbsp;-&nbsp;<strong>40 mm</strong>.</p><p>Không nên chọn đồng hồ có mắt xích dây quá lớn tạo cảm giác thô, hầm hố mất đi vẻ thanh lịch. Đồng hồ mặt vuông luôn tạo cảm giác lớn hơn mặt tròn, phù hợp với người có&nbsp;<strong>cổ tay gầy</strong>,&nbsp;<strong>xương xẩu</strong>. Đồng hồ mặt vuông giúp che khuyết điểm xương cổ tay bị lộ rõ.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh.jpg\" alt=\"Đồng hồ mặt vuông\"></figure><p><i>Minh họa là&nbsp;Đồng hồ thông minh Huami Amazfit GTS vàng</i></p><p><strong>Chữ nhật</strong></p><p>Đồng hồ mặt chữ nhật có thể kết hợp không giới hạn, bạn có thể phối hợp với bất kỳ loại trang phục nào, màu sắc của trang phục kể cả khi bạn đi dự tiệc hoặc đi chơi. Nếu bạn là người có cổ tay to, xương, gầy thì đồng hồ mặt chữ nhật sẽ giúp&nbsp;<strong>che khuyết điểm</strong>&nbsp;xương cổ tay bị lộ rõ.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh-2.jpg\" alt=\"Đồng hồ mặt chữ nhật \"></figure><p><i>Minh họa là&nbsp;Vòng đeo tay thông minh Mi Band 5</i></p><p><strong>Tròn</strong></p><p>Đồng hồ mặt tròn phù hợp với những người có cổ tay nhỏ&nbsp;kết hợp dây da để tạo cảm giác nhẹ nhàng, ôm tay. Nếu thích dây kim loại nên chọn mắt xích nhỏ, dây không quá dày hay quá rộng.&nbsp;</p><p>Đối với cổ tay mỏng nhưng có bề ngang lớn, bạn nên chọn mẫu đồng hồ có size lớn hơn size cổ tay bạn. Ví dụ: Size đồng hồ bạn đeo là&nbsp;<strong>34 mm</strong>&nbsp;thì hãy tham khảo size&nbsp;<strong>36 mm&nbsp;</strong>nhé. Nếu cổ tay bạn nhỏ thì nên chọn loại đồng hồ&nbsp;<strong>mỏng</strong>, đeo lên tay tạo cảm giác nhẹ nhàng, thanh thoát hơn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh-1.jpg\" alt=\"Đồng hồ mặt tròn\"></figure><p><i>Minh họa là Đồng hồ thông minh Suunto 7 Dây silicone</i></p><h3>5Tìm hiểu các tiện ích trên đồng hồ thông minh</h3><h4><strong>Định vị</strong></h4><p>Cũng giống như điện thoại,&nbsp;smartwatch cũng có chức năng định vị vị trí thông qua <strong>GPS.&nbsp;</strong>Điểm nổi bật của hệ thống này là cho <strong>tính chính xác cao</strong> và hoạt động trong bất kỳ điều kiện thời tiết. Tuy nhiên GPS chỉ hoạt động tốt khi bạn đang ở ngoài trời, còn đối với những nơi có vật cản thì chức năng này có thể bị hạn chế.</p><p>Chức năng định vị là chức năng giúp người dùng biết được vị trí của mình đang ở đâu, khu vực nào nhằm giúp <strong>xác định phương hướng</strong> một cách chính xác.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--7.jpg\" alt=\"chức năng định vị\"></figure><p><i>Minh họa Apple Watch S5 40mm viền nhôm dây cao su</i></p><h4><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh-esim\"><strong>eSIM</strong></a></h4><p><strong>eSIM</strong> (Embedded SIM), đây là một loại SIM điện tử được tích hợp sẵn vào bảng mạch của thiết bị và không thể tháo ra như SIM vật lý thông thường (nano/micro/miniSIM).</p><p>Chức năng của eSIM vẫn giống như thông thường và hỗ trợ <strong>lưu danh bạ</strong>, <strong>nghe gọi</strong>, nhắn tin, và các dịch vụ liên quan. Không cần đến các quầy dịch vụ của nhà mạng, những chiếc eSIM mới có khả năng được lập trình và kích hoạt từ xa.</p><p>Hiện nay, chỉ có 2 hãng có smartwatch được trang bị eSIM đó là&nbsp;smartwatch của hãng Apple Watch và&nbsp;Samsung Galaxy Watch mới được trang chức năng eSIM này.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--1.jpg\" alt=\"esim trên smartwatch\"></p><h4><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh?g=nghe-goi-tren-dong-ho\"><strong>Nghe gọi trên đồng hồ</strong></a></h4><p>Tính năng này&nbsp;có thể sử dụng thoải mái mà <strong>không cần cắm thẻ sim</strong>. Tính năng này cho phép xem ai đang gọi đến, giúp dễ dàng nhận cuộc gọi và trả lời hoặc từ chối cuộc gọi ngay trên màn hình của smartwatch.</p><p><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--27.jpg\" alt=\"Nghe gọi trên đồng hồ\"></p><p><i>Ảnh minh họa là </i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/samsung-galaxy-watch-active-2-40-mm\"><i>Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone</i></a></p><h4><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh?g=nghe-nhac-voi-tai-nghe-bluetooth\"><strong>Nghe nhạc với tai nghe Bluetooth</strong></a></h4><p>Với <a href=\"https://www.dienmayxanh.com/tai-nghe-bluetooth\">tai nghe Bluetooth</a>, bạn có thể nghe nhạc trên smartwatch của mình bằng cách kết nối đồng hồ với tai nghe Bluetooth. Đa số các dòng smartwatch hiện đang có mặt ngoài thị trường đều có khả năng <strong>lưu trữ bài hát</strong> và hỗ trợ nghe nhạc offline, với bộ nhớ trong cài sẵn tiêu chuẩn thấp nhất là <strong>4GB</strong>&nbsp;người dùng có thể thỏa thích nghe nhạc mà không cần dùng điện thoại để mở nhạc.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--9.jpg\" alt=\"Nghe nhạc với tai nghe Bluetooth\"></figure><p><i>Minh họa&nbsp;</i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/apple-watch-s5-40mm-vien-nhom-day-cao-su\"><i>Apple Watch S5 40mm viền nhôm dây cao su</i></a></p><h4><strong>Xem video YouTube</strong></h4><p>Ngoài tính năng nghe nhạc ra, người dùng còn có thể&nbsp;<strong>xem video YouTube</strong>&nbsp;trên cả smartwatch. Đây là tính năng mới ra mắt nhằm cứu cánh khi chiếc điện thoại không có ở bên cạnh hay người dùng muốn xem nhanh video. Việc xem Youtube trên smartwatch sẽ không thể nào sánh được với smartphone. Nhưng chắc hẳn tính năng này sẽ là một sự trải nghiệm thú vị khi bạn muốn giải trí tại&nbsp;<strong>hồ bơi</strong>.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh-4.jpg\" alt=\"Xem video YouTube\"></figure><h4><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh?g=man-hinh-luon-hien-thi\"><strong>Màn hình luôn hiển thị</strong></a></h4><p>Đối với đồng hồ thông minh, người dùng có thể xem giờ bất cứ lúc nào với màn hình luôn bật - <a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tinh-nang-always-on-display-man-hinh-luon-hien-t-1261816\"><strong>Always On Display</strong></a>&nbsp;chỉ cần liếc ngang qua là có thể xem, không cần phải dùng thao tác chạm màn hình hay mở khoá.&nbsp;Khi không quan sát, màn hình sẽ tự động giảm độ sáng xuống giúp tiết kiệm pin hơn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--2.jpg\" alt=\"Màn hình luôn hiển thị\"></figure><p><i>Minh họa là </i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/dong-ho-thong-minh-huami-amazfit-gts-vang\"><i>Đồng hồ thông minh Huami Amazfit GTS vàng</i></a></p><p>&nbsp;</p><h3>6Lựa chọn các tính năng sức khỏe kèm theo&nbsp;</h3><h4><strong>Đo nồng độ oxy trong máu (SpO2)</strong></h4><p>Hiện nay có nhiều smartwatch có tích hợp chức năng đo nồng độ oxy trong máu (SpO2). SpO2 được xem là một trong năm dấu hiệu sinh tồn bên cạnh mạch, nhiệt độ, huyết áp và nhịp thở.</p><p>Chỉ số oxy hóa máu tốt có nghĩa là phổi đã cung cấp đủ năng lượng để các cơ bắp hoạt động bình thường. Nếu cơ thể bị thiếu oxy máu, các cơ quan như tim, gan, não,… sẽ bị ảnh hưởng tiêu cực.</p><p>Nhằm giúp người dùng có thể theo dõi sức khỏe tốt hơn, các sản phẩm smartwatch hiện nay tận dụng&nbsp;<strong>cảm biến</strong>&nbsp;ở mặt dưới đồng hồ để tính toán chỉ số SpO2. Từ đó cho ra kết quả để người dùng có thể điều chỉnh các hoạt động phù hợp giúp cơ thể khỏe mạnh hơn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--12.jpg\" alt=\"đo nồng độ oxy\"></figure><p><strong>Xem thêm</strong>: <a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/chi-so-spo2-va-vo2-max-noi-len-dieu-gi-ve-suc-khoe-1280135\">Chỉ số SpO2 và VO2 max nói lên điều gì về sức khỏe của bạn?</a></p><p>&nbsp;</p><h4><strong>Đo nhịp tim</strong></h4><p>Tính năng đo nhịp tim là tính năng dùng để đưa ra những con số tương đối về số nhịp tim hoạt động trong <strong>1 phút</strong> từ đó đưa ra những cảnh báo về nhịp tim nếu nhận thấy sự bất thường.</p><p>Smartwatch có hỗ trợ tính năng đo nhịp tim, thì ở mặt dưới sẽ được trang bị <strong>cụm cảm biến hồng ngoại lục sắc</strong> để phục vụ cho tính năng đo nhịp tim. Từ đó đưa ra bảng thống kê nhịp tim hàng ngày giúp người dùng có thể theo dõi tốt nhịp tim của mình.</p><p><strong>Xem thêm</strong>: <a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tinh-nang-do-nhip-tim-tren-smartwatch-ban-da-bie-1262209\">Tính năng đo nhịp tim trên smartwatch - Bạn đã biết chưa?</a></p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--22.jpg\" alt=\"tính năng theo dõi nhịp tim\"></figure><p><i>Minh họa&nbsp;</i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/apple-watch-s5-40mm-vien-nhom-day-cao-su\"><i>Apple Watch S5 40mm viền nhôm dây cao su</i></a></p><p>&nbsp;</p><h4><strong>Theo dõi giấc ngủ</strong></h4><p>Tính năng theo dõi giấc ngủ hoạt động dựa trên các cảm biến để nhận biết rằng bạn có <strong>ngủ sâu</strong> hay không, bạn thức giấc bao nhiêu lần trong đêm,... từ đó tính toán và đưa ra đánh giá <strong>chất lượng </strong>về giấc ngủ của bạn.</p><p>Tính năng theo dõi giấc ngủ hoạt động bằng cách <strong>theo dõi chuyển động</strong> và <strong>theo dõi nhịp tim</strong> trong suốt quá trình đi ngủ của người dùng, đây là cách đơn giản nhất để đánh giá giấc ngủ của người dùng. Tuy nhiên, đây không phải là yếu tố mấu chốt để đánh giá chính xác chất lượng giấc ngủ của người dùng.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--21.jpg\" alt=\"Theo dõi giấc ngủ\"></figure><p><i>Tính năng theo dõi giấc ngủ</i></p><h4><strong>Tính lượng calories tiêu thụ&nbsp;</strong></h4><p>Ngoài đo nhịp tim, theo dõi giấc ngủ thì đồng hồ thông minh còn có thể tính<strong> lượng calories tiêu thụ</strong> mỗi ngày của bạn bằng cách theo dõi và xác định lượng calories tiêu hao thông qua chuyển động của người dùng như chỉ số nhịp tim, hoạt động hàng ngày, đếm số bước chân, sau đó dựa vào chiều cao, cân nặng, giới tính, độ tuổi và đôi khi là thói quen sinh hoạt hằng ngày để đo lường lượng calories tiêu thụ.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/tieu-chi-giup-ban-so-huu-ngay-dong-ho-thong-minh-5.jpg\" alt=\"Tính lượng calories tiêu thụ \"></figure><p><i>Minh họa là </i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/apple-watch-s5-lte-40mm-vien-thep-day-thep\"><i>Apple Watch S5 LTE 40mm viền thép dây thép</i></a></p><h4><strong>Đếm số bước chân</strong></h4><p>Bên cạnh đó, smartwatch còn có chức năng đếm số bước chân của người dùng mỗi ngày khi họ bắt đầu di chuyển. Để đo số bước chân được chính xác nhất, chúng ta nên để smartwatch trong túi quần vì những chiếc smartwatch đo bước chân hoạt động tốt nhất ở khu vực gần&nbsp;<strong>vùng thắt lưng</strong>.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--14.jpg\" alt=\"Đếm số bước chân hàng ngày\"></figure><p><i>Minh họa&nbsp;</i><a href=\"https://www.dienmayxanh.com/dong-ho-thong-minh/apple-watch-s5-40mm-vien-nhom-day-cao-su\"><i>Apple Watch S5 40mm viền nhôm dây cao su</i></a></p><p>&nbsp;</p><h4><strong>Chế độ luyện tập</strong></h4><p>Ngoài theo dõi hoạt động của người dùng ra, thì smartwatch còn có thể đưa ra các&nbsp;bài tập luyện đơn giản như chạy bộ, bơi lội, đạp xe, yoga,... mỗi bài tập đều có hướng dẫn để đảm bảo người dùng tập đúng động tác và mang lại hiệu quả cao nhất.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--15.jpg\" alt=\"Chế độ luyện tập\"></figure><p><i>Chế độ luyện tập</i></p><p>&nbsp;</p><h4><strong>Lộ trình đường đi</strong></h4><p>Đây là tính năng thường được tích hợp trên smartwatch trẻ em nhằm giúp các bậc phụ huynh theo dõi hành trình của con dù đang ngồi văn phòng hay đi công tác. Các dấu hiệu bất thường sẽ sớm được phát hiện, hạn chế rủi ro và giúp bạn bảo vệ con tốt hơn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Files/2020/10/12/1298238/6-tieu-chi-giup-ban-so-huu-ngay-mot-chiec-dong-ho--16.jpg\" alt=\"theo dõi lộ trình đường đi\"></figure><p><i>Lộ trình đường đi</i></p><p>Nếu như bạn là <strong>vận động viên</strong> chuyên nghiệp hay bạn thường xuyên <strong>hoạt động ngoài trời</strong> như chạy bộ, đi bộ đường dài và leo núi và bạn muốn sỡ hữu một chiếc đồng hồ có đầy đủ các tính năng thông minh như đã nêu trên thì <strong>đồng hồ thể thao thông minh</strong> (Fitness Smart Watch) là thiết bị tốt nhất dành cho bạn.</p><p>Đồng hồ thể thao thông minh dùng để ghi lại chính xác các <strong>bài tập</strong> ngoài trời, các môn thể thao chuyên dụng. Ngoài ra, chúng có thể cung cấp cho bạn nhiều dữ liệu hơn như: Khả năng tích hợp GPS, theo dõi khi bạn bơi lội, chạy bộ, đua xe đạp, luyện tập thể thao, thống kê các chỉ số nhịp tim, mức độ stress, lượng calo bị đốt cháy,... một số loại đồng hồ thể thao thông minh còn có các <strong>tính năng bổ sung</strong> như: Đo độ cao, bản đồ được tải sẵn, số liệu nâng cao và bộ nhớ lưu trữ nhạc.</p><p>Cho dù bạn là người yêu thích chạy xe đạp, bơi lội, chạy bộ hay tham gia thường xuyên ba môn thể thao phối hợp cho người chơi golf, cho vận động viên sức bền và những người đi leo núi hay trượt tuyết,... thì chiếc <strong>smartwatch thể thao</strong> sẽ là một cách tay đắt lực hỗ trợ tốt cho bạn đấy nhé.</p><h3>7Chọn thương hiệu, nơi sản xuất</h3><p>Khi chọn mua smartwatch, bạn cũng cần phải chú ý đến thương hiệu, nơi sản xuất, cũng như chính sách bảo hành đi kèm. Việc chọn mua sản phẩm của một thương hiệu uy tín sẽ giúp bạn an tâm về chất lượng.</p>', 0, 1, 1, 1, '2022-01-10 19:42:42', '2022-01-10 19:44:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `baiviet_id` bigint(20) UNSIGNED NOT NULL,
  `nguoidung_id` bigint(20) UNSIGNED NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hienthi` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `binhluan_baiviet_id_foreign` (`baiviet_id`),
  KEY `binhluan_nguoidung_id_foreign` (`nguoidung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `baiviet_id`, `nguoidung_id`, `noidung`, `hienthi`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'hay', 1, '2022-01-12 03:07:47', '2022-01-12 03:08:21'),
(2, 5, 3, 'hay', 0, '2022-01-12 03:08:29', '2022-01-12 03:08:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieu`
--

DROP TABLE IF EXISTS `chatlieu`;
CREATE TABLE IF NOT EXISTS `chatlieu` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenchatlieu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenchatlieu_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chatlieu`
--

INSERT INTO `chatlieu` (`id`, `tenchatlieu`, `tenchatlieu_slug`, `created_at`, `updated_at`) VALUES
(1, 'Bạch kim', 'bach-kim', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(2, 'Ceramic ', 'ceramic', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(3, 'Đá gốm Ceramic', 'da-gom-ceramic', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(4, 'Hợp kim', 'hop-kim', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(5, 'Nhôm', 'nhom', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(6, 'Nhựa Polycarbonate', 'nhua-polycarbonate', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(7, 'Sợi Carbon', 'soi-carbon', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(8, 'Tantalum ', 'tantalum', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(9, 'Thép không rỉ', 'thep-khong-ri', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(10, 'Titanium ', 'titanium', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(11, 'Tungsten ', 'tungsten', '2022-01-12 02:57:40', '2022-01-12 02:57:40'),
(12, 'Vàng', 'vang', '2022-01-12 02:57:40', '2022-01-12 02:57:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

DROP TABLE IF EXISTS `chude`;
CREATE TABLE IF NOT EXISTS `chude` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenchude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenchude_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`id`, `tenchude`, `tenchude_slug`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm mới', 'san-pham-moi', '2022-01-12 01:24:15', '2022-01-12 01:24:15'),
(2, 'Đánh giá', 'danh-gia', '2022-01-12 01:24:15', '2022-01-12 01:24:15'),
(3, 'Khuyến mãi', 'khuyen-mai', '2022-01-12 01:24:15', '2022-01-12 01:24:15'),
(4, 'Mẹo hay', 'meo-hay', '2022-01-12 01:24:15', '2022-01-12 01:24:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoidung_id` bigint(20) UNSIGNED NOT NULL,
  `tinhtrang_id` bigint(20) UNSIGNED NOT NULL,
  `dienthoaigiaohang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachigiaohang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chitietgiaohang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `donhang_nguoidung_id_foreign` (`nguoidung_id`),
  KEY `donhang_tinhtrang_id_foreign` (`tinhtrang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `nguoidung_id`, `tinhtrang_id`, `dienthoaigiaohang`, `diachigiaohang`, `chitietgiaohang`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '0987654321', 'Đại học An Giang', 'lop 19pm', '2022-01-12 03:03:36', '2022-01-12 03:05:22'),
(2, 3, 10, '0987654321', 'Đại học An Giang', NULL, '2022-01-12 03:05:48', '2022-01-12 03:06:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang_chitiet`
--

DROP TABLE IF EXISTS `donhang_chitiet`;
CREATE TABLE IF NOT EXISTS `donhang_chitiet` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `donhang_id` bigint(20) UNSIGNED NOT NULL,
  `sanpham_id` bigint(20) UNSIGNED NOT NULL,
  `soluongban` int(11) NOT NULL,
  `dongiaban` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `donhang_chitiet_donhang_id_foreign` (`donhang_id`),
  KEY `donhang_chitiet_sanpham_id_foreign` (`sanpham_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang_chitiet`
--

INSERT INTO `donhang_chitiet` (`id`, `donhang_id`, `sanpham_id`, `soluongban`, `dongiaban`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 22990000, '2022-01-12 03:03:37', '2022-01-12 03:03:37'),
(2, 2, 2, 6, 22990000, '2022-01-12 03:05:48', '2022-01-12 03:05:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

DROP TABLE IF EXISTS `hinhanh`;
CREATE TABLE IF NOT EXISTS `hinhanh` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sanpham_id` bigint(20) UNSIGNED NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `hinhanh_sanpham_id_foreign` (`sanpham_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `sanpham_id`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 1, 'sanpham/demo-demo-1.jpg', '2022-01-12 02:59:06', '2022-01-12 02:59:06'),
(2, 1, 'sanpham/demo-demo-2.jpg', '2022-01-12 02:59:06', '2022-01-12 02:59:06'),
(3, 1, 'sanpham/demo-demo-3.jpg', '2022-01-12 02:59:06', '2022-01-12 02:59:06'),
(4, 1, 'sanpham/demo-demo-4.jpg', '2022-01-12 02:59:06', '2022-01-12 02:59:06'),
(5, 1, 'sanpham/demo-demo-5.jpg', '2022-01-12 02:59:06', '2022-01-12 02:59:06'),
(6, 1, 'sanpham/demo-demo-6.jpg', '2022-01-12 02:59:35', '2022-01-12 02:59:35'),
(7, 1, 'sanpham/demo-demo-7.jpg', '2022-01-12 02:59:35', '2022-01-12 02:59:35'),
(8, 1, 'sanpham/demo-demo-8.jpg', '2022-01-12 02:59:35', '2022-01-12 02:59:35'),
(9, 2, 'sanpham/apple-watch-series-7-lte-45mm-day-thep-den-1.jpg', '2022-01-12 03:00:38', '2022-01-12 03:00:38'),
(10, 2, 'sanpham/apple-watch-s7-lte-45mm-day-thep-3.jpg', '2022-01-12 03:00:38', '2022-01-12 03:00:38'),
(11, 2, 'sanpham/apple-watch-s7-lte-45mm-day-thep-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(12, 2, 'sanpham/apple-watch-s7-lte-45mm-day-thep-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(13, 2, 'sanpham/apple-watch-s7-lte-45mm-day-thep-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(14, 2, 'sanpham/apple-watch-s7-lte-45mm-day-thep-8.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(15, 3, 'sanpham/apple-watch-series-7-lte-41mm-day-thep-vang-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(16, 3, 'sanpham/apple-watch-s7-lte-45mm-day-thep-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(17, 3, 'sanpham/apple-watch-s7-lte-45mm-day-thep-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(18, 3, 'sanpham/apple-watch-s7-lte-45mm-day-thep-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(19, 3, 'sanpham/apple-watch-s7-lte-45mm-day-thep-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(20, 3, 'sanpham/apple-watch-s7-lte-45mm-day-thep-8.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(21, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(22, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(23, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(24, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su-xanh-duong-0-fix.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(25, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su-xanh-duong-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(26, 4, 'sanpham/s6-lte-44mm-vien-thep-day-cao-su-xanh-duong-6-fix.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(27, 5, 'sanpham/apple-watch-s7-lte-41mm-vang-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(28, 5, 'sanpham/apple-watch-s7-lte-41mm-vang-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(29, 5, 'sanpham/apple-watch-s7-lte-41mm637726142940286023.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(30, 5, 'sanpham/apple-watch-s7-lte-41mm637726142944286032.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(31, 5, 'sanpham/apple-watch-s7-lte-41mm637726142949726039.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(32, 5, 'sanpham/apple-watch-s7-lte-41mm637726142951466050.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(33, 6, 'sanpham/apple-watch-s7-lte-41mm-do-1-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(34, 6, 'sanpham/apple-watch-s7-lte-41mm-do-2-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(35, 6, 'sanpham/apple-watch-s7-lte-41mm637726142940286023.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(36, 6, 'sanpham/apple-watch-s7-lte-41mm637726142944286032.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(37, 6, 'sanpham/apple-watch-s7-lte-41mm637726142949726039.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(38, 6, 'sanpham/apple-watch-s7-lte-41mm637726142951466050.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(39, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm1-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(40, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm2-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(41, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm3-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(42, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm4-1-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(43, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm5-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(44, 7, 'sanpham/samsung-galaxy-watch-4-lte-classic-46mm6-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(45, 8, 'sanpham/samsung-galaxy-watch-4-40mm-vang-hong-0-1-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(46, 8, 'sanpham/samsung-galaxy-watch-4-40mm-vang-hong-4-1-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(47, 8, 'sanpham/samsung-galaxy-watch-4-40mm-vang-hong-5-org.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(48, 8, 'sanpham/samsung-galaxy-watch-4-40mm-11-hbv.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(49, 8, 'sanpham/samsung-galaxy-watch-4-40mm-12-hbv.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(50, 8, 'sanpham/samsung-galaxy-watch-4-40mm-10-hbv.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(51, 9, 'sanpham/baby-g-bga-280-4a2dr-nu-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(52, 9, 'sanpham/baby-g-bga-280-4a2dr-nu-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(53, 9, 'sanpham/baby-g-bga-280-4a2dr-nu-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(54, 9, 'sanpham/baby-g-bga-280-4a2dr-nu-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(55, 9, 'sanpham/baby-g-bga-280-4a2dr-nu-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(56, 10, 'sanpham/baby-g-bga-280-7adr-nu-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(57, 10, 'sanpham/baby-g-bga-280-7adr-nu-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(58, 10, 'sanpham/baby-g-bga-280-7adr-nu-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(59, 10, 'sanpham/baby-g-bga-280-7adr-nu-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(60, 10, 'sanpham/baby-g-bga-280-7adr-nu-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(61, 11, 'sanpham/baby-g-msg-c100g-7adr-nu-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(62, 11, 'sanpham/baby-g-msg-c100g-7adr-nu-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(63, 11, 'sanpham/baby-g-msg-c100g-7adr-nu-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(64, 11, 'sanpham/baby-g-msg-c100g-7adr-nu-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(65, 12, 'sanpham/huami-amazfit-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(66, 12, 'sanpham/huami-amazfit-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(67, 12, 'sanpham/huami-amazfit-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(68, 12, 'sanpham/huami-amazfit-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(69, 12, 'sanpham/huami-amazfit-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(70, 12, 'sanpham/huami-amazfit-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(71, 12, 'sanpham/huami-amazfit-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(72, 13, 'sanpham/garmin-forerunner-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(73, 13, 'sanpham/garmin-forerunner-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(74, 13, 'sanpham/garmin-forerunner-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(75, 13, 'sanpham/garmin-forerunner-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(76, 13, 'sanpham/garmin-forerunner-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(77, 13, 'sanpham/garmin-forerunner-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(78, 13, 'sanpham/garmin-forerunner-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(79, 14, 'sanpham/casio-efr-566pb-1avudf-nam-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(80, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(81, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(82, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(83, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(84, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(85, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(86, 15, 'sanpham/casio-ltp-v006gl-7budf-mtp-v006gl-7budf-nam-nu-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(87, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-1.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(88, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-2.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(89, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-3.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(90, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-4.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(91, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-5.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(92, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-6.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(93, 16, 'sanpham/casio-ltp-v004gl-7audf-mtp-v004gl-7audf-nam-nuthumb-7.jpg', '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(94, 17, 'sanpham/casio-mtp-e172-1avdf-nam-1-org1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(95, 17, 'sanpham/casio-mtp-e172-1avdf-nam-1-org2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(96, 17, 'sanpham/casio-mtp-e172-1avdf-nam-1-org3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(97, 18, 'sanpham/citizen-bh3002-03a-vang-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(98, 18, 'sanpham/citizen-bh3002-03a-vang-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(99, 18, 'sanpham/citizen-bh3002-03a-vang-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(100, 18, 'sanpham/citizen-bh3002-03a-vang-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(101, 18, 'sanpham/citizen-bh3002-03a-vang-5.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(102, 19, 'sanpham/ferrari-0810024-tre-em-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(103, 19, 'sanpham/ferrari-0810024-tre-em-2.jpgsanpham/ferrari-0810024-tre-em-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(104, 20, 'sanpham/ferrari-810023-tre-em-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(105, 20, 'sanpham/ferrari-810023-tre-em-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(106, 20, 'sanpham/ferrari-810023-tre-em-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(107, 20, 'sanpham/ferrari-810023-tre-em-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(108, 21, 'sanpham/ferrari-860004-tre-em-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(109, 21, 'sanpham/ferrari-860004-tre-em-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(110, 21, 'sanpham/ferrari-860004-tre-em-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(111, 22, 'sanpham/ferrari-0830768-nam-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(112, 22, 'sanpham/ferrari-0830768-nam-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(113, 22, 'sanpham/ferrari-0830768-nam-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(114, 23, 'sanpham/ferrari-0830773-nam-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(115, 23, 'sanpham/ferrari-0830773-nam-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(116, 23, 'sanpham/ferrari-0830773-nam-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(117, 24, 'sanpham/ferrari-0830713-nam-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(118, 24, 'sanpham/ferrari-0830713-nam-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(119, 24, 'sanpham/ferrari-0830713-nam-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(120, 24, 'sanpham/ferrari-0830713-nam-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(121, 24, 'sanpham/ferrari-0830713-nam-5.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(122, 24, 'sanpham/ferrari-0830713-nam-6.jp', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(123, 25, 'sanpham/oppo-watch-46mm-day-silicone-1-1-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(124, 25, 'sanpham/oppo-watch-46mm-day-silicone-2-1-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(125, 25, 'sanpham/oppo-watch-46mm-day-silicone.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(126, 25, 'sanpham/oppo-watch-46mm-day-silicone-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(127, 25, 'sanpham/oppo-watch-46mm-day-silicone-301020-0959020.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(128, 25, 'sanpham/oppo-watch-46mm-day-silicone-writee-(3).jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(129, 26, 'sanpham/oppo-watch-41mm-day-silicone-den-1-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(130, 26, 'sanpham/oppo-watch-41mm-day-silicone-den-2-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(131, 26, 'sanpham/oppo-watch-41mm-day-silicone-den-12-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(132, 26, 'sanpham/oppo-watch-46mm-day-silicone-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(133, 26, 'sanpham/oppo-watch-46mm-day-silicone-301020-0959020.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(134, 26, 'sanpham/oppo-watch-46mm-day-silicone-writee-(3).jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(135, 27, 'sanpham/orient-star-re-at0004s00b-nam-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(136, 27, 'sanpham/orient-star-re-at0004s00b-nam-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(137, 27, 'sanpham/orient-star-re-at0004s00b-nam-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(138, 27, 'sanpham/orient-star-re-at0004s00b-nam-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(139, 28, 'sanpham/orient-star-re-at0108l00b-nam-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(140, 28, 'sanpham/orient-star-re-at0108l00b-nam-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(141, 28, 'sanpham/orient-star-re-at0108l00b-nam-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(142, 28, 'sanpham/orient-star-re-at0108l00b-nam-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(143, 29, 'sanpham/orient-ra-as0102s-nam-1-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(144, 29, 'sanpham/orient-ra-as0102s-nam-2-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(145, 29, 'sanpham/orient-ra-as0102s-nam-3-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(146, 29, 'sanpham/orient-ra-as0102s-nam-4-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(147, 29, 'sanpham/orient-ra-as0102s-nam-5-org.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(148, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(149, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(150, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(151, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(152, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-5.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(153, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-6.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(154, 30, 'sanpham/qq-s397j202y-s396j202y-nam-nu-7.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(155, 31, 'sanpham/q-q-s294j010y-nam-nu-1.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(156, 31, 'sanpham/q-q-s294j010y-nam-nu-2.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(157, 31, 'sanpham/q-q-s294j010y-nam-nu-3.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(158, 31, 'sanpham/q-q-s294j010y-nam-nu-4.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(159, 31, 'sanpham/q-q-s294j010y-nam-nu-5.jpg', '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(160, 31, 'sanpham/q-q-s294j010y-nam-nu-6.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(161, 31, 'sanpham/q-q-s294j010y-nam-nu-7.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(162, 32, 'sanpham/skmei-1163-rd-tre-em-1.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(163, 32, 'sanpham/skmei-1163-rd-tre-em-2.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(164, 33, 'sanpham/skmei-1428-rd-tre-em-1.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(165, 33, 'sanpham/skmei-1428-rd-tre-em-2.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(166, 33, 'sanpham/skmei-1428-rd-tre-em-3.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(167, 34, 'sanpham/mi-watch.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(168, 34, 'sanpham/mi-watch2.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(169, 34, 'sanpham/mi-watch3.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(170, 34, 'sanpham/mi-watch-4.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(171, 34, 'sanpham/mi-watch5.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(172, 34, 'sanpham/mi-watch6.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(173, 35, 'sanpham/redmi1.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(174, 35, 'sanpham/redmi2.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(175, 35, 'sanpham/redmi3.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(176, 35, 'sanpham/redmi4.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(177, 35, 'sanpham/redmi5.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(178, 35, 'sanpham/redmi6.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(179, 35, 'sanpham/redmi7.jpg', '2022-01-12 03:00:41', '2022-01-12 03:00:41'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoiphucmatkhau`
--

DROP TABLE IF EXISTS `khoiphucmatkhau`;
CREATE TABLE IF NOT EXISTS `khoiphucmatkhau` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `khoiphucmatkhau_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id`, `tenloai`, `tenloai_slug`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ pin', 'dong-ho-pin', '2022-01-12 01:24:10', '2022-01-12 01:24:10'),
(2, 'Đồng hồ cơ', 'dong-ho-co', '2022-01-12 01:24:10', '2022-01-12 01:24:10'),
(3, 'Đồng hồ thông minh', 'dong-ho-thong-minh', '2022-01-12 01:24:10', '2022-01-12 01:24:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_23_065540_create_thuong_hieus_table', 1),
(6, '2021_11_23_065618_create_chat_lieus_table', 1),
(7, '2021_11_23_065649_create_loais_table', 1),
(8, '2021_11_23_065809_create_san_phams_table', 1),
(9, '2021_11_23_065811_create_tinh_trangs_table', 1),
(10, '2021_11_23_065829_create_don_hangs_table', 1),
(11, '2021_11_23_065852_create_don_hang__chi_tiets_table', 1),
(12, '2021_11_23_073502_create_hinh_anhs_table', 1),
(13, '2021_11_23_073518_create_chu_des_table', 1),
(14, '2021_11_23_073519_create_bai_viets_table', 1),
(15, '2021_11_23_073535_create_binh_luans_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nguoidung_username_unique` (`username`),
  UNIQUE KEY `nguoidung_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'watchshopphp@gmail.com', '2022-01-12 02:19:29', '$2y$10$OZ5YFT7m2IQBEmQyf9B5K.yUER247wUgDi9t0mfnljdDie2Do.GuC', NULL, 'admin', '2022-01-12 01:24:09', '2022-01-12 02:19:31'),
(2, 'User', 'user', 'user@gmail.com', '2022-01-12 02:19:33', '$2y$10$OZ5YFT7m2IQBEmQyf9B5K.yUER247wUgDi9t0mfnljdDie2Do.GuC', NULL, 'staff', '2022-01-12 01:24:09', '2022-01-12 02:19:33'),
(3, 'tuyet', 'coyexo2850', 'coyexo2850@vinopub.com', '2022-01-12 03:03:13', '$2y$10$L4e64eI0J7QfCEe4knz1YebQ6WntztaX6PiszI21pFdEGAMuHSp3K', NULL, 'user', '2022-01-12 03:02:43', '2022-01-12 03:06:35'),
(4, 'Phó Hồng Tuyết', 'phohongtuyetse', 'phohongtuyetse@gmail.com', NULL, '$2y$10$SAj8P4QDNWFi7mOwEPFF.OTuyEA.WVuiqvqBlMuYogH9YeEYI/OG.', 'XpzlVnBUFTz2P3Qg9AhLynSCeDWWtuvb2HSdS7UaCiXQMUR2oQDUnjgBUD3m', 'user', '2022-01-12 03:14:28', '2022-01-12 03:14:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `loai_id` bigint(20) UNSIGNED NOT NULL,
  `thuonghieu_id` bigint(20) UNSIGNED NOT NULL,
  `chatlieu_id` bigint(20) UNSIGNED NOT NULL,
  `tensanpham` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensanpham_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` tinyint(3) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `motasanpham` text COLLATE utf8mb4_unicode_ci,
  `hienthi` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sanpham_loai_id_foreign` (`loai_id`),
  KEY `sanpham_thuonghieu_id_foreign` (`thuonghieu_id`),
  KEY `sanpham_chatlieu_id_foreign` (`chatlieu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `loai_id`, `thuonghieu_id`, `chatlieu_id`, `tensanpham`, `tensanpham_slug`, `gioitinh`, `soluong`, `dongia`, `motasanpham`, `hienthi`, `created_at`, `updated_at`) VALUES
(1, 3, 19, 5, 'Demo', 'demo', 1, 0, 3500000, NULL, 1, '2022-01-12 02:59:05', '2022-01-12 03:11:26'),
(2, 3, 2, 5, 'Apple Watch Series 7 LTE 45mm dây thép', 'apple-watch-series-7-lte-45mm-day-thep', 1, 92, 22990000, NULL, 1, '2022-01-12 03:00:38', '2022-01-12 03:05:48'),
(3, 3, 2, 5, 'Apple Watch Series 7 LTE 41mm dây thép', 'apple-watch-series-7-lte-41mm-day-thep', 1, 100, 20990000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(4, 3, 2, 5, 'Apple Watch S6 LTE 44mm viền thép dây cao su xanh dương', 'apple-watch-s6-lte-44mm-vien-thep-day-cao-su-xanh-duong', 1, 100, 17841000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(5, 3, 2, 5, 'Apple Watch Series 7 LTE 41mm', 'apple-watch-series-7-lte-41mm', 1, 100, 14990000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(6, 3, 2, 5, 'Apple Watch Series 7 LTE 41mm', 'apple-watch-series-7-lte-41mm', 1, 100, 14990000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(7, 3, 19, 5, 'Samsung Galaxy Watch 4 LTE Classic 46mm', 'samsung-galaxy-watch-4-lte-classic-46mm', 1, 100, 9990000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(8, 3, 19, 5, 'Samsung Galaxy Watch 4 40mm', 'samsung-galaxy-watch-4-40mm', 1, 100, 6490000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(9, 1, 3, 8, 'BABY-G 43.4 mm BGA-280-4A2DR', 'baby-g-434-mm-bga-280-4a2dr', 2, 100, 3282000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(10, 1, 3, 8, 'BABY-G 42mm BGA-280-7ADR', 'baby-g-42mm-bga-280-7adr', 2, 100, 3282000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(11, 1, 3, 8, 'Baby-G 40mm MSG-C100G-7ADR', 'baby-g-40mm-msg-c100g-7adr', 2, 100, 5108000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(12, 3, 3, 1, 'Huami Amazfit GTR 42mm trắng', 'huami-amazfit-gtr-42mm-trang', 1, 100, 2990000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(13, 3, 3, 1, 'Garmin Forerunner 45 dây silicone đỏ', 'garmin-forerunner-45-day-silicone-do', 1, 100, 3308000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(14, 1, 4, 4, 'Casio 43.2mm EFR-566PB-1AVUDF', 'casio-432mm-efr-566pb-1avudf', 1, 100, 4763000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(15, 1, 4, 3, 'Casio 25mm LTP-V006GL-7BUDF/MTP-V006GL-7BUDF', 'casio-25mm-ltp-v006gl-7budfmtp-v006gl-7budf', 3, 100, 1776000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(16, 1, 4, 3, 'Casio 29.6mm LTP-V004GL-7AUDF/MTP-V004GL-7AUDF', 'casio-296mm-ltp-v004gl-7audfmtp-v004gl-7audf', 3, 100, 1630000, NULL, 1, '2022-01-12 03:00:39', '2022-01-12 03:00:39'),
(17, 2, 4, 1, 'Casio MTP-E172-1AVDF 44mm', 'casio-mtp-e172-1avdf-44mm', 1, 100, 2641000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(18, 1, 5, 3, 'Citizen 17.5mm BH3002-03A/EJ6122-08A', 'citizen-175mm-bh3002-03aej6122-08a', 3, 100, 7040000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(19, 1, 7, 1, 'Ferrari 34mm 0810024', 'ferrari-34mm-0810024', 4, 100, 2100000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(20, 1, 7, 1, 'Ferrari 34mm 0810023', 'ferrari-34mm-0810023', 4, 100, 2100000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(21, 1, 7, 1, 'Ferrari 34mm 0860004', 'ferrari-34mm-0860004', 4, 100, 2000000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(22, 3, 7, 1, 'Ferrari 45mm 0830768', 'ferrari-45mm-0830768', 1, 100, 10800000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(23, 3, 7, 1, 'Ferrari 44mm 0830773', 'ferrari-44mm-0830773', 1, 100, 8500000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(24, 3, 7, 1, 'Ferrari 44mm 0830713', 'ferrari-44mm-0830713', 1, 100, 6500000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(25, 3, 15, 1, 'Oppo Watch 46mm dây silicone đen', 'oppo-watch-46mm-day-silicone-den', 1, 100, 5752000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(26, 3, 15, 1, 'Oppo Watch 41mm dây silicone đen', 'oppo-watch-41mm-day-silicone-den', 1, 100, 4312000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(27, 2, 16, 1, 'Orient 39.2 mm Star RE-AT0004S00B', 'orient-392-mm-star-re-at0004s00b', 1, 100, 17540000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(28, 2, 16, 1, 'Orient Star 43 mm RE-AT0108L00B', 'orient-star-43-mm-re-at0108l00b', 1, 100, 21410000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(29, 3, 16, 1, 'Orient RA-AS0102S', 'orient-ra-as0102s', 1, 100, 7425000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(30, 1, 17, 1, 'Q&Q 31mm S397J202Y/S396J202Y', 'qq-31mm-s397j202ys396j202y', 3, 100, 2380000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(31, 1, 17, 1, 'Q&Q 40mm S294J010Y/S397J001Y', 'qq-40mm-s294j010ys397j001y', 3, 100, 2880000, NULL, 1, '2022-01-12 03:00:40', '2022-01-12 03:00:40'),
(32, 1, 20, 1, 'Skmei 44mm 1163RD', 'skmei-44mm-1163rd', 4, 100, 219000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(33, 1, 20, 1, 'Skmei 56mm 1428RD', 'skmei-56mm-1428rd', 4, 100, 390000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(34, 3, 24, 1, 'Mi Watch', 'mi-watch', 1, 100, 2590000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(35, 3, 24, 1, 'Redmi Watch 2 Lite', 'redmi-watch-2-lite', 1, 100, 1490000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(36, 1, 6, 4, 'Elio 40mm EL050-01/EL050-02', 'elio-40mm-el050-01el050-02', 3, 100, 1698000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(37, 1, 6, 4, 'Elio 39mm EL076-01/EL076-02', 'elio-39mm-el076-01el076-02', 3, 100, 1839000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(38, 3, 18, 9, 'Rolex Datejust 41mm White Gold/Steel White Dial Jubilee 126334-0010', 'rolex-datejust-41mm-white-goldsteel-white-dial-jubilee-126334-0010', 1, 100, 580000000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(39, 3, 18, 9, 'Rolex Lady-Datejust 28mm Stainless Steel and Everose Gold MOP 279381RBR-0013', 'rolex-lady-datejust-28mm-stainless-steel-and-everose-gold-mop-279381rbr-0013', 2, 100, 580000000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41'),
(40, 3, 18, 9, 'Rolex Steel Datejust 41mm – Jubilee Blue 126334-0002', 'rolex-steel-datejust-41mm-jubilee-blue-126334-0002', 1, 100, 377000000, NULL, 1, '2022-01-12 03:00:41', '2022-01-12 03:00:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE IF NOT EXISTS `thuonghieu` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenthuonghieu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenthuonghieu_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `tenthuonghieu`, `tenthuonghieu_slug`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'ADRIATICAl', 'adriatical', 'thuonghieu/ADRIATICAl.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(2, 'Apple', 'apple', 'thuonghieu/apple.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(3, 'Baby-G', 'baby-g', 'thuonghieu/Baby-G.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(4, 'Casio', 'casio', 'thuonghieu/casio.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(5, 'Citizen', 'citizen', 'thuonghieu/Citizen.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(6, 'Elio', 'elio', 'thuonghieu/Elio.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(7, 'Ferrari', 'ferrari', 'thuonghieu/Ferrari.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(8, 'Fossil', 'fossil', 'thuonghieu/Fossil.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(9, 'Hublot', 'hublot', 'thuonghieu/Hublot.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(10, 'ICEl', 'icel', 'thuonghieu/ICEl.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(11, 'MATHEYTISSOTl', 'matheytissotl', 'thuonghieu/MATHEYTISSOTl.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(12, 'MVW', 'mvw', 'thuonghieu/MVW.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(13, 'Obakui', 'obakui', 'thuonghieu/OBAKUl.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(14, 'Omega', 'omega', 'thuonghieu/omega.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(15, 'Oppo', 'oppo', 'thuonghieu/oppo.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(16, 'Orienti', 'orienti', 'thuonghieu/ORIENTl.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(17, 'Q&Q', 'qq', 'thuonghieu/Q&Q.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(18, 'Rolex', 'rolex', 'thuonghieu/rolex.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(19, 'SamSung', 'samsung', 'thuonghieu/samsung.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(20, 'SKMEIl', 'skmeil', 'thuonghieu/SKMEIl.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(21, 'Smile-Kid', 'smile-kid', 'thuonghieu/Smile-Kid.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(22, 'Titani', 'titani', 'thuonghieu/TITANl.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(23, 'TommyHilfiger', 'tommyhilfiger', 'thuonghieu/TommyHilfiger.jpg', '2022-01-12 02:57:51', '2022-01-12 02:57:51'),
(24, 'Xiaomi', 'xiaomi', 'thuonghieu/xiaomi.png', '2022-01-12 02:57:51', '2022-01-12 02:57:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE IF NOT EXISTS `tinhtrang` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tinhtrang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrang`
--

INSERT INTO `tinhtrang` (`id`, `tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Mới', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(2, 'Đang xác nhận / Đã xác nhận', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(3, 'Đã hủy', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(4, 'Đang đóng gói sản phẩm', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(5, 'Chờ đi nhận / Đang đi nhận / Đã nhận hàng ', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(6, 'Đang chuyển', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(7, 'Thất bại', '2022-01-12 01:24:12', '2022-01-12 01:24:12'),
(8, 'Đang chuyển hoàn', '2022-01-12 01:24:13', '2022-01-12 01:24:13'),
(9, 'Đã chuyển hoàn ', '2022-01-12 01:24:13', '2022-01-12 01:24:13'),
(10, 'Thành công', '2022-01-12 01:24:13', '2022-01-12 01:24:13');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_chude_id_foreign` FOREIGN KEY (`chude_id`) REFERENCES `chude` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `baiviet_nguoidung_id_foreign` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_baiviet_id_foreign` FOREIGN KEY (`baiviet_id`) REFERENCES `baiviet` (`id`),
  ADD CONSTRAINT `binhluan_nguoidung_id_foreign` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_nguoidung_id_foreign` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `donhang_tinhtrang_id_foreign` FOREIGN KEY (`tinhtrang_id`) REFERENCES `tinhtrang` (`id`);

--
-- Các ràng buộc cho bảng `donhang_chitiet`
--
ALTER TABLE `donhang_chitiet`
  ADD CONSTRAINT `donhang_chitiet_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `donhang_chitiet_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_chatlieu_id_foreign` FOREIGN KEY (`chatlieu_id`) REFERENCES `chatlieu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_loai_id_foreign` FOREIGN KEY (`loai_id`) REFERENCES `loai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_thuonghieu_id_foreign` FOREIGN KEY (`thuonghieu_id`) REFERENCES `thuonghieu` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

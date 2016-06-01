-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2016 at 06:32 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_doanphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BOOK_ID` int(10) UNSIGNED NOT NULL,
  `BOOK_NO` int(11) NOT NULL,
  `BOOK_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_DESCRIPTION` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  `BOOK_IMAGE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_IMAGE_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_IMAGE_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_IMAGE_3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_COST` int(11) NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BOOK_ID`, `BOOK_NO`, `BOOK_NAME`, `BOOK_DESCRIPTION`, `STATUS`, `CATEGORY_ID`, `BOOK_IMAGE`, `BOOK_IMAGE_1`, `BOOK_IMAGE_2`, `BOOK_IMAGE_3`, `CURRENCY`, `BOOK_COST`, `DATE`) VALUES
(2, 1, 'Bác học nhí', ' Kiến tuy bé nhỏ vậy mà lại thắng trong cuộc chiến với những chú voi to lớn khổng lồ. Từ đó, các chú voi luôn rất sợ kiến. Kiến có mẹo gì vậy? Các bé cũng xem truyện để biết nhé!\r\n', 'Hot', 1, 'bachocnhi.jpg', '', '', '', 'vnđ', 15000, '2016-05-24 00:00:00'),
(3, 2, 'Bài ca của cây', 'Câu chuyện kể về cuộc sống của một cậu bé trong rừng !', 'normal', 1, 'baicacuacay.jpg', '', '', '', 'vnđ', 23000, '2016-05-24 00:00:00'),
(4, 3, 'Cú có đôi mắt to tròn', 'Ngày nay, ta thấy những con cú đều có đôi mắt rất to và tròn. Bé có tin không, ngày xửa ngày xưa, chỉ vì một cuộc thách đố, mà đôi mắt loài cú trở nên to tròn như vậy đấy. Cuộc thách đố đó thế nào? Các bé cũng xem truyện để biết nhé!\r\n', 'normal', 1, 'cucon.jpg', '', '', '', 'vnđ', 10000, '2016-05-18 00:00:00'),
(5, 4, 'Chim công đảm đang', 'Rất nhiều các bạn nhỏ đều trả qua thời kỳ rất ưa đỏm dáng, đây chính là bước khởi đầu hình thành nên quan niệm thẩm mỹ. Các bậc cha mẹ không nên lo lắng, mà phải quan tâm, hướng dẫn cho trẻ nhỏ đi đúng hướng! ', 'normal', 1, 'chimcong.jpg', '', '', '', 'vnđ', 20000, '2016-05-24 00:00:00'),
(6, 5, 'Tô màu giáng sinh', '', 'normal', 1, 'tomaugiagsinh.jpg', '', '', '', 'vnđ', 30000, '2016-05-24 00:00:00'),
(7, 6, 'Thơ hay cho bé mầm non', 'Tuyển tập những bài thơ giành cho các bé mầm non.', 'normal', 1, 'thohay.jpg', '', '', '', 'vnđ', 50000, '2016-05-24 00:00:00'),
(8, 7, 'Voi sợ kiến', ' Kiến tuy bé nhỏ vậy mà lại thắng trong cuộc chiến với những chú voi to lớn khổng lồ. Từ đó, các chú voi luôn rất sợ kiến. Kiến có mẹo gì vậy? Các bé cũng xem truyện để biết nhé!', 'normal', 1, 'voisokien.jpg', '', '', '', 'vnđ', 23000, '2016-05-24 00:00:00'),
(9, 8, 'Sư tử con và Hổ con', 'Trễn thế giới này có cha mẹ nào không muốn con mình trở nên tài giỏi? Hổ mẹ trong câu chuyện này cũng luôn mong Hổ con thành tài... \r\n', 'normal', 1, 'sutu.jpg', '', '', '', 'vnđ', 12000, '2016-05-24 00:00:00'),
(10, 9, 'Cây tre trăm đốt', 'Ngày xưa có một chàng trai hiền lành, khỏe mạnh (tên là Khoai) đi cày thuê cho vợ chồng ông phú hộ. Hai người này có hứa: "Con chịu khó làm lụng giúp ta, ba năm nữa ta sẽ gả con gái ta cho". Tin vào lời hứa, anh ra sức làm việc không ngại khó nhọc. Nhưng ba năm sau, khi mà ông nhà giàu đã có mọi thứ của cải, ông bèn trở mặt, ông đưa ra một điều kiện là phải tìm được một cây tre trăm đốt để làm nhà cưới vợ thì ông mới gả con gái cho', 'normal', 2, 'caytre.jpg', '', '', '', 'vnđ', 32000, '2016-05-10 00:00:00'),
(11, 10, 'Sự tích chú cuội và cung trăng', 'Mời các bạn theo dõi cốt truyện !', 'normal', 2, 'chucuoi.jpg', '', '', '', 'vnđ', 17000, '2016-05-26 00:00:00'),
(12, 11, 'Sự tích dưa hấu', 'Mời Các Bạn Đón Đọc Bộ Truyện Mới Nha !', 'normal', 2, 'duahau.jpg', '', '', '', 'vnđ', 40000, '2016-05-06 00:00:00'),
(13, 13, 'Sự tích sọ dừa', 'Hãy Đón Xem Bộ Truyện Mới Nha Các Bạn', 'normal', 2, 'sodua.jpg', '', '', '', 'vnđ', 26000, '2016-05-12 00:00:00'),
(14, 14, 'Tấm cám', 'Tấm Cám là một câu chuyện cổ tích Việt Nam thuộc thể loại truyện cổ tích thần kì, phản ánh những mâu thuẫn trong gia đình, cuộc đấu tranh giữa cái thiện và cái ác, cùng ước mơ cái thiện thắng cái ác của người Việt Nam.', 'normal', 2, 'tamcam.jpg', '', '', '', 'vnđ', 27000, '2016-05-26 00:00:00'),
(15, 15, 'Thạch sanh', 'Thạch Sanh mồ côi sớm, làm nghề đốn củi, sống một mình trong một túp lều dưới gốc đa. Có một người làm nghề nấu rượu tên là Lý Thông đến kết nghĩa anh em với Thạch Sanh. Trong vùng có một con Chằn tinh (hay Trăn tinh) thường bắt người ăn thịt, nên dân lập miếu thờ và hàng năm phải nộp cho nó một mạng người, mới được yên ổn làm ăn.', 'normal', 2, 'thachsanh.jpg', '', '', '', 'vnđ', 29000, '2016-05-18 00:00:00'),
(16, 16, 'Văn học Việt Nam sau năm 1975', 'VĂN HỌC VIỆT NAM 1975', 'normal', 3, '1975.jpg', '', '', '', 'vnđ', 115000, '2016-05-19 00:00:00'),
(17, 17, 'Mùa lá rụng trong vườn', 'TUYỂN TẬP MA VĂN KHÁNG', 'normal', 3, 'muala.jpg', '', '', '', 'vnđ', 215000, '2016-05-11 00:00:00'),
(19, 19, 'Tuyển tập văn học dân gian VN', 'Dân Gian Việt Nam', 'normal', 3, 'tuyentap.jpg', '', '', '', 'vnđ', 215000, '2016-05-25 00:00:00'),
(20, 5, 'Văn học Miền Nam Lục Tỉnh', '6 Tỉnh Miền Nam', 'Hot', 3, 'vanhoc.jpg', '', '', '', 'vnđ', 216000, '2016-05-25 00:00:00'),
(21, 6, 'Văn học dân gian', 'Dân Gian Việt Nam', 'normal', 3, 'vhdangian.jpg', '', '', '', 'vnđ', 275000, '2016-05-11 00:00:00'),
(25, 4, 'Quản Trị Tài Chính doanh nghiệp', 'SÁCH KINH TẾ', 'normal', 16, 'taichinh.jpg', '', '', '', 'vnđ', 326000, '2016-05-11 00:00:00'),
(28, 1, 'Marketing căn bản', 'Toàn bộ về marketing căn bản\r\n', 'normal', 6, 'canban.jpg', '', '', '', 'vnđ', 97600, '2016-05-26 00:00:00'),
(29, 2, 'Marketing Công Nghiệp', 'SÁCH KINH TẾ', 'normal', 6, 'congnghiep.jpg', '', '', '', 'vnđ', 320000, '2016-05-25 00:00:00'),
(30, 3, 'Chiến lược Marketing', 'SÁCH KINH TẾ', 'normal', 6, 'chienluoc.jpg', '', '', '', 'vnđ', 250000, '2016-05-11 00:00:00'),
(31, 4, 'Marketing qua Email', 'SÁCH KINH TẾ', 'normal', 6, 'mail.jpg', '', '', '', 'vnđ', 230000, '2016-05-25 00:00:00'),
(32, 5, 'Quản trị Marketing', 'SÁCH KINH TẾ', 'normal', 6, 'quantri.jpg', '', '', '', 'vnđ', 23000, '2016-05-27 00:00:00'),
(34, 7, 'Nghề làm phi', 'Xuyên không thành một phi tần nho nhỏ đã mất thánh sủng, Trang Lạc Yên tâm tâm niệm niệm sẽ hoàn thành tốt nghề nghiệp mới của mình – nghề làm phi – một nghề nghiệp vô cùng rủi ro, không thể từ chức, một là làm tốt, hai là chết. Một nghề nghiệp luôn phải phấn đấu vươn lên không ngừng, nhưng lại không được phép để con tim mình rung động. Bởi lỡ rung động rồi, là vạn kiếp không thể quay đầu…\r\nSuy cho cùng, đã là nữ tử thì sẽ có một ngày già đi, lấy sắc tranh tình nhất định sẽ phải nhận kết cục sắc suy tình bạc, bởi Đế vương đa tình, hồng nhan chóng lụi, vậy thì nàng sẽ dùng lí trí này để thuần phục trái tim Đế vương.\r\nVẫn biết vận mệnh vô thường, Đế vương vô tình, nhưng Trang Lạc Yên nàng không sợ, bởi, trái tim trong lồng ngực nàng, mãi mãi chỉ thuộc về nàng mà thôi!', 'New', 18, 'nghelamphi.jpg', '', '', '', 'vnđ', 89000, '2016-05-30 17:00:00'),
(35, 8, 'Công chúa mặt trăng', 'Nếu bạn đã yêu Cinder - một câu chuyện Cinderella được hiện đại hóa và được "nâng cấp" bằng yếu tố khoa học viễn tưởng, thì bạn chắc chắn sẽ vô cùng thích thú với phần tiếp theo: Scarlet – một câu chuyện cũng độc đáo, cũng cuốn hút, và cũng khiến tim bạn đập nhanh như vậy.\r\nCinder, cô thợ máy cyborg tuổi teen, đang ở trong tù và mới biết rằng mình chính là Công chúa Mặt Trăng Selene - người mà hầu hết mọi người đều tin rằng đã chế', 'New', 18, 'scarlet.jpg', '', '', '', 'vnđ', 89000, '2016-05-30 16:00:00'),
(36, 9, 'Công chúa Winter', 'Công chúa Winter được những người dân Mặt Trăng ngưỡng mộ vì dáng vẻ yêu kiều và lòng nhân ái của mình, và bất chấp những vết sẹo xấu xí trên mặt, vẻ đẹp của cô luôn được đánh giá là còn kiều diễm hơn cả bà mẹ kế, Nữ hoàng Levana. \r\nWinter căm ghét bà mẹ kế của mình và cô hiểu rằng Nữ hoàng Levana sẽ không bao giờ ủng hộ tình cảm của cô dành cho người bạn thời thơ ấu - chàng cận vệ điển trai Jacin. Nhưng Winter không yếu đuối như Nữ hoàng Levana tưởng và cô vẫn luôn âm thầm chống đối bà ta trong nhiều năm. Cùng với cô gái cyborg - Cinder và nhóm bạn của cô, Winter hy vọng có thể làm nên một cuộc cách mạng và chấm dứt cuộc chiến tranh đã kéo dài trong suốt nhiều thập kỷ.\r\nLiệu Cinder (Lọ Lem), Scarlet (Khăn đỏ), Cress (Tóc mây) và Winter (Bạch tuyết) có thể đánh bại Nữ hoàng Levana và sống hạnh phúc mãi mãi bên người mình yêu hay không? Hãy đón đọc tập 4.1 và tập 4.2 - Winter (Bạch Tuyết), cũng là hai tập cuối cùng của bộ truyện Công chúa Mặt Trăng. \r\n', 'New', 18, 'winter.jpg', '', '', '', 'vnđ', 101000, '2016-05-30 16:00:00'),
(37, 10, 'Công chúa mặt trăng (Tóc mây)', 'Hy vọng lớn nhất của Cinder và những người đồng hành chính là Cress - người đã bị kẹt trong một vệ tinh từ khi còn nhỏ, và ở bên cạnh cô chỉ là những màn hình điện tử. Nhưng chừng đó thời gian ở giữa những màn hình điện tử lại khiến cho Cress trở thành một hacker siêu hạng. Thật không may, cô mới nhận được lệnh từ Levana là phải tìm cho ra tung tích của Cinder. Cress, Scarlet và Cinder có thể không dự định cứu cả thế giới, nhưng họ lại có thể là những người duy nhất có thể làm việc đó…', 'New', 18, 'cress.jpg', '', '', '', 'vnđ', 78000, '2016-05-30 14:00:00'),
(38, 11, 'Into The Woods', 'Into The Wood: Thế giới huyền ảo của những điều ước và lời nguyền', 'Hot', 18, 'litter.jpg', '', '', '', 'vnđ', 90000, '2016-05-26 00:00:00'),
(39, 10, 'Thỏ Bi Li', 'Câu truyện kể về cuộc phiêu lưu của chú Thỏ trên đường đi tìm bạn thân của mình.', 'New', 1, 'thobili.jpg', '', '', '', 'vnđ', 15000, '2016-05-26 00:00:00'),
(40, 11, 'Truyền thuyết về vua mặt trời', 'Mỗi tập truyện là một cuộc phưu lưu khám phá những chân trời mới lạ. Hãy để trí tưởng tượng của bạn bay bổng cùng nhóm bạn Doraemon, Nobita, Shizuka, Jaian, Suneo đến các vùng đất xa xôi, kì bí và cảm nhận những khoảnh khắc tình bạn tươi đẹp của cuộc đời!\r\n', 'Hot', 1, 'doremon.jpg', '', '', '', 'vnđ', 23000, '2016-05-26 00:00:00'),
(44, 10, '100 Ý Tưởng Bán Hàng', '', 'New', 16, '100.jpg', '', '', '', 'vnđ', 203000, '2016-05-31 19:00:00'),
(45, 7, 'Khách Hàng Là Số 1', 'Khách Hàng Là Số 1 - Bí Quyết Tạo Cơn Sốt Bán Hàng\r\n    Dịch vụ khách hàng luôn là một trong những vấn đề cấp thiết đối với các giám đốc kinh doanh, cũng như những người hoạt động trong lĩnh vực dịch vụ và bán hàng, đặc biệt là ở cấp độ bán lẻ.\r\n\r\n    Trong cuốn Khách hàng là số 1, tác giả đã đề cập đến những điểm cơ bản trong dịch vụ khách hàng như xây dựng một tổ chức lấy con người làm trung tâm, lấy hiệu quả làm động lực, và luôn đặt quyền lợi của khách hàng lên cao nhất. Với những quan sát tinh tường dựa trên kinh nghiệm thực tiễn của Yum!, công ty nhà hàng lớn nhất thế giới, cuốn sách đã tập trung vào bốn bước quyết định:\r\n\r\n    Hướng đến mục tiêu đúng: Lợi nhuận sẽ tăng trưởng khi bạn biết quan tâm khách hàng và tạo ra cho nhân viên môi trường làm việc có động lực.\r\n\r\n    Đối xử với khách hàng đúng cách: Hãy xác định bạn mong muốn đem lại cho khách hàng những trải nghiệm gì khi họ tương tác với từng bộ phận trong công ty.\r\n\r\n    Đối xử với nhân viên đúng cách: Sử dụng các chiến lược thông minh, từ việc tuyển chọn, huấn luyện và phát triển nhân viên, cho đến quản lý hiệu quả công việc và tạo nên một văn hóa ghi nhận thành tích.\r\n\r\n    Xây dựng phương thức lãnh đạo đúng: Bạn không thể tự mình làm tất cả. Hãy để nhân viên dùng trí tuệ của họ tham gia vào công việc giúp bạn, và trách nhiệm của bạn là luôn hỗ trợ họ.Khi làm theo những bước trên, bạn hoàn toàn có thể xây dựng một đội ngũ nhân viên tâm huyết, gắn bó để đóng góp vào thành công chung của công ty.\r\n', 'New', 16, 'so1.jpg', '', '', '', 'vnđ', 62000, '2016-05-26 00:00:00'),
(46, 8, 'Bán Hàng Bậc Cao', 'Triết lý chứa đựng trong cuốn sách Nghệ Thuật Bán Hàng Bậc Cao thật đơn giản: “bạn có thể có được những tất cả mọi thứ trong cuộc sống nếu bạn biết giúp người khác đạt được điều họ muốn”, thậm chí còn đúng đắn và cần thiết hơn trong cuộc sống hiện nay so với thời kỳ khi cuốn Nghệ Thuật Bán Hàng Bậc Cao được xuất bản lần đầu. Mục tiêu cuả một thương vụ là đảm bảo khách hàng nhận được giá trị tương xứng, nhưng nếu bạn mang đến cho khách hàng những giá trị còn cao hơn giá trị mà lẽ ra họ sẽ nhận được thì không những bạn đã có một thương vụ thành công mà bạn còn có thêm một khách hàng sẵn lòng giúp bạn có thêm nhiều khách hàng khác nữa.\r\n\r\nTrong cuốn sách kinh doanh này, bạn sẽ có cơ hội làm quen với nhiều người bán hàng sẵn sàng từ bỏ một thương vụ bởi họ biết rằng thương vụ đó không mang lại lợi ích tốt nhất cho khách hàng của mình. Khi đó, bán hàng trở nên giống như thi đấu thể thao, nhà vô địch quần vợt phải biết đánh bóng sao cho anh ta có thể đánh cú tiếp theo hiệu quả hơn, hay các tay gôn kỳ cựu cũng vậy. Nếu nhân viên bán hàng không quan tâm đến việc xây dựng và duy trì mối quan hệ tốt đẹp với khách hàng mà chỉ chăm chăm kiếm tiền từ túi người khác thì đảm bảo rằng họ sẽ nhanh chóng bị đào thải khỏi nghề này.', 'normal', 16, 'banhang.jpg', '', '', '', 'vnđ', 78000, '2016-05-26 00:00:00'),
(47, 9, 'Nghệ thuật chinh phục khách hàng', ' Rất nhiều giám đốc dịch vụ khách hàng sau khi đọc xong quyển sách này đã biến công ty của mình thành một tổ chức “thân thiện với lời phàn nàn” và đã trở thành một trong những công ty có khả năng cung cấp dịch vụ khách hàng tuyệt hảo. Đây không phải là một con đường dễ dàng, và cũng không xảy ra chỉ sau một đêm mà nó là cả một quá trình diễn ra từng bước một. Việc đọc cuốn sách này là một trong những bước đi đầu tiên tốt nhất mà bạn có thể thực hiện ngay.\r\n\r\n \r\n\r\nTheo các tác giả, để sản phẩm - dịch vụ của bạn luôn được khách hàng tin tưởng chọn lựa đầu tiên trong các sản phẩm cùng loại thì cách tốt nhất để đạt được mục tiêu này là xây dựng một văn hóa công ty lấy khách hàng làm trọng tâm. Khi doanh nghiệp xây dựng thành công nền văn hóa đó thì hầu hết những điều kiện cần thiết khác để cung cấp dịch vụ hoàn hảo cho khách hàng sẽ tự động xuất hiện.\r\n\r\n \r\n\r\n\r\nRất nhiều giám đốc dịch vụ khách hàng sau khi đọc xong quyển sách này đã biến công ty của mình thành một tổ chức “thân thiện với lời phàn nàn” và đã trở thành một trong những công ty có khả năng cung cấp dịch vụ khách hàng tuyệt hảo. Đây không phải là một con đường dễ dàng, và cũng không xảy ra chỉ sau một đêm mà nó là cả một quá trình diễn ra từng bước một. Việc đọc cuốn sách này là một trong những bước đi đầu tiên tốt nhất mà bạn có thể thực hiện ngay.', 'normal', 16, 'chinhphuc.jpg', '', '', '', 'vnđ', 72000, '2016-05-25 00:00:00'),
(48, 48, 'Quản trị học vui vẽ', '"Và khi đã đi làm rất lâu rồi, trải qua rất nhiều va chạm rồi, vượt qua rất nhiều khó khăn và giải quyết rất nhiều xung đột giữa các mối quan hệ rồi, thì rất nhiều khi bạn lại tiếp tục... rối.\r\n\r\nLý do là cuộc sống quá phức tạp và đa diện, còn các bài học từ sách vở lại quá giản đơn, cho dù bạn đã phải rất vất vả để vượt qua các bài thi không hề dễ chịu\r\n\r\nHơn thế nữa, cứ nhắc đến quản trị là tự dưng chúng ta thấy... nhức đầu, như một phản xạ có điều kiện. Cứ nhìn những người làm công tác quản lý loay hoay với công việc của họ mà thấy sợ, lúc nào cũng tất bật, lúc nào cũng cau có, lúc nào cũng sẵn sàng nổ tung. Lắm khi chúng ta băn khoăn, không lẽ cuộc đời lại vất vả đến thế sao?!"', 'New', 16, 'quantrihocvuive.jpg', '', '', '', 'VNĐ', 55200, '2016-05-30 16:10:15'),
(49, 49, 'Kế toán tài chính song ngữ Financial Accounting', 'Sách kế toán tài chính song ngữ Anh Việt Financial Accounting có sự so sánh kế toán từng tài khoản, báo cáo giữa VAS vời IFRS và các quy định cũ. Do vậy bạn đọc hiếu tốt hơn bàn chắt kế toán Việt Nam, có thế áp dụng IFRS cho các công ty nước ngoài. đặc biệt Financial Accounting 2015 so sánh TT 200/2014/TT-BTC với các quy định cũ, để dễ học và chuyến đổi nhanh. sách kế toán tài chính trần xuân năm 2015 Financial Accounting theo thông tư 200 bộ tài chính.\r\n  Sách kế toán tài chính Financial Accounting TT 2000/2014/TT-BTC mới nhất Trình bày các thực tế kể toán tốt nhất mà nó được áp dụng rộng rãi và hiệu quả tại các công ty đa quốc gia và các công ty thành công ở Việt Nam mà VAS chưa đề cập. Do vậy bạn đọc có thế áp dụng các thực tế kế toán tốt nhất mà luật pháp cho phép.', 'normal', 4, 'ketoansongngu.jpg', '', '', '', 'VNĐ', 750000, '2016-05-30 17:09:00'),
(50, 50, 'Tôi thấy hoa vàng trên cỏ xanh', 'Con Mận là con gái, nửa đêm tự nhiên chạy ra ngủ chung với tôi, chắc nó ngượng lắm. Mặc tôi huyên thuyên, nó không nói gì. Tôi tính ba hoa thêm vài câu nữa nhưng thấy nó ngó lơ chỗ khác, liền nín thinh.\r\n\r\nBữa đó, trước khi dỗ giấc tôi vẫn kịp nhìn thấy con Mận chèn cái gối ở giữa tôi và nó. Con Mận chèn cái gối ở giữa hai đứa ý là để làm rào chắn. Nó sợ nửa khuya ngủ quên, nó lăn qua phía tôi hoặc tôi lăn qua phía nó. Như vậy thì xấu hổ chết được!\r\n\r\nNhưng cái rào của con Mận chẳng chắn được gì. Sáng ra, tôi mở mắt thấy nó đang quàng tay ôm cả tôi lẫn chiếc gối. Nó vẫn còn ngủ, hơi thở êm đềm thổi phơ phất những sợi tóc vướng ngang gò má hồng hồng.\r\n\r\nTôi nhìn đôi mắt nhắm nghiền của nó, thấy vẫn còn vài giọt lệ chưa khô còn hoen trên má. Chắc hôm qua, nó khóc suốt đêm.....', 'normal', 3, 'hoavangcoxanh.jpg', 'biasach2.jpg', '', '', 'VNĐ', 82000, '2016-05-31 11:00:00'),
(51, 51, 'Con chó nhỏ mang giỏ hoa hồng', '“Con chó nhỏ mang giỏ hoa hồng” bao gồm 5 chương với 86 câu chuyện thú vị, hài hước về 5 chú chó thuộc 5 loài chó khác nhau. Các câu chuyện giữa các chú chó, giữa chúng với các thành viên trong nhà, với hàng xóm, khách đến nhà, khách qua đường tái hiện thế giới một cách sống động như cuộc sống của chính con người với đầy đủ tình bạn, tình yêu, đam mê, sợ hãi, ước mơ, có cả giận hờn, ghen tị…', 'normal', 3, 'chonho.jpg', '', '', '', 'vnđ', 80000, '2016-05-31 07:00:00'),
(52, 52, 'Chí Phèo', 'CHÍ PHÈO tập truyện ngắn tái hiện bức tranh chân thực nông thôn Việt Nam trước 1945, nghèo đói, xơ xác trên con đường phá sản, bần cùng, hết sức thê thảm, người nông dân bị đẩy vào con đường tha hóa, lưu manh hóa. Nam Cao không hề bôi nhọ người nông dân, trái lại nhà văn đi sâu vào nội tâm nhân vật để khẳng định nhân phẩm và bản chất lương thiện ngay cả khi bị vùi dập, cướp mất cà nhân hình, nhân tính của người nông dân, đồng thời kết án đanh thép cái xã hội tàn bạo đó trước 1945.', 'normal', 3, 'chipheo.jpg', '', '', '', 'VNĐ', 36000, '2016-05-31 13:00:00'),
(53, 53, 'Đời thừa', 'ĐỜI THỪA của Nam Cao xoay quanh cuộc sống người trí thức, với những tuyên ngôn để đời của nhà văn Nam Cao về văn chương, nghệ thuật.\r\n\r\nQua sáng tác của mình, Nam Cao thể hiện quan điểm nghệ thuật rằng, một tác phẩm văn học phải vượt lên trên tất cả các bờ cõi và giới hạn, phải là một tác phẩm chung cho cả loài người. “Nó phải chứa đựng được một cái gì lớn lao, mạnh mẽ, vừa đau đớn, lại vừa phấn khởi; ca tụng tình yêu, bác ái, công bằng” và "Văn chương không cần đến sự khéo tay, làm theo một cái khuôn mẫu. Văn chương chỉ dung nạp những người biết đào sâu, biết tìm tòi, khơi những nguồn chưa ai khơi và sáng tạo ra cái gì chưa có". Ông đòi hỏi nhà văn phải có lương tâm, có nhân cách xứng với nghề; và cho rằng sự cẩu thả trong văn chương chẳng những là bất lương mà còn là đê tiện. ', 'normal', 3, 'doithua.jpg', '', '', '', 'VNĐ', 27900, '2016-05-31 08:00:00'),
(54, 54, 'Tuyển tập Nao Cao', 'Nhà văn Nam Cao tên thật là Trần Hữu Trí, sinh năm 1917. Quê quán làng Đại Hoàng, phủ Lý Nhân, tỉnh Hà Nam. Năm 1951, ông tham gia đoàn công tác thuế nông nghiệp ở Khu 3, bị phục kích và hy sinh tại Hoàng Đan, Ninh Bình ngày 30.11.1951. ông là tác giả của nhiều tác phẩm, như: Đôi lứa xứng đôi, Nửa đêm, Đôi mắt, Sống mòn, Lão Hạc,...\r\n\r\nNhà văn Nguyễn Đình Thi đã viết về ông và tác phẩm của ông như sau: “Trong những tâm hồn chất phác, bị nghèo khổ làm cho mụ mị cằn cỗi, ngay trong một con người u mê cục súc như Chí Phèo, Nam Cao tìm ra những rung động trong sáng của tình yêu, của niềm khát khao được sống cho ra người, những rung động ấy đột ngột hé lên từng lúc rồi lại bị đời sống vùi dập. Đó là chất thơ quý báu nhất, cảm động nhất trong các truyện tả thực của anh. Đó cũng là cái làm chúng ta càng cảm thấy thấm thía sự tàn bạo của chế độ cũ.\r\n\r\nNam Cao chưa hiểu sức mạnh bị cùm trói của những con người cùng khổ nhưng chính những ánh ý thức đó làm cho truyện của anh không đen tối, tuyệt vọng và vượt qua cả ý định của người viết mà hứa hẹn một sự thay đổi tương lai như một ánh bình minh còn xa mờ”.   ', 'normal', 3, 'tuyetapnamcao.jpg', '', '', '', 'vnđ', 104000, '2016-05-31 11:00:00'),
(55, 55, 'Nam Cao Sự nghiệp và chân dung', 'Cuốn sách tập hợp các công trình nghiên cứu của GS. Phong Lê và đồng nghiệp về cuộc đời và sự nghiệp nhà văn Nam Cao. Các bài viết tập trung đi sâu vào việc tìm tòi, phân tích và gợi mở những cái hay, cái đẹp và sự riêng biệt nổi bật lên trong các tác phẩm của Nam Cao, đặc biệt là sự thành công ở thể loại truyện ngắn. Mỗi bài viết là một nét vẽ, tuy rất riêng nhưng vẫn hòa điệu tạo nên bức tranh toàn diện và sinh động nhất về chân dung một nhà văn lớn. Cuốn sách còn có danh mục cuộc đời và các tác phẩm trong suốt sự nghiệp Nam Cao, để những người nghiên cứu, yêu mến tìm hiểu dễ dàng tra cứu và nhận biết một cách chính xác các tư liệu về tác giả, tác phẩm.', 'normal', 3, 'namcao.jpg', '', '', '', 'VNĐ', 80000, '2016-05-30 07:00:00'),
(56, 56, 'Dế mèn phiêu lưu ký', 'Dế mèn phiêu lưu ký là truyện dài của nhà văn Tô Hoài kể về cuộc phiêu lưu của chú Dế Mèn cùng các bạn bè. Trên đường đi, họ đã gặp phải nhiều khó khăn nguy hiểm, nhưng những gian nan đã cho họ nhiều bài học quý giá, và thắt chặt tình bạn của họ. Ngoài việc khuyến khích những người trẻ tuổi dám mơ ước, dám hành động, truyện còn là khát vọng hoà bình giữa các loài, là mong ước anh em bốn bể có thể cùng chung sống hoà thuận, để thế giới không còn cảnh xung đột, thù ghét.\r\n\r\nTruyện đã được dịch ra nhiều thứ tiếng khác nhau trên thế giới. Phiên bản tiếng Anh này do dịch giả Đặng Thế Bính chuyển ngữ, minh họa của họa sĩ Tạ Huy Long...', 'normal', 3, 'demen.jpg', '', '', '', 'vnđ', 120000, '2016-05-31 08:00:00'),
(57, 57, 'Quê nhà', 'Quê Nhà là bức tranh tái hiện lại cuộc chiến đấu anh dũng của những anh hùng vô danh, những người mà trước đó tay chỉ quen với việc cấy việc cày việc nhà việc cửa nay lại dũng cảm đứng lên giương cờ nghĩa trong những năm đầu khi thực dân Pháp xâm lược.\r\n\r\nDường như với bất kỳ tác phẩm nào của mình đã xuất bản, nhà văn cũng luôn cẩn trọng đọc lại và chỉnh sửa những chi tiết chưa hài lòng. Như chính lời con trai của Cụ, nhà báo Nguyễn Phương Vũ, chia sẻ: “Đã từ lâu từ khi cầm bút bố tôi là người cẩn thận và luôn có trách nhiệm với câu chữ nên mỗi bản in dù là in lại nhưng ông luôn đọc, cắt gọt, chỉnh sửa, “uốn nắn”, tỉ mẩn như người dệt vải. Khi ông trao lại cho tôi để xử lý nhập liệu với một bản thảo chi chít màu mực, chữ, từ, câu mà ông thêm bớt đan xen ngang dọc. Cha tôi là vậy, sự cẩn trọng, kỹ lưỡng trong nghề viết như mối nợ tình với ông.”..', 'normal', 3, 'quenha.jpg', '', '', '', 'VNĐ', 103000, '2016-05-31 15:00:00'),
(58, 58, 'Đảo hoang', 'Đảo Hoang: Ngược dòng thời gian, tác giả đưa ta về hoang đảo, nơi gia đình Mai Am Tiêm bị đày ải vì có ý coi thường ơn vua. Cuộc sống khó khăn nơi đây đã không khuất phục được những người con người khoáng đạt, tự do. Họ đã khai phá, tạo dựng nên những bãi bờ trù phú và đã tìm được một loại quả lạ, vỏ xanh, ruột đỏ, ngon ngọt mà ngày nay gọi là Dưa Hấu.\r\n\r\nÝ chí của gia đình Mai An Tiêm là ý chí của những con người gan góc, dũng cảm trước thiên nhiên khốc liệt.\r\n\r\nBằng cảm xúc lãng mạn và bút pháp tài nghệ, nhà văn Tô Hoài đã thể hiện rất sinh động cuộc sống, tình cảm của con người trên Đảo Hoang....\r\n', 'normal', 3, 'daohoang.jpg', '', '', '', 'vnđ', 45000, '2016-05-31 08:00:00'),
(59, 59, 'Quê người', 'Quê Người là cảnh quê hương bị chiếm đóng. Những con người hiền lành chất phác của vùng quê ấy phải sống trong cảnh khốn đốn khi cái nghèo đói bủa vây.\r\n\r\nDường như với bất kỳ tác phẩm nào của mình đã xuất bản, nhà văn cũng luôn cẩn trọng đọc lại và chỉnh sửa những chi tiết chưa hài lòng. Như chính lời con trai của Cụ, nhà báo Nguyễn Phương Vũ, chia sẻ: “Đã từ lâu từ khi cầm bút bố tôi là người cẩn thận và luôn có trách nhiệm với câu chữ nên mỗi bản in dù là in lại nhưng ông luôn đọc, cắt gọt, chỉnh sửa, “uốn nắn”, tỉ mẩn như người dệt vải. Khi ông trao lại cho tôi để xử lý nhập liệu với một bản thảo chi chít màu mực, chữ, từ, câu mà ông thêm bớt đan xen ngang dọc. Cha tôi là vậy, sự cẩn trọng, kỹ lưỡng trong nghề viết như mối nợ tình với ông.”..', 'normal', 3, 'quenguoi.jpg', '', '', '', 'VNĐ', 74000, '2016-05-31 14:00:00'),
(60, 60, 'Chiều chiều', 'Chiều chiều là câu chuyện kể ôn lại kỷ niệm của một con người đã đi dọc chiều dài lịch sử. Tô Hoài đưa chúng ta về một làng quê Bắc bộ với những câu chuyện từ “cải cách ruộng đất” rồi “sửa sai”, từ “thời bao cấp”, “làm hợp tác xã” đến “đổi mới sang kinh tế thị trường”… Cả một thời kỳ lịch sử đầy biến động hiện lên chân thực với bao số phận, bao cảm xúc buồn vui lẫn những điều oái ăm, ngang trái….\r\n\r\nĐọc Chiều chiều, ta thấy Tô Hoài như chính lão Ngải kia - ngày ngày vẫn ngồi bên bụi tre lép, bên ấm nước chè vò, mắt nhìn xa xăm, nhớ chuyện cũ, người xưa mặc thế thái nhân tình đổi thay…', 'normal', 3, 'chieuchieu.jpg', '', '', '', 'VNĐ', 103000, '2016-05-31 13:00:00'),
(61, 61, 'Vợ nhặt', 'Tập truyện ngắn “Vợ nhặt” tập hợp những truyện ngắn đặc sắc nhất của Kim Lân – một cây bút truyện ngắn vững vàng, viết về cuộc sống và con người ở nông thôn bằng tình cảm, tâm hồn của một người vốn là con đẻ của đồng ruộng...', 'normal', 3, 'vonhat.jpg', '', '', '', 'VNĐ', 45000, '2016-05-31 11:00:00'),
(62, 62, 'Tắt đèn', 'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố (tiểu thuyết, in trên báo Việt nữ năm 1937). Đây là một tác phẩm văn học hiện thực phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ 20 dưới ách đô hộ của thực dân Pháp. Tác phẩm xoanh quanh nhân vật chính là chị Dậu và gia đình – một điển hình của cuộc sống bần cùng hóa do sưu cao thuế nặng mà chế độ thực dân áp đặt lên xã hội Việt Nam. Tác phẩm này đã vạch trần bộ mặt tàn ... ', 'normal', 3, 'tatden.jpg', '', '', '', 'vnđ', 36000, '2016-05-31 13:00:00'),
(63, 63, 'Lối thoát tử thần', ' Thomas và các bạn đã làm mọi cách để có thể tồn tại trong một thế giới bị tàn phá do sự biến đổi khí hậu, nhưng trước mắt chúng vẫn còn một nguy cơ lớn nhất: con người. Những con người mù quáng vì tham vọng, điên cuồng vì hận thù và mất hết nhân tình vì virus Nhật trùng. Khi niềm tin ở con người không còn, liệu Thomas có chấp nhận hi sinh bản thân vì sự tồn vong của nhân loại? Lối thoát nào đang chờ đợi bọn trẻ sau quá nhiều đau thương và mất mát? Câu trả lời thật không dễ dàng…', 'normal', 20, 'loithoat.jpg', '', '', '', 'VNĐ', 85500, '2016-05-31 09:00:00'),
(64, 64, 'Thế Giới Thực', '\r\n\r\n     Giun Đất, một nam sinh trung học tự kỷ, khi các phép tắc và khuôn khổ đã vượt ngưỡng chịu đựng, bèn gây ra một vụ sát hại rồi lững thững đi trốn. Nhờ pháp luật không công khai tên thật và diện mạo của tội phạm vị thành niên, Giun Đất có thể an toàn đến khi nó muốn. Nó đánh cắp xe đạp và điện thoại của cô bé hàng xóm, giở danh bạ gọi cho các số ưu tiên, từ đó làm quen với nhóm bạn thân của cô. Và nhóm này, gồm bốn nữ sinh trung học, bằng những cách khác nhau đã tương trợ cho cuộc đào tẩu của Giun Đất.\r\n\r\n    Thế giới thực miêu tả hai thế giới: thế giới hiện thực nơi các nhân vật phải sống, và thế giới thực thụ nơi các nhân vật muốn sống. Những bộ đồng phục trung học hiền lành, phẳng phiu là phông nền cho cơn nổi loạn đó, một sự khủng hoảng mắc kẹt giữa hai thế giới. Xuyên qua sự rắn đặc của bóng tối bao trùm, tác phẩm, xét đến cùng, còn là một cuộc giải phẫu về hậu quả. Của hành động. Của cả không hành động...', 'normal', 20, 'thegioithuc.jpg', '', '', '', 'vnđ', 57600, '2016-05-31 09:00:00'),
(65, 65, 'Bóng ma ký ức', 'Libby Day chỉ mới 7 tuổi khi mẹ và hai chị gái bị sát hại đẫm máu trong “Cuộc hiến tế của quỷ Sa-tăng” tại Kinnakee, Kansas. Cô đã may mắn sống sót và trở nên nổi tiếng vì đã làm chứng chống lại người anh trai 15 tuổi, khẳng định Ben Day là kẻ xuống tay giết người.\r\n\r\nHai mươi lăm năm sau, khi câu lạc bộ Kill − một tổ chức xã hội ngầm bị ám ảnh bởi những vụ phạm tội khét tiếng – liên hệ được với Libby và dò hỏi cô những chi tiết của vụ án, hy vọng có được những chứng cứ chứng minh Ben vô tội. Libby đã ấp ủ những kế hoạch biến quá khứ bi thảm của gia đình cô thành một món hời để trang trải cho cuộc sống túng thiếu quanh năm của mình.\r\n\r\nCô lần tìm lại những người có liên quan đến vụ việc đêm hôm ấy, rồi thuật lại những gì tìm hiểu được với câu lạc bộ để kiếm về những khoản tiền lớn. Cuộc điều tra đã đưa Libby đi tới nhiều nơi từ những câu lạc bộ thoát y tồi tàn đến thành phố du lịch lỗi thời Oklahoma, gặp nhiều nhân vật đã bao năm nay cô không một phút giây nghĩ đến, tạo nên những câu chuyện đan xen các tình tiết giữa quá khứ, hiện tại.\r\n\r\nVà sự thật không thể tưởng tượng nổi đã dần hé lộ… Libby thấy mình quay trở về từ nơi cô xuất phát hai mươi lăm năm trước – trong cuộc trốn chạy khỏi kẻ giết người.', 'normal', 20, 'bongmakyuc.jpg', '', '', '', 'VNĐ', 111200, '2016-05-31 12:00:00'),
(66, 66, 'Cái Chết Của Cô Ca Sĩ Trẻ', '\r\n  Sách nằm trong loạt truyện trinh thám với nhiều tình tiết ly kỳ hấp dẫn của tác giả Nguyễn Thanh Hoàng, đã được chuyển thể thành phim Cảnh sát hình sự do VFC sản xuất.\r\n    Thông qua từng trang viết, người đọc sẽ gặp hết bất ngờ nầy đến bất ngờ khác, với những chuyên án tưởng chừng như đi vào ngõ cụt nhưng cuối cùng đã được khám phá nhờ sự suy luận sáng suốt của những người phá án.\r\n\r\n    Tập truyện sẽ mang đến cho người đọc những giây phút giải trí thật thú vị, cũng như giúp người đọc hiểu rõ hơn về công việc của những người công an hình sự, ngày đêm âm thầm vất vả bảo vệ sự an vui cho toàn xã hội. ', '', 20, 'caichetcasi.jpg', '', '', '', 'VNĐ', 19800, '2016-05-31 14:00:00'),
(67, 67, 'Bạch dạ hành', 'Kosuke, chủ một tiệm cầm đồ bị sát hại tại một ngôi nhà chưa hoàn công, một triệu yên mang theo người cũng bị cướp mất.\r\n\r\nSau đó một tháng, nghi can Fumiyo được cho rằng có quan hệ tình ái với nạn nhân và đã sát hại ông để cướp một triệu yên, cũng chết tại nhà riêng vì ngộ độc khí ga. Vụ án mạng ông chủ tiệm cầm đồ rơi vào bế tắc và bị bỏ xó.\r\n\r\nNhưng với hai đứa trẻ mười một tuổi, con trai nạn nhân và con gái nghi can, vụ án mạng năm ấy chưa bao giờ kết thúc. Sinh tồn và trưởng thành dưới bóng đen cái chết của bố mẹ, cho đến cuối đời, Ryoji vẫn luôn khao khát được một lần đi dưới ánh mặt trời, còn Yukiho cứ ra sức vẫy vùng rồi mãi mãi chìm vào đêm trắng.', 'normal', 20, 'bachdahanh.jpg', '', '', '', 'vnđ', 110400, '2016-05-31 09:00:00'),
(68, 68, 'Gulliver Du Ký', 'Chắc rằng chưa ai có những cuộc phiêu lưu kỳ thú như chàng bác sĩ - thuỷ thủ Guliver. Gặp bão, giạt vào xứ sở tí hon, rơi vào đất nước khổng lồ, lang thang trên đảo bác học, chia sẻ cuộc sống với những người - ngựa...mỗi trang viết đều đầy ắp sự kiện và yếu tố bất ngờ. Gulliver du ký đã được dịch ra hàng trăm thứ tiếng, được giới thiệu bằng sách, phim, bằng phim, bằng các đồ chơi lưu niệm... mấy trăm năm nay vẫn được hàng triệu triệu bạn đọc đón chào....', 'normal', 19, 'guliger.jpg', '', '', '', 'VNĐ', 71200, '2016-05-31 08:00:00'),
(69, 69, 'Frankenstein', '\r\n\r\n     Sau nhiều năm miệt mài nghiên cứu, anh đã nhào nặn ra một sự sống từ những vật liệu "sơ cấp". Một sinh vật khủng khiếp được thai nghén từ những phần khác nhau của xác chết vào một đêm kinh hoàng. Sản phẩm của Frankenstein! Một con quái vật! Gớm ghiếc, chưa hoàn thiện nhưng được trang bị sức mạnh siêu phàm và ý thức về nỗi cô đơn của mình. Từ thân phận lẽ ra là nô lệ, hắn trở thành ông chủ, quay lại trả thù chính người đã tạo ra mình. Hắn cần một sinh vật giống cái giống mình để cùng chung sống và trao đổi những tình cảm cần thiết cho sự tồn tại. Đối với Frankenstein, địa ngục mới chỉ bắt đầu....\r\n\r\n', 'normal', 19, 'frankenstein.jpg', '', '', '', 'vnđ', 60800, '2016-05-31 10:00:00'),
(70, 70, 'Cõi Âm Lạnh Lẽo', '“Lực không biết nên làm gì, muốn kêu cứu cũng không có sức nữa. Trong miệng cô ta lẩm bẩm cái gì đó, đột nhiên cô ta mở một nụ cười lạnh lùng, nham hiểm. Lực toát mồ hôi, mặc dù giờ là mùa đông....Đúng vào lúc, Lực tò mò nhìn chằm chằm cô ta, muốn biết cô ta đi ra từ đâu,  đột nhiên cô ta quay đầu lại, khuôn mặt đen thui cách Lực có 1m, mắt cô ta chỉ còn lại cái lỗ sâu hoắm, hai người họ nhìn nhau vài phút, cô ta nhếch mép cười, nụ cười khiến Lực tê lạnh sống lưng…” ...', 'normal', 19, 'coiamlanhleo.jpg', '', '', '', 'VNĐ', 16830, '2016-05-31 08:00:00'),
(71, 71, 'Người Mượn Hồn', '\r\n\r\n    ... Vừa nói, cô nàng vừa lấy ra một tờ giấy màu vàng, chữ viết đen, đưa ngay trước mặt bà Xuân Lan:\r\n\r\n    - Bà nhìn ra vật này phải không? Chính bà đã thuê tên tướng số ở Hong Kong để làm hại cha con tôi bấy lâu nay linh hồn không siêu thoát được, nhưng giờ đây tôi sẽ dùng nó để đốt và rắc lên đầu bà, bà biết tác dụng của nó như thế nào rồi chứ?\r\n\r\n    Bà Xuân Lan tái mặt, run lẩy bẩy:\r\n\r\n    - Xin tha... tha cho tôi. Tôi sẽ làm, sẽ làm...\r\n\r\n    Cô nàng rít lên, giọng người lạnh như băng:\r\n\r\n    - Bà rõ hơn ai hết, nếu giờ đây tôi đốt tờ giấy này thì bà sẽ lăn ra chết tức khắc! Bà hãy chọn đị, trả lại những gì lấy của tôi hay là chết?\r\n', 'normal', 19, 'nguoimuonhon.jpg', '', '', '', 'vnđ', 14850, '2016-05-31 09:00:00'),
(72, 72, 'Cuộc Tình Ma Quái', 'Chuyện tình khang và hạnh\r\n\r\nSự thật về hạnh\r\n\r\nOan hồn của hạnh\r\n\r\nHồn ma xuất hiện\r\n\r\nNgày trở về của Khang\r\n\r\nMối tình liêu trai\r\n\r\nĐoạn kết của cuộc tình ma quái', 'normal', 19, 'CuocTinhMaQuai.jpg', '', '', '', 'VNĐ', 6000, '2016-05-31 07:00:00'),
(73, 73, 'Bà Chúa Đền Sải Cả', 'Giấc mộng trùng khơi\r\n\r\nNước mắt nàng tiên\r\n\r\nNgày trở về\r\n\r\nĐoạn kết', 'normal', 19, 'BaChuaDenSaiCa.jpg', '', '', '', 'vnđ', 3200, '2016-05-31 09:00:00'),
(74, 74, 'Đêm Sấm Sét', '    .... Tiếng hú lanh lảnh vang lên. Chiếc đầu lâu của một người con gái với mái tóc màu đen rối tung, tòn teng phía trước đầu là một bộ lòng người, đầy đủ gan tim, phèo phổi với màu đỏ đỏ bầm....\r\n    ........', 'normal', 19, 'DemSamSet.jpg', '', '', '', 'VNĐ', 11200, '2016-05-31 07:00:00'),
(75, 75, 'Bóng Sói', 'Truyện viễn tưởng của Trần Hồng Ngọc nằm trong tủ sách lâu đài xanh.', 'normal', 19, 'BOngSoi.jpg', '', '', '', 'vnđ', 12000, '2016-05-31 15:00:00'),
(76, 1, 'Bán Hàng Bậc Cao', 'Sách Kinh Tế', 'normal', 4, 'banhang.jpg', '', '', '', 'vnđ', 213000, '2016-06-22 00:00:00'),
(77, 2, 'Chinh Phục Nghệ Thuật Khách Hàng', 'Sách Kinh Tế', 'normal ', 4, 'chinhphuc.jpg', '', '', '', 'vnđ', 62000, '2016-06-30 00:00:00'),
(78, 3, 'Kinh Tế Đại Cương', 'Sách Kinh Tế', 'normal ', 4, 'kinhtehoc.jpg', '', '', '', 'vnđ', 75000, '2016-06-22 00:00:00'),
(79, 4, 'Kế Toán Quản Trị', 'Sách Kinh Tế', 'normal ', 4, 'ktoan.jpg', '', '', '', 'vnđ', 80000, '2016-06-29 00:00:00'),
(80, 1, 'Bí Mật Triệu Đô', 'Sách Ngoại Thương', 'new', 7, 'bimat.jpg', '', '', '', 'vnđ ', 65000, '2016-06-29 00:00:00'),
(81, 2, 'Con Đường Dấn Đến Sự Giàu Có', 'Sách Ngoại Thương', 'normal ', 7, 'conduong.jpg', '', '', '', 'vnđ', 57000, '2016-06-09 00:00:00'),
(82, 3, 'Đánh Cắp Ý Tưởng', 'Những ý tưởng tốt để giúp chúng ta trên con đường thành công', 'normal ', 7, 'danhcap.jpg', '', '', '', 'vnđ', 62000, '2016-06-23 00:00:00'),
(83, 4, 'Đừng Cố Gắng Bán Mà Giúp Khách Hàng Mua', 'sách ngoại thương', 'normal', 7, 'muaban.jpg', '', '', '', 'vnđ', 55000, '2016-06-29 00:00:00'),
(84, 5, 'Những Ông Trùm Tài Chính', 'sách ngoại thương', 'normal ', 7, 'ongtrum.jpg', '', '', '', 'vnđ', 62000, '2016-06-23 00:00:00'),
(85, 6, 'Tiền Không Phải Là Vấn Đề', 'Sách Ngoại Thương', 'normal ', 7, 'tienjpg', '', '', '', 'vnđ', 53000, '2016-06-23 00:00:00'),
(86, 1, 'Y Học Thường Thức Thời @', 'Sách y học', 'normal ', 8, '@.jpg', '', '', '', 'vnđ', 62000, '2016-06-09 00:00:00'),
(87, 2, 'Bách Khoa Y Học', 'sách y học', 'normal ', 8, 'bachkhoa.jpg', '', '', '', 'vnđ', 50000, '2016-06-15 00:00:00'),
(88, 3, 'Y Học Thường Thức Trong Gia Đình', 'sách y học', 'normal ', 8, 'giadinh.jpg', '', '', '', 'vnđ', 70000, '2016-06-30 00:00:00'),
(89, 4, 'hatnhan.jpg', 'sách y học', 'normal ', 8, 'hatnha.jpg', '', '', '', 'vnđ', 72000, '2016-06-10 00:00:00'),
(90, 1, 'Lý Luận Y Học Cổ Truyền', 'sách y học', 'normal ', 9, 'cotruyen.jpg', '', '', '', 'vnđ', 61000, '2016-06-30 00:00:00'),
(91, 2, 'Bệnh Học Và Điệu Trị Đông Y', 'sách y học', 'normal ', 9, 'dongy.jpg', '', '', '', 'vnđ', 55000, '2016-06-15 00:00:00'),
(92, 3, 'Y Học Gia Đình', 'sách y học', 'normal ', 9, 'giadinh.jpg', '', '', '', 'vnđ', 50000, '2016-06-29 00:00:00'),
(93, 4, 'Sổ Tay Lâm Sàng', 'sách y học', 'normal ', 9, 'lamsang.jpg', '', '', '', 'vnđ', 52000, '2016-06-21 00:00:00'),
(94, 5, 'Bài Giảng Y Học Cổ Truyền ', 'sách y học', 'normal ', 9, 'yhoc.jpg', '', '', '', 'vnđ', 51000, '2016-06-23 00:00:00'),
(95, 6, '11 Ngày ', 'sách y học', 'normal ', 9, 'ykhoa.jpg', '', '', '', 'vnđ', 52000, '2016-06-16 00:00:00'),
(96, 1, 'Ngữ Pháp Tiếng Anh', 'Sách Ngoại Ngữ', 'normal ', 10, 'nguphap.jpg', '', '', '', 'vnđ', 78000, '2016-06-14 00:00:00'),
(97, 2, '300 Từ Vựng Tiếng Anh', 'sách ngoại ngữ', 'normal ', 10, '300.jpg', '', '', '', 'vnđ', 80000, '2016-06-21 00:00:00'),
(98, 3, 'Bài Tập Thành Ngữ Tiếng Anh', 'sách ngoại ngữ', 'normal ', 10, 'baitap.jpg', '', '', '', 'vnđ', 75000, '2016-06-30 00:00:00'),
(99, 4, 'Ngữ Pháp Tiếng Anh', 'sách ngoại ngữ', 'normal ', 10, 'canban.jpg', '', '', '', 'vnđ', 72000, '2016-06-29 00:00:00'),
(100, 5, 'Tự Học Đàm Thoại Tiếng Anh', 'sách ngoại ngữ', 'normal ', 10, 'captoc.jpg', '', '', '', 'vnđ', 70000, '2016-06-29 00:00:00'),
(101, 6, 'Bộ Sưu Tập Ngữ Pháp', 'sách ngoại ngữ', 'normal ', 10, 'hiendai.jpg', '', '', '', 'vnđ', 71000, '0000-00-00 00:00:00'),
(102, 1, 'Tự Học Tiếng Nhật', 'sách ngoại ngữ', 'normal ', 11, '30ngay.jpg', '', '', '', 'vnđ', 72000, '2016-06-22 00:00:00'),
(103, 2, '1800 Câu Đàm Thoại', 'sách ngoại ngữ', 'normal ', 11, '1800.jpg', '', '', '', 'vnđ', 72000, '2016-06-21 00:00:00'),
(104, 3, '4500 Câu Giao Tiếp', 'sách ngoại ngữ', 'normal ', 11, '4500.jpg', '', '', '', 'vnđ', 65000, '2016-06-22 00:00:00'),
(105, 4, 'Ngữ Pháp Tiếng Nhật Căn Bản', 'sách ngoại ngữ', 'normal ', 11, 'nguphap.jpg', '', '', '', 'vnđ', 71000, '2016-06-30 00:00:00'),
(106, 5, 'Tiếng Nhật Sơ Cấp', 'sách ngoại ngữ', 'normal ', 11, 'socap.jpg', '', '', '', 'vnđ', 69000, '2016-06-15 00:00:00'),
(107, 6, 'Tiếng Nhật Cho Mọi Người', 'sách ngoại ngữ', 'normal ', 11, 'tiengnhat.jpg', '', '', '', 'vnđ', 69000, '2016-06-22 00:00:00'),
(108, 1, 'Tự Học Tiếng Hàn', 'sách ngoại ngữ', 'normal ', 12, 'batdau.jpg', '', '', '', 'vnđ', 70000, '2016-06-29 00:00:00'),
(109, 2, 'Tiếng Hàn Dành Cho Người Việt', 'sách ngoại ngữ', 'normal ', 12, 'nguoiviet.jpg', '', '', '', 'vnđ', 70000, '2016-06-13 00:00:00'),
(110, 3, 'Ngữ Pháp Tiếng Hàn', 'sách ngoại ngữ', 'normal ', 12, 'nguphap.jpg', '', '', '', 'vnđ', 65000, '2016-06-20 00:00:00'),
(111, 4, 'Ngữ Pháp Tiếng Hàn', 'sách ngoại ngữ', 'normal ', 12, 'nguphap1.jpg', '', '', '', 'vnđ', 62000, '2016-06-09 00:00:00'),
(112, 5, 'Tự Học Tiếng Hàn', 'sách ngoại ngữ', 'normal ', 12, 'tuhoc.jpg', '', '', '', 'vnđ', 80000, '2016-06-29 00:00:00'),
(113, 6, 'Từ Điển Ngữ Pháp Tiếng Hàn', 'sách ngoại ngữ', 'normal ', 12, 'tudien.jpg', '', '', '', 'vnđ', 78000, '2016-06-23 00:00:00'),
(114, 1, '60 Món Ăn Cua Cá Mực', '60 món ăn từ các loại hản sản như cá,cua,mực giành cho các chị em vào bếp.', 'normal ', 13, '60.jpg', '', '', '', 'vnđ', 52000, '2016-06-09 00:00:00'),
(115, 2, '212 Món Ăn', 'hướng dẫn các chị em nội trợ 212 món ăn gia đình dễ làm.', 'normal ', 13, '212mon.jpg', '', '', '', 'vnđ', 62000, '2016-06-22 00:00:00'),
(116, 3, 'Nấu Ăn Chay', 'hướng dẫn các món ăn chay cho các chị em nội trợ', 'normal ', 13, 'anchay.jpg', '', '', '', 'vnđ', 60000, '2016-06-15 00:00:00'),
(117, 4, 'Món Ăn Việt Helen', 'cùng helen vào bếp nha các chị em nội trợ.', 'new', 13, 'helen.jpg', '', '', '', 'vnđ', 7000, '2016-06-28 00:00:00'),
(118, 5, 'Món Ăn Thái', 'Hướng dẫn các chị em làm món ăn thái đơn giản và ngon', 'normal ', 13, 'monthai.jpg', '', '', '', 'vnđ', 70000, '2016-06-15 00:00:00'),
(119, 6, 'Nấu Ăn Gia Đình', 'hướng dẫn các món ăn cho gia đình nhỏ của các chị em nội trợ', 'normal ', 13, 'naugd.jpg', '', '', '', 'vnđ', 62000, '2016-06-23 00:00:00'),
(120, 1, 'Lý Thuyết Âm Nhạc Cơ Bản', 'dành cho những người đam mê âm nhạc.\r\n', 'normal ', 14, 'amnhaccoban.jpg', '', '', '', 'vnđ', 112000, '2016-06-22 00:00:00'),
(121, 2, 'Âm Nhạc Dành Cho Trẻ Em', 'dành cho các bé có sở thích và đam mê học nhạc', 'normal ', 14, 'danhchotreem.jpg', '', '', '', 'vnđ', 110000, '2016-06-15 00:00:00'),
(122, 3, 'Phương Pháp Học Ghi Ta', 'dành cho những người đam mê học ghita.', 'normal ', 14, 'hocghita.jpg', '', '', '', 'vnđ', 110000, '2016-06-16 00:00:00'),
(123, 4, 'Nhạc Lý Cơ Bản', 'hướng dẫn tất cả các phương pháp cơ bản cho người mới bắt đầu học nhạc', 'normal ', 14, 'nhaclycb.jpg', '', '', '', 'vnđ', 110000, '2016-06-14 00:00:00'),
(124, 5, 'Organ Điện Tử', 'dành cho các bạn đam mê organ điện tử', 'normal ', 14, 'organ.jpg', '', '', '', 'vnđ', 150000, '2016-06-15 00:00:00'),
(125, 6, 'Thuật Ngữ Âm Nhạc', 'hướng dẫn tất cả các thuật ngữ về âm nhạc', 'new', 14, 'thuatngu.jpg', '', '', '', 'vnđ', 120000, '2016-06-22 00:00:00'),
(126, 1, '63 Tỉnh Thành Các Địa Danh Du Lịch', 'tuyển tập các địa điểm du lịch cho đẹp và sang trọng bậc nhât việt nam', 'normal ', 15, '63tinhthanh.jpg', '', '', '', 'vnđ', 64000, '2016-06-23 00:00:00'),
(127, 2, 'Địa Lý Du Lịch Việt Nam', 'giúp chúng ta có thể hiểu rõ hơn về những địa danh mà chúng ta muốn khám phá.', 'normal ', 15, 'dialy.jpg', '', '', '', 'vnđ', 60000, '2016-06-15 00:00:00'),
(128, 3, 'Du Lịch Việt Nam', 'Tuyển tập những địa danh du lịch của việt nam.', 'normal ', 15, 'dulichvn.jpg', '', '', '', 'vnđ', 59000, '2016-06-22 00:00:00'),
(129, 4, 'Du Lịch Sinh Thái', 'Tuyển tập những địa danh du lịch của việt nam.', 'normal ', 15, 'sinhthai.jpg', '', '', '', 'vnđ', 61000, '2016-06-10 00:00:00'),
(130, 5, 'Du Lịch Tâm Linh', 'Tuyển tập những địa danh du lịch cho những người tin tưởng vào phật vào chúa...', 'normal ', 15, 'tamlinh.jpg', '', '', '', 'vnđ', 70000, '2016-06-21 00:00:00'),
(131, 6, 'Du Lịch Châu Thế Giới', 'sưu tâm các địa danh du lịch nổi tiếng trên thê giới', 'normal ', 15, 'thegioi.jpg', '', '', '', 'vnd', 129000, '2016-06-06 00:00:00'),
(132, 1, 'Thơ Văn Cao Bá Quát', 'tuyển tập những bài thơ hay để lại tên tuổi Cao Bá Quát', 'normal ', 17, 'caobaquat.jpg', '', '', '', 'vnđ', 150000, '2016-06-23 00:00:00'),
(133, 2, 'Văn Thơ Hồ Chí Minh', 'tuyển tập những bài thơ hay của Chỉ Tịch Hồ Chí Minh', 'new', 17, 'hcm.jpg', '', '', '', 'vnđ', 175000, '2016-06-14 00:00:00'),
(134, 3, 'Thơ Văn Lý Trần', 'những bài thơ để đời của Lý Trần', 'normal ', 17, 'lytran.jpg', '', '', '', 'vnđ', 182000, '2016-06-14 00:00:00'),
(135, 4, 'Thơ Văn Nguyễn Thượng Hiền', 'những bài thơ hay đánh bóng tên tuổi của nhà thơ Nguyễn Thượng Hiền', 'normal ', 17, 'nguyenthuonghien.jpg', '', '', '', 'vnđ', 170000, '2016-06-22 00:00:00'),
(136, 5, 'Thơ Văn Phùng Khắc Hoan', 'tuyển tập những bài thơ hay để đời của nhà thơ Phùng Khắc Hoan', 'normal ', 17, 'phungkhachoan.jpg', '', '', '', 'vnđ', 162000, '2016-06-29 00:00:00'),
(137, 6, 'Truyện Kiều', 'Truyện Kiều đã làm lên tên tuổi của Nguyễn Du', 'normal ', 17, 'truyenkieu.jpg', '', '', '', 'vnđ', 161000, '2016-06-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CATEGORY_ID` int(10) UNSIGNED NOT NULL,
  `CATEGORY_NO` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY_DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CATEGORY_ID`, `CATEGORY_NO`, `CATEGORY_NAME`, `CATEGORY_DESCRIPTION`, `DATE`) VALUES
(1, 1, 'Truyện Tranh', '', '2016-05-24 00:00:00'),
(2, 2, 'Cổ Tích - Thần Thoại', '', '2016-05-24 00:00:00'),
(3, 3, 'Văn Học Việt Nam', '', '2016-05-24 00:00:00'),
(4, 4, 'Kế Toán', '', '2016-05-24 00:00:00'),
(6, 6, 'MARKETING', '', '2016-05-24 00:00:00'),
(7, 7, 'NGOẠI THƯƠNG', '', '2016-05-24 00:00:00'),
(8, 8, 'Y HỌC THƯỜNG THỨC', '', '2016-05-24 00:00:00'),
(9, 9, 'Y HỌC CỔ TRUYỀN', '', '2016-05-24 00:00:00'),
(10, 10, 'TIẾNG ANH', '', '2016-05-24 00:00:00'),
(11, 11, 'TIẾNG NHẬT', '', '2016-05-24 00:00:00'),
(12, 12, 'TIẾNG HÀN', '', '2016-05-24 00:00:00'),
(13, 13, 'NẤU ĂN', '', '2016-05-24 00:00:00'),
(14, 14, 'ÂM NHẠC', '', '2016-05-24 00:00:00'),
(15, 15, 'DU LỊCH', '', '2016-05-24 00:00:00'),
(16, 16, 'Quản Trị Kinh doanh', '', '2016-05-30 16:09:03'),
(17, 17, 'Thơ ca Dân gian', '', '2016-05-31 09:00:00'),
(18, 18, 'Truyện tiểu thuyết', '', '2016-05-31 10:00:00'),
(19, 19, 'Truyện Viễn tưởng', '', '2016-05-31 09:00:00'),
(20, 20, 'Truyện Trinh thám - Vụ án', '', '2016-05-31 08:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_headers`
--

CREATE TABLE `invoice_headers` (
  `INVOICE_HEADER_ID` int(10) UNSIGNED NOT NULL,
  `INVOICE_HEADER_NO` int(11) NOT NULL,
  `INVOICE_HEADER_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PAYMENT_METHOD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DATE` datetime NOT NULL,
  `TOTAL_QUANITY` int(11) NOT NULL,
  `TOTAL_COST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_lines`
--

CREATE TABLE `invoice_lines` (
  `INVOICE_LINE_ID` int(10) UNSIGNED NOT NULL,
  `INVOICE_HEADER_ID` int(11) NOT NULL,
  `INVOICE_LINE_NO` int(11) NOT NULL,
  `INVOICE_LINE_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `CURRENCY` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `QUANITY` int(11) NOT NULL,
  `COST` int(11) NOT NULL,
  `LINE_COST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracsactions`
--

CREATE TABLE `tracsactions` (
  `TRANSACTION_ID` int(10) UNSIGNED NOT NULL,
  `INVOICE_HEADER_ID` int(11) NOT NULL,
  `DATE` datetime NOT NULL,
  `QUANITY` int(11) NOT NULL,
  `BOOK_COST` int(11) NOT NULL,
  `SHIP_COST` int(11) NOT NULL,
  `SHIP_TO` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TRANSACTION_COST` int(11) NOT NULL,
  `TRANSACTION_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERS` int(10) UNSIGNED NOT NULL,
  `USERNAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_NO` int(11) NOT NULL,
  `USER_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_BIRTHDAY` date NOT NULL,
  `USER_SEX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ADDRESS` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `USER_PHONE` int(11) NOT NULL,
  `USER_AGE` int(11) NOT NULL,
  `USER_EMAIL` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERS`, `USERNAME`, `PASSWORD`, `USER_NO`, `USER_NAME`, `USER_BIRTHDAY`, `USER_SEX`, `USER_ADDRESS`, `USER_PHONE`, `USER_AGE`, `USER_EMAIL`, `STATUS`, `DATE`) VALUES
(1, 'phanvanthanh', '333333', 1, 'Phan Văn Thành', '2015-07-16', 'Nam', 'Quốc Lộ 1A', 123456789, 21, 'thanh@gmail.com', '', '2016-05-04 00:00:00'),
(2, 'nguyenthanhchuong', '222222', 2, 'Nguyễn Thanh Chương', '2016-05-04', 'Nam', 'Tô Ký', 123456789, 22, 'chuong@gmail.com', '', '2016-05-12 00:00:00'),
(3, 'aingoc', '444444', 3, 'Nguyễn Thị Ái Ngọc', '2016-05-15', 'Nữ', 'Nguyễn Kiệm', 987645413, 21, 'ngoc@gmail.com', '', '2016-05-29 00:00:00'),
(4, 'badat', '555555', 4, 'Đào Bá Đạt', '2016-05-27', 'Nam', 'CMT8', 852178638, 21, 'dat@gmail.com', '', '2016-05-27 00:00:00'),
(5, 'phuonganh', '6666666', 5, 'Lê Kiều Phương Anh', '2014-12-20', 'Nữ', 'Bình Thạnh', 96324262, 21, 'phuonganh@gmail.com', '', '2016-03-18 00:00:00'),
(6, 'minhgiau', '111111', 6, 'Trần Minh Giàu', '2015-06-29', 'Nam', 'Bình Thạnh', 93616449, 22, 'giau@gmail.com', '', '2016-05-19 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `invoice_headers`
--
ALTER TABLE `invoice_headers`
  ADD PRIMARY KEY (`INVOICE_HEADER_ID`);

--
-- Indexes for table `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD PRIMARY KEY (`INVOICE_LINE_ID`);

--
-- Indexes for table `tracsactions`
--
ALTER TABLE `tracsactions`
  ADD PRIMARY KEY (`TRANSACTION_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BOOK_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CATEGORY_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `invoice_headers`
--
ALTER TABLE `invoice_headers`
  MODIFY `INVOICE_HEADER_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_lines`
--
ALTER TABLE `invoice_lines`
  MODIFY `INVOICE_LINE_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracsactions`
--
ALTER TABLE `tracsactions`
  MODIFY `TRANSACTION_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USERS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

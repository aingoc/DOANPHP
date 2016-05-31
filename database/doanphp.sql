-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2016 at 03:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanphp`
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
(9, 8, 'Trận chiến đáng sợ của Sư tử con và Hổ con', 'Trễn thế giới này có cha mẹ nào không muốn con mình trở nên tài giỏi? Hổ mẹ trong câu chuyện này cũng luôn mong Hổ con thành tài... \r\n', 'normal', 1, 'sutu.jpg', '', '', '', 'vnđ', 12000, '2016-05-24 00:00:00'),
(10, 9, 'Cây tre trăm đốt', 'Ngày xưa có một chàng trai hiền lành, khỏe mạnh (tên là Khoai) đi cày thuê cho vợ chồng ông phú hộ. Hai người này có hứa: "Con chịu khó làm lụng giúp ta, ba năm nữa ta sẽ gả con gái ta cho". Tin vào lời hứa, anh ra sức làm việc không ngại khó nhọc. Nhưng ba năm sau, khi mà ông nhà giàu đã có mọi thứ của cải, ông bèn trở mặt, ông đưa ra một điều kiện là phải tìm được một cây tre trăm đốt để làm nhà cưới vợ thì ông mới gả con gái cho', 'normal', 2, 'caytre.jpg', '', '', '', 'vnđ', 32000, '2016-05-10 00:00:00'),
(11, 10, 'Sự tích chú cuội và cung trăng', 'Mời các bạn theo dõi cốt truyện !', 'normal', 2, 'chucuoi.jpg', '', '', '', 'vnđ', 17000, '2016-05-26 00:00:00'),
(12, 11, 'Sự tích dưa hấu', 'Mời Các Bạn Đón Đọc Bộ Truyện Mới Nha !', 'normal', 2, 'duahau.jpg', '', '', '', 'vnđ', 40000, '2016-05-06 00:00:00'),
(13, 13, 'Sự tích sọ dừa', 'Hãy Đón Xem Bộ Truyện Mới Nha Các Bạn', 'normal', 2, 'sodua.jpg', '', '', '', 'vnđ', 26000, '2016-05-12 00:00:00'),
(14, 14, 'Tấm cám', 'Tấm Cám là một câu chuyện cổ tích Việt Nam thuộc thể loại truyện cổ tích thần kì, phản ánh những mâu thuẫn trong gia đình, cuộc đấu tranh giữa cái thiện và cái ác, cùng ước mơ cái thiện thắng cái ác của người Việt Nam.', 'normal', 2, 'tamcam.jpg', '', '', '', 'vnđ', 27000, '2016-05-26 00:00:00'),
(15, 15, 'Thạch sanh', 'Thạch Sanh mồ côi sớm, làm nghề đốn củi, sống một mình trong một túp lều dưới gốc đa. Có một người làm nghề nấu rượu tên là Lý Thông đến kết nghĩa anh em với Thạch Sanh. Trong vùng có một con Chằn tinh (hay Trăn tinh) thường bắt người ăn thịt, nên dân lập miếu thờ và hàng năm phải nộp cho nó một mạng người, mới được yên ổn làm ăn.', 'normal', 2, 'thachsanh.jpg', '', '', '', 'vnđ', 29000, '2016-05-18 00:00:00'),
(16, 16, 'Văn học Việt Nam sau năm 1975', 'VĂN HỌC VIỆT NAM 1975', 'normal', 3, '1975.jpg', '', '', '', 'vnđ', 115000, '2016-05-19 00:00:00'),
(17, 17, 'Mùa lá rụng trong vườn', 'TUYỂN TẬP MA VĂN KHÁNG', 'normal', 3, 'muala.jpg', '', '', '', 'vnđ', 215000, '2016-05-11 00:00:00'),
(18, 18, 'Văn học phương tây', 'NỀN VĂN HỌC CỦA PHƯƠNG TÂY', 'normal', 3, 'phuontay.jpg', '', '', '', 'vnđ', 158000, '2016-05-25 00:00:00'),
(19, 19, 'Tuyển tập văn học dân gian Việt Nam', 'Dân Gian Việt Nam', 'normal', 3, 'tuyentap.jpg', '', '', '', 'vnđ', 215000, '2016-05-25 00:00:00'),
(20, 5, 'Văn học Miền Nam Lục Tỉnh', '6 Tỉnh Miền Nam', 'Hot', 3, 'vanhoc.jpg', '', '', '', 'vnđ', 216000, '2016-05-25 00:00:00'),
(21, 6, 'Văn học dân gian', 'Dân Gian Việt Nam', 'normal', 3, 'vhdangian.jpg', '', '', '', 'vnđ', 275000, '2016-05-11 00:00:00'),
(25, 4, 'Quản Trị Tài Chính doanh nghiệp', 'SÁCH KINH TẾ', 'normal', 16, 'taichinh.jpg', '', '', '', 'vnđ', 326000, '2016-05-11 00:00:00'),
(28, 1, 'Marketing căn bản', 'Toàn bộ về marketing căn bản\r\n', 'normal', 6, 'canban.jpg', '', '', '', 'vnđ', 97600, '2016-05-26 00:00:00'),
(29, 2, 'Marketing Công Nghiệp', 'SÁCH KINH TẾ', 'normal', 6, 'congnghiep.jpg', '', '', '', 'vnđ', 320000, '2016-05-25 00:00:00'),
(30, 3, 'Chiến lược Marketing', 'SÁCH KINH TẾ', 'normal', 6, 'chienluoc.jpg', '', '', '', 'vnđ', 250000, '2016-05-11 00:00:00'),
(31, 4, 'Marketing qua Email', 'SÁCH KINH TẾ', 'normal', 6, 'mail.jpg', '', '', '', 'vnđ', 230000, '2016-05-25 00:00:00'),
(32, 5, 'Quản trị Marketing', 'SÁCH KINH TẾ', 'normal', 6, 'quantri.jpg', '', '', '', 'vnđ', 23000, '2016-05-27 00:00:00'),
(34, 7, 'Nghề làm phi', 'Xuyên không thành một phi tần nho nhỏ đã mất thánh sủng, Trang Lạc Yên tâm tâm niệm niệm sẽ hoàn thành tốt nghề nghiệp mới của mình – nghề làm phi – một nghề nghiệp vô cùng rủi ro, không thể từ chức, một là làm tốt, hai là chết. Một nghề nghiệp luôn phải phấn đấu vươn lên không ngừng, nhưng lại không được phép để con tim mình rung động. Bởi lỡ rung động rồi, là vạn kiếp không thể quay đầu…\r\nSuy cho cùng, đã là nữ tử thì sẽ có một ngày già đi, lấy sắc tranh tình nhất định sẽ phải nhận kết cục sắc suy tình bạc, bởi Đế vương đa tình, hồng nhan chóng lụi, vậy thì nàng sẽ dùng lí trí này để thuần phục trái tim Đế vương.\r\nVẫn biết vận mệnh vô thường, Đế vương vô tình, nhưng Trang Lạc Yên nàng không sợ, bởi, trái tim trong lồng ngực nàng, mãi mãi chỉ thuộc về nàng mà thôi!', 'New', 3, 'nghelamphi.jpg', '', '', '', 'vnđ', 89000, '2016-05-30 17:00:00'),
(35, 8, 'Công chúa mặt trăng', 'Nếu bạn đã yêu Cinder - một câu chuyện Cinderella được hiện đại hóa và được "nâng cấp" bằng yếu tố khoa học viễn tưởng, thì bạn chắc chắn sẽ vô cùng thích thú với phần tiếp theo: Scarlet – một câu chuyện cũng độc đáo, cũng cuốn hút, và cũng khiến tim bạn đập nhanh như vậy.\r\nCinder, cô thợ máy cyborg tuổi teen, đang ở trong tù và mới biết rằng mình chính là Công chúa Mặt Trăng Selene - người mà hầu hết mọi người đều tin rằng đã chế', 'New', 3, 'scarlet.jpg', '', '', '', 'vnđ', 89000, '2016-05-30 16:00:00'),
(36, 9, 'Công chúa Winter', 'Công chúa Winter được những người dân Mặt Trăng ngưỡng mộ vì dáng vẻ yêu kiều và lòng nhân ái của mình, và bất chấp những vết sẹo xấu xí trên mặt, vẻ đẹp của cô luôn được đánh giá là còn kiều diễm hơn cả bà mẹ kế, Nữ hoàng Levana. \r\nWinter căm ghét bà mẹ kế của mình và cô hiểu rằng Nữ hoàng Levana sẽ không bao giờ ủng hộ tình cảm của cô dành cho người bạn thời thơ ấu - chàng cận vệ điển trai Jacin. Nhưng Winter không yếu đuối như Nữ hoàng Levana tưởng và cô vẫn luôn âm thầm chống đối bà ta trong nhiều năm. Cùng với cô gái cyborg - Cinder và nhóm bạn của cô, Winter hy vọng có thể làm nên một cuộc cách mạng và chấm dứt cuộc chiến tranh đã kéo dài trong suốt nhiều thập kỷ.\r\nLiệu Cinder (Lọ Lem), Scarlet (Khăn đỏ), Cress (Tóc mây) và Winter (Bạch tuyết) có thể đánh bại Nữ hoàng Levana và sống hạnh phúc mãi mãi bên người mình yêu hay không? Hãy đón đọc tập 4.1 và tập 4.2 - Winter (Bạch Tuyết), cũng là hai tập cuối cùng của bộ truyện Công chúa Mặt Trăng. \r\n', 'New', 3, 'winter.jpg', '', '', '', 'vnđ', 101000, '2016-05-30 16:00:00'),
(37, 10, 'Công chúa mặt trăng (Tóc mây)', 'Hy vọng lớn nhất của Cinder và những người đồng hành chính là Cress - người đã bị kẹt trong một vệ tinh từ khi còn nhỏ, và ở bên cạnh cô chỉ là những màn hình điện tử. Nhưng chừng đó thời gian ở giữa những màn hình điện tử lại khiến cho Cress trở thành một hacker siêu hạng. Thật không may, cô mới nhận được lệnh từ Levana là phải tìm cho ra tung tích của Cinder. Cress, Scarlet và Cinder có thể không dự định cứu cả thế giới, nhưng họ lại có thể là những người duy nhất có thể làm việc đó…', 'New', 3, 'cress.jpg', '', '', '', 'vnđ', 78000, '2016-05-30 14:00:00'),
(38, 11, 'Into The Woods', 'Into The Wood: Thế giới huyền ảo của những điều ước và lời nguyền', 'Hot', 3, 'litter.jpg', '', '', '', 'vnđ', 90000, '2016-05-26 00:00:00'),
(39, 10, 'Thỏ Bi Li', 'Câu truyện kể về cuộc phiêu lưu của chú Thỏ trên đường đi tìm bạn thân của mình.', 'New', 1, 'thobili.jpg', '', '', '', 'vnđ', 15000, '2016-05-26 00:00:00'),
(40, 11, 'Truyền thuyết về vua mặt trời Nobita', 'Mỗi tập truyện là một cuộc phưu lưu khám phá những chân trời mới lạ. Hãy để trí tưởng tượng của bạn bay bổng cùng nhóm bạn Doraemon, Nobita, Shizuka, Jaian, Suneo đến các vùng đất xa xôi, kì bí và cảm nhận những khoảnh khắc tình bạn tươi đẹp của cuộc đời!\r\n', 'Hot', 1, 'doremon.jpg', '', '', '', 'vnđ', 23000, '2016-05-26 00:00:00'),
(44, 10, '100 Ý Tưởng Bán Hàng', '', 'New', 16, '100.jpg', '', '', '', 'vnđ', 203000, '2016-05-31 19:00:00'),
(45, 7, 'Khách Hàng Là Số 1', 'Khách Hàng Là Số 1 - Bí Quyết Tạo Cơn Sốt Bán Hàng\r\n    Dịch vụ khách hàng luôn là một trong những vấn đề cấp thiết đối với các giám đốc kinh doanh, cũng như những người hoạt động trong lĩnh vực dịch vụ và bán hàng, đặc biệt là ở cấp độ bán lẻ.\r\n\r\n    Trong cuốn Khách hàng là số 1, tác giả đã đề cập đến những điểm cơ bản trong dịch vụ khách hàng như xây dựng một tổ chức lấy con người làm trung tâm, lấy hiệu quả làm động lực, và luôn đặt quyền lợi của khách hàng lên cao nhất. Với những quan sát tinh tường dựa trên kinh nghiệm thực tiễn của Yum!, công ty nhà hàng lớn nhất thế giới, cuốn sách đã tập trung vào bốn bước quyết định:\r\n\r\n    Hướng đến mục tiêu đúng: Lợi nhuận sẽ tăng trưởng khi bạn biết quan tâm khách hàng và tạo ra cho nhân viên môi trường làm việc có động lực.\r\n\r\n    Đối xử với khách hàng đúng cách: Hãy xác định bạn mong muốn đem lại cho khách hàng những trải nghiệm gì khi họ tương tác với từng bộ phận trong công ty.\r\n\r\n    Đối xử với nhân viên đúng cách: Sử dụng các chiến lược thông minh, từ việc tuyển chọn, huấn luyện và phát triển nhân viên, cho đến quản lý hiệu quả công việc và tạo nên một văn hóa ghi nhận thành tích.\r\n\r\n    Xây dựng phương thức lãnh đạo đúng: Bạn không thể tự mình làm tất cả. Hãy để nhân viên dùng trí tuệ của họ tham gia vào công việc giúp bạn, và trách nhiệm của bạn là luôn hỗ trợ họ.Khi làm theo những bước trên, bạn hoàn toàn có thể xây dựng một đội ngũ nhân viên tâm huyết, gắn bó để đóng góp vào thành công chung của công ty.\r\n', 'New', 16, 'so1.jpg', '', '', '', 'vnđ', 62000, '2016-05-26 00:00:00'),
(46, 8, 'Bán Hàng Bậc Cao', 'Triết lý chứa đựng trong cuốn sách Nghệ Thuật Bán Hàng Bậc Cao thật đơn giản: “bạn có thể có được những tất cả mọi thứ trong cuộc sống nếu bạn biết giúp người khác đạt được điều họ muốn”, thậm chí còn đúng đắn và cần thiết hơn trong cuộc sống hiện nay so với thời kỳ khi cuốn Nghệ Thuật Bán Hàng Bậc Cao được xuất bản lần đầu. Mục tiêu cuả một thương vụ là đảm bảo khách hàng nhận được giá trị tương xứng, nhưng nếu bạn mang đến cho khách hàng những giá trị còn cao hơn giá trị mà lẽ ra họ sẽ nhận được thì không những bạn đã có một thương vụ thành công mà bạn còn có thêm một khách hàng sẵn lòng giúp bạn có thêm nhiều khách hàng khác nữa.\r\n\r\nTrong cuốn sách kinh doanh này, bạn sẽ có cơ hội làm quen với nhiều người bán hàng sẵn sàng từ bỏ một thương vụ bởi họ biết rằng thương vụ đó không mang lại lợi ích tốt nhất cho khách hàng của mình. Khi đó, bán hàng trở nên giống như thi đấu thể thao, nhà vô địch quần vợt phải biết đánh bóng sao cho anh ta có thể đánh cú tiếp theo hiệu quả hơn, hay các tay gôn kỳ cựu cũng vậy. Nếu nhân viên bán hàng không quan tâm đến việc xây dựng và duy trì mối quan hệ tốt đẹp với khách hàng mà chỉ chăm chăm kiếm tiền từ túi người khác thì đảm bảo rằng họ sẽ nhanh chóng bị đào thải khỏi nghề này.', 'normal', 16, 'banhang.jpg', '', '', '', 'vnđ', 78000, '2016-05-26 00:00:00'),
(47, 9, 'Nghệ thuật chinh phục khách hàng', ' Rất nhiều giám đốc dịch vụ khách hàng sau khi đọc xong quyển sách này đã biến công ty của mình thành một tổ chức “thân thiện với lời phàn nàn” và đã trở thành một trong những công ty có khả năng cung cấp dịch vụ khách hàng tuyệt hảo. Đây không phải là một con đường dễ dàng, và cũng không xảy ra chỉ sau một đêm mà nó là cả một quá trình diễn ra từng bước một. Việc đọc cuốn sách này là một trong những bước đi đầu tiên tốt nhất mà bạn có thể thực hiện ngay.\r\n\r\n \r\n\r\nTheo các tác giả, để sản phẩm - dịch vụ của bạn luôn được khách hàng tin tưởng chọn lựa đầu tiên trong các sản phẩm cùng loại thì cách tốt nhất để đạt được mục tiêu này là xây dựng một văn hóa công ty lấy khách hàng làm trọng tâm. Khi doanh nghiệp xây dựng thành công nền văn hóa đó thì hầu hết những điều kiện cần thiết khác để cung cấp dịch vụ hoàn hảo cho khách hàng sẽ tự động xuất hiện.\r\n\r\n \r\n\r\n\r\nRất nhiều giám đốc dịch vụ khách hàng sau khi đọc xong quyển sách này đã biến công ty của mình thành một tổ chức “thân thiện với lời phàn nàn” và đã trở thành một trong những công ty có khả năng cung cấp dịch vụ khách hàng tuyệt hảo. Đây không phải là một con đường dễ dàng, và cũng không xảy ra chỉ sau một đêm mà nó là cả một quá trình diễn ra từng bước một. Việc đọc cuốn sách này là một trong những bước đi đầu tiên tốt nhất mà bạn có thể thực hiện ngay.', 'normal', 16, 'chinhphuc.jpg', '', '', '', 'vnđ', 72000, '2016-05-25 00:00:00'),
(48, 48, 'Quản trị học vui vẽ', '"Và khi đã đi làm rất lâu rồi, trải qua rất nhiều va chạm rồi, vượt qua rất nhiều khó khăn và giải quyết rất nhiều xung đột giữa các mối quan hệ rồi, thì rất nhiều khi bạn lại tiếp tục... rối.\r\n\r\nLý do là cuộc sống quá phức tạp và đa diện, còn các bài học từ sách vở lại quá giản đơn, cho dù bạn đã phải rất vất vả để vượt qua các bài thi không hề dễ chịu\r\n\r\nHơn thế nữa, cứ nhắc đến quản trị là tự dưng chúng ta thấy... nhức đầu, như một phản xạ có điều kiện. Cứ nhìn những người làm công tác quản lý loay hoay với công việc của họ mà thấy sợ, lúc nào cũng tất bật, lúc nào cũng cau có, lúc nào cũng sẵn sàng nổ tung. Lắm khi chúng ta băn khoăn, không lẽ cuộc đời lại vất vả đến thế sao?!"', 'New', 16, 'quantrihocvuive.jpg', '', '', '', 'VNĐ', 55200, '2016-05-30 16:10:15'),
(49, 49, 'Kế toán tài chính song ngữ Financial Accounting', 'Sách kế toán tài chính song ngữ Anh Việt Financial Accounting có sự so sánh kế toán từng tài khoản, báo cáo giữa VAS vời IFRS và các quy định cũ. Do vậy bạn đọc hiếu tốt hơn bàn chắt kế toán Việt Nam, có thế áp dụng IFRS cho các công ty nước ngoài. đặc biệt Financial Accounting 2015 so sánh TT 200/2014/TT-BTC với các quy định cũ, để dễ học và chuyến đổi nhanh. sách kế toán tài chính trần xuân năm 2015 Financial Accounting theo thông tư 200 bộ tài chính.\r\n  Sách kế toán tài chính Financial Accounting TT 2000/2014/TT-BTC mới nhất Trình bày các thực tế kể toán tốt nhất mà nó được áp dụng rộng rãi và hiệu quả tại các công ty đa quốc gia và các công ty thành công ở Việt Nam mà VAS chưa đề cập. Do vậy bạn đọc có thế áp dụng các thực tế kế toán tốt nhất mà luật pháp cho phép.', 'normal', 4, 'ketoansongngu.jpg', '', '', '', 'VNĐ', 750000, '2016-05-30 17:09:00');

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
(3, 3, 'Văn Học ', '', '2016-05-24 00:00:00'),
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
(16, 16, 'Quản Trị Kinh doanh', '', '2016-05-30 16:09:03');

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
  MODIFY `BOOK_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CATEGORY_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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

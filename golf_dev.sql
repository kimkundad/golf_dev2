-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2020 at 08:40 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golf_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_cat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_cat`, `image_cat`, `created_at`, `updated_at`) VALUES
(1, 'รับเหมา ทำพื้นพิมพ์ลาย', '1601019045.jpg', '2018-08-29 01:40:19', '2020-09-25 07:30:45'),
(4, 'รับเหมาทำ ผนังพิมพ์ลายหิน', '1601019178.jpg', '2018-08-29 02:04:08', '2020-09-25 07:32:58'),
(5, 'รับเหมา พื้นคอนกรีตลอกลาย', '1601019314.jpg', '2018-09-07 02:57:34', '2020-09-25 07:35:14'),
(17, 'ทำสีพื้น สีกรดย้อมคอนกรีต', '1601019380.jpg', '2020-09-25 07:36:20', '2020-09-25 07:36:20'),
(18, 'ขัดเงาพื้น Polishing Concrete', '1601019467.jpg', '2020-09-25 07:37:47', '2020-09-25 07:37:47'),
(19, 'รับเหมา ผนังทำสีลอฟท์', '1601024176.jpg', '2020-09-25 08:56:16', '2020-09-25 08:56:16'),
(20, 'ติดตั้งแผ่น MMWALL แผ่นแต่งผนัง 3มิติ', '1601024234.jpg', '2020-09-25 08:57:14', '2020-09-25 08:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `cat_teches`
--

CREATE TABLE `cat_teches` (
  `id` int(10) UNSIGNED NOT NULL,
  `tech_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cat_teches`
--

INSERT INTO `cat_teches` (`id`, `tech_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(81, 13, 1, NULL, NULL),
(82, 13, 5, NULL, NULL),
(83, 13, 18, NULL, NULL),
(92, 26, 1, NULL, NULL),
(93, 26, 5, NULL, NULL),
(94, 26, 17, NULL, NULL),
(95, 18, 1, NULL, NULL),
(96, 18, 4, NULL, NULL),
(97, 18, 5, NULL, NULL),
(98, 18, 17, NULL, NULL),
(99, 18, 20, NULL, NULL),
(118, 27, 1, NULL, NULL),
(119, 27, 4, NULL, NULL),
(120, 27, 5, NULL, NULL),
(121, 27, 17, NULL, NULL),
(122, 27, 19, NULL, NULL),
(123, 27, 20, NULL, NULL),
(124, 28, 17, NULL, NULL),
(125, 28, 19, NULL, NULL),
(126, 28, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kim kundad', 'kim.kundad@gmail.com', 'test send data', 'test send data', 1, '2020-10-16 02:56:33', '2020-10-16 02:56:41'),
(2, 'Jones', 'eric@ow.ly', 'Strike when the iron’s hot', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found xn--12caikbp2fbd2b1h3eocuc6k6dg.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Traffic is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nClick Here ==> http://ow.ly/r8eS50C1qo7 to try out a Live Demo with Talk With Web Traffic now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nClick Here ==> http://ow.ly/r8eS50C1qo7 to learn more about everything Talk With Web Traffic can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Traffic offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nClick Here ==> http://ow.ly/r8eS50C1qo7 to try Talk With Web Traffic now.\r\n\r\nIf you\'d like to unsubscribe ==> http://ow.ly/cOcy50C1qte', 0, '2020-10-25 12:23:16', '2020-10-25 12:23:16'),
(3, 'Contactbop', 'no-replyFedon@gmail.com', 'The best advertising of your products and services!', 'Hеllо!  xn--12caikbp2fbd2b1h3eocuc6k6dg.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd mеssаgе   lеgitimаtе wаy? \r\nWе prоpоsе а nеw lеgаl wаy оf sеnding аppеаl thrоugh соntасt fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh businеss prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соntасt Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp - +375259112693', 0, '2020-11-03 05:52:52', '2020-11-03 05:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_08_29_075206_create_categories_table', 2),
(16, '2018_08_29_090556_create_teches_table', 3),
(17, '2018_08_29_104226_create_tech_galleries_table', 3),
(18, '2018_08_29_104521_create_tech_skills_table', 3),
(19, '2018_08_29_104549_create_skills_table', 3),
(20, '2018_08_29_104715_create_cat_teches_table', 3),
(21, '2018_08_29_215640_create_province_ths_table', 3),
(22, '2018_09_11_194845_create_text_to_teches_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('angkanagab.2539@gmail.com', '$2y$10$cuvKnQphvGE.VhQgyEwhUOLDIszTJTm0oR.gPfW2zGm9tVbaC4Yii', '2018-10-03 05:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `province_ths`
--

CREATE TABLE `province_ths` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_lon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_zoom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `province_ths`
--

INSERT INTO `province_ths` (`id`, `province_name`, `province_lat`, `province_lon`, `province_zoom`) VALUES
(1, 'กรุงเทพมหานคร', '13.7278956', '100.52412349999997', '13'),
(2, 'กระบี่', '8.0862997', '98.90628349999997', '13'),
(3, 'กาญจนบุรี', '14.0227797', '99.53281149999998', '13'),
(4, 'กาฬสินธุ์', '16.4314078', '103.5058755', '13'),
(5, 'กำแพงเพชร', '16.4827798', '99.52266179999992', '13'),
(6, 'ขอนแก่น', '16.4419355', '102.8359921', '13'),
(7, 'จันทบุรี', '12.61134', '102.10385459999998', '13'),
(8, 'ฉะเชิงเทรา', '13.6904194', '101.07795959999999', '13'),
(9, 'ชลบุรี', '13.3611431', '100.98467170000004', '13'),
(10, 'ชัยนาท', '15.1851971', '100.12512500000003', '13'),
(11, 'ชัยภูมิ', '15.8068173', '102.03150270000003', '13'),
(12, 'ชุมพร', '10.4930496', '99.18001989999993', '13'),
(13, 'เชียงราย', '19.9071656', '99.83095500000002', '13'),
(14, 'เชียงใหม่', '18.7877477', '98.99313110000003', '13'),
(15, 'ตรัง', '7.5593851', '99.61100650000003', '13'),
(16, 'ตราด', '12.2427563', '102.51747339999997', '13'),
(17, 'ตาก', '16.8839901', '99.12584979999997', '13'),
(18, 'นครนายก', '14.2069466', '101.21305110000003', '13'),
(19, 'นครปฐม', '13.8199206', '100.06216760000007', '13'),
(20, 'นครพนม', '17.392039', '104.76955079999993', '13'),
(21, 'นคราชสีมา', '14.9798997', '102.09776929999998', '13'),
(22, 'นครศรีธรรมราช', '8.4303975', '99.96312190000003', '13'),
(23, 'นครสวรรค์', '15.6930072', '100.12255949999997', '13'),
(24, 'นนทบุรี', '13.8621125', '100.51435279999998', '13'),
(25, 'นราธิวาส', '6.4254607', '101.82531429999995', '13'),
(26, 'น่าน', '18.7756318', '100.77304170000002', '13'),
(27, 'บุรีรัมย์', '14.9930017', '103.10291910000001', '13'),
(28, 'ปทุมธานี', '14.0208391', '100.52502759999993', '13'),
(29, 'ประจวบคีรีขันธ์', '11.812367', '99.79732709999996', '13'),
(30, 'ปราจีนบุรี', '14.0509704', '101.37274389999993', '13'),
(31, 'ปัตตานี', '6.869484399999999', '101.25048259999994', '13'),
(32, 'พระนครศรีอยุธยา', '14.3532128', '100.56895989999998', '13'),
(33, 'พะเยา', '19.1664789', '99.9019419', '13'),
(34, 'พังงา', '8.4407456', '98.51930319999997', '13'),
(35, 'พัทลุง', '7.6166823', '100.07402309999998', '13'),
(36, 'พิจิตร', '16.4429516', '100.34823289999997', '13'),
(37, 'พิษณุโลก', '16.8298048', '100.26149150000003', '13'),
(38, 'เพชรบุรี', '13.1111601', '99.93913069999996', '13'),
(39, 'เพชรบูรณ์', '16.4189807', '101.15509259999999', '13'),
(40, 'แพร่', '18.1445774', '100.14028310000003', '13'),
(41, 'ภูเก็ต', '7.9810496', '98.36388239999997', '13'),
(42, 'มหาสารคาม', '16.1850896', '103.30264609999995', '13'),
(43, 'มุกดาหาร', '16.542443', '104.72091509999996', '13'),
(44, 'แม่ฮ่องสอน', '19.2990643', '97.96562259999996', '13'),
(45, 'ยโสธร', '15.792641', '104.14528270000005', '13'),
(46, 'ยะลา', '6.541147', '101.28039469999999', '13'),
(47, 'ร้อยเอ็ด', '16.0538196', '103.65200359999994', '13'),
(48, 'ระนอง', '9.9528702', '98.60846409999999', '13'),
(49, 'ระยอง', '12.6833115', '101.23742949999996', '13'),
(50, 'ราชบุรี', '13.5282893', '99.81342110000003', '13'),
(51, 'ลพบุรี', '14.7995081', '100.65337060000002', '13'),
(52, 'ลำปาง', '18.2888404', '99.49087399999996', '13'),
(53, 'ลำพูน', '18.5744606', '99.0087221', '13'),
(54, 'เลย', '17.4860232', '101.72230020000006', '13'),
(55, 'ศรีสะเกษ', '15.1186009', '104.32200949999992', '13'),
(56, 'สกลนคร', '17.1545995', '104.1348365', '13'),
(57, 'สงขลา', '7.1756004', '100.61434699999995', '13'),
(58, 'สตูล', '6.6238158', '100.06737440000006', '13'),
(59, 'สมุทรปราการ', '13.5990961', '100.59983190000003', '13'),
(60, 'สมุทรสงคราม', '13.4098217', '100.00226450000002', '13'),
(61, 'สมุทรสาคร', '13.5475216', '100.27439559999993', '13'),
(62, 'สระแก้ว', '13.824038', '102.0645839', '13'),
(63, 'สระบุรี', '14.5289154', '100.91014210000003', '13'),
(64, 'สิงห์บุรี', '14.8936253', '100.39673140000002', '13'),
(65, 'สุโขทัย', '17.0055573', '99.82637120000004', '13'),
(66, 'สุพรรณบุรี', '14.4744892', '100.11771279999994', '13'),
(67, 'สุราษฎร์ธานี', '9.1382389', '99.32174829999997', '13'),
(68, 'สุรินทร์', '14.882905', '103.49371070000007', '13'),
(69, 'หนองคาย', '17.8782803', '102.74126380000007', '13'),
(70, 'หนองบัวลำภู', '17.2218247', '102.42603680000002', '13'),
(71, 'อ่างทอง', '14.5896054', '100.45505200000002', '13'),
(72, 'อำนาจเจริญ', '15.8656783', '104.62577740000006', '13'),
(73, 'อุดรธานี', '17.4138413', '102.78723250000007', '13'),
(74, 'อุตรดิตถ์', '17.6200886', '100.09929420000003', '13'),
(75, 'อุทัยธานี', '15.3835001', '100.02455269999996', '13'),
(76, 'อุบลราชธานี', '15.2286861', '104.85642170000006', '13'),
(77, 'บึงกาฬ', '18.3609104', '103.64644629999998', '13');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compony` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `title_company` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_title` text COLLATE utf8mb4_unicode_ci,
  `fb_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone`, `fax`, `website`, `email`, `compony`, `address`, `title_company`, `lat`, `lng`, `facebook_img`, `logo_img`, `fb_title`, `fb_detail`, `created_at`, `updated_at`) VALUES
(1, '0932546566', '-', 'ช่างตกแต่งคอนกรีต.com', 'concretedecorthailand@gmail.com', 'Concreate Decor', '3/6 ม.6 ต.คอกกระบือ อ.เมืองสมุทรสาคร จ.สมุทรสาคร', 'จุดศูนย์กลางแห่งการตกแต่งคอนกรีตแนวใหม่ ... ผลิต ขาย สอน รับเหมา งานคอนกรีตพิมพ์ลาย ตกแต่งสีพื้นและผนัง', '13.598365539183348', '100.31797802054355', '1538452798.png', '1538003288.png', 'ช่างตกแต่งคอนกรีต', 'จุดศูนย์กลางแห่งการตกแต่งคอนกรีตแนวใหม่ ... ผลิต ขาย สอน รับเหมา งานคอนกรีตพิมพ์ลาย ตกแต่งสีพื้นและผนัง', NULL, '2020-10-16 02:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `created_at`, `updated_at`) VALUES
(1, 'ประสบการณ์ 10 ปี', NULL, '2018-10-09 02:40:32'),
(2, 'อุปกรณ์ที่ได้มาตรฐาน', NULL, NULL),
(3, 'ตรงต่อเวลา', NULL, NULL),
(6, 'ราคาต่อรองกันได้', NULL, NULL),
(7, 'ประสบการณ์ 2 ปี', '2020-09-25 07:40:42', '2020-09-25 07:40:42'),
(8, 'ประสบการณ์ 5 ปี', '2020-09-25 07:40:48', '2020-09-25 07:40:48'),
(9, 'รับงานนอกพื้นที่ได้', '2020-09-25 07:41:31', '2020-09-25 07:41:31'),
(10, 'มีรับประกันผลงาน', '2020-09-25 07:41:45', '2020-09-25 07:41:45'),
(11, 'ดูหน้างานฟรี', '2020-09-25 07:42:20', '2020-09-25 07:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `teches`
--

CREATE TABLE `teches` (
  `id` int(10) UNSIGNED NOT NULL,
  `tech_fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_sex` int(10) NOT NULL DEFAULT '0',
  `tumbon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_detail` text COLLATE utf8mb4_unicode_ci,
  `tech_project` longtext COLLATE utf8mb4_unicode_ci,
  `tech_status` int(11) NOT NULL DEFAULT '0',
  `tech_view` int(11) NOT NULL DEFAULT '0',
  `tech_rating` int(11) NOT NULL DEFAULT '0',
  `tech_status_show` int(11) NOT NULL DEFAULT '0',
  `lat` text COLLATE utf8mb4_unicode_ci,
  `lng` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teches`
--

INSERT INTO `teches` (`id`, `tech_fname`, `tech_lname`, `tech_phone`, `tech_email`, `tech_image`, `tech_sex`, `tumbon`, `district`, `province_id`, `zip_code`, `tech_detail`, `tech_project`, `tech_status`, `tech_view`, `tech_rating`, `tech_status_show`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(13, 'จักรฤษ', 'กำปั่นทอง', '0932546566', 'ceo.chakkrit@gmail.com', '1601018942.jpg', 0, NULL, NULL, 61, NULL, 'ช่างรับเหมางานตกแต่งคอนกรีต\r\nสำหรับงานบ้าน ที่ต้องการงานคุณภาพดี ทั้งวัสดุที่ใช้และทักษะการรับเหมา', NULL, 1, 28, 5, 1, '13.598380', '100.318032', '2018-10-03 02:27:05', '2020-09-25 07:44:13'),
(18, 'หจก.อันดามันแสตมป์คอนกรีต', 'ช่างเจ', '0815847333', NULL, '1539160034.jpg', 0, NULL, NULL, 41, NULL, 'งานสวยโดยช่างมืออาชีพ ช่างที่มีงานรับเหมาตกแต่งพื้นคอนกรีต ประสบการณ์มากที่สุดในภาคใต้ เก่งงานพื้นคอนกรีตพิมพ์ลาย ผลงานในจังหวัดมากมาย', NULL, 1, 135, 4, 1, '7.97804557932299', '98.33787371016467', '2018-10-10 08:27:14', '2020-09-25 07:46:09'),
(26, 'ว่าที่ ร.ต.จักรภพ', 'วงษ์โคต', '0928475195', NULL, '1601023518.jpg', 0, NULL, NULL, 38, NULL, 'ช่างเอ็ม ช่างฝีมือดีเก่งงาน คอนกรีตพิมพ์ลาย ลูกค้าติดใจทำงานเรียบร้อย ทีมงานคุณภาพ เครื่องมืออุปกรณ์แบบมืออาชีพ', NULL, 1, 23, 5, 1, '12.914349', '99.858631', '2020-09-25 08:45:19', '2020-09-25 08:46:06'),
(27, 'จุลศักดิ์', 'ประกาแดง', '0854980310', 'ceo.chakkrit@gmail.com', '1602744458.jpg', 0, NULL, NULL, 76, NULL, 'ช่างปิง มือหนึ่งในจังหวัดอุบลราชธานี', NULL, 1, 17, 4, 1, '15.272971', '104.843981', '2020-10-15 06:47:38', '2020-10-15 06:49:18'),
(28, 'จินต์จุฑา สมพลธนกุล', 'ช่างเมี่ยง', '0929656605', 'concretedecorthailand@gmail.com', '1602744943.jpg', 1, NULL, NULL, 1, NULL, 'ช่างเมี่ยง รับงานตกแต่งปูน ทำสีพื้น ผนัง สีลอฟท์ ติดแผ่นลายอิฐ', NULL, 1, 13, 4, 1, '13.870279', '100.413096', '2020-10-15 06:55:43', '2020-10-15 06:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `tech_galleries`
--

CREATE TABLE `tech_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `tech_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tech_galleries`
--

INSERT INTO `tech_galleries` (`id`, `tech_id`, `image`, `created_at`, `updated_at`) VALUES
(74, 18, '1539160256-42045308_457952164715548_4405848448046202880_n.jpg', NULL, NULL),
(75, 18, '1539160256-42095852_457952224715542_5624337486034501632_n.jpg', NULL, NULL),
(76, 18, '1539160270-42045308_457952164715548_4405848448046202880_n.jpg', NULL, NULL),
(77, 18, '1539160270-42095852_457952224715542_5624337486034501632_n.jpg', NULL, NULL),
(78, 18, '1539160427-36941146_401477023696396_2425501665663647744_n.jpg', NULL, NULL),
(79, 18, '1539160456-1539160333877.jpg', NULL, NULL),
(80, 18, '1539160456-1539160356196.jpg', NULL, NULL),
(85, 13, '1601022517-Stamped-3.JPG', NULL, NULL),
(86, 13, '1601022517-Stamped-1.jpg', NULL, NULL),
(87, 13, '1601022517-Stamped-2.jpg', NULL, NULL),
(88, 13, '1601022517-Stamped-4.jpg', NULL, NULL),
(89, 13, '1601022517-Stamped-6.jpg', NULL, NULL),
(90, 13, '1601022517-Stamped-5.jpg', NULL, NULL),
(91, 13, '1601022517-Stamped-7.jpg', NULL, NULL),
(92, 26, '1601023615-M-ช่าง-2.jpg', NULL, NULL),
(93, 26, '1601023616-M-ช่าง-3.jpg', NULL, NULL),
(94, 26, '1601023616-M-ช่าง-7.jpg', NULL, NULL),
(95, 26, '1601023616-ช่างเอ็ม_200925_2.jpg', NULL, NULL),
(134, 28, '1602815312-6691.jpg', NULL, NULL),
(135, 28, '1602815312-7780.jpg', NULL, NULL),
(136, 28, '1602815312-5562.jpg', NULL, NULL),
(137, 28, '1602815312-5639.jpg', NULL, NULL),
(138, 28, '1602815312-3494.jpg', NULL, NULL),
(139, 28, '1602815312-9283.jpg', NULL, NULL),
(140, 28, '1602815312-8993.jpg', NULL, NULL),
(141, 28, '1602815312-4004.jpg', NULL, NULL),
(142, 28, '1602815312-8214.jpg', NULL, NULL),
(143, 28, '1602815312-6155.jpg', NULL, NULL),
(144, 28, '1602815313-7930.jpg', NULL, NULL),
(145, 28, '1602815313-8347.jpg', NULL, NULL),
(146, 28, '1602815313-4582.jpg', NULL, NULL),
(147, 28, '1602815313-3329.jpg', NULL, NULL),
(148, 28, '1602815313-3040.jpg', NULL, NULL),
(149, 28, '1602815313-3660.jpg', NULL, NULL),
(150, 28, '1602815313-1684.jpg', NULL, NULL),
(151, 28, '1602815313-2595.jpg', NULL, NULL),
(152, 27, '1604029894-8741.jpg', NULL, NULL),
(153, 27, '1604030021-2710.jpg', NULL, NULL),
(154, 27, '1604030021-7801.jpg', NULL, NULL),
(155, 27, '1604030021-4324.jpg', NULL, NULL),
(156, 27, '1604030021-2280.jpg', NULL, NULL),
(157, 27, '1604030022-7426.jpg', NULL, NULL),
(158, 27, '1604030022-8526.jpg', NULL, NULL),
(159, 27, '1604030022-2295.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tech_jobs`
--

CREATE TABLE `tech_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tech_id` int(11) NOT NULL,
  `name_job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_job` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tech_jobs`
--

INSERT INTO `tech_jobs` (`id`, `tech_id`, `name_job`, `detail_job`, `status`, `created_at`, `updated_at`) VALUES
(20, 18, 'ผลงานการตกแต่งคอนกรีต', '- พื้น-ผนังคอนกรีตพิมพ์ลาย\r\n- พื้น-ผนังคอนกรีตลอกลาย\r\n- พื้น-ผนังขัดเงา', 0, '2018-10-10 08:36:48', '2018-10-10 08:36:48'),
(21, 13, 'ผลงานพิมพ์ลาย Random', NULL, 0, '2020-09-25 08:29:29', '2020-09-25 08:29:29'),
(22, 26, 'ผลงานคอนกรีตพิมพ์ลาย', 'ผลงานคอนกรีตพิมพ์ลาย', 0, '2020-09-25 08:47:24', '2020-09-25 08:47:24'),
(23, 26, 'ผลงานคอนกรีตพิมพ์ลาย', 'ใช้แม่พิมพ์ลาย Ashlar', 0, '2020-09-25 08:52:07', '2020-09-25 08:52:07'),
(24, 27, 'ผลงานทีมช่างอุบลราชธานี', 'ผลงานทีมช่างอุบลราชธานี', 0, '2020-10-15 06:50:59', '2020-10-15 06:50:59'),
(25, 28, 'ผลงานตกแต่งคอนกรีต', 'ผลงานตกแต่งคอนกรีต', 0, '2020-10-15 06:56:13', '2020-10-15 06:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `tech_job_imgs`
--

CREATE TABLE `tech_job_imgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tech_job_imgs`
--

INSERT INTO `tech_job_imgs` (`id`, `job_id`, `image`, `created_at`, `updated_at`) VALUES
(41, 13, '1537845464-800_townhouse_painting.jpg', NULL, NULL),
(42, 13, '1537845464-2017-01-12_7268130.jpg', NULL, NULL),
(43, 13, '1537845464-1232718383.jpg', NULL, NULL),
(44, 13, '1537845464-R7388955-0.jpg', NULL, NULL),
(45, 13, '1537845464-เทคนิคการทาสีบ้านให้สวย (1).jpg', NULL, NULL),
(60, 17, '1538533765-800_townhouse_painting.jpg', NULL, NULL),
(61, 17, '1538533765-2017-01-12_7268130.jpg', NULL, NULL),
(62, 17, '1538533765-download.jpg', NULL, NULL),
(63, 17, '1538533765-nguyen-tac-co-ban-trong-thiet-ke-noi-that-chung-cu-nho5.jpg', NULL, NULL),
(64, 17, '1538533765-R7388955-0.jpg', NULL, NULL),
(75, 20, '1539160608-36941146_401477023696396_2425501665663647744_n.jpg', NULL, NULL),
(76, 20, '1539160608-42045308_457952164715548_4405848448046202880_n.jpg', NULL, NULL),
(77, 20, '1539160608-42095852_457952224715542_5624337486034501632_n.jpg', NULL, NULL),
(78, 20, '1539160608-1539160333877.jpg', NULL, NULL),
(79, 20, '1539160608-1539160356196.jpg', NULL, NULL),
(80, 21, '1601022569-Stamped-1.jpg', NULL, NULL),
(81, 21, '1601022569-Stamped-2.jpg', NULL, NULL),
(82, 21, '1601022569-Stamped-3.JPG', NULL, NULL),
(83, 21, '1601022569-Stamped-4.jpg', NULL, NULL),
(84, 21, '1601022569-Stamped-5.jpg', NULL, NULL),
(85, 21, '1601022569-Stamped-6.jpg', NULL, NULL),
(86, 21, '1601022569-Stamped-7.jpg', NULL, NULL),
(87, 22, '1601023644-M-ช่าง-4.jpg', NULL, NULL),
(88, 22, '1601023644-M-ช่าง-5.jpg', NULL, NULL),
(89, 22, '1601023644-M-ช่าง-6.jpg', NULL, NULL),
(90, 22, '1601023644-M-ช่าง-7.jpg', NULL, NULL),
(91, 22, '1601023644-M-ช่าง-8.jpg', NULL, NULL),
(92, 22, '1601023644-M-ช่าง-9.jpg', NULL, NULL),
(93, 22, '1601023644-M-ช่าง-10.jpg', NULL, NULL),
(94, 22, '1601023644-M-ช่าง-11.jpg', NULL, NULL),
(95, 22, '1601023644-M-ช่าง-12.jpg', NULL, NULL),
(96, 22, '1601023644-M-ช่าง-13.jpg', NULL, NULL),
(97, 22, '1601023644-M-ช่าง-14.jpg', NULL, NULL),
(98, 22, '1601023644-M-ช่าง-15.jpg', NULL, NULL),
(99, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (1).jpg', NULL, NULL),
(100, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (2).jpg', NULL, NULL),
(101, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (3).jpg', NULL, NULL),
(102, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (4).jpg', NULL, NULL),
(103, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (5).jpg', NULL, NULL),
(104, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (6).jpg', NULL, NULL),
(105, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (7).jpg', NULL, NULL),
(106, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (8).jpg', NULL, NULL),
(107, 23, '1601023927-ช่างเอ็มพิมพ์ลายAshlar (9).jpg', NULL, NULL),
(108, 24, '1602744659-พลงาน (1).jpg', NULL, NULL),
(109, 24, '1602744659-พลงาน (2).jpg', NULL, NULL),
(110, 24, '1602744659-พลงาน (3).jpg', NULL, NULL),
(111, 24, '1602744659-พลงาน (4).jpg', NULL, NULL),
(112, 24, '1602744659-พลงาน (5).jpg', NULL, NULL),
(113, 24, '1602744659-พลงาน (6).jpg', NULL, NULL),
(114, 24, '1602744659-พลงาน (7).jpg', NULL, NULL),
(115, 24, '1602744659-พลงาน (8).jpg', NULL, NULL),
(116, 25, '1602744973-ผลงาน (1).jpg', NULL, NULL),
(117, 25, '1602744973-ผลงาน (2).jpg', NULL, NULL),
(118, 25, '1602744973-ผลงาน (3).jpg', NULL, NULL),
(119, 25, '1602744973-ผลงาน (4).jpg', NULL, NULL),
(120, 25, '1602744973-ผลงาน (5).jpg', NULL, NULL),
(121, 25, '1602744973-ผลงาน (6).jpg', NULL, NULL),
(122, 25, '1602744973-ผลงาน (7).jpg', NULL, NULL),
(123, 25, '1602744973-ผลงาน (8).jpg', NULL, NULL),
(124, 25, '1602744973-ผลงาน (9).jpg', NULL, NULL),
(125, 25, '1602744973-ผลงาน (10).jpg', NULL, NULL),
(126, 25, '1602744973-ผลงาน (11).jpg', NULL, NULL),
(127, 25, '1602744973-ผลงาน (12).jpg', NULL, NULL),
(128, 25, '1602744973-ผลงาน (13).jpg', NULL, NULL),
(129, 25, '1602744973-ผลงาน (14).jpg', NULL, NULL),
(130, 25, '1602744973-ผลงาน (15).jpg', NULL, NULL),
(131, 25, '1602744973-ผลงาน (16).jpg', NULL, NULL),
(132, 25, '1602744973-ผลงาน (17).jpg', NULL, NULL),
(133, 25, '1602744973-ผลงาน (18).jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tech_skills`
--

CREATE TABLE `tech_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `tech_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tech_skills`
--

INSERT INTO `tech_skills` (`id`, `tech_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(266, 13, 1, NULL, NULL),
(267, 13, 2, NULL, NULL),
(268, 13, 3, NULL, NULL),
(269, 13, 10, NULL, NULL),
(270, 13, 11, NULL, NULL),
(283, 26, 2, NULL, NULL),
(284, 26, 3, NULL, NULL),
(285, 26, 6, NULL, NULL),
(286, 26, 7, NULL, NULL),
(287, 26, 9, NULL, NULL),
(288, 26, 10, NULL, NULL),
(289, 26, 11, NULL, NULL),
(290, 18, 2, NULL, NULL),
(291, 18, 3, NULL, NULL),
(292, 18, 6, NULL, NULL),
(293, 18, 8, NULL, NULL),
(294, 18, 10, NULL, NULL),
(295, 18, 11, NULL, NULL),
(311, 27, 2, NULL, NULL),
(312, 27, 3, NULL, NULL),
(313, 27, 8, NULL, NULL),
(314, 27, 9, NULL, NULL),
(315, 27, 10, NULL, NULL),
(316, 28, 2, NULL, NULL),
(317, 28, 3, NULL, NULL),
(318, 28, 6, NULL, NULL),
(319, 28, 7, NULL, NULL),
(320, 28, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `text_to_teches`
--

CREATE TABLE `text_to_teches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tech_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT '0',
  `a_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_to_teches`
--

INSERT INTO `text_to_teches` (`id`, `name`, `phone`, `email`, `comments`, `tech_id`, `note`, `m_status`, `a_status`, `created_at`, `updated_at`) VALUES
(7, 'เดอะไฮทส์ ภูเก็ต', '076-363 111/0995909019', 'anisara.chusri@cbre.co.th', 'ต้องการซ่อมแซมพื้นแสตมป์แคอนกรีตที่แตกร้าว', 18, '', 0, 0, '2019-10-04 03:33:26', '2019-10-04 03:33:26'),
(8, 'ฐิตินันท์ บุญประเสริฐ', '0646264878', 'bunprasoet.pt@gmail.com', '( หน้างาน ) อำเภอวังน้อย พระนครศรีอยุทธยา', 13, '', 0, 0, '2020-11-07 23:48:49', '2020-11-07 23:48:49'),
(9, 'ฐิตินันท์ บุญประเสริฐ', '0646264878', 'bunprasoet.pt@gmail.com', '( หน้างาน ) ตำบล คลองหนึ่ง อำเภอคลองหลวง ปทุมธานี', 26, '', 0, 0, '2020-11-07 23:51:29', '2020-11-07 23:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `provider`, `provider_id`, `access_token`, `avatar`, `phone`, `address`, `birthday`, `zipcode`, `country`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'kim.kundad@gmail.com', '$2y$10$9u52moZpQpwYVyIHfKXTeO7jTY13RNGAWxB/robERifBVF3eKhsCm', 1, 'email', NULL, NULL, '1483556686.png', NULL, NULL, NULL, NULL, NULL, '3RxS5y5IA38zlVNI5ZCFyJPiYNEiKipmLrW8K8qwA0t6d28FNJKd68fa864c', '2018-08-29 21:41:53', '2018-11-14 03:12:58'),
(2, 'angkana', 'angkanagab.2539@gmail.com', '$2y$10$dWv9XURYRls7ZFKOS4PcVuy1fLoKiIYAuXpsj89QlqgUIR6gqUhDW', 1, 'email', NULL, NULL, '1483556686.png', NULL, NULL, NULL, NULL, NULL, 'Tl2B1PEiz9UAr7L3qP5XLxnyGPMTODRJUCdv1pcglVMHt8PoYKUWGlGSJqBq', '2018-10-03 04:56:36', '2018-10-03 04:56:36'),
(3, 'yasinee', 'yasinee@mmplus-house.com', '$2y$10$nTyh9p2BL8nm/j5hG2joNear4GtOXeUcm1uq5xA6/dOumJDsgcYge', 1, 'email', NULL, NULL, '1483537975.png', NULL, NULL, NULL, NULL, NULL, '7Fn5125ims6urLSdw8rQV5zOKddWAWFM5gs6aeVAydE6snjDVI7l5lvSvfSY', '2018-10-03 05:24:24', '2018-10-03 05:24:24'),
(4, 'Golf@ideavivat.com', 'golf@ideavivat.com', '$2y$10$51BBr91MusZOVw1H9VwI1uMzO98garOS4xufHMsXl1sHRQlrkOVqC', 1, 'email', NULL, NULL, '1539050916.jpg', NULL, NULL, NULL, NULL, NULL, 'FDSOKmoeSH77WV4Ux7SqBCwPT3tVXp9UqUO0dpEjCGi4G4ryFcZqv2ssROc1', '2018-10-09 02:08:36', '2018-11-14 04:58:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_teches`
--
ALTER TABLE `cat_teches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `province_ths`
--
ALTER TABLE `province_ths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teches`
--
ALTER TABLE `teches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_galleries`
--
ALTER TABLE `tech_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_job_imgs`
--
ALTER TABLE `tech_job_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_skills`
--
ALTER TABLE `tech_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_to_teches`
--
ALTER TABLE `text_to_teches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cat_teches`
--
ALTER TABLE `cat_teches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `province_ths`
--
ALTER TABLE `province_ths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `teches`
--
ALTER TABLE `teches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tech_galleries`
--
ALTER TABLE `tech_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `tech_jobs`
--
ALTER TABLE `tech_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tech_job_imgs`
--
ALTER TABLE `tech_job_imgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `tech_skills`
--
ALTER TABLE `tech_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT for table `text_to_teches`
--
ALTER TABLE `text_to_teches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

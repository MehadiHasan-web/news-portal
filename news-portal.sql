-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2023 at 07:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 'gffgf', 'gffsfg4254', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_bn` varchar(255) NOT NULL,
  `category_en` varchar(255) NOT NULL,
  `soft_delate` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delate`, `created_at`, `updated_at`) VALUES
(1, 'আন্তর্জাতিক', 'International', '0', '2023-07-22 11:43:17', '2023-07-22 11:43:17'),
(2, 'বিনোদন', 'Entertainme', '0', '2023-07-22 11:43:29', '2023-07-22 11:43:29'),
(3, 'ব্যবসা', 'business', '0', '2023-07-22 11:43:52', '2023-07-22 11:43:52'),
(4, 'প্রযুক্তি', 'Technology', '0', '2023-07-23 13:58:08', '2023-07-23 13:58:08'),
(5, 'স্বাস্থ্য', 'Health', '0', '2023-07-23 13:58:29', '2023-07-23 13:58:29'),
(6, 'শিক্ষা', 'Education', '0', '2023-07-23 13:58:45', '2023-07-23 13:58:45'),
(7, 'অর্থনীতি', 'Finance', '0', '2023-07-23 13:59:09', '2023-07-23 13:59:09'),
(8, 'খেলা', 'Sports', '0', '2023-07-23 13:59:41', '2023-07-23 13:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_en` varchar(255) NOT NULL,
  `district_bn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_en`, `district_bn`, `created_at`, `updated_at`) VALUES
(1, 'সিলেট', 'Sylhet', '2023-07-22 11:44:10', '2023-07-27 05:01:21'),
(2, 'নোয়াখালী', 'Noakhali', '2023-07-22 11:44:16', '2023-07-27 05:00:47'),
(3, 'Cumilla', 'কুমিল্লা', '2023-07-22 11:44:32', '2023-07-22 11:44:32'),
(4, 'Bhirhat', 'বারিয়ার হাঁট', '2023-07-22 11:44:40', '2023-07-22 11:44:40'),
(5, 'Chittagong', 'চট্টগ্রাম', '2023-07-22 11:44:48', '2023-07-22 11:44:48'),
(6, 'Dhaka', 'ঢাকা', '2023-07-25 01:59:57', '2023-07-25 02:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qGB5rvHrkqo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(22, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_04_12_084425_create_sessions_table', 1),
(26, '2023_04_12_112008_create_categories_table', 1),
(27, '2023_04_12_162402_create_sub_categories_table', 1),
(28, '2023_04_16_201925_create_districts_table', 1),
(29, '2023_04_16_202049_create_sub_districts_table', 1),
(30, '2023_04_28_164517_create_posts_table', 1),
(31, '2023_07_04_044715_create_socials_table', 1),
(32, '2023_07_04_044908_create_scos_table', 1),
(33, '2023_07_16_111326_create_namaz_table', 1),
(34, '2023_07_16_114502_create_livetv_table', 1),
(35, '2023_07_18_175837_create_notices_table', 1),
(36, '2023_07_19_065424_create_websites_table', 1),
(37, '2023_07_19_194930_create_photos_table', 1),
(38, '2023_07_22_105003_create_videos_table', 1),
(39, '2023_08_14_092532_create_ads_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(255) DEFAULT NULL,
  `johr` varchar(255) DEFAULT NULL,
  `asor` varchar(255) DEFAULT NULL,
  `magrib` varchar(255) DEFAULT NULL,
  `esha` varchar(255) DEFAULT NULL,
  `jummah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(4, '3:53 AM', '1:15 PM', '4: 37 PM', '6:42 PM', '8:30 PM', '1:30 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `notice_bn` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `notice_bn`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Observance of \'National Mourning Day-2023\' with due dignity and solemnity on the 48th martyrdom anniversary of the great architect of independence, Father of the Nation Bangabandhu Sheikh Mujibur Rahman.', 'স্বাধীনতার মহান স্থপতি জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের ৪৮তম শাহাদত বার্ষিকীতে ‘জাতীয় শোক দিবস-২০২৩’ যথাযোগ্য মর্যাদা ও ভাবগাম্ভীর্যের সাথে পালন', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'public/photos_gallery/22-07-202364bc1510dc557.jpeg', 'mehadi hasan', 0, '2023-07-22 11:42:33', '2023-08-04 10:36:55'),
(2, 'public/photos_gallery/04-08-202364ccd90e346df.jpeg', 'Importance of Healthy Eating', 0, '2023-08-04 04:55:10', '2023-08-04 10:36:51'),
(3, 'public/photos_gallery/04-08-202364cd131c74262.jpeg', 'Love is power', 0, '2023-08-04 09:02:52', '2023-08-04 10:36:12'),
(4, 'public/photos_gallery/04-08-202364cd2008dc7d2.jpeg', 'Spring Flowers From The Garden Wallpaper', 1, '2023-08-04 09:58:01', '2023-08-04 09:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `dist_id` int(11) NOT NULL,
  `subdist_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_bn` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details_en` text DEFAULT NULL,
  `details_bn` text NOT NULL,
  `tags_bn` varchar(255) NOT NULL,
  `tags_en` varchar(255) DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `big_thumbnail` int(11) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `post_month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `big_thumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(2, 1, 9, 6, 2, 1, 'US does not disclose visa ban: Miller', 'যুক্তরাষ্ট্র ভিসা নিষেধাজ্ঞার বিষয়টি প্রকাশ করে না: মিলার', 'public/postimages/25-07-202364bf828b0e013.png', '<p>The United States does not disclose visa restrictions as a matter of policy, although it discloses restrictions in other areas. At the same time, the United States opposes restrictions on human rights. Spokesperson Matthew Miller said these things in response to a question at a regular briefing at the US State Department in Washington yesterday local time.</p><p><br>In the briefing, Miller was asked to know that there are massive protests in Bangladesh. The government is attacking the peaceful march of the opposition organized to demand the resignation of the Prime Minister. The internet is being shut down in the rally along with checking the mobile phones of the opposition leaders and workers. Numerous cases and arrests are being made against them. Even the dead leaders and workers are not exempted from the case. In this situation, on the eve of the national elections in Bangladesh, will the United States apply visa restrictions against those who are obstructing the democratic process and violating human rights?</p><p>In response, Matthew Miller said, \"As a matter of policy, we do not disclose visa bans against anyone, even if we do publish other sanctions.\" However, the United States does not review other sanctions. I have already talked about various restrictions of the authorities in response to such questions in the briefing.</p><p>Read more<br>The United States supports the democratic process, not a single party: US State Department<br>The United States supports the democratic process, not a single party: US State Department</p><p>Matthew Miller also said that on May 24, Foreign Minister Anthony Blinken announced the visa policy for Bangladesh. He then informed that this visa policy will be used for those who will obstruct or damage the democratic election process of Bangladesh. In addition, the visa policy covers — electoral vote rigging, voter intimidation, violence, violation of the right to freedom of association and peaceful assembly. Apart from this, measures to prevent political parties, voters, civil society or media from airing their views will also be covered under this visa policy.</p>', '<p>যুক্তরাষ্ট্র অন্যান্য ক্ষেত্রে নিষেধাজ্ঞার বিষয়ে প্রকাশ করলেও নীতিগতভাবে ভিসা নিষেধাজ্ঞার বিষয়টি প্রকাশ করে না। একই সঙ্গে মানবাধিকারের ওপর বিধিনিষেধের বিরোধিতা করে যুক্তরাষ্ট্র। স্থানীয় সময় গতকাল সোমবার ওয়াশিংটনে মার্কিন পররাষ্ট্র দপ্তরে নিয়মিত ব্রিফিংয়ে এক প্রশ্নের জবাবে মুখপাত্র ম্যাথিউ মিলার এসব কথা বলেছেন।</p><p><br>ব্রিফিংয়ে মিলারের কাছে জানতে চাওয়া হয়, বাংলাদেশে ব্যাপক প্রতিবাদ-বিক্ষোভ হচ্ছে। প্রধানমন্ত্রীর পদত্যাগের দাবিতে আয়োজিত বিরোধীদের শান্তিপূর্ণ মিছিলে সরকার হামলা করছে। বিরোধী নেতা-কর্মীদের মুঠোফোন চেকসহ সমাবেশে ইন্টারনেট বন্ধ করে দেওয়া হচ্ছে। তাঁদের বিরুদ্ধে অসংখ্য মামলা ও গ্রেপ্তার করা হচ্ছে। এমনকি মৃত নেতা-কর্মীরাও মামলা থেকে রেহাই পাচ্ছেন না। এ অবস্থায় জাতীয় নির্বাচনের প্রাক্কালে বাংলাদেশে যাঁরা গণতান্ত্রিক প্রক্রিয়াকে বাধাগ্রস্ত করছে ও মানবাধিকার লঙ্ঘন করছে, যুক্তরাষ্ট্র কি তাঁদের বিরুদ্ধে ভিসা নিষেধাজ্ঞা প্রয়োগ করবে?</p><p>জবাবে ম্যাথিউ মিলার বলেন, ‘নীতিগতভাবে বলতে গেলে অন্যান্য নিষেধাজ্ঞার বিষয়ে প্রকাশ করলেও কারও বিরুদ্ধে ভিসা নিষেধাজ্ঞা আরোপ করলে আমরা সেটা প্রকাশ করি না। তবে অন্যান্য নিষেধ–নীতিমালার বিষয়ে যুক্তরাষ্ট্র তা পর্যালোচনা করে না। আমি আগেও ব্রিফিংয়ে এমন প্রশ্নের জবাবে কর্তৃপক্ষের বিভিন্ন নিষেধাজ্ঞার বিষয়ে কথা বলেছি।’</p><p>আরও পড়ুন<br>কোনো একটি দল নয়, যুক্তরাষ্ট্র গণতান্ত্রিক প্রক্রিয়া সমর্থন করে: মার্কিন পররাষ্ট্র দপ্তর<br>কোনো একটি দল নয়, যুক্তরাষ্ট্র গণতান্ত্রিক প্রক্রিয়া সমর্থন করে: মার্কিন পররাষ্ট্র দপ্তর</p><p>ম্যাথিউ মিলার আরও বলেন, গত ২৪ মে পররাষ্ট্রমন্ত্রী অ্যান্টনি ব্লিঙ্কেন বাংলাদেশের জন্য ভিসা নীতি ঘোষণা করেছেন। তখন তিনি জানিয়ে দিয়েছেন, যারা বাংলাদেশের গণতান্ত্রিক নির্বাচনপ্রক্রিয়াকে বাধা দেবে বা ক্ষতিগ্রস্ত করবে, তাদের ক্ষেত্রে এই ভিসা নীতি ব্যবহার করা হবে। এ ছাড়া ভিসা নীতির আওতায় রয়েছে—নির্বাচনে ভোট কারচুপি, ভোটারদের ভয়ভীতি দেখানো, সহিংসতা, সংগঠনের স্বাধীনতা ও শান্তিপূর্ণ সমাবেশের অধিকার ক্ষুণ্ন করা। এর বাইরে রাজনৈতিক দল, ভোটার, সুশীল সমাজ বা গণমাধ্যমকে তাদের মতামত প্রচারে বাধা দেওয়ার পদক্ষেপও এই ভিসা নীতির আওতায় পড়বে।</p>', 'নিষেধাজ্ঞা ,ভিসা', 'Prohibition,visa', NULL, 1, 1, 1, '25-07-2023', 'July', '2023-07-25 02:06:35', '2023-07-26 14:54:15'),
(3, 1, NULL, 1, NULL, 1, 'The Prime Minister offered Nepal the use of Pyara port', 'নেপালকে পায়রা বন্দর ব্যবহারের প্রস্তাব দিলেন প্রধানমন্ত্রী', 'public/postimages/25-07-202364bfef09064eb.jpeg', '<p>Prime Minister Sheikh Hasina offered to use the newly constructed Payra port in a meeting with Nepalese Prime Minister Pushpa Kamal Dahal.</p><p>The Prime Ministers of the two countries met in the newly constructed Bangladesh-Bangabandhu Sheikh Mujib Room at the headquarters of the Food and Agriculture Organization (FAO) on the sidelines of the United Nations Food System Conference. Both leaders are in Rome to attend the summit.</p><p><br>Foreign Minister AK Abdul Momen told reporters that during the meeting, Prime Minister Sheikh Hasina offered Nepal the use of Pyara port.</p><p>Quoting the Prime Minister, Momen said that Bangladesh has already opened Chalan (Mongla) and Chittagong ports for Nepal. Nepal will also be able to use the newly constructed Pyara Port.</p><p><br>Prime Minister Sheikh Hasina said that Bangladesh is developing Syedpur Airport as a regional hub to increase connectivity in the region.</p><p>The Foreign Minister said that the Prime Minister of Nepal appreciated the development of Bangladesh under the successful leadership of Prime Minister Sheikh Hasina. Quoting him, Momen said, \'You are the leader of our region.\' He said, Nepal has huge potential for hydropower generation.</p><p>In this context, Sheikh Hasina said, Bangladesh will take steps to import renewable energy, especially hydropower after the first tripartite electricity trade with Bangladesh.</p><p>Pushpakamal Dahal said that a large number of Nepalese students are studying in Bangladesh.</p>', '<div style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(0, 0, 0);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:19.125px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" id=\"fc19e8ff-1103-4634-8056-a5514e508ba0\"><div class=\"storyCard eyOoS\" style=\"--borderColor:var(--primaryColor);box-sizing:border-box;color:var(--black);font-size:var(--fs-13);margin:var(--space2_4) auto 0;max-width:622px;\"><div class=\" story-element\" style=\"box-sizing:border-box;margin-bottom:var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"box-sizing:border-box;margin:0px auto;max-width:622px;padding:0px;\"><div style=\"box-sizing:border-box;\"><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">প্রধানমন্ত্রী শেখ হাসিনা নেপালের প্রধানমন্ত্রী পুষ্পকমল দহলের সঙ্গে বৈঠকে নবনির্মিত পায়রা বন্দর ব্যবহারের প্রস্তাব দিয়েছেন।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">জাতিসংঘ খাদ্যব্যবস্থা সম্মেলনের এক ফাঁকে খাদ্য ও কৃষি সংস্থার (এফএও) সদর দপ্তরে নবনির্মিত বাংলাদেশ-বঙ্গবন্ধু শেখ মুজিব কক্ষে দুই দেশের প্রধানমন্ত্রী সাক্ষাৎ করেন। সম্মেলনটিতে যোগ দিতে দুই নেতাই রোমে অবস্থান করছেন।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">&nbsp;</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">&nbsp;</p></div></div></div></div></div><div style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(0, 0, 0);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:19.125px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" id=\"c50c10f5-1f8a-466a-8d02-ffb280452361\"><div class=\"storyCard eyOoS\" style=\"--borderColor:var(--primaryColor);box-sizing:border-box;color:var(--black);font-size:var(--fs-13);margin:var(--space2_4) auto 0;max-width:622px;\"><div class=\" story-element\" style=\"box-sizing:border-box;margin-bottom:var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"box-sizing:border-box;margin:0px auto;max-width:622px;padding:0px;\"><div style=\"box-sizing:border-box;\"><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">পররাষ্ট্রমন্ত্রী এ কে আব্দুল মোমেন সাংবাদিকদের বলেন, বৈঠকে প্রধানমন্ত্রী শেখ হাসিনা নেপালকে পায়রা বন্দর ব্যবহারের প্রস্তাব দেন।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">প্রধানমন্ত্রীকে উদ্ধৃত করে মোমেন বলেন, বাংলাদেশ ইতিমধ্যে নেপালের জন্য চালনা (মোংলা) ও চট্টগ্রাম বন্দর খুলে দিয়েছে। নেপাল নবনির্মিত পায়রা বন্দরও ব্যবহার করতে পারবে।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">&nbsp;</p></div></div></div></div><div class=\"print-adslot adsBox n5kiG\" style=\"box-sizing:border-box;\"><div class=\"dfp-ad-unit \" style=\"background-color:initial;box-sizing:border-box;margin:auto;\" data-lang=\"বিজ্ঞাপন\"><div class=\"adunitContainer\" style=\"box-sizing:border-box;margin:auto;\"><div class=\"AV63da4154806c125548059f08\" style=\"box-sizing:border-box;margin:0px auto;max-width:640px;width:640px;\"><div style=\"box-sizing:border-box;height:1px;opacity:0;overflow:hidden;transition:height 1s ease 0s;width:320px;\" id=\"aniBox\"><div style=\"bottom:115px;box-sizing:border-box;left:0px;position:fixed;transform-origin:left bottom;visibility:hidden;z-index:10000001;\" id=\"aniplayer_AV63da4154806c125548059f08-1690272498959\"><div style=\"box-sizing:border-box;\" id=\"aniplayer_AV63da4154806c125548059f08-1690272498959gui\"><div style=\"box-sizing:border-box;line-height:18px;position:relative;text-align:center;width:320px;\" id=\"av-caption\"><div class=\"av-pos-Default\" style=\"box-sizing:border-box;display:inline-block;float:right;position:relative;vertical-align:top;z-index:9999999;\" id=\"av-close-btn-overlay\"><div style=\"background-color:rgba(0, 0, 0, 0.4);background-image:url(&quot;data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20id%3D%22close-Layer_1%22%20xml%3Aspace%3D%22preserve%22%20height%3D%2223%22%20viewBox%3D%220%200%2022.677%2022.677%22%20width%3D%2223%22%20version%3D%221.1%22%20y%3D%220px%22%20x%3D%220px%22%20enable-background%3D%22new%200%200%2022.677%2022.677%22%3E%09%09%3Cpolygon%20fill%3D%22white%22%20points%3D%2219.346%205.421%2017.256%203.332%2011.338%209.25%205.42%203.332%203.332%205.421%209.25%2011.338%203.332%2017.257%205.42%2019.345%2011.338%2013.427%2017.256%2019.345%2019.346%2017.257%2013.428%2011.338%22%20clip-rule%3D%22evenodd%22%20fill-rule%3D%22evenodd%22%2F%3E%3C%2Fsvg%3E&quot;);background-position:center center;background-repeat:no-repeat;background-size:60%;border-style:none;box-sizing:border-box;height:18px;left:0px;position:static;top:0px;transition:all 0.15s ease-in-out 0s;width:18px;z-index:9999999;\" id=\"av-close-btn\">&nbsp;</div></div></div><div class=\" av-desktop hide-controls\" style=\"box-sizing:border-box;height:180px;margin:0px;overflow:hidden;pointer-events:initial;position:relative;text-align:initial;width:320px;\" id=\"av-container\"><div style=\"box-sizing:border-box;height:180px;left:0px;position:absolute;top:0px;width:320px;\" id=\"av-inner\"><div style=\"box-shadow:rgba(0, 0, 0, 0.1) 0px 0px 0px 1px inset;box-sizing:border-box;height:180px;position:absolute;width:320px;\" id=\"slot\"><div style=\"box-sizing:border-box;position:initial;\" id=\"imgpreloader\">&nbsp;</div><div style=\"box-sizing:border-box;display:block;height:0px;inset:0px;margin:auto;outline:none;position:absolute;width:0px;\" id=\"preloader\"><svg class=\"avicon\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewBox=\"0 0 30 30\" xml:space=\"preserve\"><g><path d=\"M23.3,14.9c0-0.4-0.3-0.9-0.8-1.2l-10-6.4c-1.1-0.7-2-0.1-2,1.3v7.5C15.8,13.7,23.1,14.9,23.3,14.9z M23.3,15 c-7.9,0.6-11.4,3.5-12.8,5.7v0.8c0,1.4,0.9,2,2,1.3l10-6.4C23.1,16,23.4,15.5,23.3,15z\"></path></g></svg><svg class=\"avcircle\" width=\"70\" height=\"70\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"35\" cy=\"35\" r=\"32\"></circle></svg><svg class=\"avcircle active\" width=\"70\" height=\"70\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"35\" cy=\"35\" r=\"32\"></circle></svg></div><div class=\"loaded\" style=\"animation:0.5s ease 0s 1 normal none running fade-in;background-color:rgb(0, 0, 0);box-sizing:border-box;height:180px;inset:90px 0px 0px;object-fit:initial;opacity:1;position:absolute;text-align:left;transform:translateY(-50%);width:320px;\" id=\"videoslot\">&nbsp;</div></div><div style=\"box-sizing:border-box;position:initial;\" id=\"gui\"><div style=\"bottom:0px;box-sizing:border-box;display:flex;justify-content:space-between;left:0px;opacity:0;padding:0px 13px 11px;position:absolute;right:0px;transition:all 0.15s ease-in-out 0s;\" id=\"buttons\"><div style=\"box-sizing:border-box;height:24px;position:initial;\" id=\"left\">&nbsp;</div><div style=\"box-sizing:border-box;height:24px;position:initial;right:13px;\" id=\"right\">&nbsp;</div></div><div style=\"box-sizing:border-box;color:white;cursor:pointer;display:inline;font-family:Helvetica, Arial, fallback, sans-serif;font-size:11px;font-weight:500;height:24px;left:5px;line-height:24px;position:absolute;right:2px;top:2px;\" id=\"aniview-credit\">&nbsp;</div><div style=\"box-sizing:border-box;position:initial;\" id=\"ad-icon\">&nbsp;</div></div></div></div></div><div style=\"box-sizing:border-box;\" id=\"anibid\">&nbsp;</div></div></div></div><div class=\" adBox\" style=\"box-sizing:border-box;text-align:center;\" id=\"mcanvas1x1-033992be-7ef6-45e1-beee-dd11e7da1ea4-0-1\" data-google-query-id=\"CKjzjN6zqYADFchHnQkdDvUFkQ\"><div style=\"border-style:none;border-width:0pt;box-sizing:border-box;\" id=\"google_ads_iframe_85406138/mCanvas_1x1_5__container__\">&nbsp;</div></div></div></div></div></div><div style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(0, 0, 0);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:19.125px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" id=\"9dd0a836-e0b1-47da-b6b9-9e790a1f8787\"><div class=\"storyCard eyOoS\" style=\"--borderColor:var(--primaryColor);box-sizing:border-box;color:var(--black);font-size:var(--fs-13);margin:var(--space2_4) auto 0;max-width:622px;\"><div class=\" story-element\" style=\"box-sizing:border-box;margin-bottom:var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"box-sizing:border-box;margin:0px auto;max-width:622px;padding:0px;\"><div style=\"box-sizing:border-box;\"><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">প্রধানমন্ত্রী শেখ হাসিনা বলেন, বাংলাদেশ এ অঞ্চলে যোগাযোগ বাড়াতে সৈয়দপুর বিমানবন্দরকে একটি আঞ্চলিক কেন্দ্র হিসেবে গড়ে তুলছে।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">পররাষ্ট্রমন্ত্রী বলেন, প্রধানমন্ত্রী শেখ হাসিনার সফল নেতৃত্বে বাংলাদেশের উন্নয়নের প্রশংসা করেন নেপালের প্রধানমন্ত্রী। তাঁকে উদ্ধৃত করে মোমেন বলেন, ‘আপনি আমাদের অঞ্চলের নেতা।’ তিনি বলেন, নেপালে জলবিদ্যুৎ উৎপাদনের বিশাল সুযোগ রয়েছে।</p></div></div></div></div></div><div style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(0, 0, 0);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:19.125px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" id=\"702980c5-cad9-452b-87f0-12d6792e1605\"><div class=\"storyCard eyOoS\" style=\"--borderColor:var(--primaryColor);box-sizing:border-box;color:var(--black);font-size:var(--fs-13);margin:var(--space2_4) auto 0;max-width:622px;\"><div class=\" story-element\" style=\"box-sizing:border-box;margin-bottom:var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"box-sizing:border-box;margin:0px auto;max-width:622px;padding:0px;\"><div style=\"box-sizing:border-box;\"><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">এ প্রসঙ্গে শেখ হাসিনা বলেন, বাংলাদেশের সঙ্গে প্রথম ত্রিপক্ষীয় বিদ্যুৎ–বাণিজ্য শুরু হওয়ার পর বাংলাদেশ নবায়নযোগ্য জ্বালানি, বিশেষ করে জলবিদ্যুৎ আমদানির পদক্ষেপ নেবে।</p><p style=\"box-sizing:border-box;font-family:var(--font-2);font-size:var(--fs-18);line-height:1.7;margin:0px 0px var(--space1_6);padding:0px;white-space:break-spaces;\">পুষ্পকমল দহল বলেন, বিপুলসংখ্যক নেপালি শিক্ষার্থী বাংলাদেশে পড়াশোনা করছেন।</p></div></div></div></div></div>', 'প্রধানমন্ত্রী শেখ হাসিনা, নেপাল, বাংলাদেশ', 'Prime Minister Sheikh Hasina, Nepal, Bangladesh', 1, 1, NULL, 1, '25-07-2023', 'July', '2023-07-25 02:12:59', '2023-08-07 15:11:17'),
(4, 5, NULL, 5, 1, 1, 'Dengue was detected the day after the fever, BCS officer Nazia died two days later', 'জ্বরের পরদিন ডেঙ্গু শনাক্ত, দুদিন পরই মৃত্যু বিসিএস কর্মকর্তা নাজিয়ার', 'public/postimages/25-07-202364c0182098688.jpg', '<p>If all goes well, the probable due date of SM Nazia Sultana is September 16. There was one miscarriage after marriage in 2016. So this time Nazia wanted to give birth to a healthy child. It didn\'t happen anymore. Eight months pregnant Nazia died of dengue on Tuesday morning.</p><p>&nbsp;Nazia is an officer of 30th BCS. He was working as Senior Assistant Secretary (WTO Wing) in Ministry of Commerce. Dengue positive on Saturday after fever last Friday. He was admitted to the hospital on Sunday. He died today at Bardem General Hospital in the capital.</p><p>&nbsp;Nazia had long ago informed that when he died, he would be buried next to his father\'s grave in Gaibandha. Relatives are now on their way to Gaibandha to fulfill his last wish. It will be night before they arrive with the body.</p><p>Talked to Nazia\'s husband Shahriar Jamil on phone this afternoon. He is serving as the Senior Assistant Secretary of the Finance Department of the Ministry of Finance. He said, Nazia Sultana\'s blood platelets had dropped to 14,000. Doctors said that there was no other way to save the unborn child by surgery.</p><p>Shahriar Jamil said his wife did not have diabetes. After testing positive for dengue, a doctor told Segunbagichar to take her to the Bardem Mother and Child Hospital. After being admitted there, Bardem was advised to go to General Hospital.</p>', '<p>&nbsp; সবকিছু ঠিক থাকলে এস এম নাজিয়া সুলতানার সন্তান জন্ম দেওয়ার সম্ভাব্য তারিখ ছিল ১৬ সেপ্টেম্বর। ২০১৬ সালে বিয়ের পর একবার গর্ভপাত হয়। তাই এবার নাজিয়ার আকুতি ছিল যেন সুস্থ সন্তান জন্ম দিতে পারেন। তা আর হলো না। আজ মঙ্গলবার সকালে ডেঙ্গুতে আট মাসের অন্তঃসত্ত্বা নাজিয়ার মৃত্যু হয়।</p><p>নাজিয়া ৩০তম বিসিএসের কর্মকর্তা। বাণিজ্য মন্ত্রণালয়ের জ্যেষ্ঠ সহকারী সচিব (ডব্লিউটিও উইং) হিসেবে কর্মরত ছিলেন তিনি। গত শুক্রবার জ্বর আসার পর শনিবার ডেঙ্গু পজিটিভ আসে। রোববার তাঁকে হাসপাতালে ভর্তি করা হয়। আজ রাজধানীর বারডেম জেনারেল হাসপাতালে তিনি মারা যান।</p><p>নাজিয়া অনেক আগেই জানিয়েছিলেন, তিনি মারা গেলে যাতে গাইবান্ধায় তাঁর বাবার কবরের পাশে তাঁকে কবর দেওয়া হয়। স্বজনেরা তাঁর শেষ ইচ্ছা পূরণে এখন গাইবান্ধার পথে। লাশ নিয়ে পৌঁছাতে রাত হয়ে যাবে।</p><p>আজ বিকেলে মুঠোফোনে কথা হয় নাজিয়ার স্বামী শাহরিয়ার জামিলের সঙ্গে। তিনি অর্থ মন্ত্রণালয়ের অর্থ বিভাগের জ্যেষ্ঠ সহকারী সচিব হিসেবে দায়িত্ব পালন করছেন। জানালেন, নাজিয়া সুলতানার রক্তের প্লাটিলেট কমে ১৪ হাজারে নেমে গিয়েছিল। সে অবস্থায় অস্ত্রোপচার করে গর্ভের সন্তানকে বাঁচানোর আর কোনো উপায় ছিল না বলে জানিয়েছিলেন চিকিৎসকেরা।</p><p>শাহরিয়ার জামিল বলেন, তাঁর স্ত্রীর ডায়াবেটিস ছিল না। ডেঙ্গু পজিটিভ হওয়ার পর একজন চিকিৎসক বলেছিলেন সেগুনবাগিচার বারডেম মা ও শিশু হাসপাতালে নিতে। সেখানে নেওয়ার পর বারডেম জেনারেল হাসপাতালে যাওয়ার পরামর্শ দেওয়া হয়।</p>', 'সরকারী কর্মকর্তা, মৃত্যু, বাণিজ্য মন্ত্রণালয়, ডেঙ্গু, বাংলাদেশডেঙ্গু জ্বর', 'Government Officials, Deaths, Ministry of Commerce, Dengue, Bangladesh Dengue Fever', NULL, 1, 1, 1, '25-07-2023', 'July', '2023-07-25 12:44:48', '2023-08-07 15:14:00'),
(5, 2, NULL, 2, NULL, 1, 'Video of BSF member sexually abusing woman in Manipur goes viral', 'মণিপুরে বিএসএফের সদস্যের নারীকে যৌন নির্যাতনের ভিডিও ভাইরাল', 'public/postimages/25-07-202364c02ae64c706.jpeg', '<p>A video of a woman being sexually assaulted in Manipur, India has gone viral. The accused is a member of the Indian Border Guard Force (BSF). The incident took place in a supershop in the state last week.</p><p>The BSF member\'s name is Satish Prasad. He holds the rank of Head Constable in the force. He has since been withdrawn. A case has also been filed against him.</p><p><br>The CCTV cameras in the supershop caught the scene of the torture. The video, which later went viral on social media, showed a man in BSF uniform touching a woman offensively.</p><p>Read more<br>Rape of women in Manipur: 62 days before the release of the video, the police did not do anything despite filing a complaint with the police station<br>Protests against organized sexual violence in the Indian state of Manipur</p><p><br>A senior official said that the incident took place on July 20 at a shop near a petrol pump in Imphal, the capital of Manipur. BSF is conducting an internal inquiry into the allegations. Departmental proceedings have been initiated against him.</p><p>On May 4, a video of two young women being stripped and taken for a walk on the road went viral in Manipur. In the video, it can be seen that a group of youths are walking the two women through the village road and taking them to Dhankhet. Some of the youths are sexually abusing them as they walk.</p><p>Read more<br>Allegations of burning the wife of a freedom fighter alive in Manipur<br>Ethnic violence has been going on in the Indian state of Manipur since last May<br>Later, a woman victim of the incident told the Indian media, \"The police have handed us over to them (the rioters).\" Widespread protests and criticism began across India. Seven people including a juvenile have been arrested in this incident.</p>', '<p>ভারতের মণিপুরে এক নারীকে যৌন নির্যাতনের ভিডিও ছড়িয়ে পড়েছে। অভিযুক্ত ব্যক্তি ভারতীয় সীমান্তরক্ষী বাহিনী বিএসএফের সদস্য। গত সপ্তাহে রাজ্যটির একটি সুপারশপে এ ঘটনা ঘটে।</p><p>বিএসএফের ওই সদস্যের নাম সতীশ প্রসাদ। তিনি বাহিনীটিতে হেড কনস্টেবল পদে রয়েছেন। এরই মধ্যে তাঁকে প্রত্যাহার করা হয়েছে। তাঁর বিরুদ্ধে একটি মামলাও হয়েছে।</p><p><br>সুপারশপে থাকা সিসিটিভি ক্যামেরায় নির্যাতনের দৃশ্য ধরা পড়ে। পরে সামাজিক যোগাযোগমাধ্যমে ছড়িয়ে পড়া ওই ভিডিওতে দেখা গেছে, বিএসএফের পোশাক পরা এক ব্যক্তি এক নারীকে আপত্তিকরভাবে স্পর্শ করছেন।</p><p>আরও পড়ুন<br>মণিপুরে নারী নিগ্রহ: ভিডিও প্রকাশের ৬২ দিন আগে থানায় অভিযোগ দিলেও পুলিশ কিছু করেনি<br>ভারতের মণিপুর রাজ্যে সংগঠিত যৌন সহিংসতার ঘটনায় প্রতিবাদ</p><p><br>এ নিয়ে একজন জ্যেষ্ঠ কর্মকর্তা বলেন, মণিপুরের রাজধানী ইম্ফলে একটি পেট্রলপাম্পের কাছে দোকানে ২০ জুলাই ঘটনাটি ঘটে। অভিযোগের বিষয়ে বিএসএফে অভ্যন্তরীণ তদন্ত চলছে। তাঁর বিরুদ্ধে বিভাগীয় কার্যক্রম শুরু হয়েছে।</p><p>মণিপুরে গত ৪ মে দুই তরুণীকে বিবস্ত্র করে রাস্তা দিয়ে হাঁটিয়ে নিয়ে যাওয়ার একটি ভিডিও ভাইরাল হয়। ভিডিওতে দেখা যায়, তরুণদের একটি দল গ্রামের রাস্তা দিয়ে দুই নারীকে হাঁটিয়ে ধানখেতে নিয়ে যাচ্ছে। হাঁটতে হাঁটতেই তরুণদের কয়েকজন তাঁদের যৌন নির্যাতন করছেন।</p><p>আরও পড়ুন<br>মণিপুরে স্বাধীনতাসংগ্রামীর স্ত্রীকে জীবন্ত পুড়িয়ে মারার অভিযোগ<br>ভারতের মণিপুর রাজ্যে গত মে মাস থেকে জাতিগত সহিংসতা চলছে<br>পরে ওই ঘটনায় ভুক্তভোগী এক নারী ভারতীয় সংবাদমাধ্যম ইন্ডিয়ান এক্সপ্রেসকে বলেন, ‘পুলিশই আমাদের তাদের (উচ্ছৃঙ্খল জনতা) হাতে তুলে দিয়েছে।’ এ নিয়ে ভারতজুড়ে ব্যাপক বিক্ষোভ ও সমালোচনা শুরু হয়। এ ঘটনায় এক কিশোরসহ সাতজন গ্রেপ্তার হয়েছেন।</p>', 'নারীর প্রতি সহিংসতা ,ভারত ,যৌন নিপীড়ন ,ধর্ষণ', 'Violence against women, India, Sexual harassment, Rape', NULL, 1, NULL, 1, '25-07-2023', 'July', '2023-07-25 14:04:55', '2023-08-07 15:14:23'),
(6, 3, 6, 2, NULL, 1, 'The hanging body of the policeman was recovered', 'পুলিশ সদস্যের ঝুলন্ত লাশ উদ্ধার', 'public/postimages/26-07-202364c165e5940cb.jpeg', '<p>Mahfuzul Haque Bhuiyan told Prothom Alo on Wednesday night that Assistant Sub-Inspector of SPBN Motaleb lived in Police Barrack of SPBN. Around three o\'clock on Wednesday, colleagues found him hanging in the kitchen warehouse with an iron pipe tied around his neck with a rope. When the matter was reported to Mohammadpur police station, the police went and recovered Motaleb\'s body. Later, the body was sent to Shaheed Suhrawardy Medical College morgue for post-mortem.</p><p>OC Mahfuzul Haque Bhuiyan said that a death case has been registered in Mohammadpur police station. Initial investigation appears to be suicide. However, the actual cause of death will be known once the post-mortem report is available.</p>', '<p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">মাহফুজুল হক ভূঁইয়া বুধবার রাতে প্রথম আলোকে বলেন, এসপিবিএনের সহকারী উপপরিদর্শক মোতালেব বছিলায় এসপিবিএনের পুলিশ ব্যারাকে থাকতেন। বুধবার বেলা তিনটার দিকে সহকর্মীরা রান্নাঘরের গুদামঘরে একটি লোহার পাইপের সঙ্গে গলায় দড়ি পেঁচানো অবস্থায় তাঁকে ঝুলে থাকতে দেখেন। বিষয়টি মোহাম্মদপুর থানায় জানালে পুলিশ গিয়ে মোতালেবের লাশ উদ্ধার করে। পরে মরদেহটি ময়নাতদন্তের জন্য শহীদ সোহরাওয়ার্দী মেডিকেল কলেজের মর্গে পাঠানো হয়।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">ওসি মাহফুজুল হক ভূঁইয়া বলেন, এ ঘটনায় মোহাম্মদপুর থানায় একটি অপমৃত্যু মামলা হয়েছে। প্রাথমিক তদন্তে ঘটনাটি আত্মহত্যা বলে মনে হচ্ছে। তবে ময়নাতদন্তের প্রতিবেদন পাওয়া গেলে মৃত্যুর প্রকৃত কারণ জানা যাবে।</p>', 'রাজধানী, ঢাকা, পুলিশ, মৃত্যু, অপরাধ, বাংলাদেশ', 'Capital, Dhaka, Police, Death, Crime, Bangladesh', 1, 1, 1, 1, '26-07-2023', 'July', '2023-07-26 12:28:53', '2023-07-26 12:55:52'),
(7, 5, NULL, 6, NULL, 1, 'Dengue: Father arrested in quarrel while admitting daughter to hospital, disaffected family', 'ডেঙ্গু: মেয়েকে হাসপাতালে ভর্তি করতে গিয়ে বিতণ্ডায় বাবা গ্রেপ্তার, দিশাহারা পরিবার', 'public/postimages/26-07-202364c16dd1b9a2b.jpg', '<p>Seven-year-old Adibar, who had been suffering from dengue for six days, took her daughter to the hospital early in the morning when her condition worsened. But when the doctor wanted to return them saying that there were no beds in the hospital, this father got involved in a fight with the doctor. Later, a doctor of the hospital filed a case of assault against the father by giving him to the police. Habibur Rahman is now in Dhaka\'s Mugda police station.</p><p>The girl was admitted to the hospital after the incident. But Habibur\'s wife Sathi Akhter rushed to the police station with her sick daughter after seeing her husband handcuffed and taken away by the police. Later, when the girl became more ill, he arranged to take her home and give her saline. In this situation, the family is in a state of disorientation.</p><p>The incident took place on Wednesday morning at Dhaka\'s Mugda Medical College Hospital. Overcrowding of dengue patients at the hospital has made headlines before. However, this is the first time that a parent has been subjected to such a situation while admitting a sick child. A case has been filed against Habibur Rahman at the police station for allegedly breaking the finger of the hospital\'s doctor, said Mohammad Abdul Majid, officer-in-charge (OC) of Mugda police station. In the evening, hospital doctor Bani Amin filed the case as plaintiff.</p>', '<p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">ছয় দিন ধরে ডেঙ্গুতে ভোগা সাত বছরের আদিবার অবস্থা রাতে খারাপ হলে ভোরে মেয়েকে নিয়ে হাসপাতালে ছুটে গিয়েছিলেন বাবা হাবিবুর রহমান। কিন্তু হাসপাতালে শয্যা খালি নেই জানিয়ে চিকিৎসক তাদের ফিরিয়ে দিতে চাইলে কথা–কাটাকাটির একপর্যায়ে চিকিৎসকের সঙ্গে হাতাহাতিতে জড়িয়ে পড়েন এই বাবা। পরে ওই বাবাকে পুলিশে দিয়ে তাঁর বিরুদ্ধে মারধরের মামলা করেছেন হাসপাতালের একজন চিকিৎসক। এখন ঢাকার মুগদা থানা–হাজতে বন্দী হাবিবুর রহমান।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">এই ঘটনার পর মেয়েটিকে হাসপাতালে ভর্তি করা হয়েছিল। কিন্তু চোখের সামনে স্বামীকে হাতকড়া লাগিয়ে পুলিশ ধরে নিয়ে যেতে দেখে অসুস্থ মেয়েকে নিয়েই থানায় ছুটে যান হাবিবুরের স্ত্রী সাথী আক্তার। পরে মেয়ে বেশি অসুস্থ হয়ে পড়লে বাসায় নিয়ে স্যালাইন দেওয়ার ব্যবস্থা করেন। এ অবস্থায় পরিবারটি দিশাহারা অবস্থায় আছে।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">ঘটনাটি ঘটেছে আজ বুধবার ভোরে ঢাকার মুগদা মেডিকেল কলেজ হাসপাতালে। হাসপাতালটিতে ডেঙ্গু রোগীদের অতিরিক্ত চাপ তৈরি হওয়ার কথা এর আগেও সংবাদ শিরোনাম হয়েছে। তবে অসুস্থ সন্তানকে ভর্তি করতে এসে কোনো মা–বাবার এ ধরনের পরিস্থিতির শিকার হওয়ার ঘটনা এই প্রথম ঘটল। হাসপাতালটির চিকিৎসকের আঙুল ভেঙে দেওয়াসহ মারধরের অভিযোগে থানায় হাবিবুর রহমানের বিরুদ্ধে মামলা হয়েছে বলে জানালেন মুগদা থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) মোহাম্মদ আবদুল মজিদ। সন্ধ্যায় হাসপাতালের চিকিৎসক বনি আমিন বাদী হয়ে মামলাটি করেছেন।</p>', 'গ্রেপ্তা,রচিকিৎসা, হাসপাতাল,বিশেষ সংবাদ,ডেঙ্গু , বাংলাদেশ,মশা, স্বাস্থ্য,ডেঙ্গু জ্বর', 'Arrest, medical treatment, hospital, special news, dengue, Bangladesh, mosquito, health, dengue fever', 1, 1, 1, 1, '26-07-2023', 'July', '2023-07-26 13:02:41', '2023-08-07 15:13:08'),
(8, 2, NULL, 6, NULL, 1, 'Holiday amusement park', 'ছুটির দিনের বিনোদন অঙ্গন', 'public/postimages/26-07-202364c1970625b4a.jpeg', '<p>This Friday, the capital\'s entertainment arena will be busy with various events. Several plays will be staged on this day, including exhibitions, film commemorations.<br>&nbsp;Classical music and dance festival<br>&nbsp;The \'Classical Music and Dance Festival\' will start from 5 pm at the National Music and Dance Center auditorium of Bangladesh Art Academy. Prominent classical musicians and dancers will participate in the festival.<br>&nbsp;Rain of youth<br>&nbsp;A music and recitation program \'Navajoubna Varsha\' is a joint initiative of Yuduk and Nandan. Music and recitals will be performed by artists from Yudt and Nandan at the Rameshchandra Dutt Memorial Meeting Center of Chhaynat Bhavan from 6.30 pm.</p><p>Art Exhibition<br>The 25th National Art Exhibition is going on under the initiative of Bangladesh Shilpakala Academy. The exhibition will run from 3 pm to 8 pm in gallery number 1 to 7 of the National Fine Arts Gallery.<br>Documentary exhibition<br>Bangladesh Art Academy\'s Jatiya Chitrashala Auditorium will be screened periodically from 10:15 AM on documentary life with painter Murtaza Bashir and Bodhi tree with music personality Sanjeeda Khatun. Both exhibitions are open to all.</p><p>&nbsp;</p><p>stage play<br>Tender of Taj Mahal<br>Tender of Taj Mahal will be staged at the Experimental Theater Hall of the National Theatre. Kanthashilan will stage the play at 6:30 pm. The play written by Indian playwright Ajay Shukla has been translated by Professor Safiqunnabi Samadi. The play was directed by Mir Barkat.<br>Shikhandi talk<br>Today is the 40th anniversary of Mahakal Natya Community. On this occasion, Sikhandi Katha will be staged at the National Theater at seven in the evening after the opening ceremony of the year-long programme.</p>', '<p>আজ শুক্রবার নানা আয়োজনে মুখর থাকবে রাজধানীর বিনোদন অঙ্গন। প্রদর্শনী, চলচ্চিত্র স্মরণ অনুষ্ঠানসহ এদিন থাকবে বেশ কয়েকটি নাটকের মঞ্চায়ন।<br>শাস্ত্রীয় সংগীত ও নৃত্য উৎসব<br>বাংলাদেশ শিল্পকলা একাডেমির জাতীয় সংগীত ও নৃত্যকলা কেন্দ্র মিলনায়তনে বিকেল ৫টা থেকে শুরু হবে ‘শাস্ত্রীয় সংগীত ও নৃত্য উৎসব’। উৎসবে অংশগ্রহণ করবেন বিশিষ্ট শাস্ত্রীয় সংগীত এবং নৃত্যশিল্পী।<br>নবযৌবনা বরষা<br>যুক্ত এবং নন্দন–এর যৌথ উদ্যোগে সংগীত ও আবৃত্তির অনুষ্ঠান ‘নবযৌবনা বরষা’। ছায়ানট ভবনের রমেশচন্দ্র দত্ত স্মৃতি মিলনকেন্দ্রে সন্ধ্যা সোয়া ৬টা থেকে সংগীত ও আবৃত্তি পরিবেশন করবেন যুক্ত এবং নন্দনের শিল্পীরা।</p><p>চারুকলা প্রদর্শনী<br>বাংলাদেশ শিল্পকলা একাডেমির উদ্যোগে চলছে ২৫তম জাতীয় চারুকলা প্রদর্শনী। জাতীয় চারুকলা গ্যালারির ১ থেকে ৭ নম্বর গ্যালারিতে প্রদর্শনী চলবে বেলা তিনটা থেকে রাত আটটা পর্যন্ত।<br>প্রামাণ্যচিত্র প্রদর্শনী<br>বাংলাদেশ শিল্পকলা একাডেমির জাতীয় চিত্রশালা মিলনায়তনে সকাল ১০টা ১৫ মিনিট থেকে পর্যায়ক্রমে প্রদর্শিত হবে চিত্রশিল্পী মুর্তজা বশীরকে নিয়ে প্রামাণ্যচিত্র জীবন ও বিবিধ ও সংগীত ব্যক্তিত্ব সন্‌জীদা খাতুনকে নিয়ে বোধিবৃক্ষ। প্রদর্শনী দুটি সবার জন্য উন্মুক্ত।</p><p>&nbsp;</p><p>মঞ্চনাটক<br>তাজমহলের টেন্ডার<br>জাতীয় নাট্যশালার এক্সপেরিমেন্টাল থিয়েটার হলে মঞ্চস্থ হবে তাজমহলের টেন্ডার। সন্ধ্যা সাড়ে ৬টায় নাটকটি মঞ্চায়ন করবে কণ্ঠশীলন। ভারতীয় নাট্যকার অজয় শুক্লার লেখা নাটকটি অনুবাদ করেছেন অধ্যাপক সফিকুন্নবী সামাদী। নাটকটির নির্দেশনা দিয়েছেন মীর বরকত।<br>শিখণ্ডী কথা<br>আজ মহাকাল নাট্য সম্প্রদায়ের ৪০তম প্রতিষ্ঠাবার্ষিকী। এ উপলক্ষে বছরব্যাপী অনুষ্ঠানমালার উদ্বোধনী অনুষ্ঠানের পর সন্ধ্যা সাতটায় জাতীয় নাট্যশালায় মঞ্চস্থ হবে শিখণ্ডী কথা।</p>', 'মঞ্চ ,নাটক ,সংস্কৃতি, শিল্পকলা, একাডেমি তারকা', 'Stage, drama, culture, arts, academy stars', NULL, 1, NULL, 1, '26-07-2023', 'July', '2023-07-26 15:58:30', '2023-07-26 15:58:30'),
(9, 5, 5, 0, NULL, 1, 'Healthy Life', 'সুস্থ জীবন', 'public/postimages/27-07-202364c2cc624042e.jpeg', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">A healthy life is not just about physical health, it is also about mental and spiritual health. To live a healthy life, we need to eat a balanced diet, get enough sleep, exercise regularly, and manage stress. We also need to be kind, help others, and enjoy life.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">A healthy life can help us be happy, productive, and long-lived. It can help us seize all the opportunities life has to offer and fulfill our dreams.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\"><strong style=\"font-weight:500;\">Image:</strong> A photo of a person smiling and laughing while hiking in nature.</p>', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">সুস্থ জীবন মানে শুধু শারীরিক সুস্থতা নয়, মানসিক এবং আত্মিক সুস্থতাও। সুস্থ জীবনের জন্য আমাদেরকে সুষম খাবার খেতে হবে, পর্যাপ্ত ঘুমাতে হবে, ব্যায়াম করতে হবে, এবং মানসিক চাপ নিয়ন্ত্রণ করতে হবে। এছাড়াও, আমাদেরকে সৎ হতে হবে, অন্যকে সাহায্য করতে হবে, এবং জীবনকে উপভোগ করতে হবে।</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">সুস্থ জীবন আমাদেরকে সুখী, ফলপ্রসূ, এবং দীর্ঘজীবী হতে সাহায্য করে। সুস্থ জীবন আমাদেরকে জীবনের সমস্ত সুযোগ গ্রহণ করতে এবং আমাদের স্বপ্ন পূরণ করতে সক্ষম করে।</p>', 'সুস্থ জীবন, স্বাস্থ্য সম্মত জীবন যাপন, স্বাস্থ্য এবং সুস্থতা, ফিটনেস এবং স্বাস্থ্য, মঙ্গল', 'healthy life, healthy living, health and wellness, fitness and health, well-being', NULL, 1, NULL, 1, '27-07-2023', 'July', '2023-07-27 13:58:26', '2023-07-27 14:00:54');
INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `big_thumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(10, 8, NULL, 6, 2, 1, 'The Path to Healthy Living', 'সুস্থ জীবনের পথ', 'public/postimages/27-07-202364c2d9759acec.jpeg', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">Healthy living is the key to a healthy and happy life. It is a life where you take care of your physical, mental, and spiritual health. There are many ways to live a healthy life, but here are a few key things:</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Eat a balanced diet</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Exercise regularly</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Get enough sleep</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Avoid smoking and drinking</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Manage stress</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Maintain social connections</li></ul>', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">সুস্থ জীবনযাপন হল সুস্থ ও সুখী জীবনের চাবিকাঠি। এটি এমন একটি জীবন যেখানে আপনি আপনার শারীরিক, মানসিক এবং আত্মিক স্বাস্থ্যের যত্ন নেন। সুস্থ জীবনযাপনের জন্য অনেকগুলি উপায় আছে, কিন্তু এখানে কয়েকটি গুরুত্বপূর্ণ বিষয় রয়েছে:</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">একটি সুষম খাদ্য খাওয়া</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">নিয়মিত ব্যায়াম করা</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">পর্যাপ্ত ঘুম পেতে</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">ধূমপান এবং মদ্যপান এড়ানো</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">মানসিক চাপকে মোকাবেলা করা</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">সামাজিক যোগাযোগ বজায় রাখা</li></ul>', 'স্বাস্থ্যকর জীবন, স্বাস্থ্যকর খাদ্য, নিয়মিত ব্যায়াম, পর্যাপ্ত ঘুম', 'Healthy living, healthy diet, regular exercise, adequate sleep', NULL, 1, NULL, 1, '27-07-2023', 'July', '2023-07-27 14:54:13', '2023-07-27 15:41:31'),
(11, 5, NULL, 5, NULL, 1, 'The Importance of Healthy Eating', 'সুস্থ খাদ্যের গুরুত্ব', 'public/postimages/28-07-202364c40658a5bba.jpeg', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">Eating healthy is important for your physical and mental health. A balanced diet can help you keep your body healthy, boost your immune system, and improve your overall well-being.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">A balanced diet includes a variety of foods, such as fruits, vegetables, whole grains, lean protein, and healthy fats. This will give your body the nutrients it needs.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">If you are trying to eat healthy, here are a few tips:</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Fruits and vegetables should be a large part of your daily diet.</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Whole grains provide not only energy but also fiber, which helps you stay full for longer.</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Lean protein helps keep your muscles and bones strong.</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Healthy fats provide your body with essential oils.</li></ul>', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">সুস্থ খাদ্য গ্রহণ আপনার শারীরিক এবং মানসিক স্বাস্থ্যের জন্য অত্যন্ত গুরুত্বপূর্ণ। একটি সুষম খাদ্য আপনাকে আপনার শরীরকে সুস্থ রাখতে, আপনার রোগ প্রতিরোধ ক্ষমতা বাড়াতে এবং আপনার সামগ্রিক সুস্থতা উন্নত করতে সাহায্য করবে।</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">একটি সুষম খাদ্যে বিভিন্ন ধরণের খাবার অন্তর্ভুক্ত থাকে, যেমন ফল, শাকসবজি, whole grains, lean protein, এবং healthy fats. এটি আপনাকে আপনার শরীরের জন্য প্রয়োজনীয় সমস্ত পুষ্টি সরবরাহ করবে।</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:24px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-break:break-word;word-spacing:0px;\">আপনি যদি সুস্থ খাদ্য গ্রহণের জন্য চেষ্টা করছেন, তাহলে এখানে কয়েকটি টিপস রয়েছে:</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">ফল এবং শাকসবজি আপনার প্রতিদিনের খাদ্যের একটি বড় অংশ হওয়া উচিত।</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">whole grains কেবলমাত্র শক্তিই সরবরাহ করে না, এগুলিতে ফাইবারও থাকে, যা আপনাকে দীর্ঘ সময় ধরে পূর্ণ রাখতে সাহায্য করে।</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">lean protein আপনার পেশী এবং হাড়গুলিকে শক্তিশালী রাখতে সাহায্য করে।</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(31, 31, 31);font-family:&quot;Google Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:17px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:4px 0px;orphans:2;padding-inline-start:36px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">healthy fats আপনার শরীরের জন্য প্রয়োজনীয় তেল সরবরাহ করে।</li></ul>', 'zx', 'zcx', NULL, 1, NULL, 1, '28-07-2023', 'July', '2023-07-28 12:18:00', '2023-07-28 12:18:00'),
(12, 2, NULL, 6, NULL, 1, 'BNP\'s rally is knee-deep in water', 'হাঁটু পানিতে চলছে বিএনপির সমাবেশ', 'public/postimages/04-08-202364cccc1625e5c.jpg', '<p>BNP rally is going on with rain on one side and knee-deep water on the other. The rally officially started in front of the BNP central office in Nayapaltan at 3 pm on Friday. Leaders and activists from different areas of the capital are participating in this rally organized by the initiative of Dhaka Metropolitan North and South BNP.</p><p>BNP Acting Chairman Tarek Rahman and his wife Dr. Referring to the judgment of the judicial court in the ACC case against Zubaidah Rahman as \'formal\', protest rallies are being held in all the districts and cities of the country including Dhaka on Friday.</p><p><br>BNP Secretary General Mirza Fakhrul Islam Alamgir announced this program in a press conference at Nayapaltan central office on Thursday afternoon.</p>', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span style=\"font-family:solaimanlipi;font-size:14px;\"><span style=\"box-sizing:border-box;line-height:26px !important;margin-bottom:17px !important;vertical-align:middle;\">একদিকে বৃষ্টি, অন্যদিকে হাঁটু সমান পানিতে দাড়িয়ে চলছে বিএনপির সমাবেশ। শুক্রবার বিকেল ৩টায় আনুষ্ঠানিকভাবে নয়াপল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের সামনে এ সমাবেশ শুরু হয়। ঢাকা মহানগর উত্তর ও দক্ষিণ বিএনপির উদ্যোগে আয়োজিত এ সমাবেশে রাজধানীর বিভিন্ন এলাকা থেকে খণ্ড খণ্ড মিছিল নিয়ে অংশ নিচ্ছেন নেতাকর্মীরা।</span></span></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span style=\"font-family:solaimanlipi;font-size:14px;\"><span style=\"box-sizing:border-box;line-height:26px !important;margin-bottom:17px !important;vertical-align:middle;\">বিএনপির ভারপ্রাপ্ত চেয়ারম্যান তারেক রহমান ও তার স্ত্রী ডা. জুবাইদা রহমানের বিরুদ্ধে দুদকের মামলায় বিচারিক আদালতের রায়কে ‘ফরমায়েশি’ উল্লেখ করে শুক্রবার প্রতিবাদ সমাবেশ করছে ঢাকাসহ দেশের সকল জেলা ও মহানগরে।&nbsp;</span></span></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span style=\"font-family:solaimanlipi;font-size:14px;\"><span style=\"box-sizing:border-box;line-height:26px !important;margin-bottom:17px !important;vertical-align:middle;\">বৃহস্পতিবার দুপুরে নয়াপল্টনের কেন্দ্রীয় কার্যালয়ে এক সংবাদ সম্মেলনে এ কর্মসূচি ঘোষণা করেন বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর।</span></span></p>', 'বিএনপি, সমাবেশ, নয়াপল্টন, বৃষ্টি', 'BNP, Rally, Nayapaltan, Rain', NULL, 1, NULL, 1, '04-08-2023', 'August', '2023-08-04 03:59:50', '2023-08-07 15:12:25'),
(13, 3, NULL, 5, NULL, 1, 'The facility of pre-arrangement of immigration timings is now available at Petrapol', 'পেট্রাপোলে ইমিগ্রেশনের সময় আগেই নির্ধারণের সুবিধা চালু', 'public/postimages/04-08-202364ccd03b38062.jpg', '<p>Passengers can pre-determine customs and immigration time to come from India to Bangladesh through Benapole-Petrapole land port. Land Port Authority (LPAI) has launched \'Slot Booking System\' for Petrapol Port in India. As part of this process, a new LPAI counter was inaugurated on Thursday.</p><p>After the inauguration, LPAI chairman Aditya Mishra said, \'Those who will go to Bangladesh from India can schedule a convenient time for customs and immigration a week in advance. For this, slot booking has to be done by registering on the website of LPAI with passport number and mobile number. This facility introduced by LPAI authority will initially be available only to passengers traveling from India to Bangladesh.</p><p><br>He said, \"In this, passengers will not have to stand in line for a long time to go from India to Bangladesh.\" Initially 100 slots can be booked per hour. 1200 slots have been arranged for 12 hours in a day.</p><p>&nbsp;</p><p>LPAI\'s new counter was inaugurated on Thursday.<br>Kamlesh Saini, LPAI Manager of Petrapol Port, said, \'Slot booking system has been introduced for the convenience of passengers. Passengers can book slots for free through the website.</p><p>A Bangladeshi-bound passenger named Suratna Das said, \"Now to go to Bangladesh, time will not be wasted in long queues at the border.\"</p>', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">বেনাপোল-পেট্রাপোল স্থলবন্দর দিয়ে ভারত থেকে বাংলাদেশে আসতে কাস্টমস ও ইমিগ্রেশনের সময় আগেই নির্ধারণ করতে পারবেন যাত্রীরা। ভারতের পেট্রাপোল বন্দরে ল্যান্ড পোর্ট অথরিটি (এলপিএআই) এ জন্য চালু করেছে ‘স্লট বুকিং সিস্টেম’। এই প্রক্রিয়ার অংশ হিসেবে বৃহস্পতিবার এলপিএআই’র নতুন কাউন্টার উদ্বোধন করা হয়েছে।<br>&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">উদ্বোধন শেষে এলপিএআই চেয়ারম্যান আদিত্য মিশ্র বলেন, ‘ভারত থেকে যারা বাংলাদেশে যাবেন তারা এক সপ্তাহ আগেই কাস্টমস ও ইমিগ্রেশনের জন্য সুবিধামতো সময় নির্ধারণ করতে পারবেন। এজন্য পাসপোর্ট নম্বর ও মোবাইল নম্বর দিয়ে <a style=\"background-color:transparent;box-sizing:border-box;color:rgb(51, 122, 183);text-decoration:none;\" href=\"https://lpai.gov.in/en\" target=\"_blank\">এলপিএআইর ওয়েবসাইটে</a> গিয়ে রেজিস্ট্রেশন করে স্লট বুকিং করতে হবে। এলপিএআই অথরিটির চালু করা এই সুবিধা প্রাথমিকভাবে শুধু ভারত থেকে বাংলাদেশগামী যাত্রীরা পাবেন।’&nbsp;</p><p>&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">তিনি বলেন, ‘এতে ভারত থেকে বাংলাদেশে যেতে যাত্রীদের আর দীর্ঘ সময় লাইনে দাঁড়িয়ে থাকতে হবে না। প্রাথমিকভাবে প্রতি ঘণ্টায় ১০০টি স্লট বুক করা যাবে। একদিনে ১২ ঘণ্টায় ১২শ স্লটের ব্যবস্থা রাখা হয়েছে।’&nbsp;</p><div class=\"textBodyAd1Container hidden-print\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:15px;orphans:2;overflow:hidden;text-align:-webkit-center;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><div style=\"background-color:transparent;border-style:none;box-sizing:border-box;display:inline-block;height:0px;margin:0px;opacity:0;overflow:hidden;padding:0px;position:relative;visibility:visible;width:300px;\" id=\"aswift_4_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><ins class=\"adsbygoogle\" style=\"box-sizing:border-box;display:inline-block;height:0px;width:300px;\" data-ad-client=\"ca-pub-9442091006829624\" data-ad-slot=\"5808909465\" data-adsbygoogle-status=\"done\"><iframe style=\"border-width:0px;box-sizing:border-box;height:250px;left:0px;position:absolute;top:0px;width:300px;\" id=\"aswift_4\" name=\"aswift_4\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" width=\"300\" height=\"250\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?gdpr=0&amp;us_privacy=1---&amp;client=ca-pub-9442091006829624&amp;output=html&amp;h=250&amp;slotname=5808909465&amp;adk=2904812914&amp;adf=2824717477&amp;pi=t.ma~as.5808909465&amp;w=300&amp;lmt=1691144128&amp;format=300x250&amp;url=https%3A%2F%2Fsamakal.com%2Finternational%2Farticle%2F2308187598%2F%25E0%25A6%25AD%25E0%25A6%25BE%25E0%25A6%25B0%25E0%25A6%25A4%25E0%25A6%25AC%25E0%25A6%25BE%25E0%25A6%2582%25E0%25A6%25B2%25E0%25A6%25BE%25E0%25A6%25A6%25E0%25A7%2587%25E0%25A6%25B6-%25E0%25A6%2587%25E0%25A6%25AE%25E0%25A6%25BF%25E0%25A6%2597%25E0%25A7%258D%25E0%25A6%25B0%25E0%25A7%2587%25E0%25A6%25B6%25E0%25A6%25A8%25E0%25A7%2587%25E0%25A6%25B0-%25E0%25A6%25B8%25E0%25A6%25AE%25E0%25A7%259F-%25E0%25A6%2586%25E0%25A6%2597%25E0%25A7%2587%25E0%25A6%2587-%25E0%25A6%25A8%25E0%25A6%25BF%25E0%25A6%25B0%25E0%25A7%258D%25E0%25A6%25A7%25E0%25A6%25BE%25E0%25A6%25B0%25E0%25A6%25A3%25E0%25A7%2587%25E0%25A6%25B0-%25E0%25A6%25B8%25E0%25A7%2581%25E0%25A6%25AC%25E0%25A6%25BF%25E0%25A6%25A7%25E0%25A6%25BE-%25E0%25A6%259A%25E0%25A6%25BE%25E0%25A6%25B2%25E0%25A7%2581&amp;wgl=1&amp;uach=WyJMaW51eCIsIjYuMi4wIiwieDg2IiwiIiwiMTE2LjAuMTkzOC4xMCIsW10sMCxudWxsLCI2NCIsW1siQ2hyb21pdW0iLCIxMTYuMC41ODQ1LjE0Il0sWyJOb3QpQTtCcmFuZCIsIjI0LjAuMC4wIl0sWyJNaWNyb3NvZnQgRWRnZSIsIjExNi4wLjE5MzguMTAiXV0sMF0.&amp;dt=1691144126644&amp;bpp=1&amp;bdt=5598&amp;idt=314&amp;shv=r20230802&amp;mjsv=m202307270101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Db925c3f5e4a1d0db-22d2b9e0afe2005a%3AT%3D1691142716%3ART%3D1691144127%3AS%3DALNI_MalcUGFHpsbiJjWt3HkmJXFXhyM2g&amp;gpic=UID%3D00000c26f1805860%3AT%3D1691142716%3ART%3D1691144127%3AS%3DALNI_Mb1t9SMcGvW666f0n5Pc7fF5zGF9Q&amp;prev_fmts=0x0%2C300x250&amp;nras=1&amp;correlator=3315284182461&amp;frm=20&amp;pv=1&amp;ga_vid=293820239.1691142713&amp;ga_sid=1691144127&amp;ga_hid=1125464861&amp;ga_fc=1&amp;u_tz=360&amp;u_his=4&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1053&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1897&amp;bih=977&amp;scr_x=0&amp;scr_y=0&amp;eid=44759926%2C44759842%2C44759875%2C31076509%2C31076733%2C44795909&amp;oid=2&amp;pvsid=349024056915614&amp;tmod=1183753422&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fsamakal.com%2F&amp;fc=1920&amp;brdim=0%2C27%2C0%2C27%2C1920%2C27%2C1920%2C1053%2C1912%2C977&amp;vis=2&amp;rsz=%7C%7CenEr%7C&amp;abl=CS&amp;pfx=0&amp;fu=32768&amp;bc=31&amp;ifi=5&amp;uci=a!5&amp;fsb=1&amp;xpc=FQJi9oviFX&amp;p=https%3A//samakal.com&amp;dtd=1626\" data-google-container-id=\"a!5\"></iframe></ins><br>&nbsp;</div></div><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">পেট্রাপোল বন্দরের এলপিএআই ম্যানেজার কমলেশ সাইনি বলেন, ‘যাত্রী সুবিধার্থে স্লট বুকিং সিস্টেম চালু করা হয়েছে। ওয়েবসাইটের মাধ্যমে যাত্রীরা বিনা পয়সায় স্লট বুক করতে পারবেন।’<br>&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(51, 51, 51);font-family:solaimanlipi;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:26px !important;margin:0px 0px 17px !important;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">সুরত্না দাস নামে বাংলাদেশগামী এক যাত্রী বলেন, ‘এখন বাংলাদেশে যেতে সীমান্তে দীর্ঘ লাইনে সময় নষ্ট হবে না।’</p>', 'ভারত-বাংলাদেশ, সীমান্ত ইমিগ্রেশন, কাস্টমস ,পেট্রাপোল বন্দর', 'India-Bangladesh, Border Immigration, Customs, Petrapol Port', NULL, 1, 1, NULL, '04-08-2023', 'August', '2023-08-04 04:17:31', '2023-08-07 15:11:45'),
(14, 4, NULL, 5, NULL, 1, 'How to keep your smartphone battery good', 'স্মার্টফোনের ব্যাটারি ভালো রাখবেন যেভাবে', 'public/postimages/07-08-202364d162e71dc96.jpg', '<p>Many people buy smartphones with powerful batteries to use smartphones for a long time. Considering the needs of users, manufacturers are also increasing the battery capacity of their smartphones. But due to wrong way of charging, even the batteries of the strong battery smartphones of the reputed brands get damaged quickly. Most smartphones in the market today have built-in batteries that cannot be replaced even if you want to. However, it is possible to keep the smartphone battery good for a long time if several techniques are followed. Let\'s take a look at the tricks to keep the smartphone battery good.</p><p><br>Not 100% charge<br>There is a common misconception that a full or 100% charge is good for smartphone battery. But this idea is the most damaging in terms of smartphone battery. Smartphone batteries are made of lithium ion. Lithium ion batteries are stressed when they are fully charged or not charged. As a result, battery life is reduced. If the charging level of the smartphone battery is always between 30 and 80 percent, the battery is not stressed. As a result, the battery can be used for a long time. And so the charging level of the battery should always be kept at a maximum of 80 percent. If it comes close to half, you will have to pay the charge. The smartphone can be charged several times if necessary.</p><p>Read more<br>How to increase smartphone security<br>There are several things to be careful about when using a smartphone</p><p>No charge for whole night<br>Many people charge their smartphones before going to sleep. Overnight charging reduces the battery life of the phone. Because, if you charge all night, the battery voltage increases as the phone battery is fully charged, which is harmful for the lithium ion battery. At the same time, the battery gets hot if it is charged for a long time. This reduces the effectiveness of the chemicals in the battery.</p><p>Do not play games or watch videos while charging<br>Playing games or watching videos consumes more battery. And so many people regularly play games or watch videos while charging their smartphones. But if the game or video is running while it is charging, the smartphone battery heats up quickly. As a result, the battery is stressed and its performance gradually decreases.</p>', '<p>দীর্ঘ সময় স্মার্টফোন ব্যবহারের জন্য অনেকেই শক্তিশালী ব্যাটারিযুক্ত স্মার্টফোন কেনেন। ব্যবহারকারীদের চাহিদার কথা বিবেচনা করে নির্মাতা প্রতিষ্ঠানগুলোও নিজেদের তৈরি স্মার্টফোনে ব্যাটারির ক্ষমতা বাড়াচ্ছে। কিন্তু ভুল পদ্ধতিতে চার্জ দেওয়ার কারণে নামীদামি ব্র্যান্ডের শক্তিশালী ব্যাটারির স্মার্টফোনগুলোর ব্যাটারিও দ্রুত নষ্ট হয়ে যায়। বর্তমানে বাজারে থাকা বেশির ভাগ স্মার্টফোনেই বিল্ট-ইন ব্যাটারি সুবিধা থাকায় চাইলেও সেগুলো বদলানো যায় না। তবে বেশ কিছু কৌশল মেনে চললে স্মার্টফোনের ব্যাটারি দীর্ঘদিন ভালো রাখা সম্ভব। স্মার্টফোনের ব্যাটারি ভালো রাখার কৌশলগুলো দেখে নেওয়া যাক।</p><p><br>শতভাগ চার্জ নয়<br>প্রচলিত একটা ভুল ধারণা রয়েছে যে সম্পূর্ণ বা শতভাগ চার্জ করলে স্মার্টফোনের ব্যাটারি ভালো থাকে। কিন্তু এ ধারণাই স্মার্টফোনের ব্যাটারির ক্ষেত্রে সবচেয়ে বেশি ক্ষতি করে। স্মার্টফোনের ব্যাটারি লিথিয়াম আয়নের হয়ে থাকে। শতভাগ চার্জ অথবা চার্জ না থাকলে লিথিয়াম আয়ন ব্যাটারির ওপর চাপ সৃষ্টি হয়। ফলে ব্যাটারির আয়ু কমে যায়। স্মার্টফোনের ব্যাটারির চার্জিং লেভেল সব সময় ৩০ থেকে ৮০ শতাংশ থাকলে ব্যাটারির ওপর চাপ পড়ে না। ফলে ব্যাটারি দীর্ঘদিন ব্যবহার করা যায়। আর তাই ব্যাটারির চার্জিং লেভেল সব সময় সর্বোচ্চ ৮০ শতাংশ রাখতে হবে। অর্ধেকের কাছাকাছি এলে চার্জ দিতে হবে। প্রয়োজনে কয়েকবারে স্মার্টফোন চার্জ দেওয়া যেতে পারে।</p><p>আরও পড়ুন<br>স্মার্টফোনের নিরাপত্তা বাড়াবেন যেভাবে<br>স্মার্টফোন ব্যবহারে বেশ কিছু বিষয়ে সতর্ক থাকতে হবে</p><p>সারা রাত ধরে চার্জ নয়<br>অনেকেই ঘুমাতে যাওয়ার আগে স্মার্টফোন চার্জে দেন। সারা রাত ধরে চার্জ হওয়ার ফলে ফোনের ব্যাটারির স্থায়িত্ব কমে যায়। কারণ, সারা রাত চার্জ করলে ফোনের ব্যাটারি শতভাগ চার্জ হওয়ায় ব্যাটারির ভোল্টেজ বেড়ে যায়, যা লিথিয়াম আয়ন ব্যাটারির জন্য ক্ষতিকর। একই সঙ্গে দীর্ঘ সময় চার্জে থাকলে ব্যাটারি গরম হয়ে যায়। এতে ব্যাটারির মধ্যে থাকা রাসায়নিকের কার্যকারিতা কমে যায়।</p><p>চার্জিংয়ের সময় গেম খেলা বা ভিডিও না দেখা<br>গেম খেলা বা ভিডিও দেখার সময় ব্যাটারি বেশি খরচ হয়। আর তাই অনেকেই স্মার্টফোন চার্জ করা অবস্থায় নিয়মিত গেম খেলেন বা ভিডিও দেখেন। কিন্তু চার্জে থাকা অবস্থায় গেম বা ভিডিও চালু থাকলে স্মার্টফোনের ব্যাটারি দ্রুত গরম হয়ে যায়। ফলে ব্যাটারির ওপর চাপ পড়ে এবং ধীরে ধীরে এর কার্যকারিতা কমে যায়।</p>', 'টিপস, মোবাইল, ফোন, স্মার্টফোন', 'Tips, mobile, phone, smartphone', NULL, 1, 1, 1, '07-08-2023', 'August', '2023-08-07 15:32:23', '2023-08-07 15:32:23'),
(15, 7, NULL, 6, NULL, 1, 'The United States uses sanctions to combat corruption', 'দুর্নীতি দমনের ক্ষেত্রে নিষেধাজ্ঞাকে ব্যবহার করে যুক্তরাষ্ট্র', 'public/postimages/07-08-202364d164dfd66db.jpeg', '<p>The United States uses sanctions as a measure to combat corruption. During a meeting with Secretary of State Masoud Bin Momen on Monday, US State Department Global Anti-Corruption Coordinator Richard Nephew made such comments.</p><p>Foreign Secretary Masud bin Momen gave this information in response to questions from journalists at the Foreign Service Academy in the capital yesterday afternoon. On the second day of his visit to Bangladesh, Richard Nephew had a morning exchange with a delegation of civil society. He then held a meeting with the Foreign Secretary.</p><p>When asked about the meeting, the Foreign Secretary told reporters that the Ministry of Foreign Affairs was explained how it is working to fight corruption. Along with that, the implementation of the international obligations has been informed. Apart from this, how the ACC and Bangladesh Bank\'s Bangladesh Financial Intelligence Unit (BFIU) work in coordination has been informed.</p><p>The Foreign Secretary said that the conference will be held on the 20th anniversary of the United Nations anti-corruption charter in Atlanta next December. Bangladesh has been invited to participate there. From this conference, the United States will seek a commitment from the countries to combat corruption.</p>', '<p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">দুর্নীতি দমনের ক্ষেত্রে যুক্তরাষ্ট্র নিষেধাজ্ঞাকে একটি পদক্ষেপ হিসেবে ব্যবহার করে থাকে। গতকাল সোমবার পররাষ্ট্রসচিব মাসুদ বিন মোমেনের সঙ্গে বৈঠকের সময় মার্কিন পররাষ্ট্র দপ্তরের বৈশ্বিক দুর্নীতি দমন বিভাগের সমন্বয়ক রিচার্ড নেফিউ এমন মন্তব্য করেছেন।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">গতকাল বিকেলে রাজধানীর ফরেন সার্ভিস একাডেমিতে সাংবাদিকদের প্রশ্নের উত্তরে পররাষ্ট্রসচিব মাসুদ বিন মোমেন এ তথ্য জানান। বাংলাদেশ সফরের দ্বিতীয় দিনে রিচার্ড নেফিউ নাগরিক সমাজের একটি প্রতিনিধিদলের সঙ্গে সকালে মতবিনিময় করেন। এরপর তিনি পররাষ্ট্রসচিবের সঙ্গে বৈঠক করেন।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">বৈঠকের বিষয়ে জানতে চাইলে পররাষ্ট্রসচিব সাংবাদিকদের জানান, পররাষ্ট্র মন্ত্রণালয় কীভাবে দুর্নীতি দমনে কাজ করছে, তা ব্যাখ্যা করা হয়েছে। সেই সঙ্গে আন্তর্জাতিক যে বাধ্যবাধকতা রয়েছে, তার বাস্তবায়ন কীভাবে করা হচ্ছে, তা জানানো হয়েছে। এ ছাড়া দুদক ও বাংলাদেশ ব্যাংকের বাংলাদেশ ফাইন্যান্সিয়াল ইন্টেলিজেন্স ইউনিটের (বিএফআইইউ) সঙ্গে কীভাবে সমন্বয় করে কাজ করা হয়, তা জানানো হয়েছে।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(18, 18, 18);font-family:Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, Monospace;font-size:var(--fs-18);font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.7;margin:0px 0px var(--space1_6);orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:break-spaces;widows:2;word-spacing:0px;\">পররাষ্ট্রসচিব জানান, আগামী ডিসেম্বরে যুক্তরাষ্ট্রের আটলান্টায় জাতিসংঘের দুর্নীতিবিরোধী সনদের ২০ বছরপূর্তিতে সম্মেলন অনুষ্ঠিত হবে। সেখানে অংশগ্রহণের জন্য বাংলাদেশকে আমন্ত্রণ জানানো হয়েছে। এই সম্মেলন থেকে নতুন করে দুর্নীতি দমনে দেশগুলো থেকে অঙ্গীকার চাইবে যুক্তরাষ্ট্র।</p>', 'নিষেধাজ্ঞা, দুর্নীতি, যুক্তরাষ্ট্র', 'Sanctions, Corruption, United States', NULL, 1, NULL, 1, '07-08-2023', 'August', '2023-08-07 15:40:47', '2023-08-07 15:40:47'),
(16, 6, NULL, 5, NULL, 1, 'The education minister ordered closure of classes in four districts', 'চার জেলায় ক্লাস বন্ধের নির্দেশ শিক্ষামন্ত্রীর', 'public/postimages/08-08-202364d27656cb851.jpg', '<p>He said this at the meeting of the National Monitoring and Law and Order Committee formed to conduct the upcoming HSC and Equivalent Examination-2023 in a fair, plagiarism-free and positive environment at the International Mother Language Institute auditorium in the capital on Tuesday (August 8) afternoon.</p><p><br>The education minister said that classes will be closed in all educational institutions in Chittagong, Bandarban, Khagrachari and Cox\'s Bazar districts on Wednesday and Thursday due to ongoing rain and flood situation.<br><br>Also Read: There is no scholarship exam in primary</p><p>In the same event, the Education Minister said that the upcoming HSC and equivalent examinations will be held with full marks and full time in all subjects except one subject in the restructured syllabus. And it has been decided to cancel the primary education examination (PEC) and JSC-JDC examination. However, the scholarship will be given by evaluating the students in a different way.</p>', '<p>মঙ্গলবার (৮ আগস্ট) বিকেলে রাজধানীর আন্তর্জাতিক মাতৃভাষা ইনস্টিটিউট মিলনায়তনে আসন্ন এইচএসসি ও সমমান পরীক্ষা-২০২৩ সুষ্ঠু, নকলমুক্ত ও ইতিবাচক পরিবেশে সম্পন্নের লক্ষ্যে গঠিত জাতীয় মনিটরিং ও আইনশৃঙ্খলা কমিটির সভায় এ কথা বলেন তিনি।</p><p><br>শিক্ষামন্ত্রী জানান, চলমান বৃষ্টি ও বন্যা পরিস্থিতি সৃষ্টি হওয়ায় আগামী বুধ ও বৃহস্পতিবার চট্টগ্রাম, বান্দরবান, খাগড়াছড়ি ও কক্সবাজার জেলায় সব শিক্ষাপ্রতিষ্ঠানে ক্লাস বন্ধ থাকবে।<br><br>আরও পড়ুন: প্রাথমিকে বৃত্তি পরীক্ষা থাকছে না</p><p>একই অনুষ্ঠানে শিক্ষামন্ত্রী জানান, আসন্ন এইচএসসি ও সমমানের পরীক্ষা পুনর্বিন্যাসকৃত সিলেবাসে একটি বিষয় বাদে সব বিষয়ে পূর্ণ নম্বরে ও পূর্ণ সময়ে অনুষ্ঠিত হবে। আর প্রাথমিক শিক্ষা সমাপনী পরীক্ষা (পিইসি) এবং জেএসসি-জেডিসি পরীক্ষার মতো প্রাথমিকে বৃত্তি পরীক্ষাও বাতিলের সিদ্ধান্ত নেয়া হয়েছে। তবে ভিন্ন আঙ্গিকে শিক্ষার্থীদের মূল্যায়ন করে বৃত্তি দেয়া হবে।</p>', 'চট্টগ্রাম, বান্দরবান, খাগড়াছড়ি', 'Chittagong, Bandarban, Khagrachari', NULL, 1, NULL, 1, '08-08-2023', 'August', '2023-08-08 11:07:35', '2023-08-08 11:07:35');
INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `big_thumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(17, 4, NULL, 1, NULL, 1, 'Elon Musk laid off workers again', 'আবারও কর্মী ছাঁটাই করলেন ইলন মাস্ক', 'public/postimages/08-08-202364d27b1e07134.jpg', '<p>International news agency Reuters reported on The New York Times (NYT), Elon Musk cut staff again on Saturday (February 25) after taking over in October last year. At least 200 employees of the company have lost their jobs.</p><p>The layoffs, which took place Saturday night, affected product managers, data scientists and engineers, the NYT said, according to people familiar with the matter. These workers were working on machine learning and site reliability.</p><p>However, when contacted by Reuters, Twitter authorities did not respond.</p><p>Also Read: Netflix Cuts Subscription Fees In 30 Countries To Grow Subscribers</p><p>Meanwhile, The Information reported that Twitter laid off dozens of employees on Saturday.</p><p>Earlier last month, Elon Musk said that Twitter has about 2,300 employees.</p><p>After buying the microblogging site for $44 billion last October, Elon Musk made massive layoffs in early November to cut costs. Around 3,700 workers lost their jobs at that time.</p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">দ্য নিউ ইয়র্ক টাইমসের (এনওয়াইটি) বরাতে আন্তর্জাতিক বার্তা সংস্থা </span></span><a style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);background-repeat:no-repeat;box-sizing:border-box;color:rgb(240, 65, 48);cursor:pointer;font-family:Rajon;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.reuters.com/technology/twitter-lays-off-least-50-relentless-cost-cuts-information-2023-02-26/\">রয়টার্স</a><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> জানিয়েছে, গত বছরের অক্টোবরে দায়িত্ব নেয়া পর ইলন মাস্ক শনিবারে (২৫ ফেব্রুয়ারি)&nbsp;আবারও কর্মী ছাঁটাই করেছেন। এতে কম করে হলেও প্রতিষ্ঠানটির ২০০ কর্মী চাকরি হারিয়েছেন। &nbsp;</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">বিষয়টির সঙ্গে সংশ্লিষ্ট ব্যক্তিদের বরাতে এনওয়াইটি বলছে, শনিবার রাতে নেয়া এ ছাঁটাই কার্যক্রমে প্রতিষ্ঠানটির প্রোডাক্ট ম্যানেজার, ডেটা বিজ্ঞানী এবং প্রকৌশলীরা প্রভাবিত হয়েছেন। এসব কর্মী মেশিন লার্নিং এবং সাইট নির্ভরযোগ্যতা নিয়ে কাজ করছিলেন।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">তবে এ বিষয়ে জানতে টুইটার কর্তৃপক্ষের সঙ্গে রয়টার্সের পক্ষ থেকে যোগাযোগ করা হলে তারা কোনো সাড়া দেয়নি।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">আরও পড়ুন: &nbsp;</span></span><a style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);background-repeat:no-repeat;box-sizing:border-box;color:rgb(240, 65, 48);cursor:pointer;font-family:Rajon;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.somoynews.tv/news/2023-02-24/%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%B9%E0%A6%95-%E0%A6%AC%E0%A6%BE%E0%A6%A1%E0%A6%BC%E0%A6%BE%E0%A6%A4%E0%A7%87-%E0%A7%A9%E0%A7%A6-%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87-%E0%A6%B8%E0%A6%BE%E0%A6%AC%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%AA%E0%A6%B6%E0%A6%A8-%E0%A6%AB%E0%A6%BF-%E0%A6%95%E0%A6%AE%E0%A6%BE%E0%A6%9A%E0%A7%8D%E0%A6%9B%E0%A7%87-%E0%A6%A8%E0%A7%87%E0%A6%9F%E0%A6%AB%E0%A7%8D%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B8\">গ্রাহক বাড়াতে ৩০ দেশে সাবস্ক্রিপশন ফি কমাচ্ছে নেটফ্লিক্স</a><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">এদিকে দ্য ইনফরমেশন জানিয়েছে, যে টুইটার শনিবারে কয়েক জন ডজন কর্মী ছাঁটাই করেছে।&nbsp;</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">এর আগে গত মাসেই ইলন মাস্ক জানিয়েছিলেন যে টুইটারে প্রায় ২ হাজার ৩০০ কর্মী কর্মরত রয়েছেন।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">গত অক্টোবরে ৪৪ বিলিয়ন ডলারে মাইক্রোব্লগিং সাইটটি কিনে নেয়ার পর ইলন মাস্ক নভেম্বরের গোড়ায় দিকে খরচ কমাতে ব্যাপক আকারে কর্মী ছাঁটাই করেন। সে সময়ে প্রায় ৩ হাজার ৭০০ কর্মীকে চাকরি হারাতে হয়।</span></span></p>', 'twitter', 'টুইটার', NULL, 1, 1, 1, '08-08-2023', 'August', '2023-08-08 11:27:58', '2023-08-08 11:27:58'),
(18, 6, NULL, 5, NULL, 1, 'There is no scholarship exam in primary', 'প্রাথমিকে বৃত্তি পরীক্ষা থাকছে না', 'public/postimages/08-08-202364d28fad30e87.jpg', '<p>Mahbubur Rahman, senior information officer of the Ministry of Primary and Mass Education, confirmed this information to the news.<br><br>he said<br>Even if there is no scholarship exam, students will be given scholarships by evaluating them in a different way. However, no decision has been taken regarding the criteria for giving scholarships.<br>&nbsp;</p><p>Basically the decision to stop students from learning based on note-guides and coaching, to modern learning and daily assessment in class.<br><br>Also Read: Preliminary Scholarship Exam May Be Cancelled<br><br>It is known that according to the National Curriculum Framework, the new curriculum is being launched in the first, sixth and seventh classes from the next academic year. Which will be implemented in other classes gradually. In this case, it has been decided to give less importance to the traditional examination and give importance to the continuous assessment in the educational institution itself.<br><br>For the last three years, the primary education final examination of the fifth class students has not been conducted. The government has decided that this exam will not be held in the coming days. Meanwhile, it was announced that JSC-JDC exams will not be taken.<br><br>Also Read: Primary Teacher Recruitment 2023 Circular Released<br><br>As the PEC examination was discontinued, the scholarship examination was introduced on an experimental basis last year after a long 13 years. Due to the increased competition in such situations, students turn to coaching. In order to reduce their dependence on coaching, it was finally decided to stop the preliminary scholarship examination.<br><br>After 2008, the preliminary scholarship test was again introduced on a trial basis last year. Only those who secured more than 25 percent marks in the fifth class annual examination got the opportunity to participate in this scholarship examination.<br><br>Originally, after the introduction of PEC examination in 2009, the preliminary scholarship examination was discontinued. Scholarships were given to the students who secured the highest marks based on the results of the PEC examination.</p>', '<p>প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের সিনিয়র তথ্য কর্মকর্তা মাহবুবুর রহমান তুহিন সময় সংবাদকে এ তথ্য নিশ্চিত করেছেন।<br><br>তিনি বলেন,<br>বৃত্তি পরীক্ষা না থাকলেও ভিন্ন আঙ্গিকে মূল্যায়ন করে শিক্ষার্থীদের বৃত্তি দেয়া হবে। তবে বৃত্তি দেয়ার ক্ষেত্রে কী কী মানদণ্ড থাকবে সে বিষয়ে সিদ্ধান্ত নেয়া হয়নি৷।এখন পর্যন্ত এটুকুই জানানো হয়েছে।<br>&nbsp;</p><p>মূলত শিক্ষার্থীদের নোট-গাইড আর কোচিংনির্ভর পড়াশুনা বন্ধ করে, যুগোপযোগী শিক্ষা এবং প্রতিদিন ক্লাসেই মূল্যায়নের ব্যবস্থা করতে এমন সিদ্ধান্ত।<br><br>আরও পড়ুন: প্রাথমিক বৃত্তি পরীক্ষাও বাতিল হতে পারে<br><br>জানা গেছে, জাতীয় শিক্ষাক্রম রূপরেখা অনুসারে আগামী শিক্ষাবর্ষ থেকেই প্রথম এবং ষষ্ঠ ও সপ্তম শ্রেণিতে চালু হচ্ছে নতুন শিক্ষাক্রম। যা পর্যায়ক্রমে অন্যান্য শ্রেণিতেও বাস্তবায়ন করা হবে। এক্ষেত্রে প্রথাগত পরীক্ষাকে কম গুরুত্ব দিয়ে শিক্ষাপ্রতিষ্ঠানেই ধারাবাহিক মূল্যায়নের ওপর গুরুত্ব দেয়ার সিদ্ধান্ত নেয়া হয়েছে।<br><br>গত তিন বছর ধরে পঞ্চম শ্রেণির শিক্ষার্থীদের প্রাথমিক শিক্ষা সমাপনী পরীক্ষা নেয়া হচ্ছে না। আগামী দিনেও এ পরীক্ষা হচ্ছে না বলে সিদ্ধান্ত নিয়েছে সরকার। এদিকে জেএসসি-জেডিসি পরীক্ষাও না নেয়ার ঘোষণা দেয়া হয়।<br><br>আরও পড়ুন: প্রাথমিক শিক্ষক নিয়োগ ২০২৩ সার্কুলার প্রকাশ<br><br>পিইসি পরীক্ষা বন্ধ হয়ে যাওয়ায়, দীর্ঘ ১৩ বছর পর গতবছর পরীক্ষামূলকভাবে বৃত্তি পরীক্ষা চালু করা হয়। এমন পরিস্থিতিতে প্রতিযোগিতা বেড়ে যাওয়ায় শিক্ষার্থীরা কোচিংমুখী হয়ে পড়ে। তাদের কোচিংনির্ভরতা কমানোর লক্ষ্যে শেষ পর্যন্ত প্রাথমিক বৃত্তি পরীক্ষাও বন্ধ করার সিদ্ধান্ত হলো।<br><br>২০০৮ সালের পর গতবছর আবার প্রাথমিক বৃত্তি পরীক্ষা পরীক্ষামূলকভাবে চালু করা হয়েছিল। পঞ্চম শ্রেণির বার্ষিক পরীক্ষায় যারা ২৫ শতাংশের বেশি নম্বর পেত তারাই এই বৃত্তি পরীক্ষায় অংশ নেয়ার সুযোগ পেয়েছে।<br><br>মূলত ২০০৯ সালে পিইসি পরীক্ষা চালু হওয়ার পর প্রাথমিক বৃত্তি পরীক্ষা বন্ধ করা হয়। পিইসি পরীক্ষার ফলাফলের ভিত্তিতে সর্বোচ্চ নম্বর পাওয়া শিক্ষার্থীদের বৃত্তি দেয়া হতো।</p>', 'প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়', 'Ministry of Primary and Mass Education', NULL, 1, 1, 1, '08-08-2023', 'August', '2023-08-08 12:55:41', '2023-08-08 12:55:41'),
(19, 7, NULL, 6, NULL, 1, 'Even if the recession is avoided, the UK economy is not out of danger', 'মন্দা এড়িয়ে গেলেও শঙ্কার বাইরে নয় যুক্তরাজ্যের অর্থনীতি', 'public/postimages/08-08-202364d2955baa2e0.jpg', '<p>The UK narrowly avoided recession in 2022, according to new figures, the BBC reported on Friday (February 10). Whereas in the last quarter of last year i.e. from October to December zero growth was observed in the country\'s economy.</p><p>The Office for National Statistics (ONS) said the economy grew at zero in the last quarter of 2022, although the country\'s economic output fell by 0.5 percent in December.</p><p>According to the Guardian report, Jeremy Hunt said, \'The UK economy narrowly avoided recession in the last quarter. But the dark cloud of fear has not yet cut.</p><p>He said, \"Last year, the economy of the United Kingdom was in the best position among the G-7 member countries. Also, we have avoided recession. So, although many people are worried about our economic condition, our economy is relatively stable.</p><p>He also said, however, the dark cloud of crisis has not gone yet. Especially when it comes to inflation.</p><p>Read more: Recession will pass the UK economy!</p><p>Meanwhile, the Bank of England fears that the UK economy will enter recession this year. But the country\'s central bank believes the recession will be short-lived and less severe than previously forecast.</p><p>\"High inflation remains a problem,\" Jeremy Hunt told the BBC. Because of this, ordinary families in the UK are suffering.</p><p>However, the country\'s inflation is slowly coming down. But this rate is 10.5 percent. That is close to a 40-year high.</p><p>Meanwhile, on Friday (February 10), the ONS revised the figures for the July to September quarter. The amendment says the country\'s economy shrank by 0.2 percent during that period. Earlier, the rate of economic contraction was 0.3 percent.</p><p>Generally, when the economy contracts for two consecutive quarters, it is called a recession. In normal times, the economy usually grows. On average, prices of products and goods rise and people become somewhat richer. That is, GDP increases. But sometimes the value of human produced goods and services decreases. If the GDP shrinks for an entire quarter, i.e. for three consecutive months, then it should be understood as an ominous sign.</p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">শুক্রবার (১০ ফেব্রুয়ারি) বিবিসি এক প্রতিবেদনে বলা হয়েছে, নতুন পরিসংখ্যান অনুসারে, যুক্তরাজ্য ২০২২ সালে মন্দা একটুর জন্য এড়িয়ে গেছে। যেখানে গত বছরের শেষ ত্রৈমাসিকে অর্থাৎ অক্টোবর থেকে ডিসেম্বরে দেশটির অর্থনীতিতে শূন্য প্রবৃদ্ধি পরিলক্ষিত হয়।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">অফিস ফর ন্যাশনাল স্ট্যাটিস্টিকস (ওএনএস) জানিয়েছে, ২০২২ সালের শেষ ত্রৈমাসিকে অর্থনীতিতে শূন্য প্রবৃদ্ধি হয়েছে যদিও ডিসেম্বরে দেশটির অর্থনৈতিক আউটপুট শূন্য দশমিক ৫ শতাংশ পতন হয়।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">গার্ডিয়ান প্রতিবেদনের তথ্যমতে, জেরেমি হান্ট বলেছেন, ‘গত ত্রৈমাসিকে বেশ সংকীর্ণভাবে মন্দা পাশ কাটিয়ে গেছে যুক্তরাজ্যের অর্থনীতি। তবে শঙ্কার কালো মেঘ এখনও কাটেনি।’</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">তিনি বলেন, ‘গত বছর জি-৭ সদস্যভুক্ত দেশগুলোর মধ্যে যুক্তরাজ্যের অর্থনীতি সবচেয়ে ভালো অবস্থানে ছিল। সেই সঙ্গে আমরা মন্দাও এড়িয়ে যেতে পেরেছি। কাজেই অনেকে আমাদের অর্থনৈতিক অবস্থা নিয়ে শঙ্কায় থাকলেও আমাদের অর্থনীতি সেই তুলনাই স্থিতিশীল অবস্থানেই রয়েছে।’</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">তিনি আরও বলেন, তবে সংকটের কালো মেঘ এখনো যায়নি। বিশেষ করে যখন মূল্যস্ফীতির বিষয়টি আসে।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">আরও পড়ুন: </span></span><a style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);background-repeat:no-repeat;box-sizing:border-box;color:rgb(240, 65, 48);cursor:pointer;font-family:Rajon;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.somoynews.tv/news/2023-02-08/%E0%A6%AE%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A6%BE-%E0%A6%AA%E0%A6%BE%E0%A6%B6-%E0%A6%95%E0%A6%BE%E0%A6%9F%E0%A6%BF%E0%A7%9F%E0%A7%87-%E0%A6%AF%E0%A6%BE%E0%A6%AC%E0%A7%87-%E0%A6%AF%E0%A7%81%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A6%B0%E0%A6%BE%E0%A6%9C%E0%A7%8D%E0%A6%AF%E0%A7%87%E0%A6%B0-%E0%A6%85%E0%A6%B0%E0%A7%8D%E0%A6%A5%E0%A6%A8%E0%A7%80%E0%A6%A4%E0%A6%BF\">মন্দা পাশ কাটিয়ে যাবে যুক্তরাজ্যের অর্থনীতি!</a><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">এদিকে যুক্তরাজ্যের অর্থনীতি চলতি বছর মন্দায় প্রবেশ করবে বলে আশঙ্কা করছে ব্যাংক অব ইংল্যান্ড। তবে দেশটির কেন্দ্রীয় ব্যাংক মনে করে যে আগের পূর্বাভাসে তুলনায় এ মন্দা স্বল্পস্থায়ী ও কম গুরুতর হবে।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">জেরেমি হান্ট বিবিসিকে বলেছিলেন, ‘ উচ্চ মূল্যস্ফীতি একটি সমস্যা রয়ে গেছে। এর কারণে যুক্তরাজ্যের সাধারণ পরিবারগুলো কষ্টে আছেন।’</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">যদিও দেশটির মূল্যস্ফীতি ধীরে ধীরে কমছে। কিন্তু এ হার ১০ দশমিক ৫ শতাংশ। যা ৪০ বছরের সর্বোচ্চের কাছাকাছি।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">এদিকে শুক্রবার (১০ ফেব্রুয়ারি) ওএনএস জুলাই থেকে সেপ্টেম্বর ত্রৈমাসিকে জন্য পরিসংখ্যান সংশোধন করেছে। সংশোধনীতে সেই সময়ে দেশটির অর্থনীতি শূন্য দশমিক ২ শতাংশ সংকোচন পেয়েছে বলা হয়েছে। আগে অর্থনীতি সংকোচনের হার শূন্য দশমিক ৩ শতাংশ ছিল।</span></span><br><br><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.87);font-family:Rajon;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">সাধারণত পরপর দুই প্রান্তিকে অর্থনীতি সংকুচিত হলে তাকেই মন্দা বলা হয়। স্বাভাবিক সময়ে সাধারণত অর্থনীতির প্রবৃদ্ধি হয়। গড়পড়তা হিসাবে দেখা যায়, উৎপাদিত ও পণ্যের মূল্য বৃদ্ধি পায় এবং তাতে মানুষ কিছুটা ধনী হয়। অর্থাৎ জিডিপির প্রবৃদ্ধি হয়। কিন্তু কখনো কখনো মানুষের উৎপাদিত পণ্য ও সেবার মূল্য হ্রাস পায়। পুরো এক প্রান্তিকে, অর্থাৎ টানা তিন মাস যদি জিডিপি সংকুচিত হয়, তাহলে বুঝতে হবে অশনিসংকেত।</span></span></p>', 'অর্থনীতি', 'the economy', NULL, 1, 1, 1, '08-08-2023', 'August', '2023-08-08 13:19:55', '2023-08-14 02:20:37'),
(20, 8, 8, 5, NULL, 1, 'After hearing the \'game stop\', Kader strongly wanted to \'play\'', '‘খেলা বন্ধের’ কথা শুনে জোরালো ভাবে ‘খেলতে’ চাইলেন কাদের', 'public/postimages/08-08-202364d297af517fc.jpg', '<p>When BNP Member of Parliament Harunur Rashid called upon Obaidul Quader to \"stop playing\" in the National Parliament, Awami League\'s General Secretary responded more forcefully to \"play\". He said, \"The game will be against the politics of murder.\" The game will be against fire-terror. The game will be against corruption. The game will be against looting.<br>file image.<br>file image.<br>Metropolitan Desk</p><p>Read in 2 minutes<br>Awami League General Secretary Obaidul Quader said this while participating in an unscheduled discussion at the Jatiya Sangsad on Wednesday (November 2).</p><p><br>Earlier, standing on the point of order at the end of the Parliament meeting, Harunur Rashid highlighted the suffering of the airport road due to the BRT project and said that public dissatisfaction is being created from public suffering. The government does not seem to have taken any steps to alleviate this public discontent.</p><p><br>Addressing the bridge minister, Harun said, \"Communications minister often says \"Khela Hobe\". The game will be played on December 10. We don\'t want to see a game where people suffer. In this country, BNP has been holding meetings for several months about commodity prices, electricity. Why are you stopping transportation? When asked the Home Minister, he said, \"I cannot say why the transport has stopped.\" Why are you running the country? Not one, not two, one after another.</p><p>Addressing the bridge minister, Harunur Rashid also said, \"Don\'t increase public suffering anymore.\" The public discontent that is being created due to public suffering will create a dire situation.</p><p>At this time, this member of parliament of BNP urged the government to return to political culture. He said, \'Bring back a peaceful atmosphere in the place where the opposition party has not been allowed to hold meetings for a long time. I think, stop playing. Stop playing games and take steps to truly take the country on a democratic path.\'</p><p>Read more: What did the Prime Minister say in response to Rumin Farhana\'s question?</p><p>Then, in response to Harunur Rashid\'s speech, Road Transport and Bridges Minister Obaidul Quader highlighted the various development projects taken by the government and said, \"Padma Bridge has been completed, Metrorail is ahead.\" Elevated has moved on. Karnaphuli tunnel ready. What else do you want? One government, so many projects. Wherever you look, flyovers, underpasses and overpasses. What was your time? zero That zero will be played against. Zero is doing that! Millions of people are suffering. That will be the game.</p><p>Acknowledging the suffering due to the Dhaka-Gazipur BRT project, the bridge minister said that there were design flaws in the project. This is why there is a problem. Now the situation is normal.</p><p>Obaidul Quader said, \"It feels good to burn a bus on fire.\" Buswalas no longer believe. When they see BNP, they think they are bringing fire. When you see BNP, you think it\'s a petrol bomb. When you see BNP, you think of a cocktail.</p><p>He said, \"There will be a game. It will be played against. will play I say the game will be against the politics of murder. The game will be against terrorism. The game will be against fire-terror. The game will be against corruption. The game will be against looting. What did I say bad?\'</p>', '<p>জাতীয় সংসদে বিএনপির সংসদ সদস্য হারুনুর রশীদ ‘খেলা বন্ধ’ করার জন্য ওবায়দুল কাদেরের প্রতি আহ্বান জানালে প্রতিউত্তরে আরও জোরালো ভাবে ‘খেলার’ কথা জানালেন আওয়ামী লীগের সাধারণ সম্পাদক। তিনি বলেন, ‘খেলা হবে খুনের রাজনীতির বিরুদ্ধে। খেলা হবে আগুন-সন্ত্রাসের বিরুদ্ধে। খেলা হবে দুর্নীতির বিরুদ্ধে। খেলা হবে লুটপাটের বিরুদ্ধে।’<br>ফাইল ছবি।<br>ফাইল ছবি।<br>মহানগর ডেস্ক</p><p>২ মিনিটে পড়ুন<br>বুধবার(২ নভেম্বর) জাতীয় সংসদে অনির্ধারিত আলোচনায় অংশ নিয়ে আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদের এ কথা বলেন।</p><p><br>এর আগে সংসদের বৈঠকের শেষ পর্যায়ে পয়েন্ট অব অর্ডারে দাঁড়িয়ে হারুনুর রশীদ বিআরটি প্রকল্পের কারণে এয়ারপোর্ট সড়কের দুর্ভোগের কথা তুলে ধরে বলেন, জনদুর্ভোগ থেকে জন-অসন্তোষ তৈরি হচ্ছে। এ জন-অসন্তোষকে লাঘব করার জন্য সরকারের কোনো পদক্ষেপ আছে বলে মনে হয় না।</p><p><br>সেতুমন্ত্রীর উদ্দেশে হারুন বলেন, ‘যোগাযোগমন্ত্রী প্রায়ই বলছেন “খেলা হবে”। আগামী ১০ ডিসেম্বর খেলা হবে। আমরা এমন খেলা দেখতে চাচ্ছি না যে জনদুর্ভোগে মানুষ পড়েন। এ দেশে দ্রব্যমূল্য, বিদ্যুৎ—এগুলো নিয়ে কয়েক মাস যাবৎ বিএনপি সভা-সমাবেশ করছে। আপনি কেন পরিবহন বন্ধ করছেন? স্বরাষ্ট্রমন্ত্রীকে প্রশ্ন করলে বলেন, “কী কারণে পরিবহন বন্ধ হয়েছে, বলতে পারব না।” দেশ চালাচ্ছেন কেন আপনারা? একটা নয়, দুটো নয়, একের পর এক।’</p><p>সেতুমন্ত্রীর উদ্দেশে হারুনুর রশীদ আরও বলেন, ‘জনদুর্ভোগ আর বাড়ায়েন না। জনদুর্ভোগে যে জন-অসন্তোষ তৈরি হচ্ছে, তাতে ভয়াবহ অবস্থা তৈরি হবে।’</p><p>এ সময় সরকারকে রাজনৈতিক সংস্কৃতিতে ফিরে আসার আহ্বান জানান বিএনপির এই সংসদ সদস্য। বলেন, ‘দীর্ঘদিন ধরে বিরোধী দলকে যে সভা-সমাবেশ করতে দেন না, সেই জায়গায় একটি শান্তিপূর্ণ পরিবেশ ফিরিয়ে আনুন। আমি মনে করি, খেলা বন্ধ করুন। খেলা বন্ধ করে সত্যিকার অর্থে দেশকে একটি গণতান্ত্রিক পথে নিয়ে যাওয়ার পদক্ষেপ গ্রহণ করুন।’</p><p>আরও পড়ুন: রুমিন ফারহানার প্রশ্নের উত্তরে কী বললেন প্রধানমন্ত্রী?</p><p>এরপর হারুনুর রশীদের বক্তব্যের জবাবে সরকারের নেয়া বিভিন্ন উন্নয়ন প্রকল্পের কথা তুলে ধরে সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের বলেন, ‘পদ্মা সেতু হয়ে গেছে, মেট্রোরেল সামনে হচ্ছে। এলিভেটেড এগিয়ে গেছে। কর্ণফুলী টানেল রেডি। কী চান আর? একটা সরকার, এতগুলো প্রজেক্ট। যেদিকে তাকান ফ্লাইওভার, আন্ডারপাস-ওভারপাস। আপনাদের সময় কী ছিল? জিরো। ওই জিরোর বিরুদ্ধে খেলা হবে। ওই জিরো যে করছেন! ভোগান্তিতে রাখছেন লাখো কোটি মানুষকে। সেটিই খেলা হবে।’</p><p>ঢাকা-গাজীপুর বিআরটি প্রকল্পের কারণে ভোগান্তির কথা স্বীকার করে সেতুমন্ত্রী বলেন, প্রকল্পটিতে নকশায় ত্রুটি ছিল। এ কারণে সমস্যা হয়েছে। এখন পরিস্থিতি স্বাভাবিক।</p><p>ওবায়দুল কাদের বলেন, ‘আগুনে বাস পোড়ালে ভালো লাগে। বাসওয়ালারা এখন আর বিশ্বাস করে না। এরা বিএনপিকে দেখলেই মনে করে আগুন নিয়ে আসছে। বিএনপিকে দেখলেই মনে করে পেট্রল বোমা। বিএনপিকে দেখলেই মনে করে ককটেল।’</p><p>তিনি বলেন, ‘খেলা হবে। এর বিরুদ্ধেই খেলা হবে। খেলা হবে। আমি বলছি খেলা হবে খুনের রাজনীতির বিরুদ্ধে। খেলা হবে সন্ত্রাসের বিরুদ্ধে। খেলা হবে আগুন-সন্ত্রাসের বিরুদ্ধে। খেলা হবে দুর্নীতির বিরুদ্ধে। খেলা হবে লুটপাটের বিরুদ্ধে। খারাপ কী বলেছি?’<br>&nbsp;</p>', 'ওবায়দুল কাদের', 'Obaidul Quader', NULL, 1, NULL, 1, '08-08-2023', 'August', '2023-08-08 13:29:51', '2023-08-08 13:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `scos`
--

CREATE TABLE `scos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `google_verification` varchar(255) DEFAULT NULL,
  `alexa_analytics` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scos`
--

INSERT INTO `scos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Mehadi Hasan', 'Latest News - Your News Portal', 'news, updates, world news, politics, sports, entertainment, technology, business, health', 'Get the latest news and updates on various topics from around the world. Stay informed with Your News Portal.', 'Google Analytics', 'Google Verification', 'Alexa Analytics', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('znp6EQP2ePoIccgmSSat6KkF7Fyyx0eg4NniLQXP', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZmJiMUpyaVJjcEpJa0NPY2lqZG5ONkhiekJyMzAxVFYySVdnUWZYUiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1692011219);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(2, 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.instagram.com', 'https://www.linkedin.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `sub_category_bn` varchar(255) NOT NULL,
  `sub_category_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_bn`, `sub_category_en`, `created_at`, `updated_at`) VALUES
(2, '4', 'আর্থিক ব্যবস্থা', 'Finance', '2023-07-23 13:54:05', '2023-07-27 04:57:35'),
(3, '3', 'মার্কেটিং', 'Marketing', '2023-07-23 13:54:32', '2023-07-23 13:54:32'),
(4, '3', 'বিক্রয়', 'Sales', '2023-07-23 13:54:51', '2023-07-23 13:54:51'),
(5, '5', 'মানব সম্পদ', 'Human Resources', '2023-07-23 13:55:09', '2023-07-27 04:57:57'),
(6, '3', 'অপারেশনস', 'Operations', '2023-07-23 13:55:22', '2023-07-23 13:55:22'),
(7, '8', 'ক্রিকেট', 'Cricket', '2023-07-23 14:02:57', '2023-07-23 14:02:57'),
(8, '8', 'ফুটবল', 'Football', '2023-07-23 14:03:33', '2023-07-23 14:03:33'),
(9, '1', 'বাংলাদেশ', 'Bangladesh', '2023-07-25 01:58:41', '2023-07-25 01:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `sub_districts`
--

CREATE TABLE `sub_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` varchar(255) NOT NULL,
  `subdistrict_en` varchar(255) NOT NULL,
  `subdistrict_bn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_districts`
--

INSERT INTO `sub_districts` (`id`, `district_id`, `subdistrict_en`, `subdistrict_bn`, `created_at`, `updated_at`) VALUES
(1, '5', 'Mirsarai', 'মিরসরাই', '2023-07-22 11:45:30', '2023-07-22 11:45:30'),
(2, '6', 'The Capital', 'রাজধানি', '2023-07-25 02:00:57', '2023-07-25 02:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mehadi Hasan', 'mhshakil06@gmail.com', NULL, '$2y$10$HTafZebFyiAZUcTSRSdlXufCxQcGyxOL83UdxZihT7iZ0GRi6v9DG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 05:54:42', '2023-07-22 05:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `embed_code` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(2, 'WordPress quickstart plugin + a real life example', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C6PPMA2co9Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-07-22 06:07:14', '2023-08-04 11:40:44'),
(3, 'HTML & CSS Team member area coding', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MdKmMrHye4Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 0, '2023-07-22 11:36:13', '2023-08-04 11:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_name_bn` varchar(200) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_name_bn`, `website_link`, `created_at`, `updated_at`) VALUES
(2, 'bdnews24', 'বিডিনিউজ২৪', 'https://bdnews24.com/', '2023-07-24 16:03:17', '2023-07-24 16:03:17'),
(3, 'The Daily Star', 'দে ডেইলি স্টার', 'https://www.thedailystar.net/', '2023-07-24 16:03:33', '2023-07-24 16:03:33'),
(4, 'Prothom Alo', 'প্রথম আলো', 'https://www.prothomalo.com/', '2023-07-24 16:03:48', '2023-07-24 16:03:48'),
(5, 'The Daily Jugantor', 'দৈনিক যুগান্তর', 'https://www.jugantor.com/', '2023-07-24 16:04:02', '2023-07-24 16:04:02'),
(6, 'Bangla Tribune', 'বাংলা ট্রিবিউন', 'https://banglatribune.com/', '2023-07-24 16:04:22', '2023-07-24 16:04:22'),
(7, 'Kaler Kantho', 'কালের কণ্ঠ', 'https://www.kalerkantho.com/', '2023-07-24 16:04:40', '2023-07-24 16:04:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scos`
--
ALTER TABLE `scos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_districts`
--
ALTER TABLE `sub_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `scos`
--
ALTER TABLE `scos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_districts`
--
ALTER TABLE `sub_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 09:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O-', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(2, 'O+', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(3, 'A+', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(4, 'A-', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(5, 'B+', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(6, 'B-', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(7, 'AB+', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(8, 'AB-', '2021-07-05 12:42:29', '2021-07-05 12:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returned` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_types`
--

CREATE TABLE `class_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_types`
--

INSERT INTO `class_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Web development', 'WB', NULL, NULL),
(2, 'Designing', 'D', NULL, NULL),
(3, 'Animation', 'A', NULL, NULL),
(4, 'VFX', 'V', NULL, NULL),
(5, 'Bg Artist', 'BG', NULL, NULL),
(6, 'Music Artist', 'M', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Faith Hostel', NULL, NULL, NULL),
(2, 'Peace Hostel', NULL, NULL, NULL),
(3, 'Grace Hostel', NULL, NULL, NULL),
(4, 'Success Hostel', NULL, NULL, NULL),
(5, 'Trust Hostel', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` tinyint(4) NOT NULL,
  `year` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) DEFAULT NULL,
  `ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `af` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `mark_from` tinyint(4) NOT NULL,
  `mark_to` tinyint(4) NOT NULL,
  `remark` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `class_type_id`, `mark_from`, `mark_to`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 70, 100, 'Excellent', NULL, NULL),
(2, 'B', NULL, 60, 69, 'Very Good', NULL, NULL),
(3, 'C', NULL, 50, 59, 'Good', NULL, NULL),
(4, 'D', NULL, 45, 49, 'Pass', NULL, NULL),
(5, 'E', NULL, 40, 44, 'Poor', NULL, NULL),
(6, 'F', NULL, 0, 39, 'Fail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sharchop', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(2, 1, 'Napeli', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(3, 1, 'Dzongkha', '2021-07-05 12:42:29', '2021-07-05 12:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `t1` int(11) DEFAULT NULL,
  `t2` int(11) DEFAULT NULL,
  `t3` int(11) DEFAULT NULL,
  `t4` int(11) DEFAULT NULL,
  `tca` int(11) DEFAULT NULL,
  `exm` int(11) DEFAULT NULL,
  `tex1` int(11) DEFAULT NULL,
  `tex2` int(11) DEFAULT NULL,
  `tex3` int(11) DEFAULT NULL,
  `sub_pos` tinyint(4) DEFAULT NULL,
  `cum` int(11) DEFAULT NULL,
  `cum_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_09_20_121733_create_blood_groups_table', 1),
(2, '2013_09_22_124750_create_states_table', 1),
(3, '2013_09_22_124806_create_lgas_table', 1),
(4, '2013_09_26_121148_create_nationalities_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_09_20_100249_create_user_types_table', 1),
(8, '2018_09_20_150906_create_class_types_table', 1),
(9, '2018_09_22_073005_create_my_classes_table', 1),
(10, '2018_09_22_073526_create_sections_table', 1),
(11, '2018_09_22_080555_create_settings_table', 1),
(12, '2018_09_22_081302_create_subjects_table', 1),
(13, '2018_09_22_151514_create_student_records_table', 1),
(14, '2018_09_26_124241_create_dorms_table', 1),
(15, '2018_10_04_224910_create_exams_table', 1),
(16, '2018_10_06_224846_create_marks_table', 1),
(17, '2018_10_06_224944_create_grades_table', 1),
(18, '2018_10_06_225007_create_pins_table', 1),
(19, '2018_10_18_205550_create_skills_table', 1),
(20, '2018_10_18_205842_create_exam_records_table', 1),
(21, '2018_10_31_191358_create_books_table', 1),
(22, '2018_10_31_192540_create_book_requests_table', 1),
(23, '2018_11_01_132115_create_staff_records_table', 1),
(24, '2018_11_03_210758_create_payments_table', 1),
(25, '2018_11_03_210817_create_payment_records_table', 1),
(26, '2018_11_06_083707_create_receipts_table', 1),
(27, '2018_11_27_180401_create_time_tables_table', 1),
(28, '2019_09_22_142514_create_fks', 1),
(29, '2019_09_26_132227_create_promotions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `name`, `class_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Grade 1', 3, NULL, NULL),
(2, 'Grade 2', 3, NULL, NULL),
(3, 'Grade 3', 3, NULL, NULL),
(4, 'Grade 4', 4, NULL, NULL),
(5, 'Grade 5', 4, NULL, NULL),
(6, 'Grade 6', 5, NULL, NULL),
(7, 'Grade 7', 5, NULL, NULL),
(8, 'Grade 8', 6, NULL, NULL),
(9, 'Grade 9', 6, NULL, NULL),
(10, 'Grade 10', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(2, 'Albanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(3, 'Algerian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(4, 'American', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(5, 'Andorran', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(6, 'Angolan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(7, 'Antiguans', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(8, 'Argentinean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(9, 'Armenian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(10, 'Australian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(11, 'Austrian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(12, 'Azerbaijani', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(13, 'Bahamian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(14, 'Bahraini', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(15, 'Bangladeshi', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(16, 'Barbadian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(17, 'Barbudans', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(18, 'Batswana', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(19, 'Belarusian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(20, 'Belgian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(21, 'Belizean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(22, 'Beninese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(23, 'Bhutanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(24, 'Bolivian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(25, 'Bosnian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(26, 'Brazilian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(27, 'British', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(28, 'Bruneian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(29, 'Bulgarian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(30, 'Burkinabe', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(31, 'Burmese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(32, 'Burundian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(33, 'Cambodian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(34, 'Cameroonian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(35, 'Canadian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(36, 'Cape Verdean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(37, 'Central African', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(38, 'Chadian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(39, 'Chilean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(40, 'Chinese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(41, 'Colombian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(42, 'Comoran', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(43, 'Congolese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(44, 'Costa Rican', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(45, 'Croatian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(46, 'Cuban', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(47, 'Cypriot', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(48, 'Czech', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(49, 'Danish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(50, 'Djibouti', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(51, 'Dominican', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(52, 'Dutch', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(53, 'East Timorese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(54, 'Ecuadorean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(55, 'Egyptian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(56, 'Emirian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(57, 'Equatorial Guinean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(58, 'Eritrean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(59, 'Estonian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(60, 'Ethiopian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(61, 'Fijian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(62, 'Filipino', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(63, 'Finnish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(64, 'French', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(65, 'Gabonese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(66, 'Gambian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(67, 'Georgian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(68, 'German', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(69, 'Ghanaian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(70, 'Greek', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(71, 'Grenadian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(72, 'Guatemalan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(73, 'Guinea-Bissauan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(74, 'Guinean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(75, 'Guyanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(76, 'Haitian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(77, 'Herzegovinian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(78, 'Honduran', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(79, 'Hungarian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(80, 'I-Kiribati', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(81, 'Icelander', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(82, 'Indian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(83, 'Indonesian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(84, 'Iranian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(85, 'Iraqi', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(86, 'Irish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(87, 'Israeli', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(88, 'Italian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(89, 'Ivorian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(90, 'Jamaican', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(91, 'Japanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(92, 'Jordanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(93, 'Kazakhstani', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(94, 'Kenyan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(95, 'Kittian and Nevisian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(96, 'Kuwaiti', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(97, 'Kyrgyz', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(98, 'Laotian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(99, 'Latvian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(100, 'Lebanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(101, 'Liberian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(102, 'Libyan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(103, 'Liechtensteiner', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(104, 'Lithuanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(105, 'Luxembourger', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(106, 'Macedonian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(107, 'Malagasy', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(108, 'Malawian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(109, 'Malaysian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(110, 'Maldivan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(111, 'Malian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(112, 'Maltese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(113, 'Marshallese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(114, 'Mauritanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(115, 'Mauritian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(116, 'Mexican', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(117, 'Micronesian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(118, 'Moldovan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(119, 'Monacan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(120, 'Mongolian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(121, 'Moroccan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(122, 'Mosotho', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(123, 'Motswana', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(124, 'Mozambican', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(125, 'Namibian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(126, 'Nauruan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(127, 'Nepalese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(128, 'New Zealander', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(129, 'Nicaraguan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(130, 'Nigerian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(131, 'Nigerien', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(132, 'North Korean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(133, 'Northern Irish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(134, 'Norwegian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(135, 'Omani', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(136, 'Pakistani', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(137, 'Palauan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(138, 'Panamanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(139, 'Papua New Guinean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(140, 'Paraguayan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(141, 'Peruvian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(142, 'Polish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(143, 'Portuguese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(144, 'Qatari', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(145, 'Romanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(146, 'Russian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(147, 'Rwandan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(148, 'Saint Lucian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(149, 'Salvadoran', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(150, 'Samoan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(151, 'San Marinese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(152, 'Sao Tomean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(153, 'Saudi', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(154, 'Scottish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(155, 'Senegalese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(156, 'Serbian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(157, 'Seychellois', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(158, 'Sierra Leonean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(159, 'Singaporean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(160, 'Slovakian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(161, 'Slovenian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(162, 'Solomon Islander', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(163, 'Somali', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(164, 'South African', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(165, 'South Korean', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(166, 'Spanish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(167, 'Sri Lankan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(168, 'Sudanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(169, 'Surinamer', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(170, 'Swazi', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(171, 'Swedish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(172, 'Swiss', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(173, 'Syrian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(174, 'Taiwanese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(175, 'Tajik', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(176, 'Tanzanian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(177, 'Thai', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(178, 'Togolese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(179, 'Tongan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(180, 'Trinidadian/Tobagonian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(181, 'Tunisian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(182, 'Turkish', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(183, 'Tuvaluan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(184, 'Ugandan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(185, 'Ukrainian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(186, 'Uruguayan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(187, 'Uzbekistani', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(188, 'Venezuelan', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(189, 'Vietnamese', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(190, 'Welsh', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(191, 'Yemenite', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(192, 'Zambian', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(193, 'Zimbabwean', '2021-07-05 12:42:29', '2021-07-05 12:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt_paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `times_used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `from_class` int(10) UNSIGNED NOT NULL,
  `from_section` int(10) UNSIGNED NOT NULL,
  `to_class` int(10) UNSIGNED NOT NULL,
  `to_section` int(10) UNSIGNED NOT NULL,
  `grad` tinyint(4) NOT NULL,
  `from_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pr_id` int(10) UNSIGNED NOT NULL,
  `amt_paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `my_class_id`, `teacher_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 1, NULL, 1, NULL, NULL),
(2, 'Diamond', 1, NULL, 0, NULL, NULL),
(3, 'Silver', 2, NULL, 1, NULL, NULL),
(4, 'Lemon', 2, NULL, 0, NULL, NULL),
(5, 'Bronze', 3, NULL, 1, NULL, NULL),
(6, 'Silver', 4, NULL, 1, NULL, NULL),
(7, 'Diamond', 5, NULL, 1, NULL, NULL),
(8, 'Blue', 6, NULL, 1, NULL, NULL),
(9, 'A', 7, NULL, 1, NULL, NULL),
(10, 'A', 10, NULL, 1, NULL, NULL),
(11, 'A', 8, NULL, 1, NULL, NULL),
(12, 'A', 9, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2018-2019', NULL, NULL),
(2, 'system_title', 'DRC', NULL, NULL),
(3, 'system_name', 'Department of Revenue and Custom', NULL, NULL),
(4, 'term_ends', '7/10/2018', NULL, NULL),
(5, 'term_begins', '7/10/2018', NULL, NULL),
(6, 'phone', '0123456789', NULL, NULL),
(7, 'address', 'Main traffic, Thimphu', NULL, NULL),
(8, 'system_email', 'thinley@gmail.com', NULL, NULL),
(9, 'alt_email', '', NULL, NULL),
(10, 'email_host', '', NULL, NULL),
(11, 'email_pass', '', NULL, NULL),
(12, 'lock_exam', '0', NULL, NULL),
(13, 'logo', '', NULL, NULL),
(14, 'next_term_fees_j', '20000', NULL, NULL),
(15, 'next_term_fees_pn', '25000', NULL, NULL),
(16, 'next_term_fees_p', '25000', NULL, NULL),
(17, 'next_term_fees_n', '25600', NULL, NULL),
(18, 'next_term_fees_s', '15600', NULL, NULL),
(19, 'next_term_fees_c', '1600', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_records`
--

INSERT INTO `staff_records` (`id`, `user_id`, `code`, `emp_date`, `created_at`, `updated_at`) VALUES
(1, 18, 'DRC/STAFF/1970/01/5135', NULL, '2021-07-05 12:48:22', '2021-07-05 12:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Paro', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(2, 'Thimphu', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(3, 'Wangdi', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(4, 'Haa', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(5, 'Punakha', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(6, 'Mongar', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(7, 'Samtse', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(8, 'Bumthang', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(9, 'Tashigang', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(10, 'Lhuntse', '2021-07-05 12:42:29', '2021-07-05 12:42:29'),
(11, 'Chukha', '2021-07-05 12:42:29', '2021-07-05 12:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_records`
--

CREATE TABLE `student_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `adm_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_room_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `year_admitted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad` tinyint(4) NOT NULL DEFAULT 0,
  `grad_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `my_class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'WebDeveloper', 'web', 1, 3, NULL, NULL),
(2, 'Designing', 'Design', 1, 3, NULL, NULL),
(3, 'WebDeveloper', 'web', 2, 3, NULL, NULL),
(4, 'Designing', 'Design', 2, 3, NULL, NULL),
(5, 'WebDeveloper', 'web', 3, 3, NULL, NULL),
(6, 'Designing', 'Design', 3, 3, NULL, NULL),
(7, 'WebDeveloper', 'web', 4, 3, NULL, NULL),
(8, 'Designing', 'Design', 4, 3, NULL, NULL),
(9, 'WebDeveloper', 'web', 5, 3, NULL, NULL),
(10, 'Designing', 'Design', 5, 3, NULL, NULL),
(11, 'WebDeveloper', 'web', 6, 3, NULL, NULL),
(12, 'Designing', 'Design', 6, 3, NULL, NULL),
(13, 'WebDeveloper', 'web', 7, 3, NULL, NULL),
(14, 'Designing', 'Design', 7, 3, NULL, NULL),
(15, 'WebDeveloper', 'web', 8, 3, NULL, NULL),
(16, 'Designing', 'Design', 8, 3, NULL, NULL),
(17, 'WebDeveloper', 'web', 9, 3, NULL, NULL),
(18, 'Designing', 'Design', 9, 3, NULL, NULL),
(19, 'WebDeveloper', 'web', 10, 3, NULL, NULL),
(20, 'Designing', 'Design', 10, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `hour_from` tinyint(4) NOT NULL,
  `min_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_to` tinyint(4) NOT NULL,
  `min_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `ts_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_num` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_records`
--

CREATE TABLE `time_table_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://localhost/global_assets/images/user.png',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `lga_id` int(10) UNSIGNED DEFAULT NULL,
  `nal_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code`, `username`, `user_type`, `dob`, `gender`, `photo`, `phone`, `phone2`, `bg_id`, `state_id`, `lga_id`, `nal_id`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Department of Revenue and Custom', 'thinley@gmail.com', 'EKBLUGEMFN', 'Thinley', 'super_admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f5hLGKXogDNkfRNkP3wLUedQaGrojPjAASg.vCZa8c4QkktUAjFuy', '89W2ywfkJ5b1kNWrd4OSdiIyvZB4bxWgAZgk9pqgZXNYLvzcxerxoIHiMR4G', NULL, NULL),
(2, 'Admin KORA', 'admin@admin.com', 'PUL0PQ9PQM', 'admin', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f5hLGKXogDNkfRNkP3wLUedQaGrojPjAASg.vCZa8c4QkktUAjFuy', 'tdSSptIKMF', NULL, NULL),
(3, 'Teacher', 'teacher@teacher.com', 'IUTPZ9KUPX', 'teacher', 'teacher', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f5hLGKXogDNkfRNkP3wLUedQaGrojPjAASg.vCZa8c4QkktUAjFuy', '9PhLjKhGXk', NULL, NULL),
(4, 'Student', 'student@student.com', 'XVV952GX0Y', 'student', 'student', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f5hLGKXogDNkfRNkP3wLUedQaGrojPjAASg.vCZa8c4QkktUAjFuy', 'hQAcg1DGX4', NULL, NULL),
(5, 'Admin 1', 'admin1@admin.com', 'IT0AOAVZSX', 'admin1', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$trR6JfxEg.hwbBGhD2c13OlAuZIL5WqkScDWagpbBr68e/PGqHgEG', 'HLTByIyIdv', NULL, NULL),
(6, 'Accountant 1', 'accountant1@accountant.com', 'XJK55XPBRG', 'accountant1', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ClKE/nvT0BTlAt4EPBF3seKyERTNKFpW.dx6s59KgXlCb6eTdcIBa', '5p3j6864Kr', NULL, NULL),
(7, 'Librarian 1', 'librarian1@librarian.com', 'R3PG6GNX7A', 'librarian1', 'librarian', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Txyc3XXWlAkVOv04OjEVqeTJ9/XGumH/4z6hEwJPV/bFCdC.oKOLu', 'Z37CO4YH3g', NULL, NULL),
(8, 'Parent 1', 'parent1@parent.com', 'RF5CI9EJ7H', 'parent1', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o8c0Qr3T7fJNBxgqehVf2.XtHPp/55l4UcjUqCcX4b/D9bMhxs1cW', '2PP9kN4Yq7', NULL, NULL),
(9, 'Admin 2', 'admin2@admin.com', '5BABRRHXBJ', 'admin2', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$c2JVkLqwSpHJ.xeolcs6m.UFnlPupcCgLKKU0D2yeF7XJ5msypomq', 'v8WzgRJVRk', NULL, NULL),
(10, 'Accountant 2', 'accountant2@accountant.com', 'EWQRWLK5RI', 'accountant2', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$43lWkXsXjbk2H3ag2DR57eWX.IU.Y4i.YCLnvo8feD3HBLKD8z8oO', 'ZVoetZIqIY', NULL, NULL),
(11, 'Librarian 2', 'librarian2@librarian.com', 'QLYJFP2LPO', 'librarian2', 'librarian', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U0KrPoTm7RntTW8iCSHCIOISLetMmN5H5roELoVMNXdiC/.lI.c6O', 'aeRcLFLtTn', NULL, NULL),
(12, 'Parent 2', 'parent2@parent.com', 'BT0RW2AVO2', 'parent2', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qq9/eZBYzJBADAbThjvXxOuJ3PLd/fTJAUY.EXOGCN4Q9LfrjDJQm', 'ST2YVAd6nv', NULL, NULL),
(13, 'Admin 3', 'admin3@admin.com', '1EZN4UWMIV', 'admin3', 'admin', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2zhmimT8YQFzv.u9R0FMDeH7OBb.N5T1EgKfAFJFiGIMuOrcplEj2', '5q8PcPGURR', NULL, NULL),
(14, 'Accountant 3', 'accountant3@accountant.com', 'L0HJQCBA6U', 'accountant3', 'accountant', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1wNekN.eQd063iEFihpUKOxFbAkDCy1baRho8IFjXm76J7vIGWsCe', 'bv5PU36VXP', NULL, NULL),
(15, 'Librarian 3', 'librarian3@librarian.com', 'DZ2FKWA9ZV', 'librarian3', 'librarian', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$07/aJZX2qYaVdKnUsWqKl.Knnj7Zu7ZbxTX2WczwE6U24auZfqxBG', 'g7aHuzyFXX', NULL, NULL),
(16, 'Parent 3', 'parent3@parent.com', 'DOXDOOOOIK', 'parent3', 'parent', NULL, NULL, 'http://localhost/global_assets/images/user.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$m66XrWxlxzfva2xf0Lx8a.iRa2MiauWh.EW19L3tdpTg70cnuOTLC', 'H42XpwWs46', NULL, NULL),
(18, 'Rangdoel', 'rang@gmail.com', '4A7VSDZ88A', 'rangdoel', 'super_admin', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '+97517709118', NULL, 5, 1, 2, 23, 'main traffic, Thimphu, Bhutan', NULL, '$2y$10$y.N4FleJeTXOLgHBfjXJ/uiDLtUz0iBfmsBFEDMUELyH1jbpik8di', NULL, '2021-07-05 12:48:22', '2021-07-05 12:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `title`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'accountant', 'Accountant', '5', NULL, NULL),
(2, 'parent', 'Parent', '4', NULL, NULL),
(3, 'teacher', 'Teacher', '3', NULL, NULL),
(4, 'admin', 'Admin', '2', NULL, NULL),
(5, 'super_admin', 'Super Admin', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_requests_book_id_foreign` (`book_id`),
  ADD KEY `book_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_types`
--
ALTER TABLE `class_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dorms_name_unique` (`name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_term_year_unique` (`term`,`year`);

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_records_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `exam_records_student_id_foreign` (`student_id`),
  ADD KEY `exam_records_section_id_foreign` (`section_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_name_class_type_id_remark_unique` (`name`,`class_type_id`,`remark`),
  ADD KEY `grades_class_type_id_foreign` (`class_type_id`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_my_class_id_foreign` (`my_class_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_classes_class_type_id_name_unique` (`class_type_id`,`name`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_ref_no_unique` (`ref_no`),
  ADD KEY `payments_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_records_ref_no_unique` (`ref_no`),
  ADD KEY `payment_records_payment_id_foreign` (`payment_id`),
  ADD KEY `payment_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pins_code_unique` (`code`),
  ADD KEY `pins_user_id_foreign` (`user_id`),
  ADD KEY `pins_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_class_foreign` (`from_class`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_section_foreign` (`to_section`),
  ADD KEY `promotions_to_class_foreign` (`to_class`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_pr_id_foreign` (`pr_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_name_my_class_id_unique` (`name`,`my_class_id`),
  ADD KEY `sections_my_class_id_foreign` (`my_class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`);

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
-- Indexes for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_records_code_unique` (`code`),
  ADD KEY `staff_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_records`
--
ALTER TABLE `student_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_records_adm_no_unique` (`adm_no`),
  ADD KEY `student_records_user_id_foreign` (`user_id`),
  ADD KEY `student_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `student_records_section_id_foreign` (`section_id`),
  ADD KEY `student_records_my_parent_id_foreign` (`my_parent_id`),
  ADD KEY `student_records_dorm_id_foreign` (`dorm_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_my_class_id_name_unique` (`my_class_id`,`name`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_slots_timestamp_from_timestamp_to_ttr_id_unique` (`timestamp_from`,`timestamp_to`,`ttr_id`),
  ADD KEY `time_slots_ttr_id_foreign` (`ttr_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_day_unique` (`ttr_id`,`ts_id`,`day`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_exam_date_unique` (`ttr_id`,`ts_id`,`exam_date`),
  ADD KEY `time_tables_ts_id_foreign` (`ts_id`),
  ADD KEY `time_tables_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_table_records_name_unique` (`name`),
  ADD UNIQUE KEY `time_table_records_my_class_id_exam_id_year_unique` (`my_class_id`,`exam_id`,`year`),
  ADD KEY `time_table_records_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_lga_id_foreign` (`lga_id`),
  ADD KEY `users_bg_id_foreign` (`bg_id`),
  ADD KEY `users_nal_id_foreign` (`nal_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_types`
--
ALTER TABLE `class_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_records`
--
ALTER TABLE `staff_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_records`
--
ALTER TABLE `student_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table_records`
--
ALTER TABLE `time_table_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `exam_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marks_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD CONSTRAINT `my_classes_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `payment_records_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pins`
--
ALTER TABLE `pins`
  ADD CONSTRAINT `pins_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_class_foreign` FOREIGN KEY (`from_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_class_foreign` FOREIGN KEY (`to_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `payment_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD CONSTRAINT `staff_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_records`
--
ALTER TABLE `student_records`
  ADD CONSTRAINT `student_records_dorm_id_foreign` FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_my_parent_id_foreign` FOREIGN KEY (`my_parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ts_id_foreign` FOREIGN KEY (`ts_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD CONSTRAINT `time_table_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_table_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_bg_id_foreign` FOREIGN KEY (`bg_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_nal_id_foreign` FOREIGN KEY (`nal_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

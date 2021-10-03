-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 08:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consultancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-21 06:45:55', '2021-09-21 06:45:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/consultancy-wp', 'yes'),
(2, 'home', 'http://localhost/consultancy-wp', 'yes'),
(3, 'blogname', 'Consultancy', 'yes'),
(4, 'blogdescription', 'Learn New Language and Study Abroad', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ngakhusisarila@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:276:{s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:8:\"teams/?$\";s:25:\"index.php?post_type=teams\";s:38:\"teams/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=teams&feed=$matches[1]\";s:33:\"teams/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=teams&feed=$matches[1]\";s:25:\"teams/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=teams&paged=$matches[1]\";s:15:\"testimonials/?$\";s:32:\"index.php?post_type=testimonials\";s:45:\"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:40:\"testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:32:\"testimonials/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=testimonials&paged=$matches[1]\";s:15:\"sliderimages/?$\";s:32:\"index.php?post_type=sliderimages\";s:45:\"sliderimages/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=sliderimages&feed=$matches[1]\";s:40:\"sliderimages/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=sliderimages&feed=$matches[1]\";s:32:\"sliderimages/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=sliderimages&paged=$matches[1]\";s:12:\"countries/?$\";s:29:\"index.php?post_type=countries\";s:42:\"countries/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=countries&feed=$matches[1]\";s:37:\"countries/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=countries&feed=$matches[1]\";s:29:\"countries/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=countries&paged=$matches[1]\";s:11:\"partners/?$\";s:28:\"index.php?post_type=partners\";s:41:\"partners/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:36:\"partners/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:28:\"partners/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=partners&paged=$matches[1]\";s:7:\"faqs/?$\";s:24:\"index.php?post_type=faqs\";s:37:\"faqs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=faqs&feed=$matches[1]\";s:32:\"faqs/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=faqs&feed=$matches[1]\";s:24:\"faqs/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=faqs&paged=$matches[1]\";s:8:\"tests/?$\";s:25:\"index.php?post_type=tests\";s:38:\"tests/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=tests&feed=$matches[1]\";s:33:\"tests/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=tests&feed=$matches[1]\";s:25:\"tests/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=tests&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"teams/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"teams/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"teams/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"teams/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"teams/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"teams/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"teams/([^/]+)/embed/?$\";s:38:\"index.php?teams=$matches[1]&embed=true\";s:26:\"teams/([^/]+)/trackback/?$\";s:32:\"index.php?teams=$matches[1]&tb=1\";s:46:\"teams/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?teams=$matches[1]&feed=$matches[2]\";s:41:\"teams/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?teams=$matches[1]&feed=$matches[2]\";s:34:\"teams/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?teams=$matches[1]&paged=$matches[2]\";s:41:\"teams/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?teams=$matches[1]&cpage=$matches[2]\";s:30:\"teams/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?teams=$matches[1]&page=$matches[2]\";s:22:\"teams/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"teams/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"teams/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"teams/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"teams/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"teams/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:53:\"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:48:\"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"sliderimages/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"sliderimages/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"sliderimages/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sliderimages/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sliderimages/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"sliderimages/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"sliderimages/([^/]+)/embed/?$\";s:45:\"index.php?sliderimages=$matches[1]&embed=true\";s:33:\"sliderimages/([^/]+)/trackback/?$\";s:39:\"index.php?sliderimages=$matches[1]&tb=1\";s:53:\"sliderimages/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?sliderimages=$matches[1]&feed=$matches[2]\";s:48:\"sliderimages/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?sliderimages=$matches[1]&feed=$matches[2]\";s:41:\"sliderimages/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?sliderimages=$matches[1]&paged=$matches[2]\";s:48:\"sliderimages/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?sliderimages=$matches[1]&cpage=$matches[2]\";s:37:\"sliderimages/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?sliderimages=$matches[1]&page=$matches[2]\";s:29:\"sliderimages/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"sliderimages/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"sliderimages/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sliderimages/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sliderimages/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"sliderimages/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"countries/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"countries/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"countries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"countries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"countries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"countries/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"countries/([^/]+)/embed/?$\";s:42:\"index.php?countries=$matches[1]&embed=true\";s:30:\"countries/([^/]+)/trackback/?$\";s:36:\"index.php?countries=$matches[1]&tb=1\";s:50:\"countries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?countries=$matches[1]&feed=$matches[2]\";s:45:\"countries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?countries=$matches[1]&feed=$matches[2]\";s:38:\"countries/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?countries=$matches[1]&paged=$matches[2]\";s:45:\"countries/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?countries=$matches[1]&cpage=$matches[2]\";s:34:\"countries/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?countries=$matches[1]&page=$matches[2]\";s:26:\"countries/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"countries/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"countries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"countries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"countries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"countries/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"partners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"partners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"partners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"partners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"partners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"partners/([^/]+)/embed/?$\";s:41:\"index.php?partners=$matches[1]&embed=true\";s:29:\"partners/([^/]+)/trackback/?$\";s:35:\"index.php?partners=$matches[1]&tb=1\";s:49:\"partners/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:44:\"partners/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:37:\"partners/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&paged=$matches[2]\";s:44:\"partners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&cpage=$matches[2]\";s:33:\"partners/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?partners=$matches[1]&page=$matches[2]\";s:25:\"partners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"partners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"partners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"partners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"partners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"faqs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"faqs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"faqs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"faqs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"faqs/([^/]+)/embed/?$\";s:37:\"index.php?faqs=$matches[1]&embed=true\";s:25:\"faqs/([^/]+)/trackback/?$\";s:31:\"index.php?faqs=$matches[1]&tb=1\";s:45:\"faqs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?faqs=$matches[1]&feed=$matches[2]\";s:40:\"faqs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?faqs=$matches[1]&feed=$matches[2]\";s:33:\"faqs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&paged=$matches[2]\";s:40:\"faqs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&cpage=$matches[2]\";s:29:\"faqs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?faqs=$matches[1]&page=$matches[2]\";s:21:\"faqs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"faqs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"faqs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"faqs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"tests/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"tests/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"tests/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tests/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tests/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"tests/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"tests/([^/]+)/embed/?$\";s:38:\"index.php?tests=$matches[1]&embed=true\";s:26:\"tests/([^/]+)/trackback/?$\";s:32:\"index.php?tests=$matches[1]&tb=1\";s:46:\"tests/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?tests=$matches[1]&feed=$matches[2]\";s:41:\"tests/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?tests=$matches[1]&feed=$matches[2]\";s:34:\"tests/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?tests=$matches[1]&paged=$matches[2]\";s:41:\"tests/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?tests=$matches[1]&cpage=$matches[2]\";s:30:\"tests/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?tests=$matches[1]&page=$matches[2]\";s:22:\"tests/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"tests/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"tests/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tests/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tests/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"tests/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'consultancy', 'yes'),
(41, 'stylesheet', 'consultancy', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '7', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '13', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1647758745', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1633243557;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633243559;a:2:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633243560;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633243599;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633243605;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633502758;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1632207448;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633241970;s:7:\"checked\";a:1:{s:11:\"consultancy\";s:3:\"2.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633241961;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(151, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"ngakhusisarila@gmail.com\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1632206870;}', 'no'),
(152, 'current_theme', 'Consultancy', 'yes'),
(153, 'theme_mods_consultancy', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:3:\"nav\";i:2;s:6:\"footer\";i:3;s:8:\"services\";i:4;}s:18:\"custom_css_post_id\";i:225;s:27:\"consultancy_facebook_handle\";s:25:\"https://www.facebook.com/\";s:26:\"consultancy_twitter_handle\";s:24:\"https://www.twitter.com/\";s:26:\"consultancy_youtube_handle\";s:24:\"https://www.youtube.com/\";s:28:\"consultancy_instagram_handle\";s:25:\"https://www.instagramcom/\";s:11:\"custom_logo\";i:12;s:24:\"consultancy_phone_handle\";s:10:\"9835612047\";s:24:\"consultancy_email_handle\";s:25:\"techcoderznepal@gmail.com\";s:26:\"consultancy_address_handle\";s:22:\"Shantinagar, Kathmandu\";}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(168, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'site_logo', '12', 'yes'),
(176, 'recently_activated', 'a:1:{s:29:\"acf-extended/acf-extended.php\";i:1632218736;}', 'yes'),
(183, 'acf_version', '5.10.2', 'yes'),
(198, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1632293180;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(199, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(216, 'secret_key', '9IVE`HyvO6{sgLS>kAGJ&]2a2k9@+]`9op?NIdH?$;hFFzk$6xaHv2gJw.@T^*Fg', 'no'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(270, 'category_children', 'a:0:{}', 'yes'),
(352, '_site_transient_timeout_theme_roots', '1633243769', 'no'),
(353, '_site_transient_theme_roots', 'a:1:{s:11:\"consultancy\";s:7:\"/themes\";}', 'no'),
(354, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633241971;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(355, '_site_transient_timeout_php_check_dcf448a31f072675e98776ba60f55c18', '1633846776', 'no'),
(356, '_site_transient_php_check_dcf448a31f072675e98776ba60f55c18', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1632216895'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1632216897'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_lock', '1632216781:1'),
(10, 9, '_edit_lock', '1632216796:1'),
(11, 11, '_edit_lock', '1632217231:1'),
(12, 12, '_wp_attached_file', '2021/09/logo-scaled.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1227;s:4:\"file\";s:23:\"2021/09/logo-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"logo-1024x491.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x368.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"logo-1536x736.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"logo-2048x981.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:981;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"logo.jpg\";}'),
(14, 13, '_wp_attached_file', '2021/09/cropped-logo-scaled-1.jpg'),
(15, 13, '_wp_attachment_context', 'site-icon'),
(16, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2021/09/cropped-logo-scaled-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo-scaled-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo-scaled-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo-scaled-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo-scaled-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo-scaled-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 11, '_wp_trash_meta_status', 'publish'),
(18, 11, '_wp_trash_meta_time', '1632217253'),
(19, 14, '_edit_lock', '1632217394:1'),
(20, 14, '_wp_trash_meta_status', 'publish'),
(21, 14, '_wp_trash_meta_time', '1632217397'),
(22, 15, '_wp_trash_meta_status', 'publish'),
(23, 15, '_wp_trash_meta_time', '1632217464'),
(24, 16, '_edit_last', '1'),
(25, 16, '_edit_lock', '1632223557:1'),
(26, 19, '_edit_last', '1'),
(27, 19, '_edit_lock', '1632298364:1'),
(28, 24, '_edit_last', '1'),
(29, 24, '_edit_lock', '1632223733:1'),
(30, 25, '_wp_attached_file', '2021/09/8.jpg'),
(31, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:94;s:4:\"file\";s:13:\"2021/09/8.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"8-150x94.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 26, '_wp_attached_file', '2021/09/11.jpg'),
(33, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:94;s:4:\"file\";s:14:\"2021/09/11.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"11-150x94.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 27, '_wp_attached_file', '2021/09/29.jpg'),
(35, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:94;s:4:\"file\";s:14:\"2021/09/29.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"29-150x94.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 28, '_wp_attached_file', '2021/09/2.jpg'),
(37, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:94;s:4:\"file\";s:13:\"2021/09/2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"2-150x94.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 24, '_thumbnail_id', '28'),
(39, 29, '_edit_last', '1'),
(40, 29, '_edit_lock', '1632223754:1'),
(41, 29, '_thumbnail_id', '27'),
(42, 30, '_edit_last', '1'),
(43, 30, '_edit_lock', '1632223767:1'),
(44, 30, '_thumbnail_id', '26'),
(45, 31, '_edit_last', '1'),
(46, 31, '_edit_lock', '1632223779:1'),
(47, 31, '_thumbnail_id', '25'),
(48, 32, '_edit_last', '1'),
(49, 32, '_edit_lock', '1632223792:1'),
(50, 32, '_thumbnail_id', '26'),
(51, 33, '_edit_last', '1'),
(52, 33, '_edit_lock', '1632223812:1'),
(53, 33, '_thumbnail_id', '28'),
(54, 35, '_wp_attached_file', '2021/09/3.jpg'),
(55, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:234;s:6:\"height\";i:234;s:4:\"file\";s:13:\"2021/09/3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(56, 36, '_wp_attached_file', '2021/09/4.jpg'),
(57, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:234;s:6:\"height\";i:234;s:4:\"file\";s:13:\"2021/09/4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(58, 37, '_wp_attached_file', '2021/09/6.jpg'),
(59, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:234;s:6:\"height\";i:234;s:4:\"file\";s:13:\"2021/09/6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(60, 38, '_wp_attached_file', '2021/09/21.jpg'),
(61, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:234;s:6:\"height\";i:234;s:4:\"file\";s:14:\"2021/09/21.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(62, 34, '_edit_last', '1'),
(63, 34, '_edit_lock', '1632223895:1'),
(64, 34, '_thumbnail_id', '38'),
(65, 34, 'rate', '4'),
(66, 34, '_rate', 'field_6149c1a5129e8'),
(67, 34, 'post', 'Owner of ABC company'),
(68, 34, '_post', 'field_6149c1b4129e9'),
(69, 39, '_edit_last', '1'),
(70, 39, '_edit_lock', '1632223922:1'),
(71, 39, '_thumbnail_id', '37'),
(72, 39, 'rate', '5'),
(73, 39, '_rate', 'field_6149c1a5129e8'),
(74, 39, 'post', 'CEO'),
(75, 39, '_post', 'field_6149c1b4129e9'),
(76, 40, '_edit_last', '1'),
(77, 40, '_edit_lock', '1632223951:1'),
(78, 40, '_thumbnail_id', '36'),
(79, 40, 'rate', '5'),
(80, 40, '_rate', 'field_6149c1a5129e8'),
(81, 40, 'post', 'Designer'),
(82, 40, '_post', 'field_6149c1b4129e9'),
(83, 41, '_edit_last', '1'),
(84, 41, '_edit_lock', '1632292179:1'),
(85, 41, '_thumbnail_id', '35'),
(86, 41, 'rate', '4'),
(87, 41, '_rate', 'field_6149c1a5129e8'),
(88, 41, 'post', 'Helper'),
(89, 41, '_post', 'field_6149c1b4129e9'),
(90, 43, '_wp_attached_file', '2021/09/team1.jpg'),
(91, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2021/09/team1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 42, '_edit_last', '1'),
(93, 42, '_edit_lock', '1632224057:1'),
(94, 42, '_thumbnail_id', '43'),
(95, 42, 'position', 'CEO'),
(96, 42, '_position', 'field_6149c1e4a07c0'),
(97, 42, 'facebook_link', ''),
(98, 42, '_facebook_link', 'field_6149c1efa07c1'),
(99, 42, 'twitter_link', ''),
(100, 42, '_twitter_link', 'field_6149c1fca07c2'),
(101, 42, 'instagram_link', ''),
(102, 42, '_instagram_link', 'field_6149c20aa07c3'),
(103, 44, '_edit_last', '1'),
(104, 44, '_edit_lock', '1632224077:1'),
(105, 44, '_thumbnail_id', '43'),
(106, 44, 'position', 'Designer'),
(107, 44, '_position', 'field_6149c1e4a07c0'),
(108, 44, 'facebook_link', ''),
(109, 44, '_facebook_link', 'field_6149c1efa07c1'),
(110, 44, 'twitter_link', ''),
(111, 44, '_twitter_link', 'field_6149c1fca07c2'),
(112, 44, 'instagram_link', ''),
(113, 44, '_instagram_link', 'field_6149c20aa07c3'),
(114, 45, '_edit_last', '1'),
(115, 45, '_edit_lock', '1632224107:1'),
(116, 45, '_thumbnail_id', '43'),
(117, 45, 'position', 'UI/UX'),
(118, 45, '_position', 'field_6149c1e4a07c0'),
(119, 45, 'facebook_link', ''),
(120, 45, '_facebook_link', 'field_6149c1efa07c1'),
(121, 45, 'twitter_link', ''),
(122, 45, '_twitter_link', 'field_6149c1fca07c2'),
(123, 45, 'instagram_link', ''),
(124, 45, '_instagram_link', 'field_6149c20aa07c3'),
(125, 46, '_edit_last', '1'),
(126, 46, '_edit_lock', '1632298293:1'),
(127, 46, '_thumbnail_id', '43'),
(128, 46, 'position', 'SE'),
(129, 46, '_position', 'field_6149c1e4a07c0'),
(130, 46, 'facebook_link', ''),
(131, 46, '_facebook_link', 'field_6149c1efa07c1'),
(132, 46, 'twitter_link', ''),
(133, 46, '_twitter_link', 'field_6149c1fca07c2'),
(134, 46, 'instagram_link', ''),
(135, 46, '_instagram_link', 'field_6149c20aa07c3'),
(136, 48, '_wp_attached_file', '2021/09/passport.png'),
(137, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:20:\"2021/09/passport.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 49, '_wp_attached_file', '2021/09/checklist.png'),
(139, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:21:\"2021/09/checklist.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 50, '_wp_attached_file', '2021/09/consultation.png'),
(141, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:24:\"2021/09/consultation.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 51, '_wp_attached_file', '2021/09/departures.png'),
(143, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:22:\"2021/09/departures.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 52, '_wp_attached_file', '2021/09/guide.png'),
(145, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:17:\"2021/09/guide.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 47, '_edit_last', '1'),
(147, 47, '_thumbnail_id', '50'),
(148, 47, '_edit_lock', '1632224251:1'),
(149, 53, '_edit_last', '1'),
(150, 53, '_edit_lock', '1632224275:1'),
(151, 53, '_thumbnail_id', '49'),
(152, 54, '_edit_last', '1'),
(153, 54, '_edit_lock', '1632224291:1'),
(154, 54, '_thumbnail_id', '49'),
(155, 55, '_edit_last', '1'),
(156, 55, '_edit_lock', '1632224309:1'),
(157, 55, '_thumbnail_id', '52'),
(158, 56, '_edit_last', '1'),
(159, 56, '_edit_lock', '1632224326:1'),
(160, 56, '_thumbnail_id', '51'),
(161, 58, '_edit_last', '1'),
(162, 58, '_edit_lock', '1632224361:1'),
(163, 58, '_thumbnail_id', '48'),
(164, 59, '_edit_last', '1'),
(165, 59, '_edit_lock', '1632224530:1'),
(166, 60, '_wp_attached_file', '2021/09/america-scaled.jpg'),
(167, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1745;s:4:\"file\";s:26:\"2021/09/america-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"america-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"america-1024x698.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"america-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"america-768x523.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:523;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"america-1536x1047.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1047;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"america-2048x1396.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1396;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"america.jpg\";}'),
(168, 61, '_wp_attached_file', '2021/09/australia-scaled.jpg'),
(169, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2021/09/australia-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"australia-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"australia-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"australia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"australia-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"australia-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"australia-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"australia.jpg\";}'),
(170, 62, '_wp_attached_file', '2021/09/canada.jpg'),
(171, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:915;s:6:\"height\";i:515;s:4:\"file\";s:18:\"2021/09/canada.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"canada-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"canada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"canada-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 63, '_wp_attached_file', '2021/09/uk1.jpg'),
(173, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:607;s:4:\"file\";s:15:\"2021/09/uk1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"uk1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"uk1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"uk1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 59, '_thumbnail_id', '61'),
(175, 64, '_edit_last', '1'),
(176, 64, '_thumbnail_id', '60'),
(177, 64, '_edit_lock', '1632224547:1'),
(178, 65, '_edit_last', '1'),
(179, 65, '_thumbnail_id', '62'),
(180, 65, '_edit_lock', '1632224564:1'),
(181, 66, '_edit_last', '1'),
(182, 66, '_thumbnail_id', '63'),
(183, 66, '_edit_lock', '1632224589:1'),
(184, 68, '_wp_attached_file', '2021/09/consult.jpg'),
(185, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:925;s:4:\"file\";s:19:\"2021/09/consult.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"consult-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"consult-1024x379.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:379;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"consult-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"consult-768x284.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"consult-1536x568.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"consult-2048x758.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:758;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:5:\"Print\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(186, 69, '_wp_attached_file', '2021/09/banner1.jpg'),
(187, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:540;s:4:\"file\";s:19:\"2021/09/banner1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner1-1024x405.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner1-768x304.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 70, '_wp_attached_file', '2021/09/classes.jpg'),
(189, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1357;s:6:\"height\";i:440;s:4:\"file\";s:19:\"2021/09/classes.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"classes-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"classes-1024x332.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"classes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"classes-768x249.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(190, 67, '_edit_last', '1'),
(191, 67, '_thumbnail_id', '68'),
(192, 67, '_edit_lock', '1632224635:1'),
(193, 71, '_edit_last', '1'),
(194, 71, '_thumbnail_id', '69'),
(195, 71, '_edit_lock', '1632224653:1'),
(196, 72, '_edit_last', '1'),
(197, 72, '_thumbnail_id', '70'),
(198, 72, '_edit_lock', '1632224679:1'),
(199, 73, '_edit_last', '1'),
(200, 73, '_edit_lock', '1632224728:1'),
(201, 74, '_edit_last', '1'),
(202, 74, '_edit_lock', '1632224740:1'),
(203, 75, '_edit_last', '1'),
(204, 75, '_edit_lock', '1632224754:1'),
(205, 76, '_edit_last', '1'),
(206, 76, '_edit_lock', '1632224767:1'),
(207, 77, '_edit_last', '1'),
(208, 77, '_edit_lock', '1632224804:1'),
(209, 78, '_edit_last', '1'),
(210, 78, '_edit_lock', '1632381064:1'),
(211, 78, '_thumbnail_id', '50'),
(212, 79, '_edit_last', '1'),
(213, 79, '_edit_lock', '1632381066:1'),
(214, 79, '_thumbnail_id', '49'),
(215, 81, '_edit_last', '1'),
(216, 81, '_edit_lock', '1632381067:1'),
(217, 81, '_thumbnail_id', '49'),
(218, 82, '_edit_last', '1'),
(219, 82, '_edit_lock', '1632381071:1'),
(220, 82, '_thumbnail_id', '48'),
(221, 83, '_edit_last', '1'),
(222, 83, '_edit_lock', '1632381073:1'),
(223, 83, '_thumbnail_id', '51'),
(224, 84, '_edit_last', '1'),
(225, 84, '_edit_lock', '1632380994:1'),
(226, 84, '_thumbnail_id', '52'),
(227, 86, '_edit_last', '1'),
(228, 86, '_edit_lock', '1632292233:1'),
(229, 87, '_edit_last', '1'),
(230, 87, '_edit_lock', '1632292255:1'),
(231, 88, '_edit_last', '1'),
(232, 88, '_edit_lock', '1632292274:1'),
(233, 89, '_edit_last', '1'),
(234, 89, '_edit_lock', '1632292296:1'),
(235, 90, '_edit_last', '1'),
(236, 90, '_edit_lock', '1632292312:1'),
(237, 91, '_edit_last', '1'),
(238, 91, '_edit_lock', '1632292351:1'),
(239, 1, '_edit_lock', '1632292963:1'),
(246, 93, '_edit_lock', '1632294390:1'),
(247, 93, '_wp_page_template', 'page-contact-us.php'),
(248, 95, '_edit_lock', '1632294723:1'),
(249, 95, '_wp_page_template', 'page-faq.php'),
(250, 97, '_edit_lock', '1632390494:1'),
(251, 97, '_wp_page_template', 'page-gallery.php'),
(252, 99, '_edit_lock', '1632392376:1'),
(253, 99, '_wp_page_template', 'page-introduction.php'),
(254, 101, '_edit_lock', '1632294304:1'),
(255, 101, '_wp_page_template', 'page-our-team.php'),
(257, 104, '_wp_attached_file', '2021/09/breadcrumb.jpg'),
(258, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:783;s:6:\"height\";i:265;s:4:\"file\";s:22:\"2021/09/breadcrumb.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"breadcrumb-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"breadcrumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"breadcrumb-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(259, 95, '_thumbnail_id', '104'),
(260, 105, '_form', '<div class=\"row\">\n<div class=\"col-lg-12 col-md-6  mb-3\">\n<label>Your Name</label>\n[text* Name class:form-control placeholder \"Your Name\"]\n</div>\n<div class=\"col-lg-12 col-md-6  mb-3\">\n<label>Your Email</label>\n[email* Email class:form-control placeholder \"Your Email Address\"]\n</div>\n<div class=\"col-lg-12 mb-3\">\n<label>Subject</label>\n[text* Subject class:form-control placeholder \"Subject\"]\n</div>\n<div class=\"col-lg-12 mb-3\">\n<label>Your Message</label>\n[textarea* Message class:form-control id:example-text-area placeholder \"Your Message\"]\n</div>\n<div class=\"col-lg-12\">\n[submit \"Submit\" class:button1]\n</div>\n</div>'),
(261, 105, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <ngakhusisarila@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(262, 105, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <ngakhusisarila@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(263, 105, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(264, 105, '_additional_settings', ''),
(265, 105, '_locale', 'en_US'),
(278, 108, '_menu_item_type', 'post_type'),
(279, 108, '_menu_item_menu_item_parent', '0'),
(280, 108, '_menu_item_object_id', '7'),
(281, 108, '_menu_item_object', 'page'),
(282, 108, '_menu_item_target', ''),
(283, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 108, '_menu_item_xfn', ''),
(285, 108, '_menu_item_url', ''),
(287, 109, '_menu_item_type', 'post_type'),
(288, 109, '_menu_item_menu_item_parent', '0'),
(289, 109, '_menu_item_object_id', '93'),
(290, 109, '_menu_item_object', 'page'),
(291, 109, '_menu_item_target', ''),
(292, 109, '_menu_item_classes', 'a:2:{i:0;s:12:\"further-info\";i:1;s:7:\"enquiry\";}'),
(293, 109, '_menu_item_xfn', ''),
(294, 109, '_menu_item_url', ''),
(296, 110, '_menu_item_type', 'post_type'),
(297, 110, '_menu_item_menu_item_parent', '0'),
(298, 110, '_menu_item_object_id', '95'),
(299, 110, '_menu_item_object', 'page'),
(300, 110, '_menu_item_target', ''),
(301, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(302, 110, '_menu_item_xfn', ''),
(303, 110, '_menu_item_url', ''),
(305, 111, '_menu_item_type', 'post_type'),
(306, 111, '_menu_item_menu_item_parent', '0'),
(307, 111, '_menu_item_object_id', '97'),
(308, 111, '_menu_item_object', 'page'),
(309, 111, '_menu_item_target', ''),
(310, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 111, '_menu_item_xfn', ''),
(312, 111, '_menu_item_url', ''),
(314, 112, '_edit_lock', '1632298820:1'),
(315, 114, '_edit_lock', '1632298844:1'),
(316, 116, '_edit_lock', '1632298861:1'),
(317, 118, '_edit_lock', '1632304496:1'),
(516, 142, '_form', '[email* Email class:newsletter-box placeholder \"Subscribe to newsletter\"]\n[submit class:news-submit id:join-button \"Join\"]'),
(517, 142, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <ngakhusisarila@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(518, 142, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <ngakhusisarila@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(519, 142, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(520, 142, '_additional_settings', ''),
(521, 142, '_locale', 'en_US'),
(523, 143, '_edit_lock', '1632304622:1'),
(556, 143, '_wp_trash_meta_status', 'publish'),
(557, 143, '_wp_trash_meta_time', '1632304626'),
(558, 148, '_edit_lock', '1632304652:1'),
(559, 149, '_menu_item_type', 'post_type'),
(560, 149, '_menu_item_menu_item_parent', '0'),
(561, 149, '_menu_item_object_id', '91'),
(562, 149, '_menu_item_object', 'tests'),
(563, 149, '_menu_item_target', ''),
(564, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(565, 149, '_menu_item_xfn', ''),
(566, 149, '_menu_item_url', ''),
(567, 150, '_menu_item_type', 'post_type'),
(568, 150, '_menu_item_menu_item_parent', '0'),
(569, 150, '_menu_item_object_id', '90'),
(570, 150, '_menu_item_object', 'tests'),
(571, 150, '_menu_item_target', ''),
(572, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(573, 150, '_menu_item_xfn', ''),
(574, 150, '_menu_item_url', ''),
(575, 151, '_menu_item_type', 'post_type'),
(576, 151, '_menu_item_menu_item_parent', '0'),
(577, 151, '_menu_item_object_id', '89'),
(578, 151, '_menu_item_object', 'tests'),
(579, 151, '_menu_item_target', ''),
(580, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(581, 151, '_menu_item_xfn', ''),
(582, 151, '_menu_item_url', ''),
(583, 152, '_menu_item_type', 'post_type'),
(584, 152, '_menu_item_menu_item_parent', '0'),
(585, 152, '_menu_item_object_id', '88'),
(586, 152, '_menu_item_object', 'tests'),
(587, 152, '_menu_item_target', ''),
(588, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(589, 152, '_menu_item_xfn', ''),
(590, 152, '_menu_item_url', ''),
(591, 153, '_menu_item_type', 'post_type'),
(592, 153, '_menu_item_menu_item_parent', '0'),
(593, 153, '_menu_item_object_id', '87'),
(594, 153, '_menu_item_object', 'tests'),
(595, 153, '_menu_item_target', ''),
(596, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(597, 153, '_menu_item_xfn', ''),
(598, 153, '_menu_item_url', ''),
(599, 154, '_menu_item_type', 'post_type'),
(600, 154, '_menu_item_menu_item_parent', '0'),
(601, 154, '_menu_item_object_id', '86'),
(602, 154, '_menu_item_object', 'tests'),
(603, 154, '_menu_item_target', ''),
(604, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(605, 154, '_menu_item_xfn', ''),
(606, 154, '_menu_item_url', ''),
(607, 148, '_wp_trash_meta_status', 'publish'),
(608, 148, '_wp_trash_meta_time', '1632304678'),
(609, 108, '_wp_old_date', '2021-09-22'),
(610, 111, '_wp_old_date', '2021-09-22'),
(611, 110, '_wp_old_date', '2021-09-22'),
(612, 109, '_wp_old_date', '2021-09-22'),
(613, 1, '_wp_trash_meta_status', 'publish'),
(614, 1, '_wp_trash_meta_time', '1632383721'),
(615, 1, '_wp_desired_post_slug', 'hello-world'),
(616, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(617, 161, '_edit_lock', '1632386302:1'),
(620, 161, '_thumbnail_id', '69'),
(621, 163, '_edit_last', '1'),
(622, 163, '_edit_lock', '1632389623:1'),
(625, 161, '_edit_last', '1'),
(628, 161, 'author', 'Romelu Lukaku'),
(629, 161, '_author', 'field_614c336332910'),
(630, 161, 'date', '20210916'),
(631, 161, '_date', 'field_614c337232911'),
(632, 166, 'author', 'Romelu Lukaku'),
(633, 166, '_author', 'field_614c336332910'),
(634, 166, 'date', '20210916'),
(635, 166, '_date', 'field_614c337232911'),
(638, 168, 'author', 'Romelu Lukaku'),
(639, 168, '_author', 'field_614c336332910'),
(640, 168, 'date', '20210916'),
(641, 168, '_date', 'field_614c337232911'),
(643, 170, '_edit_lock', '1632386301:1'),
(646, 170, '_thumbnail_id', '69'),
(647, 170, '_edit_last', '1'),
(649, 170, 'author', 'Thomas Muller'),
(650, 170, '_author', 'field_614c336332910'),
(651, 170, 'date', '20210922'),
(652, 170, '_date', 'field_614c337232911'),
(653, 172, 'author', 'Thomas Muller'),
(654, 172, '_author', 'field_614c336332910'),
(655, 172, 'date', '20210922'),
(656, 172, '_date', 'field_614c337232911'),
(657, 173, '_edit_lock', '1632386272:1'),
(660, 173, '_thumbnail_id', '69'),
(661, 173, '_edit_last', '1'),
(664, 173, 'author', 'Thomas Muller'),
(665, 173, '_author', 'field_614c336332910'),
(666, 173, 'date', '20210922'),
(667, 173, '_date', 'field_614c337232911'),
(668, 175, 'author', 'Thomas Muller'),
(669, 175, '_author', 'field_614c336332910'),
(670, 175, 'date', '20210922'),
(671, 175, '_date', 'field_614c337232911'),
(672, 176, '_edit_lock', '1632386179:1'),
(675, 176, '_thumbnail_id', '69'),
(676, 176, '_edit_last', '1'),
(679, 176, 'author', 'Thomas Muller'),
(680, 176, '_author', 'field_614c336332910'),
(681, 176, 'date', '20210923'),
(682, 176, '_date', 'field_614c337232911'),
(683, 178, 'author', 'Thomas Muller'),
(684, 178, '_author', 'field_614c336332910'),
(685, 178, 'date', '20210923'),
(686, 178, '_date', 'field_614c337232911'),
(689, 176, 'cover_image', '43'),
(690, 176, '_cover_image', 'field_614c3c139f957'),
(691, 180, 'author', 'Thomas Muller'),
(692, 180, '_author', 'field_614c336332910'),
(693, 180, 'date', '20210923'),
(694, 180, '_date', 'field_614c337232911'),
(695, 180, 'cover_image', '43'),
(696, 180, '_cover_image', 'field_614c3c139f957'),
(699, 173, 'cover_image', '43'),
(700, 173, '_cover_image', 'field_614c3c139f957'),
(701, 181, 'author', 'Thomas Muller'),
(702, 181, '_author', 'field_614c336332910'),
(703, 181, 'date', '20210922'),
(706, 181, '_date', 'field_614c337232911'),
(707, 181, 'cover_image', '43'),
(708, 181, '_cover_image', 'field_614c3c139f957'),
(711, 170, 'cover_image', '43'),
(712, 170, '_cover_image', 'field_614c3c139f957'),
(713, 161, 'cover_image', '43'),
(714, 182, 'author', 'Thomas Muller'),
(715, 161, '_cover_image', 'field_614c3c139f957'),
(716, 182, '_author', 'field_614c336332910'),
(717, 183, 'author', 'Romelu Lukaku'),
(718, 182, 'date', '20210922'),
(719, 182, '_date', 'field_614c337232911'),
(720, 183, '_author', 'field_614c336332910'),
(721, 182, 'cover_image', '43'),
(722, 183, 'date', '20210916'),
(723, 182, '_cover_image', 'field_614c3c139f957'),
(724, 183, '_date', 'field_614c337232911'),
(725, 183, 'cover_image', '43'),
(726, 183, '_cover_image', 'field_614c3c139f957'),
(727, 189, '_edit_last', '1'),
(728, 189, '_edit_lock', '1632391759:1'),
(729, 99, '_edit_last', '1'),
(730, 99, 'our_vision', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(731, 99, '_our_vision', 'field_614c4d926c78f'),
(732, 99, 'our_mission', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(733, 99, '_our_mission', 'field_614c4da06c790'),
(734, 99, 'message', '<strong>Mr.Romelu Lukaku</strong>\r\n<p class=\"position\">Owner/Founder</p>\r\nYes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are &amp; we work towards your goals. If you want a business that generates your income while also positively contributing to others, then you have arrived at the right place! Whether you have an existing business, or you have an idea that you want to bring to life, there is a way to create a positive triple-bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!'),
(735, 99, '_message', 'field_614c4dbb6c791'),
(736, 99, 'owner_image', '43'),
(737, 99, '_owner_image', 'field_614c4dc76c792'),
(738, 194, 'our_vision', '<ul>\r\n 	<li>To provide customized solutions to the students aspiring to study.</li>\r\n 	<li>\r\n<div>Strive for the organic growth of our organization through integrity, honesty, and excellence.</div></li>\r\n 	<li>\r\n<div>To build a strong and credible relationship with the partner institutions by recognizing shared values &amp; goals.</div></li>\r\n 	<li>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, commodi!</div></li>\r\n</ul>'),
(739, 194, '_our_vision', 'field_614c4d926c78f'),
(740, 194, 'our_mission', '<ul>\r\n 	<li>To provide customized solutions to the students aspiring to study.</li>\r\n 	<li>\r\n<div>Strive for the organic growth of our organization through integrity, honesty, and excellence.</div></li>\r\n 	<li>\r\n<div>To build a strong and credible relationship with the partner institutions by recognizing shared values &amp; goals.</div></li>\r\n 	<li>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, commodi!</div></li>\r\n</ul>'),
(741, 194, '_our_mission', 'field_614c4da06c790'),
(742, 194, 'message', '<strong>Mr.Romelu Lukaku</strong>\r\n<p class=\"position\">Owner/Founder</p>\r\nYes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are &amp; we work towards your goals. If you want a business that generates your income while also positively contributing to others, then you have arrived at the right place! Whether you have an existing business, or you have an idea that you want to bring to life, there is a way to create a positive triple-bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!'),
(743, 194, '_message', 'field_614c4dbb6c791'),
(744, 194, 'owner_image', '43'),
(745, 194, '_owner_image', 'field_614c4dc76c792'),
(746, 195, 'our_vision', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(747, 195, '_our_vision', 'field_614c4d926c78f'),
(748, 195, 'our_mission', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(749, 195, '_our_mission', 'field_614c4da06c790'),
(750, 195, 'message', '<strong>Mr.Romelu Lukaku</strong>\r\n<p class=\"position\">Owner/Founder</p>\r\nYes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are &amp; we work towards your goals. If you want a business that generates your income while also positively contributing to others, then you have arrived at the right place! Whether you have an existing business, or you have an idea that you want to bring to life, there is a way to create a positive triple-bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!'),
(751, 195, '_message', 'field_614c4dbb6c791'),
(752, 195, 'owner_image', '43'),
(753, 195, '_owner_image', 'field_614c4dc76c792'),
(754, 99, 'quote', 'Working Together to develop value to your application experience!!'),
(755, 99, '_quote', 'field_614c522733502');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(756, 99, 'description', 'We believe in high ethics, transparency and customer satisfaction. From the moment our students sit for a counselling session they become well informed about the courses they are looking for, its costs, the career prospects it has and detailed information about the overall application process and the total time it might take. This help to develop trust and makes the overall process much smoother while at the same time develop confidence among the students and the partners in their decision. And we are thankful towards our 1000 plus students for choosing us.'),
(757, 99, '_description', 'field_614c523533503'),
(758, 198, 'our_vision', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(759, 198, '_our_vision', 'field_614c4d926c78f'),
(760, 198, 'our_mission', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(761, 198, '_our_mission', 'field_614c4da06c790'),
(762, 198, 'message', '<strong>Mr.Romelu Lukaku</strong>\r\n<p class=\"position\">Owner/Founder</p>\r\nYes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are &amp; we work towards your goals. If you want a business that generates your income while also positively contributing to others, then you have arrived at the right place! Whether you have an existing business, or you have an idea that you want to bring to life, there is a way to create a positive triple-bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!'),
(763, 198, '_message', 'field_614c4dbb6c791'),
(764, 198, 'owner_image', '43'),
(765, 198, '_owner_image', 'field_614c4dc76c792'),
(766, 198, 'quote', 'Working Together to develop value to your application experience!!'),
(767, 198, '_quote', 'field_614c522733502'),
(768, 198, 'description', 'We believe in high ethics, transparency and customer satisfaction. From the moment our students sit for a counselling session they become well informed about the courses they are looking for, its costs, the career prospects it has and detailed information about the overall application process and the total time it might take. This help to develop trust and makes the overall process much smoother while at the same time develop confidence among the students and the partners in their decision. And we are thankful towards our 1000 plus students for choosing us.'),
(769, 198, '_description', 'field_614c523533503'),
(770, 199, 'our_vision', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(771, 199, '_our_vision', 'field_614c4d926c78f'),
(772, 199, 'our_mission', '<ul>\r\n  <li>\r\n    <div><i class=\"fas fa-check mr-2\"></i></div>To provide customized solutions to the students aspiring \r\n     to study.\r\n  </li>\r\n  <li>\r\n        <div><i class=\"fas fa-check mr-2\"></i></div>Strive for the organic growth of our organization through integrity, honesty, and excellence.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>To build a strong and credible relationship with the partner institutions by recognizing shared values & goals.\r\n  </li>\r\n  <li>\r\n      <div><i class=\"fas fa-check mr-2\"></i></div>Lorem ipsum dolor sit amet consectetur adipisicing \r\n       elit. Deserunt, commodi!\r\n  </li>\r\n</ul>'),
(773, 199, '_our_mission', 'field_614c4da06c790'),
(774, 199, 'message', '<strong>Mr.Romelu Lukaku</strong>\r\n<p class=\"position\">Owner/Founder</p>\r\nYes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are &amp; we work towards your goals. If you want a business that generates your income while also positively contributing to others, then you have arrived at the right place! Whether you have an existing business, or you have an idea that you want to bring to life, there is a way to create a positive triple-bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!'),
(775, 199, '_message', 'field_614c4dbb6c791'),
(776, 199, 'owner_image', '43'),
(777, 199, '_owner_image', 'field_614c4dc76c792'),
(778, 199, 'quote', 'Working Together to develop value to your application experience!!'),
(779, 199, '_quote', 'field_614c522733502'),
(780, 199, 'description', 'We believe in high ethics, transparency and customer satisfaction. From the moment our students sit for a counselling session they become well informed about the courses they are looking for, its costs, the career prospects it has and detailed information about the overall application process and the total time it might take. This help to develop trust and makes the overall process much smoother while at the same time develop confidence among the students and the partners in their decision. And we are thankful towards our 1000 plus students for choosing us.'),
(781, 199, '_description', 'field_614c523533503'),
(818, 204, '_menu_item_type', 'post_type'),
(819, 204, '_menu_item_menu_item_parent', '237'),
(820, 204, '_menu_item_object_id', '101'),
(821, 204, '_menu_item_object', 'page'),
(822, 204, '_menu_item_target', ''),
(823, 204, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(824, 204, '_menu_item_xfn', ''),
(825, 204, '_menu_item_url', ''),
(827, 205, '_menu_item_type', 'post_type'),
(828, 205, '_menu_item_menu_item_parent', '237'),
(829, 205, '_menu_item_object_id', '99'),
(830, 205, '_menu_item_object', 'page'),
(831, 205, '_menu_item_target', ''),
(832, 205, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(833, 205, '_menu_item_xfn', ''),
(834, 205, '_menu_item_url', ''),
(836, 206, '_menu_item_type', 'post_type'),
(837, 206, '_menu_item_menu_item_parent', '235'),
(838, 206, '_menu_item_object_id', '84'),
(839, 206, '_menu_item_object', 'services'),
(840, 206, '_menu_item_target', ''),
(841, 206, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(842, 206, '_menu_item_xfn', ''),
(843, 206, '_menu_item_url', ''),
(845, 207, '_menu_item_type', 'post_type'),
(846, 207, '_menu_item_menu_item_parent', '235'),
(847, 207, '_menu_item_object_id', '83'),
(848, 207, '_menu_item_object', 'services'),
(849, 207, '_menu_item_target', ''),
(850, 207, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(851, 207, '_menu_item_xfn', ''),
(852, 207, '_menu_item_url', ''),
(854, 208, '_menu_item_type', 'post_type'),
(855, 208, '_menu_item_menu_item_parent', '235'),
(856, 208, '_menu_item_object_id', '82'),
(857, 208, '_menu_item_object', 'services'),
(858, 208, '_menu_item_target', ''),
(859, 208, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(860, 208, '_menu_item_xfn', ''),
(861, 208, '_menu_item_url', ''),
(872, 210, '_menu_item_type', 'post_type'),
(873, 210, '_menu_item_menu_item_parent', '235'),
(874, 210, '_menu_item_object_id', '79'),
(875, 210, '_menu_item_object', 'services'),
(876, 210, '_menu_item_target', ''),
(877, 210, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(878, 210, '_menu_item_xfn', ''),
(879, 210, '_menu_item_url', ''),
(881, 211, '_menu_item_type', 'post_type'),
(882, 211, '_menu_item_menu_item_parent', '235'),
(883, 211, '_menu_item_object_id', '78'),
(884, 211, '_menu_item_object', 'services'),
(885, 211, '_menu_item_target', ''),
(886, 211, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(887, 211, '_menu_item_xfn', ''),
(888, 211, '_menu_item_url', ''),
(890, 212, '_menu_item_type', 'post_type'),
(891, 212, '_menu_item_menu_item_parent', '234'),
(892, 212, '_menu_item_object_id', '66'),
(893, 212, '_menu_item_object', 'countries'),
(894, 212, '_menu_item_target', ''),
(895, 212, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(896, 212, '_menu_item_xfn', ''),
(897, 212, '_menu_item_url', ''),
(899, 213, '_menu_item_type', 'post_type'),
(900, 213, '_menu_item_menu_item_parent', '234'),
(901, 213, '_menu_item_object_id', '65'),
(902, 213, '_menu_item_object', 'countries'),
(903, 213, '_menu_item_target', ''),
(904, 213, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(905, 213, '_menu_item_xfn', ''),
(906, 213, '_menu_item_url', ''),
(908, 214, '_menu_item_type', 'post_type'),
(909, 214, '_menu_item_menu_item_parent', '234'),
(910, 214, '_menu_item_object_id', '64'),
(911, 214, '_menu_item_object', 'countries'),
(912, 214, '_menu_item_target', ''),
(913, 214, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(914, 214, '_menu_item_xfn', ''),
(915, 214, '_menu_item_url', ''),
(917, 215, '_menu_item_type', 'post_type'),
(918, 215, '_menu_item_menu_item_parent', '234'),
(919, 215, '_menu_item_object_id', '59'),
(920, 215, '_menu_item_object', 'countries'),
(921, 215, '_menu_item_target', ''),
(922, 215, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(923, 215, '_menu_item_xfn', ''),
(924, 215, '_menu_item_url', ''),
(926, 216, '_menu_item_type', 'post_type'),
(927, 216, '_menu_item_menu_item_parent', '236'),
(928, 216, '_menu_item_object_id', '91'),
(929, 216, '_menu_item_object', 'tests'),
(930, 216, '_menu_item_target', ''),
(931, 216, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(932, 216, '_menu_item_xfn', ''),
(933, 216, '_menu_item_url', ''),
(935, 217, '_menu_item_type', 'post_type'),
(936, 217, '_menu_item_menu_item_parent', '236'),
(937, 217, '_menu_item_object_id', '90'),
(938, 217, '_menu_item_object', 'tests'),
(939, 217, '_menu_item_target', ''),
(940, 217, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(941, 217, '_menu_item_xfn', ''),
(942, 217, '_menu_item_url', ''),
(944, 218, '_menu_item_type', 'post_type'),
(945, 218, '_menu_item_menu_item_parent', '236'),
(946, 218, '_menu_item_object_id', '89'),
(947, 218, '_menu_item_object', 'tests'),
(948, 218, '_menu_item_target', ''),
(949, 218, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(950, 218, '_menu_item_xfn', ''),
(951, 218, '_menu_item_url', ''),
(953, 219, '_menu_item_type', 'post_type'),
(954, 219, '_menu_item_menu_item_parent', '236'),
(955, 219, '_menu_item_object_id', '88'),
(956, 219, '_menu_item_object', 'tests'),
(957, 219, '_menu_item_target', ''),
(958, 219, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(959, 219, '_menu_item_xfn', ''),
(960, 219, '_menu_item_url', ''),
(962, 220, '_menu_item_type', 'post_type'),
(963, 220, '_menu_item_menu_item_parent', '236'),
(964, 220, '_menu_item_object_id', '87'),
(965, 220, '_menu_item_object', 'tests'),
(966, 220, '_menu_item_target', ''),
(967, 220, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(968, 220, '_menu_item_xfn', ''),
(969, 220, '_menu_item_url', ''),
(971, 221, '_menu_item_type', 'post_type'),
(972, 221, '_menu_item_menu_item_parent', '236'),
(973, 221, '_menu_item_object_id', '86'),
(974, 221, '_menu_item_object', 'tests'),
(975, 221, '_menu_item_target', ''),
(976, 221, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(977, 221, '_menu_item_xfn', ''),
(978, 221, '_menu_item_url', ''),
(980, 222, '_menu_item_type', 'post_type'),
(981, 222, '_menu_item_menu_item_parent', '0'),
(982, 222, '_menu_item_object_id', '9'),
(983, 222, '_menu_item_object', 'page'),
(984, 222, '_menu_item_target', ''),
(985, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(986, 222, '_menu_item_xfn', ''),
(987, 222, '_menu_item_url', ''),
(989, 108, '_wp_old_date', '2021-09-23'),
(990, 111, '_wp_old_date', '2021-09-23'),
(991, 110, '_wp_old_date', '2021-09-23'),
(992, 109, '_wp_old_date', '2021-09-23'),
(993, 223, '_menu_item_type', 'post_type'),
(994, 223, '_menu_item_menu_item_parent', '0'),
(995, 223, '_menu_item_object_id', '118'),
(996, 223, '_menu_item_object', 'page'),
(997, 223, '_menu_item_target', ''),
(998, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(999, 223, '_menu_item_xfn', ''),
(1000, 223, '_menu_item_url', ''),
(1001, 223, '_menu_item_orphaned', '1632465539'),
(1002, 224, '_wp_trash_meta_status', 'publish'),
(1003, 224, '_wp_trash_meta_time', '1632468122'),
(1004, 227, '_edit_lock', '1632468165:1'),
(1005, 227, '_wp_trash_meta_status', 'publish'),
(1006, 227, '_wp_trash_meta_time', '1632468213'),
(1007, 229, '_wp_trash_meta_status', 'publish'),
(1008, 229, '_wp_trash_meta_time', '1632468737'),
(1009, 231, '_edit_lock', '1632469108:1'),
(1010, 231, '_wp_trash_meta_status', 'publish'),
(1011, 231, '_wp_trash_meta_time', '1632469112'),
(1012, 233, '_menu_item_type', 'post_type'),
(1013, 233, '_menu_item_menu_item_parent', '235'),
(1014, 233, '_menu_item_object_id', '81'),
(1015, 233, '_menu_item_object', 'services'),
(1016, 233, '_menu_item_target', ''),
(1017, 233, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(1018, 233, '_menu_item_xfn', ''),
(1019, 233, '_menu_item_url', ''),
(1021, 234, '_menu_item_type', 'custom'),
(1022, 234, '_menu_item_menu_item_parent', '0'),
(1023, 234, '_menu_item_object_id', '234'),
(1024, 234, '_menu_item_object', 'custom'),
(1025, 234, '_menu_item_target', ''),
(1026, 234, '_menu_item_classes', 'a:1:{i:0;s:8:\"dropdown\";}'),
(1027, 234, '_menu_item_xfn', ''),
(1028, 234, '_menu_item_url', '#'),
(1030, 235, '_menu_item_type', 'custom'),
(1031, 235, '_menu_item_menu_item_parent', '0'),
(1032, 235, '_menu_item_object_id', '235'),
(1033, 235, '_menu_item_object', 'custom'),
(1034, 235, '_menu_item_target', ''),
(1035, 235, '_menu_item_classes', 'a:1:{i:0;s:8:\"dropdown\";}'),
(1036, 235, '_menu_item_xfn', ''),
(1037, 235, '_menu_item_url', '#'),
(1039, 236, '_menu_item_type', 'custom'),
(1040, 236, '_menu_item_menu_item_parent', '0'),
(1041, 236, '_menu_item_object_id', '236'),
(1042, 236, '_menu_item_object', 'custom'),
(1043, 236, '_menu_item_target', ''),
(1044, 236, '_menu_item_classes', 'a:1:{i:0;s:8:\"dropdown\";}'),
(1045, 236, '_menu_item_xfn', ''),
(1046, 236, '_menu_item_url', '#'),
(1048, 237, '_menu_item_type', 'custom'),
(1049, 237, '_menu_item_menu_item_parent', '0'),
(1050, 237, '_menu_item_object_id', '237'),
(1051, 237, '_menu_item_object', 'custom'),
(1052, 237, '_menu_item_target', ''),
(1053, 237, '_menu_item_classes', 'a:1:{i:0;s:8:\"dropdown\";}'),
(1054, 237, '_menu_item_xfn', ''),
(1055, 237, '_menu_item_url', '#'),
(1057, 238, '_wp_trash_meta_status', 'publish'),
(1058, 238, '_wp_trash_meta_time', '1632471454'),
(1059, 222, '_wp_old_date', '2021-09-24'),
(1060, 237, '_wp_old_date', '2021-09-24'),
(1061, 205, '_wp_old_date', '2021-09-24'),
(1062, 204, '_wp_old_date', '2021-09-24'),
(1063, 234, '_wp_old_date', '2021-09-24'),
(1064, 212, '_wp_old_date', '2021-09-24'),
(1065, 214, '_wp_old_date', '2021-09-24'),
(1066, 215, '_wp_old_date', '2021-09-24'),
(1067, 213, '_wp_old_date', '2021-09-24'),
(1068, 235, '_wp_old_date', '2021-09-24'),
(1069, 208, '_wp_old_date', '2021-09-24'),
(1070, 206, '_wp_old_date', '2021-09-24'),
(1071, 233, '_wp_old_date', '2021-09-24'),
(1072, 207, '_wp_old_date', '2021-09-24'),
(1073, 211, '_wp_old_date', '2021-09-24'),
(1074, 210, '_wp_old_date', '2021-09-24'),
(1075, 236, '_wp_old_date', '2021-09-24'),
(1076, 221, '_wp_old_date', '2021-09-24'),
(1077, 216, '_wp_old_date', '2021-09-24'),
(1078, 217, '_wp_old_date', '2021-09-24'),
(1079, 218, '_wp_old_date', '2021-09-24'),
(1080, 219, '_wp_old_date', '2021-09-24'),
(1081, 220, '_wp_old_date', '2021-09-24'),
(1082, 108, '_wp_old_date', '2021-09-24'),
(1083, 111, '_wp_old_date', '2021-09-24'),
(1084, 110, '_wp_old_date', '2021-09-24'),
(1085, 109, '_wp_old_date', '2021-09-24'),
(1086, 222, '_wp_old_date', '2021-09-25'),
(1087, 237, '_wp_old_date', '2021-09-25'),
(1088, 205, '_wp_old_date', '2021-09-25'),
(1089, 204, '_wp_old_date', '2021-09-25'),
(1090, 234, '_wp_old_date', '2021-09-25'),
(1091, 212, '_wp_old_date', '2021-09-25'),
(1092, 214, '_wp_old_date', '2021-09-25'),
(1093, 215, '_wp_old_date', '2021-09-25'),
(1094, 213, '_wp_old_date', '2021-09-25'),
(1095, 235, '_wp_old_date', '2021-09-25'),
(1096, 208, '_wp_old_date', '2021-09-25'),
(1097, 206, '_wp_old_date', '2021-09-25'),
(1098, 233, '_wp_old_date', '2021-09-25'),
(1099, 207, '_wp_old_date', '2021-09-25'),
(1100, 211, '_wp_old_date', '2021-09-25'),
(1101, 210, '_wp_old_date', '2021-09-25'),
(1102, 236, '_wp_old_date', '2021-09-25'),
(1103, 221, '_wp_old_date', '2021-09-25'),
(1104, 216, '_wp_old_date', '2021-09-25'),
(1105, 217, '_wp_old_date', '2021-09-25'),
(1106, 218, '_wp_old_date', '2021-09-25'),
(1107, 219, '_wp_old_date', '2021-09-25'),
(1108, 220, '_wp_old_date', '2021-09-25'),
(1109, 108, '_wp_old_date', '2021-09-25'),
(1110, 111, '_wp_old_date', '2021-09-25'),
(1111, 110, '_wp_old_date', '2021-09-25'),
(1112, 109, '_wp_old_date', '2021-09-25'),
(1113, 240, '_wp_trash_meta_status', 'publish'),
(1114, 240, '_wp_trash_meta_time', '1632634719'),
(1115, 242, '_wp_trash_meta_status', 'publish'),
(1116, 242, '_wp_trash_meta_time', '1632634757'),
(1117, 244, '_wp_trash_meta_status', 'publish'),
(1118, 244, '_wp_trash_meta_time', '1632634764'),
(1119, 246, '_menu_item_type', 'post_type'),
(1120, 246, '_menu_item_menu_item_parent', '0'),
(1121, 246, '_menu_item_object_id', '9'),
(1122, 246, '_menu_item_object', 'page'),
(1123, 246, '_menu_item_target', ''),
(1124, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1125, 246, '_menu_item_xfn', ''),
(1126, 246, '_menu_item_url', ''),
(1128, 247, '_menu_item_type', 'post_type'),
(1129, 247, '_menu_item_menu_item_parent', '0'),
(1130, 247, '_menu_item_object_id', '7'),
(1131, 247, '_menu_item_object', 'page'),
(1132, 247, '_menu_item_target', ''),
(1133, 247, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1134, 247, '_menu_item_xfn', ''),
(1135, 247, '_menu_item_url', ''),
(1137, 248, '_menu_item_type', 'post_type'),
(1138, 248, '_menu_item_menu_item_parent', '0'),
(1139, 248, '_menu_item_object_id', '93'),
(1140, 248, '_menu_item_object', 'page'),
(1141, 248, '_menu_item_target', ''),
(1142, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1143, 248, '_menu_item_xfn', ''),
(1144, 248, '_menu_item_url', ''),
(1146, 249, '_menu_item_type', 'post_type'),
(1147, 249, '_menu_item_menu_item_parent', '0'),
(1148, 249, '_menu_item_object_id', '99'),
(1149, 249, '_menu_item_object', 'page'),
(1150, 249, '_menu_item_target', ''),
(1151, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1152, 249, '_menu_item_xfn', ''),
(1153, 249, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-21 06:45:55', '2021-09-21 06:45:55', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-09-23 07:55:21', '2021-09-23 07:55:21', '', 0, 'http://localhost/consultancy-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-21 06:45:55', '2021-09-21 06:45:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/consultancy-wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-09-21 09:34:57', '2021-09-21 09:34:57', '', 0, 'http://localhost/consultancy-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-21 06:45:55', '2021-09-21 06:45:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/consultancy-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-09-21 09:34:55', '2021-09-21 09:34:55', '', 0, 'http://localhost/consultancy-wp/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-09-21 09:34:55', '2021-09-21 09:34:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/consultancy-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-09-21 09:34:55', '2021-09-21 09:34:55', '', 3, 'http://localhost/consultancy-wp/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-09-21 09:34:57', '2021-09-21 09:34:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/consultancy-wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-09-21 09:34:57', '2021-09-21 09:34:57', '', 2, 'http://localhost/consultancy-wp/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-09-21 09:35:20', '2021-09-21 09:35:20', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-09-21 09:35:20', '2021-09-21 09:35:20', '', 0, 'http://localhost/consultancy-wp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-09-21 09:35:20', '2021-09-21 09:35:20', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-21 09:35:20', '2021-09-21 09:35:20', '', 7, 'http://localhost/consultancy-wp/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-09-21 09:35:35', '2021-09-21 09:35:35', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2021-09-21 09:35:35', '2021-09-21 09:35:35', '', 0, 'http://localhost/consultancy-wp/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-09-21 09:35:35', '2021-09-21 09:35:35', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-09-21 09:35:35', '2021-09-21 09:35:35', '', 9, 'http://localhost/consultancy-wp/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-09-21 09:40:52', '2021-09-21 09:40:52', '{\n    \"blogdescription\": {\n        \"value\": \"Learn New Language and Study Abroad\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:39:56\"\n    },\n    \"site_icon\": {\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:40:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10156231-e4c5-4603-b08e-1d7e74281bc9', '', '', '2021-09-21 09:40:52', '2021-09-21 09:40:52', '', 0, 'http://localhost/consultancy-wp/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2021-09-21 09:40:10', '2021-09-21 09:40:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-09-21 09:40:10', '2021-09-21 09:40:10', '', 0, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-09-21 09:40:36', '2021-09-21 09:40:36', 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/cropped-logo-scaled-1.jpg', 'cropped-logo-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-scaled-1-jpg', '', '', '2021-09-21 09:40:36', '2021-09-21 09:40:36', '', 0, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/cropped-logo-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-09-21 09:43:02', '2021-09-21 09:43:02', '{\n    \"consultancy::consultancy_facebook_handle\": {\n        \"value\": \"https://www.facebook.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:43:02\"\n    },\n    \"consultancy::consultancy_twitter_handle\": {\n        \"value\": \"https://www.twitter.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:43:02\"\n    },\n    \"consultancy::consultancy_youtube_handle\": {\n        \"value\": \"https://www.youtube.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:43:02\"\n    },\n    \"consultancy::consultancy_instagram_handle\": {\n        \"value\": \"https://www.instagramcom/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:43:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e2b3bf1-0e80-4e54-9087-ca80f523761b', '', '', '2021-09-21 09:43:02', '2021-09-21 09:43:02', '', 0, 'http://localhost/consultancy-wp/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2021-09-21 09:44:22', '2021-09-21 09:44:22', '{\n    \"consultancy::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:44:22\"\n    },\n    \"consultancy::consultancy_phone_handle\": {\n        \"value\": \"9835612047\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:44:22\"\n    },\n    \"consultancy::consultancy_email_handle\": {\n        \"value\": \"techcoderznepal@gmail.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:44:22\"\n    },\n    \"consultancy::consultancy_address_handle\": {\n        \"value\": \"Shantinagar, Kathmandu\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-21 09:44:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5418712b-68b2-4809-8b46-c7381f7ce6a1', '', '', '2021-09-21 09:44:22', '2021-09-21 09:44:22', '', 0, 'http://localhost/consultancy-wp/index.php/2021/09/21/5418712b-68b2-4809-8b46-c7381f7ce6a1/', 0, 'customize_changeset', '', 0),
(16, 1, '2021-09-21 11:28:13', '2021-09-21 11:28:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonials Addition', 'testimonials-addition', 'publish', 'closed', 'closed', '', 'group_6149c19741995', '', '', '2021-09-21 11:28:14', '2021-09-21 11:28:14', '', 0, 'http://localhost/consultancy-wp/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2021-09-21 11:28:13', '2021-09-21 11:28:13', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'rate', 'rate', 'publish', 'closed', 'closed', '', 'field_6149c1a5129e8', '', '', '2021-09-21 11:28:13', '2021-09-21 11:28:13', '', 16, 'http://localhost/consultancy-wp/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2021-09-21 11:28:14', '2021-09-21 11:28:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Post', 'post', 'publish', 'closed', 'closed', '', 'field_6149c1b4129e9', '', '', '2021-09-21 11:28:14', '2021-09-21 11:28:14', '', 16, 'http://localhost/consultancy-wp/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2021-09-21 11:29:41', '2021-09-21 11:29:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"teams\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Team Additional', 'our-team-additional', 'publish', 'closed', 'closed', '', 'group_6149c1d55925e', '', '', '2021-09-22 08:14:21', '2021-09-22 08:14:21', '', 0, 'http://localhost/consultancy-wp/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2021-09-21 11:29:41', '2021-09-21 11:29:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_6149c1e4a07c0', '', '', '2021-09-21 11:29:41', '2021-09-21 11:29:41', '', 19, 'http://localhost/consultancy-wp/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2021-09-21 11:29:41', '2021-09-21 11:29:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook Link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_6149c1efa07c1', '', '', '2021-09-21 11:29:41', '2021-09-21 11:29:41', '', 19, 'http://localhost/consultancy-wp/?post_type=acf-field&p=21', 1, 'acf-field', '', 0),
(22, 1, '2021-09-21 11:29:42', '2021-09-21 11:29:42', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Link', 'twitter_link', 'publish', 'closed', 'closed', '', 'field_6149c1fca07c2', '', '', '2021-09-21 11:29:42', '2021-09-21 11:29:42', '', 19, 'http://localhost/consultancy-wp/?post_type=acf-field&p=22', 2, 'acf-field', '', 0),
(23, 1, '2021-09-21 11:29:42', '2021-09-21 11:29:42', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram Link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_6149c20aa07c3', '', '', '2021-09-21 11:29:42', '2021-09-21 11:29:42', '', 19, 'http://localhost/consultancy-wp/?post_type=acf-field&p=23', 3, 'acf-field', '', 0),
(24, 1, '2021-09-21 11:31:13', '2021-09-21 11:31:13', '', 'Partner 1', '', 'publish', 'closed', 'closed', '', 'partner-1', '', '', '2021-09-21 11:31:13', '2021-09-21 11:31:13', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=24', 0, 'partners', '', 0),
(25, 1, '2021-09-21 11:31:06', '2021-09-21 11:31:06', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2021-09-21 11:31:06', '2021-09-21 11:31:06', '', 24, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-09-21 11:31:07', '2021-09-21 11:31:07', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2021-09-21 11:31:07', '2021-09-21 11:31:07', '', 24, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-09-21 11:31:08', '2021-09-21 11:31:08', '', '29', '', 'inherit', 'open', 'closed', '', '29', '', '', '2021-09-21 11:31:08', '2021-09-21 11:31:08', '', 24, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/29.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2021-09-21 11:31:10', '2021-09-21 11:31:10', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-09-21 11:31:10', '2021-09-21 11:31:10', '', 24, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-09-21 11:31:34', '2021-09-21 11:31:34', '', 'Partner 2', '', 'publish', 'closed', 'closed', '', 'partner-2', '', '', '2021-09-21 11:31:34', '2021-09-21 11:31:34', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=29', 0, 'partners', '', 0),
(30, 1, '2021-09-21 11:31:47', '2021-09-21 11:31:47', '', 'Partner 3', '', 'publish', 'closed', 'closed', '', 'partner-3', '', '', '2021-09-21 11:31:47', '2021-09-21 11:31:47', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=30', 0, 'partners', '', 0),
(31, 1, '2021-09-21 11:32:00', '2021-09-21 11:32:00', '', 'Partner 4', '', 'publish', 'closed', 'closed', '', 'partner-4', '', '', '2021-09-21 11:32:00', '2021-09-21 11:32:00', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=31', 0, 'partners', '', 0),
(32, 1, '2021-09-21 11:32:13', '2021-09-21 11:32:13', '', 'Partner 5', '', 'publish', 'closed', 'closed', '', 'partner-5', '', '', '2021-09-21 11:32:13', '2021-09-21 11:32:13', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=32', 0, 'partners', '', 0),
(33, 1, '2021-09-21 11:32:26', '2021-09-21 11:32:26', '', 'Partner 6', '', 'publish', 'closed', 'closed', '', 'partner-6', '', '', '2021-09-21 11:32:26', '2021-09-21 11:32:26', '', 0, 'http://localhost/consultancy-wp/?post_type=partners&#038;p=33', 0, 'partners', '', 0),
(34, 1, '2021-09-21 11:33:54', '2021-09-21 11:33:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Thomas Muler', '', 'publish', 'closed', 'closed', '', 'thomas-muler', '', '', '2021-09-21 11:33:54', '2021-09-21 11:33:54', '', 0, 'http://localhost/consultancy-wp/?post_type=testimonials&#038;p=34', 0, 'testimonials', '', 0),
(35, 1, '2021-09-21 11:32:54', '2021-09-21 11:32:54', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2021-09-21 11:32:54', '2021-09-21 11:32:54', '', 34, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2021-09-21 11:32:56', '2021-09-21 11:32:56', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2021-09-21 11:32:56', '2021-09-21 11:32:56', '', 34, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-09-21 11:32:57', '2021-09-21 11:32:57', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2021-09-21 11:32:57', '2021-09-21 11:32:57', '', 34, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-09-21 11:32:58', '2021-09-21 11:32:58', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2021-09-21 11:32:58', '2021-09-21 11:32:58', '', 34, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-09-21 11:34:22', '2021-09-21 11:34:22', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'John Doe', '', 'publish', 'closed', 'closed', '', 'john-doe', '', '', '2021-09-21 11:34:22', '2021-09-21 11:34:22', '', 0, 'http://localhost/consultancy-wp/?post_type=testimonials&#038;p=39', 0, 'testimonials', '', 0),
(40, 1, '2021-09-21 11:34:52', '2021-09-21 11:34:52', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Elizabeth Harmon', '', 'publish', 'closed', 'closed', '', 'elizabeth-harmon', '', '', '2021-09-21 11:34:52', '2021-09-21 11:34:52', '', 0, 'http://localhost/consultancy-wp/?post_type=testimonials&#038;p=40', 0, 'testimonials', '', 0),
(41, 1, '2021-09-21 11:35:19', '2021-09-21 11:35:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Ram Bahadaur', '', 'publish', 'closed', 'closed', '', 'ram-bahadaur', '', '', '2021-09-21 11:35:19', '2021-09-21 11:35:19', '', 0, 'http://localhost/consultancy-wp/?post_type=testimonials&#038;p=41', 0, 'testimonials', '', 0),
(42, 1, '2021-09-21 11:36:36', '2021-09-21 11:36:36', '', 'Thomas Muller', '', 'publish', 'closed', 'closed', '', 'thomas-muller', '', '', '2021-09-21 11:36:36', '2021-09-21 11:36:36', '', 0, 'http://localhost/consultancy-wp/?post_type=teams&#038;p=42', 0, 'teams', '', 0),
(43, 1, '2021-09-21 11:36:20', '2021-09-21 11:36:20', '', 'team1', '', 'inherit', 'open', 'closed', '', 'team1', '', '', '2021-09-21 11:36:20', '2021-09-21 11:36:20', '', 42, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-09-21 11:36:57', '2021-09-21 11:36:57', '', 'Thomas Muller', '', 'publish', 'closed', 'closed', '', 'thomas-muller-2', '', '', '2021-09-21 11:36:57', '2021-09-21 11:36:57', '', 0, 'http://localhost/consultancy-wp/?post_type=teams&#038;p=44', 0, 'teams', '', 0),
(45, 1, '2021-09-21 11:37:26', '2021-09-21 11:37:26', '', 'Thomas Muller', '', 'publish', 'closed', 'closed', '', 'thomas-muller-3', '', '', '2021-09-21 11:37:26', '2021-09-21 11:37:26', '', 0, 'http://localhost/consultancy-wp/?post_type=teams&#038;p=45', 0, 'teams', '', 0),
(46, 1, '2021-09-21 11:38:23', '2021-09-21 11:38:23', '', 'Thomas Muller', '', 'publish', 'closed', 'closed', '', 'thomas-muller-4', '', '', '2021-09-21 11:38:23', '2021-09-21 11:38:23', '', 0, 'http://localhost/consultancy-wp/?post_type=teams&#038;p=46', 0, 'teams', '', 0),
(47, 1, '2021-09-21 11:39:52', '2021-09-21 11:39:52', '', 'Visa Counseling', '', 'publish', 'closed', 'closed', '', 'visa-counseling', '', '', '2021-09-21 11:39:52', '2021-09-21 11:39:52', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=47', 0, 'whatwedo', '', 0),
(48, 1, '2021-09-21 11:39:32', '2021-09-21 11:39:32', '', 'passport', '', 'inherit', 'open', 'closed', '', 'passport', '', '', '2021-09-21 11:39:32', '2021-09-21 11:39:32', '', 47, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/passport.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2021-09-21 11:39:33', '2021-09-21 11:39:33', '', 'checklist', '', 'inherit', 'open', 'closed', '', 'checklist', '', '', '2021-09-21 11:39:33', '2021-09-21 11:39:33', '', 47, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/checklist.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-09-21 11:39:34', '2021-09-21 11:39:34', '', 'consultation', '', 'inherit', 'open', 'closed', '', 'consultation', '', '', '2021-09-21 11:39:34', '2021-09-21 11:39:34', '', 47, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/consultation.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-09-21 11:39:35', '2021-09-21 11:39:35', '', 'departures', '', 'inherit', 'open', 'closed', '', 'departures', '', '', '2021-09-21 11:39:35', '2021-09-21 11:39:35', '', 47, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/departures.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-09-21 11:39:36', '2021-09-21 11:39:36', '', 'guide', '', 'inherit', 'open', 'closed', '', 'guide', '', '', '2021-09-21 11:39:36', '2021-09-21 11:39:36', '', 47, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/guide.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2021-09-21 11:40:12', '2021-09-21 11:40:12', '', 'Application Process', '', 'publish', 'closed', 'closed', '', 'application-process', '', '', '2021-09-21 11:40:12', '2021-09-21 11:40:12', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=53', 0, 'whatwedo', '', 0),
(54, 1, '2021-09-21 11:40:31', '2021-09-21 11:40:31', '', 'Test Preparation', '', 'publish', 'closed', 'closed', '', 'test-preparation', '', '', '2021-09-21 11:40:31', '2021-09-21 11:40:31', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=54', 0, 'whatwedo', '', 0),
(55, 1, '2021-09-21 11:40:50', '2021-09-21 11:40:50', '', 'Documentation Guide', '', 'publish', 'closed', 'closed', '', 'documentation-guide', '', '', '2021-09-21 11:40:50', '2021-09-21 11:40:50', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=55', 0, 'whatwedo', '', 0),
(56, 1, '2021-09-21 11:41:06', '2021-09-21 11:41:06', '', 'Pre Departure Guidance', '', 'publish', 'closed', 'closed', '', 'pre-departure-guidance', '', '', '2021-09-21 11:41:06', '2021-09-21 11:41:06', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=56', 0, 'whatwedo', '', 0),
(57, 1, '2021-09-21 11:41:09', '2021-09-21 11:41:09', '', 'Pre Departure Guidance', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2021-09-21 11:41:09', '2021-09-21 11:41:09', '', 56, 'http://localhost/consultancy-wp/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-09-21 11:41:20', '2021-09-21 11:41:20', '', 'Visa Lodgement', '', 'publish', 'closed', 'closed', '', 'visa-lodgement', '', '', '2021-09-21 11:41:20', '2021-09-21 11:41:20', '', 0, 'http://localhost/consultancy-wp/?post_type=whatwedo&#038;p=58', 0, 'whatwedo', '', 0),
(59, 1, '2021-09-21 11:43:58', '2021-09-21 11:43:58', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.\r\n\r\nAustralia is the only nation to govern an entire continent and its outlying islands. The mainland is the largest island and the smallest, flattest continent on Earth. It lies between 10° and 39° South latitude. The highest point on the mainland, Mount Kosciuszko, is only 2228 metres. Apart from Antarctica, Australia is the driest continent.\r\n\r\nAustralia has had one of the most outstanding economies of the world in recent years. As a high-growth, low-inflation, low interest rate economy, it is more vibrant than ever before. There is an efficient government sector, a flexible labour market and a very competitive business sector.\r\n\r\nits abundant physical resources, Australia has enjoyed a high standard of living since the nineteenth century. It has made a comparatively large investment in social infrastructure, including education, training, health and transport.', 'Australia', '', 'publish', 'closed', 'closed', '', 'australia', '', '', '2021-09-21 11:43:58', '2021-09-21 11:43:58', '', 0, 'http://localhost/consultancy-wp/?post_type=countries&#038;p=59', 0, 'countries', '', 0),
(60, 1, '2021-09-21 11:42:06', '2021-09-21 11:42:06', '', 'america', '', 'inherit', 'open', 'closed', '', 'america', '', '', '2021-09-21 11:42:06', '2021-09-21 11:42:06', '', 59, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/america.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-09-21 11:42:18', '2021-09-21 11:42:18', '', 'australia', '', 'inherit', 'open', 'closed', '', 'australia', '', '', '2021-09-21 11:42:18', '2021-09-21 11:42:18', '', 59, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-09-21 11:42:36', '2021-09-21 11:42:36', '', 'canada', '', 'inherit', 'open', 'closed', '', 'canada', '', '', '2021-09-21 11:42:36', '2021-09-21 11:42:36', '', 59, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-09-21 11:42:38', '2021-09-21 11:42:38', '', 'uk1', '', 'inherit', 'open', 'closed', '', 'uk1', '', '', '2021-09-21 11:42:38', '2021-09-21 11:42:38', '', 59, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-09-21 11:44:45', '2021-09-21 11:44:45', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.\r\n\r\nAustralia is the only nation to govern an entire continent and its outlying islands. The mainland is the largest island and the smallest, flattest continent on Earth. It lies between 10° and 39° South latitude. The highest point on the mainland, Mount Kosciuszko, is only 2228 metres. Apart from Antarctica, Australia is the driest continent.\r\n\r\nAustralia has had one of the most outstanding economies of the world in recent years. As a high-growth, low-inflation, low interest rate economy, it is more vibrant than ever before. There is an efficient government sector, a flexible labour market and a very competitive business sector.\r\n\r\nits abundant physical resources, Australia has enjoyed a high standard of living since the nineteenth century. It has made a comparatively large investment in social infrastructure, including education, training, health and transport.', 'USA', '', 'publish', 'closed', 'closed', '', 'usa', '', '', '2021-09-21 11:44:45', '2021-09-21 11:44:45', '', 0, 'http://localhost/consultancy-wp/?post_type=countries&#038;p=64', 0, 'countries', '', 0),
(65, 1, '2021-09-21 11:45:04', '2021-09-21 11:45:04', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.\r\n\r\nAustralia is the only nation to govern an entire continent and its outlying islands. The mainland is the largest island and the smallest, flattest continent on Earth. It lies between 10° and 39° South latitude. The highest point on the mainland, Mount Kosciuszko, is only 2228 metres. Apart from Antarctica, Australia is the driest continent.\r\n\r\nAustralia has had one of the most outstanding economies of the world in recent years. As a high-growth, low-inflation, low interest rate economy, it is more vibrant than ever before. There is an efficient government sector, a flexible labour market and a very competitive business sector.\r\n\r\nits abundant physical resources, Australia has enjoyed a high standard of living since the nineteenth century. It has made a comparatively large investment in social infrastructure, including education, training, health and transport.', 'Canada', '', 'publish', 'closed', 'closed', '', 'canada', '', '', '2021-09-21 11:45:04', '2021-09-21 11:45:04', '', 0, 'http://localhost/consultancy-wp/?post_type=countries&#038;p=65', 0, 'countries', '', 0),
(66, 1, '2021-09-21 11:45:24', '2021-09-21 11:45:24', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.\r\n\r\nAustralia is the only nation to govern an entire continent and its outlying islands. The mainland is the largest island and the smallest, flattest continent on Earth. It lies between 10° and 39° South latitude. The highest point on the mainland, Mount Kosciuszko, is only 2228 metres. Apart from Antarctica, Australia is the driest continent.\r\n\r\nAustralia has had one of the most outstanding economies of the world in recent years. As a high-growth, low-inflation, low interest rate economy, it is more vibrant than ever before. There is an efficient government sector, a flexible labour market and a very competitive business sector.\r\n\r\nits abundant physical resources, Australia has enjoyed a high standard of living since the nineteenth century. It has made a comparatively large investment in social infrastructure, including education, training, health and transport.', 'United Kingdom', '', 'publish', 'closed', 'closed', '', 'united-kingdom', '', '', '2021-09-21 11:45:24', '2021-09-21 11:45:24', '', 0, 'http://localhost/consultancy-wp/?post_type=countries&#038;p=66', 0, 'countries', '', 0),
(67, 1, '2021-09-21 11:46:15', '2021-09-21 11:46:15', '', 'Slider 1', '', 'publish', 'closed', 'closed', '', 'slider-1', '', '', '2021-09-21 11:46:15', '2021-09-21 11:46:15', '', 0, 'http://localhost/consultancy-wp/?post_type=sliderimages&#038;p=67', 0, 'sliderimages', '', 0),
(68, 1, '2021-09-21 11:45:49', '2021-09-21 11:45:49', '', 'Print', '', 'inherit', 'open', 'closed', '', 'print', '', '', '2021-09-21 11:45:49', '2021-09-21 11:45:49', '', 67, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/consult.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-09-21 11:45:52', '2021-09-21 11:45:52', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2021-09-21 11:45:52', '2021-09-21 11:45:52', '', 67, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-09-21 11:45:54', '2021-09-21 11:45:54', '', 'classes', '', 'inherit', 'open', 'closed', '', 'classes', '', '', '2021-09-21 11:45:54', '2021-09-21 11:45:54', '', 67, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/classes.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2021-09-21 11:46:32', '2021-09-21 11:46:32', '', 'slider2', '', 'publish', 'closed', 'closed', '', 'slider2', '', '', '2021-09-21 11:46:32', '2021-09-21 11:46:32', '', 0, 'http://localhost/consultancy-wp/?post_type=sliderimages&#038;p=71', 0, 'sliderimages', '', 0),
(72, 1, '2021-09-21 11:46:46', '2021-09-21 11:46:46', '', 'slider3', '', 'publish', 'closed', 'closed', '', 'slider3', '', '', '2021-09-21 11:46:46', '2021-09-21 11:46:46', '', 0, 'http://localhost/consultancy-wp/?post_type=sliderimages&#038;p=72', 0, 'sliderimages', '', 0),
(73, 1, '2021-09-21 11:47:48', '2021-09-21 11:47:48', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.', 'Why is the moon sometimes out during the day?', '', 'publish', 'closed', 'closed', '', 'why-is-the-moon-sometimes-out-during-the-day', '', '', '2021-09-21 11:47:48', '2021-09-21 11:47:48', '', 0, 'http://localhost/consultancy-wp/?post_type=faqs&#038;p=73', 0, 'faqs', '', 0),
(74, 1, '2021-09-21 11:48:00', '2021-09-21 11:48:00', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.', 'Whats New?', '', 'publish', 'closed', 'closed', '', 'whats-new', '', '', '2021-09-21 11:48:00', '2021-09-21 11:48:00', '', 0, 'http://localhost/consultancy-wp/?post_type=faqs&#038;p=74', 0, 'faqs', '', 0),
(75, 1, '2021-09-21 11:48:14', '2021-09-21 11:48:14', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.', 'Why US?', '', 'publish', 'closed', 'closed', '', 'why-us', '', '', '2021-09-21 11:48:14', '2021-09-21 11:48:14', '', 0, 'http://localhost/consultancy-wp/?post_type=faqs&#038;p=75', 0, 'faqs', '', 0),
(76, 1, '2021-09-21 11:48:28', '2021-09-21 11:48:28', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.', 'Apply with Us', '', 'publish', 'closed', 'closed', '', 'apply-with-us', '', '', '2021-09-21 11:48:28', '2021-09-21 11:48:28', '', 0, 'http://localhost/consultancy-wp/?post_type=faqs&#038;p=76', 0, 'faqs', '', 0),
(77, 1, '2021-09-21 11:48:42', '2021-09-21 11:48:42', 'In land area, Australia is the sixth largest nation after Russia, Canada, China, the United States of America and Brazil. It has, however, a relatively small population.', 'Which Country?', '', 'publish', 'closed', 'closed', '', 'which-country', '', '', '2021-09-21 11:48:42', '2021-09-21 11:48:42', '', 0, 'http://localhost/consultancy-wp/?post_type=faqs&#038;p=77', 0, 'faqs', '', 0),
(78, 1, '2021-09-21 11:51:58', '2021-09-21 11:51:58', 'Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.\r\n\r\nMainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.\r\n\r\nSo, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.', 'Visa Counseling', '', 'publish', 'closed', 'closed', '', 'visa-counseling', '', '', '2021-09-23 07:12:47', '2021-09-23 07:12:47', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=78', 0, 'services', '', 0),
(79, 1, '2021-09-21 11:52:20', '2021-09-21 11:52:20', 'Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.\r\n\r\nMainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.\r\n\r\nSo, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.', 'Application Processing', '', 'publish', 'closed', 'closed', '', 'application-processing', '', '', '2021-09-23 07:12:41', '2021-09-23 07:12:41', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=79', 0, 'services', '', 0),
(81, 1, '2021-09-21 11:52:36', '2021-09-21 11:52:36', 'Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.\r\n\r\nMainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.\r\n\r\nSo, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.', 'Test Preparation', '', 'publish', 'closed', 'closed', '', 'test-preparation', '', '', '2021-09-23 07:12:38', '2021-09-23 07:12:38', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=81', 0, 'services', '', 0),
(82, 1, '2021-09-21 11:52:50', '2021-09-21 11:52:50', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; font-family: Poppins, sans-serif; font-size: 16px;\">Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; font-family: Poppins, sans-serif; font-size: 16px;\">Mainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; font-family: Poppins, sans-serif; font-size: 16px;\">So, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.</p>', 'Visa Lodgement', '', 'publish', 'closed', 'closed', '', 'visa-lodgement', '', '', '2021-09-23 07:12:33', '2021-09-23 07:12:33', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=82', 0, 'services', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2021-09-21 11:53:14', '2021-09-21 11:53:14', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; color: #000000; font-family: Poppins, sans-serif;\">Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; color: #000000; font-family: Poppins, sans-serif;\">Mainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify; color: #000000; font-family: Poppins, sans-serif;\">So, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.</p>', 'Pre-Departure Guidance', '', 'publish', 'closed', 'closed', '', 'pre-departure-guidance', '', '', '2021-09-23 07:12:26', '2021-09-23 07:12:26', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=83', 0, 'services', '', 0),
(84, 1, '2021-09-21 11:53:31', '2021-09-21 11:53:31', 'Document formatting is next big thing to get success for student immigration. In documentation we mainly prepare our students according to requirements of targeted high Commission or embassies.\r\n\r\nMainly for student visas embassy looks for financial status of student’s guardian whether he/she can afford living and tuition fee in guest country. Bank statement or Education loan, Income source, Property and CA report are the main required documents and beside this medical and police reports are vital documents.\r\n\r\nSo, here we guide students, on presenting the necessary documents and also we provide all application forms required by consulate and supervise them to fill it.', 'Documentation Guide', '', 'publish', 'closed', 'closed', '', 'documentation-guide', '', '', '2021-09-23 07:11:55', '2021-09-23 07:11:55', '', 0, 'http://localhost/consultancy-wp/?post_type=services&#038;p=84', 0, 'services', '', 0),
(86, 1, '2021-09-22 06:32:41', '2021-09-22 06:32:41', '<h5 class=\"mb-4\">IELTS (International English Language Testing System)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment ztest is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.', 'IELTS', '', 'publish', 'closed', 'closed', '', 'ielts', '', '', '2021-09-22 06:32:41', '2021-09-22 06:32:41', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=86', 0, 'tests', '', 0),
(87, 1, '2021-09-22 06:33:06', '2021-09-22 06:33:06', '<h5 class=\"mb-4\">TOEFL (Test of English as a Foreign Language)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.', 'TOEFL', '', 'publish', 'closed', 'closed', '', 'toefl', '', '', '2021-09-22 06:33:06', '2021-09-22 06:33:06', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=87', 0, 'tests', '', 0),
(88, 1, '2021-09-22 06:33:28', '2021-09-22 06:33:28', '<h5 class=\"mb-4\">GMAT (Graduate Management Admission Test)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.', 'GMAT', '', 'publish', 'closed', 'closed', '', 'gmat', '', '', '2021-09-22 06:33:28', '2021-09-22 06:33:28', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=88', 0, 'tests', '', 0),
(89, 1, '2021-09-22 06:33:48', '2021-09-22 06:33:48', '<h5 class=\"mb-4\">GRE (Graduate Record Examination)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.', 'GRE', '', 'publish', 'closed', 'closed', '', 'gre', '', '', '2021-09-22 06:33:48', '2021-09-22 06:33:48', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=89', 0, 'tests', '', 0),
(90, 1, '2021-09-22 06:34:07', '2021-09-22 06:34:07', '<h5 class=\"mb-4\">SAT (Scholastic Assessment Test)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.', 'SAT', '', 'publish', 'closed', 'closed', '', 'sat', '', '', '2021-09-22 06:34:07', '2021-09-22 06:34:07', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=90', 0, 'tests', '', 0),
(91, 1, '2021-09-22 06:34:23', '2021-09-22 06:34:23', '<h5 class=\"mb-4\">PTE (Pearson Test of English)</h5>\r\nThe International English Language Testing System (IELTS) is a standardized and widely recognized English language assessment test for international education and global migration. It evaluates the English language proficiency of non-native English speakers, who wish to study in or migrate to countries, where English is the language of communication.\r\n\r\nEstablished in 1989, IELTS is the world\'s most popular English language test. This language assessment test is developed by some of the world\'s leading language experts. It is designed to evaluate your English skills in reading, writing, listening, and speaking and your effectiveness in using the language to study, work and live in an English-speaking country.', 'PTE', '', 'publish', 'closed', 'closed', '', 'pte', '', '', '2021-09-22 06:34:23', '2021-09-22 06:34:23', '', 0, 'http://localhost/consultancy-wp/?post_type=tests&#038;p=91', 0, 'tests', '', 0),
(93, 1, '2021-09-22 07:06:22', '2021-09-22 07:06:22', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-09-22 07:06:22', '2021-09-22 07:06:22', '', 0, 'http://localhost/consultancy-wp/?page_id=93', 0, 'page', '', 0),
(94, 1, '2021-09-22 07:06:22', '2021-09-22 07:06:22', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2021-09-22 07:06:22', '2021-09-22 07:06:22', '', 93, 'http://localhost/consultancy-wp/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-09-22 07:06:40', '2021-09-22 07:06:40', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-09-22 07:11:05', '2021-09-22 07:11:05', '', 0, 'http://localhost/consultancy-wp/?page_id=95', 0, 'page', '', 0),
(96, 1, '2021-09-22 07:06:40', '2021-09-22 07:06:40', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2021-09-22 07:06:40', '2021-09-22 07:06:40', '', 95, 'http://localhost/consultancy-wp/?p=96', 0, 'revision', '', 0),
(97, 1, '2021-09-22 07:06:53', '2021-09-22 07:06:53', '<!-- wp:gallery {\"ids\":[43,60,61,62,63,38],\"columns\":3,\"linkTo\":\"file\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1-300x300.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-300x204.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/america/\" class=\"wp-image-60\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-300x200.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/australia/\" class=\"wp-image-61\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada-300x169.jpg\" alt=\"\" data-id=\"62\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/canada/\" class=\"wp-image-62\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1-300x200.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/uk1/\" class=\"wp-image-63\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" data-link=\"http://localhost/consultancy-wp/testimonials/thomas-muler/attachment/21/\" class=\"wp-image-38\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-09-23 09:47:08', '2021-09-23 09:47:08', '', 0, 'http://localhost/consultancy-wp/?page_id=97', 0, 'page', '', 0),
(98, 1, '2021-09-22 07:06:53', '2021-09-22 07:06:53', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-22 07:06:53', '2021-09-22 07:06:53', '', 97, 'http://localhost/consultancy-wp/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-09-22 07:07:09', '2021-09-22 07:07:09', '', 'Introduction', '', 'publish', 'closed', 'closed', '', 'introduction', '', '', '2021-09-23 10:18:59', '2021-09-23 10:18:59', '', 0, 'http://localhost/consultancy-wp/?page_id=99', 0, 'page', '', 0),
(100, 1, '2021-09-22 07:07:09', '2021-09-22 07:07:09', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-22 07:07:09', '2021-09-22 07:07:09', '', 99, 'http://localhost/consultancy-wp/?p=100', 0, 'revision', '', 0),
(101, 1, '2021-09-22 07:07:25', '2021-09-22 07:07:25', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2021-09-22 07:07:25', '2021-09-22 07:07:25', '', 0, 'http://localhost/consultancy-wp/?page_id=101', 0, 'page', '', 0),
(102, 1, '2021-09-22 07:07:25', '2021-09-22 07:07:25', '', 'Our Team', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2021-09-22 07:07:25', '2021-09-22 07:07:25', '', 101, 'http://localhost/consultancy-wp/?p=102', 0, 'revision', '', 0),
(104, 1, '2021-09-22 07:11:01', '2021-09-22 07:11:01', '', 'breadcrumb', '', 'inherit', 'open', 'closed', '', 'breadcrumb', '', '', '2021-09-22 07:11:01', '2021-09-22 07:11:01', '', 95, 'http://localhost/consultancy-wp/wp-content/uploads/2021/09/breadcrumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2021-09-22 07:18:01', '2021-09-22 07:18:01', '<div class=\"row\">\r\n<div class=\"col-lg-12 col-md-6  mb-3\">\r\n<label>Your Name</label>\r\n[text* Name class:form-control placeholder \"Your Name\"]\r\n</div>\r\n<div class=\"col-lg-12 col-md-6  mb-3\">\r\n<label>Your Email</label>\r\n[email* Email class:form-control placeholder \"Your Email Address\"]\r\n</div>\r\n<div class=\"col-lg-12 mb-3\">\r\n<label>Subject</label>\r\n[text* Subject class:form-control placeholder \"Subject\"]\r\n</div>\r\n<div class=\"col-lg-12 mb-3\">\r\n<label>Your Message</label>\r\n[textarea* Message class:form-control id:example-text-area placeholder \"Your Message\"]\r\n</div>\r\n<div class=\"col-lg-12\">\r\n[submit \"Submit\" class:button1]\r\n</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <ngakhusisarila@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <ngakhusisarila@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2021-09-22 07:19:42', '2021-09-22 07:19:42', '', 0, 'http://localhost/consultancy-wp/?post_type=wpcf7_contact_form&#038;p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2021-09-22 08:14:21', '2021-09-22 08:14:21', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Linkedin Link', 'linkedin_link', 'publish', 'closed', 'closed', '', 'field_614ae5cc9aa5a', '', '', '2021-09-22 08:14:21', '2021-09-22 08:14:21', '', 19, 'http://localhost/consultancy-wp/?post_type=acf-field&p=106', 4, 'acf-field', '', 0),
(108, 1, '2021-09-26 06:30:33', '2021-09-22 08:22:11', '', 'BLOG', '', 'publish', 'closed', 'closed', '', '108', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=108', 24, 'nav_menu_item', '', 0),
(109, 1, '2021-09-26 06:30:33', '2021-09-22 08:22:11', '', 'ENQUIRY', '', 'publish', 'closed', 'closed', '', '109', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=109', 27, 'nav_menu_item', '', 0),
(110, 1, '2021-09-26 06:30:33', '2021-09-22 08:22:11', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=110', 26, 'nav_menu_item', '', 0),
(111, 1, '2021-09-26 06:30:33', '2021-09-22 08:22:12', '', 'GALLERY', '', 'publish', 'closed', 'closed', '', '111', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=111', 25, 'nav_menu_item', '', 0),
(112, 1, '2021-09-22 08:22:41', '2021-09-22 08:22:41', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-09-22 08:22:41', '2021-09-22 08:22:41', '', 0, 'http://localhost/consultancy-wp/?page_id=112', 0, 'page', '', 0),
(113, 1, '2021-09-22 08:22:41', '2021-09-22 08:22:41', '', 'About', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2021-09-22 08:22:41', '2021-09-22 08:22:41', '', 112, 'http://localhost/consultancy-wp/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-09-22 08:23:02', '2021-09-22 08:23:02', '', 'Study Abroad', '', 'publish', 'closed', 'closed', '', 'study-abroad', '', '', '2021-09-22 08:23:02', '2021-09-22 08:23:02', '', 0, 'http://localhost/consultancy-wp/?page_id=114', 0, 'page', '', 0),
(115, 1, '2021-09-22 08:23:02', '2021-09-22 08:23:02', '', 'Study Abroad', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-09-22 08:23:02', '2021-09-22 08:23:02', '', 114, 'http://localhost/consultancy-wp/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-09-22 08:23:23', '2021-09-22 08:23:23', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-09-22 08:23:23', '2021-09-22 08:23:23', '', 0, 'http://localhost/consultancy-wp/?page_id=116', 0, 'page', '', 0),
(117, 1, '2021-09-22 08:23:23', '2021-09-22 08:23:23', '', 'Services', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-09-22 08:23:23', '2021-09-22 08:23:23', '', 116, 'http://localhost/consultancy-wp/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-09-22 08:23:50', '2021-09-22 08:23:50', '', 'Test Preparation', '', 'publish', 'closed', 'closed', '', 'test-preparation', '', '', '2021-09-22 08:23:50', '2021-09-22 08:23:50', '', 0, 'http://localhost/consultancy-wp/?page_id=118', 0, 'page', '', 0),
(119, 1, '2021-09-22 08:23:50', '2021-09-22 08:23:50', '', 'Test Preparation', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2021-09-22 08:23:50', '2021-09-22 08:23:50', '', 118, 'http://localhost/consultancy-wp/?p=119', 0, 'revision', '', 0),
(142, 1, '2021-09-22 09:53:28', '2021-09-22 09:53:28', '[email* Email class:newsletter-box placeholder \"Subscribe to newsletter\"]\r\n[submit class:news-submit id:join-button \"Join\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <ngakhusisarila@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <ngakhusisarila@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'NewsLetter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2021-09-26 07:09:12', '2021-09-26 07:09:12', '', 0, 'http://localhost/consultancy-wp/?post_type=wpcf7_contact_form&#038;p=142', 0, 'wpcf7_contact_form', '', 0),
(143, 1, '2021-09-22 09:57:02', '2021-09-22 09:57:02', '{\n    \"consultancy::nav_menu_locations[footer]\": {\n        \"value\": -685185595347376100,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:56:31\"\n    },\n    \"nav_menu[-685185595347376100]\": {\n        \"value\": {\n            \"name\": \"footer\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:56:31\"\n    },\n    \"nav_menu_item[-7070597253028313000]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home Page\",\n            \"url\": \"http://localhost/consultancy-wp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home Page\",\n            \"nav_menu_term_id\": -685185595347376100,\n            \"_invalid\": false,\n            \"type_label\": \"Front Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:56:31\"\n    },\n    \"nav_menu_item[-3410823909067243500]\": {\n        \"value\": {\n            \"object_id\": 99,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"About Us\",\n            \"url\": \"http://localhost/consultancy-wp/introduction/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Introduction\",\n            \"nav_menu_term_id\": -685185595347376100,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:02\"\n    },\n    \"nav_menu_item[-4121081632147339300]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost/consultancy-wp/blog/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -685185595347376100,\n            \"_invalid\": false,\n            \"type_label\": \"Posts Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:02\"\n    },\n    \"nav_menu_item[-4021759836744294400]\": {\n        \"value\": {\n            \"object_id\": 93,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Contact Us\",\n            \"url\": \"http://localhost/consultancy-wp/contact-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact Us\",\n            \"nav_menu_term_id\": -685185595347376100,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '88e9e4cb-64b3-4113-86be-0afab8c0285e', '', '', '2021-09-22 09:57:02', '2021-09-22 09:57:02', '', 0, 'http://localhost/consultancy-wp/?p=143', 0, 'customize_changeset', '', 0),
(148, 1, '2021-09-22 09:57:52', '2021-09-22 09:57:52', '{\n    \"consultancy::nav_menu_locations[services]\": {\n        \"value\": -1738337976652787700,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:32\"\n    },\n    \"nav_menu[-1738337976652787700]\": {\n        \"value\": {\n            \"name\": \"test\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:32\"\n    },\n    \"nav_menu_item[-2251394096259608600]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-9113108799749003000]\": {\n        \"value\": {\n            \"object_id\": 91,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"PTE\",\n            \"url\": \"http://localhost/consultancy-wp/tests/pte/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PTE\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-9218145222031790000]\": {\n        \"value\": {\n            \"object_id\": 90,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"SAT\",\n            \"url\": \"http://localhost/consultancy-wp/tests/sat/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"SAT\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-564182559686629400]\": {\n        \"value\": {\n            \"object_id\": 89,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"GRE\",\n            \"url\": \"http://localhost/consultancy-wp/tests/gre/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"GRE\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-6578081505358303000]\": {\n        \"value\": {\n            \"object_id\": 88,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"GMAT\",\n            \"url\": \"http://localhost/consultancy-wp/tests/gmat/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"GMAT\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-5841646021245800000]\": {\n        \"value\": {\n            \"object_id\": 87,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"TOEFL\",\n            \"url\": \"http://localhost/consultancy-wp/tests/toefl/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"TOEFL\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    },\n    \"nav_menu_item[-2655325378628972500]\": {\n        \"value\": {\n            \"object_id\": 86,\n            \"object\": \"tests\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"IELTS\",\n            \"url\": \"http://localhost/consultancy-wp/tests/ielts/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"IELTS\",\n            \"nav_menu_term_id\": -1738337976652787700,\n            \"_invalid\": false,\n            \"type_label\": \"Test\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 09:57:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7cdbbb23-a74d-438b-a451-4625014049d3', '', '', '2021-09-22 09:57:52', '2021-09-22 09:57:52', '', 0, 'http://localhost/consultancy-wp/?p=148', 0, 'customize_changeset', '', 0),
(149, 1, '2021-09-22 09:57:52', '2021-09-22 09:57:52', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2021-09-22 09:57:52', '2021-09-22 09:57:52', '', 0, 'http://localhost/consultancy-wp/149/', 1, 'nav_menu_item', '', 0),
(150, 1, '2021-09-22 09:57:54', '2021-09-22 09:57:54', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2021-09-22 09:57:54', '2021-09-22 09:57:54', '', 0, 'http://localhost/consultancy-wp/150/', 2, 'nav_menu_item', '', 0),
(151, 1, '2021-09-22 09:57:55', '2021-09-22 09:57:55', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2021-09-22 09:57:55', '2021-09-22 09:57:55', '', 0, 'http://localhost/consultancy-wp/151/', 3, 'nav_menu_item', '', 0),
(152, 1, '2021-09-22 09:57:56', '2021-09-22 09:57:56', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2021-09-22 09:57:56', '2021-09-22 09:57:56', '', 0, 'http://localhost/consultancy-wp/152/', 4, 'nav_menu_item', '', 0),
(153, 1, '2021-09-22 09:57:57', '2021-09-22 09:57:57', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2021-09-22 09:57:57', '2021-09-22 09:57:57', '', 0, 'http://localhost/consultancy-wp/153/', 5, 'nav_menu_item', '', 0),
(154, 1, '2021-09-22 09:57:57', '2021-09-22 09:57:57', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2021-09-22 09:57:57', '2021-09-22 09:57:57', '', 0, 'http://localhost/consultancy-wp/154/', 6, 'nav_menu_item', '', 0),
(159, 1, '2021-09-23 07:12:28', '2021-09-23 07:12:28', '', 'Visa Lodgement', '', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2021-09-23 07:12:28', '2021-09-23 07:12:28', '', 82, 'http://localhost/consultancy-wp/?p=159', 0, 'revision', '', 0),
(160, 1, '2021-09-23 07:55:21', '2021-09-23 07:55:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-23 07:55:21', '2021-09-23 07:55:21', '', 1, 'http://localhost/consultancy-wp/?p=160', 0, 'revision', '', 0),
(161, 1, '2021-09-23 07:57:07', '2021-09-23 07:57:07', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/><figcaption>this is demo image</figcaption></figure>\n<!-- /wp:image -->', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'publish', 'open', 'open', '', 'how-to-start-a-successful-blog', '', '', '2021-09-23 08:37:56', '2021-09-23 08:37:56', '', 0, 'http://localhost/consultancy-wp/?p=161', 0, 'post', '', 0),
(162, 1, '2021-09-23 07:57:07', '2021-09-23 07:57:07', '', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-09-23 07:57:07', '2021-09-23 07:57:07', '', 161, 'http://localhost/consultancy-wp/?p=162', 0, 'revision', '', 0),
(163, 1, '2021-09-23 07:59:45', '2021-09-23 07:59:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Blog Additional', 'blog-additional', 'publish', 'closed', 'closed', '', 'group_614c335aa92b7', '', '', '2021-09-23 09:15:20', '2021-09-23 09:15:20', '', 0, 'http://localhost/consultancy-wp/?post_type=acf-field-group&#038;p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2021-09-23 07:59:45', '2021-09-23 07:59:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Author', 'author', 'publish', 'closed', 'closed', '', 'field_614c336332910', '', '', '2021-09-23 07:59:45', '2021-09-23 07:59:45', '', 163, 'http://localhost/consultancy-wp/?post_type=acf-field&p=164', 0, 'acf-field', '', 0),
(165, 1, '2021-09-23 07:59:45', '2021-09-23 07:59:45', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_614c337232911', '', '', '2021-09-23 09:15:20', '2021-09-23 09:15:20', '', 163, 'http://localhost/consultancy-wp/?post_type=acf-field&#038;p=165', 1, 'acf-field', '', 0),
(166, 1, '2021-09-23 08:03:18', '2021-09-23 08:03:18', '', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-09-23 08:03:18', '2021-09-23 08:03:18', '', 161, 'http://localhost/consultancy-wp/?p=166', 0, 'revision', '', 0),
(167, 1, '2021-09-23 08:03:47', '2021-09-23 08:03:47', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/><figcaption>this is demo image</figcaption></figure>\n<!-- /wp:image -->', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-09-23 08:03:47', '2021-09-23 08:03:47', '', 161, 'http://localhost/consultancy-wp/?p=167', 0, 'revision', '', 0),
(168, 1, '2021-09-23 08:03:50', '2021-09-23 08:03:50', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/><figcaption>this is demo image</figcaption></figure>\n<!-- /wp:image -->', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-09-23 08:03:50', '2021-09-23 08:03:50', '', 161, 'http://localhost/consultancy-wp/?p=168', 0, 'revision', '', 0),
(170, 1, '2021-09-23 08:07:56', '2021-09-23 08:07:56', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Blog 2', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'publish', 'open', 'open', '', 'blog-2', '', '', '2021-09-23 08:37:53', '2021-09-23 08:37:53', '', 0, 'http://localhost/consultancy-wp/?p=170', 0, 'post', '', 0),
(171, 1, '2021-09-23 08:07:56', '2021-09-23 08:07:56', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Blog 2', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-09-23 08:07:56', '2021-09-23 08:07:56', '', 170, 'http://localhost/consultancy-wp/?p=171', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(172, 1, '2021-09-23 08:08:02', '2021-09-23 08:08:02', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Blog 2', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-09-23 08:08:02', '2021-09-23 08:08:02', '', 170, 'http://localhost/consultancy-wp/?p=172', 0, 'revision', '', 0),
(173, 1, '2021-09-23 08:09:52', '2021-09-23 08:09:52', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'publish', 'open', 'open', '', 'top-5-mistakes-in-application-process-to-study-in-canada', '', '', '2021-09-23 08:37:30', '2021-09-23 08:37:30', '', 0, 'http://localhost/consultancy-wp/?p=173', 0, 'post', '', 0),
(174, 1, '2021-09-23 08:09:52', '2021-09-23 08:09:52', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2021-09-23 08:09:52', '2021-09-23 08:09:52', '', 173, 'http://localhost/consultancy-wp/?p=174', 0, 'revision', '', 0),
(175, 1, '2021-09-23 08:09:56', '2021-09-23 08:09:56', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2021-09-23 08:09:56', '2021-09-23 08:09:56', '', 173, 'http://localhost/consultancy-wp/?p=175', 0, 'revision', '', 0),
(176, 1, '2021-09-23 08:14:05', '2021-09-23 08:14:05', '<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'publish', 'open', 'open', '', 'top-5-mistakes-in-application-process-to-study-in-canada-2', '', '', '2021-09-23 08:35:55', '2021-09-23 08:35:55', '', 0, 'http://localhost/consultancy-wp/?p=176', 0, 'post', '', 0),
(177, 1, '2021-09-23 08:14:05', '2021-09-23 08:14:05', '<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2021-09-23 08:14:05', '2021-09-23 08:14:05', '', 176, 'http://localhost/consultancy-wp/?p=177', 0, 'revision', '', 0),
(178, 1, '2021-09-23 08:14:09', '2021-09-23 08:14:09', '<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2021-09-23 08:14:09', '2021-09-23 08:14:09', '', 176, 'http://localhost/consultancy-wp/?p=178', 0, 'revision', '', 0),
(179, 1, '2021-09-23 08:34:52', '2021-09-23 08:34:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Cover Image', 'cover_image', 'publish', 'closed', 'closed', '', 'field_614c3c139f957', '', '', '2021-09-23 08:34:52', '2021-09-23 08:34:52', '', 163, 'http://localhost/consultancy-wp/?post_type=acf-field&p=179', 2, 'acf-field', '', 0),
(180, 1, '2021-09-23 08:35:55', '2021-09-23 08:35:55', '<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2021-09-23 08:35:55', '2021-09-23 08:35:55', '', 176, 'http://localhost/consultancy-wp/?p=180', 0, 'revision', '', 0),
(181, 1, '2021-09-23 08:37:30', '2021-09-23 08:37:30', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Is it easy to write blog in 2021?</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam tempora dolore aliquam vel magni ratione! Unde magni architecto tenetur eveniet aspernatur ullam deserunt aperiam fugit perspiciatis quisquam? Aut, vitae rerum.</p>\n<!-- /wp:paragraph -->', 'Top 5 Mistakes in Application Process to Study in Canada', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2021-09-23 08:37:30', '2021-09-23 08:37:30', '', 173, 'http://localhost/consultancy-wp/?p=181', 0, 'revision', '', 0),
(182, 1, '2021-09-23 08:37:53', '2021-09-23 08:37:53', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Blog 2', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-09-23 08:37:53', '2021-09-23 08:37:53', '', 170, 'http://localhost/consultancy-wp/?p=182', 0, 'revision', '', 0),
(183, 1, '2021-09-23 08:37:56', '2021-09-23 08:37:56', '<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Learn how to start a blog in less than an hour. Become a blogger today by following the steps we used when starting our blog, which now has reached more than 20 million people and has been seen in the New York Times, TIME magazine, and on the TODAY show.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/consultancy/assets/images/banner/banner1.jpg\" alt=\"\"/><figcaption>this is demo image</figcaption></figure>\n<!-- /wp:image -->', 'How to start a Successful Blog', 'Add one piece of code to your site and Google will show ads tailored to your site\'s layout, saving you time making changes to ad code.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-09-23 08:37:56', '2021-09-23 08:37:56', '', 161, 'http://localhost/consultancy-wp/?p=183', 0, 'revision', '', 0),
(184, 1, '2021-09-23 09:46:13', '2021-09-23 09:46:13', '<!-- wp:gallery {\"ids\":[43],\"columns\":1,\"linkTo\":\"file\"} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-autosave-v1', '', '', '2021-09-23 09:46:13', '2021-09-23 09:46:13', '', 97, 'http://localhost/consultancy-wp/?p=184', 0, 'revision', '', 0),
(185, 1, '2021-09-23 09:43:22', '2021-09-23 09:43:22', '<!-- wp:gallery {\"ids\":[60,62,61,63,43],\"columns\":3,\"linkTo\":\"post\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/countries/australia/america/\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-1024x698.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/america/\" class=\"wp-image-60\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/countries/australia/canada/\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" alt=\"\" data-id=\"62\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/canada/\" class=\"wp-image-62\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/countries/australia/australia/\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-1024x683.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/australia/\" class=\"wp-image-61\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/countries/australia/uk1/\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/uk1/\" class=\"wp-image-63\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-23 09:43:22', '2021-09-23 09:43:22', '', 97, 'http://localhost/consultancy-wp/?p=185', 0, 'revision', '', 0),
(186, 1, '2021-09-23 09:45:02', '2021-09-23 09:45:02', '<!-- wp:gallery {\"ids\":[60,62,61,63,43],\"columns\":3,\"linkTo\":\"file\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-1024x698.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/america/\" class=\"wp-image-60\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" alt=\"\" data-id=\"62\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/canada/\" class=\"wp-image-62\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-1024x683.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/australia/\" class=\"wp-image-61\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/uk1/\" class=\"wp-image-63\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-23 09:45:02', '2021-09-23 09:45:02', '', 97, 'http://localhost/consultancy-wp/?p=186', 0, 'revision', '', 0),
(187, 1, '2021-09-23 09:46:38', '2021-09-23 09:46:38', '<!-- wp:gallery {\"ids\":[43,60,61,62,63,38],\"columns\":3,\"linkTo\":\"file\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-1024x698.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/america/\" class=\"wp-image-60\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-1024x683.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/australia/\" class=\"wp-image-61\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" alt=\"\" data-id=\"62\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/canada/\" class=\"wp-image-62\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/uk1/\" class=\"wp-image-63\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" data-link=\"http://localhost/consultancy-wp/testimonials/thomas-muler/attachment/21/\" class=\"wp-image-38\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-23 09:46:38', '2021-09-23 09:46:38', '', 97, 'http://localhost/consultancy-wp/?p=187', 0, 'revision', '', 0),
(188, 1, '2021-09-23 09:47:08', '2021-09-23 09:47:08', '<!-- wp:gallery {\"ids\":[43,60,61,62,63,38],\"columns\":3,\"linkTo\":\"file\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1-300x300.jpg\" alt=\"\" data-id=\"43\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/team1.jpg\" data-link=\"http://localhost/consultancy-wp/teams/thomas-muller/team1/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-300x204.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/america-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/america/\" class=\"wp-image-60\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-300x200.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/australia-scaled.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/australia/\" class=\"wp-image-61\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada-300x169.jpg\" alt=\"\" data-id=\"62\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/canada.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/canada/\" class=\"wp-image-62\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1-300x200.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/uk1.jpg\" data-link=\"http://localhost/consultancy-wp/countries/australia/uk1/\" class=\"wp-image-63\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\"><img src=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/consultancy-wp/wp-content/uploads/2021/09/21.jpg\" data-link=\"http://localhost/consultancy-wp/testimonials/thomas-muler/attachment/21/\" class=\"wp-image-38\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-23 09:47:08', '2021-09-23 09:47:08', '', 97, 'http://localhost/consultancy-wp/?p=188', 0, 'revision', '', 0),
(189, 1, '2021-09-23 09:50:21', '2021-09-23 09:50:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"page-introduction.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Us Additional', 'about-us-additional', 'publish', 'closed', 'closed', '', 'group_614c4d8918653', '', '', '2021-09-23 10:09:18', '2021-09-23 10:09:18', '', 0, 'http://localhost/consultancy-wp/?post_type=acf-field-group&#038;p=189', 0, 'acf-field-group', '', 0),
(190, 1, '2021-09-23 09:50:21', '2021-09-23 09:50:21', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Our Vision', 'our_vision', 'publish', 'closed', 'closed', '', 'field_614c4d926c78f', '', '', '2021-09-23 09:50:21', '2021-09-23 09:50:21', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=190', 0, 'acf-field', '', 0),
(191, 1, '2021-09-23 09:50:22', '2021-09-23 09:50:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Our Mission', 'our_mission', 'publish', 'closed', 'closed', '', 'field_614c4da06c790', '', '', '2021-09-23 09:50:22', '2021-09-23 09:50:22', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=191', 1, 'acf-field', '', 0),
(192, 1, '2021-09-23 09:50:22', '2021-09-23 09:50:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Message', 'message', 'publish', 'closed', 'closed', '', 'field_614c4dbb6c791', '', '', '2021-09-23 09:50:22', '2021-09-23 09:50:22', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=192', 2, 'acf-field', '', 0),
(193, 1, '2021-09-23 09:50:22', '2021-09-23 09:50:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Owner Image', 'owner_image', 'publish', 'closed', 'closed', '', 'field_614c4dc76c792', '', '', '2021-09-23 09:50:22', '2021-09-23 09:50:22', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=193', 3, 'acf-field', '', 0),
(194, 1, '2021-09-23 09:52:15', '2021-09-23 09:52:15', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-23 09:52:15', '2021-09-23 09:52:15', '', 99, 'http://localhost/consultancy-wp/?p=194', 0, 'revision', '', 0),
(195, 1, '2021-09-23 09:57:10', '2021-09-23 09:57:10', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-23 09:57:10', '2021-09-23 09:57:10', '', 99, 'http://localhost/consultancy-wp/?p=195', 0, 'revision', '', 0),
(196, 1, '2021-09-23 10:09:18', '2021-09-23 10:09:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Quote', 'quote', 'publish', 'closed', 'closed', '', 'field_614c522733502', '', '', '2021-09-23 10:09:18', '2021-09-23 10:09:18', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=196', 4, 'acf-field', '', 0),
(197, 1, '2021-09-23 10:09:18', '2021-09-23 10:09:18', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_614c523533503', '', '', '2021-09-23 10:09:18', '2021-09-23 10:09:18', '', 189, 'http://localhost/consultancy-wp/?post_type=acf-field&p=197', 5, 'acf-field', '', 0),
(198, 1, '2021-09-23 10:17:45', '2021-09-23 10:17:45', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-23 10:17:45', '2021-09-23 10:17:45', '', 99, 'http://localhost/consultancy-wp/?p=198', 0, 'revision', '', 0),
(199, 1, '2021-09-23 10:18:59', '2021-09-23 10:18:59', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-23 10:18:59', '2021-09-23 10:18:59', '', 99, 'http://localhost/consultancy-wp/?p=199', 0, 'revision', '', 0),
(204, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=204', 4, 'nav_menu_item', '', 0),
(205, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:34', ' ', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=205', 3, 'nav_menu_item', '', 0),
(206, 1, '2021-09-26 06:30:32', '2021-09-24 06:38:39', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=206', 12, 'nav_menu_item', '', 0),
(207, 1, '2021-09-26 06:30:32', '2021-09-24 06:38:40', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=207', 14, 'nav_menu_item', '', 0),
(208, 1, '2021-09-26 06:30:32', '2021-09-24 06:38:39', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=208', 11, 'nav_menu_item', '', 0),
(210, 1, '2021-09-26 06:30:32', '2021-09-24 06:38:42', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=210', 16, 'nav_menu_item', '', 0),
(211, 1, '2021-09-26 06:30:32', '2021-09-24 06:38:41', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=211', 15, 'nav_menu_item', '', 0),
(212, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:37', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=212', 6, 'nav_menu_item', '', 0),
(213, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:38', ' ', '', '', 'publish', 'closed', 'closed', '', '213', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=213', 9, 'nav_menu_item', '', 0),
(214, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:37', ' ', '', '', 'publish', 'closed', 'closed', '', '214', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=214', 7, 'nav_menu_item', '', 0),
(215, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:37', ' ', '', '', 'publish', 'closed', 'closed', '', '215', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=215', 8, 'nav_menu_item', '', 0),
(216, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:42', ' ', '', '', 'publish', 'closed', 'closed', '', '216', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=216', 19, 'nav_menu_item', '', 0),
(217, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:42', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=217', 20, 'nav_menu_item', '', 0),
(218, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:43', ' ', '', '', 'publish', 'closed', 'closed', '', '218', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=218', 21, 'nav_menu_item', '', 0),
(219, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:43', ' ', '', '', 'publish', 'closed', 'closed', '', '219', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=219', 22, 'nav_menu_item', '', 0),
(220, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:44', ' ', '', '', 'publish', 'closed', 'closed', '', '220', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=220', 23, 'nav_menu_item', '', 0),
(221, 1, '2021-09-26 06:30:33', '2021-09-24 06:38:44', ' ', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2021-09-26 06:30:33', '2021-09-26 06:30:33', '', 0, 'http://localhost/consultancy-wp/?p=221', 18, 'nav_menu_item', '', 0),
(222, 1, '2021-09-26 06:30:31', '2021-09-24 06:38:33', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=222', 1, 'nav_menu_item', '', 0),
(223, 1, '2021-09-24 06:38:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-24 06:38:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/consultancy-wp/?p=223', 1, 'nav_menu_item', '', 0),
(224, 1, '2021-09-24 07:22:01', '2021-09-24 07:22:01', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".sub-menu {\\n\\tbackground: #fff;\\n}\\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\\n\\tbackground: transparent;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-24 07:22:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d6800c0-389e-4561-a421-d40c0361c8a3', '', '', '2021-09-24 07:22:01', '2021-09-24 07:22:01', '', 0, 'http://localhost/consultancy-wp/9d6800c0-389e-4561-a421-d40c0361c8a3/', 0, 'customize_changeset', '', 0),
(225, 1, '2021-09-24 07:22:01', '2021-09-24 07:22:01', '', 'consultancy', '', 'publish', 'closed', 'closed', '', 'consultancy', '', '', '2021-09-26 05:39:24', '2021-09-26 05:39:24', '', 0, 'http://localhost/consultancy-wp/consultancy/', 0, 'custom_css', '', 0),
(226, 1, '2021-09-24 07:22:01', '2021-09-24 07:22:01', '.sub-menu {\n	background: #fff;\n}\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\n	background: transparent;\n}', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-24 07:22:01', '2021-09-24 07:22:01', '', 225, 'http://localhost/consultancy-wp/?p=226', 0, 'revision', '', 0),
(227, 1, '2021-09-24 07:23:32', '2021-09-24 07:23:32', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".sub-menu {\\n\\tbackground: #CD0E15;\\n}\\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\\n\\tbackground: #fff;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-24 07:23:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec9c9f57-f222-4629-8ba3-0f9ffe606422', '', '', '2021-09-24 07:23:32', '2021-09-24 07:23:32', '', 0, 'http://localhost/consultancy-wp/?p=227', 0, 'customize_changeset', '', 0),
(228, 1, '2021-09-24 07:23:33', '2021-09-24 07:23:33', '.sub-menu {\n	background: #CD0E15;\n}\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\n	background: #fff;\n}', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-24 07:23:33', '2021-09-24 07:23:33', '', 225, 'http://localhost/consultancy-wp/?p=228', 0, 'revision', '', 0),
(229, 1, '2021-09-24 07:32:16', '2021-09-24 07:32:16', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".sub-menu {\\n\\tbackground: #CD0E15;\\n\\tcolor: #fff;\\n}\\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\\n\\tbackground: #fff;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-24 07:32:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfa6dfa4-aac3-42e5-befc-7e1953dd8d98', '', '', '2021-09-24 07:32:16', '2021-09-24 07:32:16', '', 0, 'http://localhost/consultancy-wp/bfa6dfa4-aac3-42e5-befc-7e1953dd8d98/', 0, 'customize_changeset', '', 0),
(230, 1, '2021-09-24 07:32:16', '2021-09-24 07:32:16', '.sub-menu {\n	background: #CD0E15;\n	color: #fff;\n}\n.sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\n	background: #fff;\n}', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-24 07:32:16', '2021-09-24 07:32:16', '', 225, 'http://localhost/consultancy-wp/?p=230', 0, 'revision', '', 0),
(231, 1, '2021-09-24 07:38:32', '2021-09-24 07:38:32', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".sub-menu {\\n\\tbackground: #CD0E15;\\n\\tcolor: #fff;\\n}\\n.nav-link {\\n\\tcolor: #fff !important;\\n}\\n/* .sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\\n\\tbackground: #fff;\\n} */\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-24 07:38:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f175710e-d5a1-4069-8c9c-795228177875', '', '', '2021-09-24 07:38:32', '2021-09-24 07:38:32', '', 0, 'http://localhost/consultancy-wp/?p=231', 0, 'customize_changeset', '', 0),
(232, 1, '2021-09-24 07:38:32', '2021-09-24 07:38:32', '.sub-menu {\n	background: #CD0E15;\n	color: #fff;\n}\n.nav-link {\n	color: #fff !important;\n}\n/* .sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\n	background: #fff;\n} */', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-24 07:38:32', '2021-09-24 07:38:32', '', 225, 'http://localhost/consultancy-wp/?p=232', 0, 'revision', '', 0),
(233, 1, '2021-09-26 06:30:32', '2021-09-24 07:42:10', '', 'Test Preparation Classes', '', 'publish', 'closed', 'closed', '', 'test-preparation-classes', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=233', 13, 'nav_menu_item', '', 0),
(234, 1, '2021-09-26 06:30:31', '2021-09-24 08:10:51', '', 'STUDY ABROAD', '', 'publish', 'closed', 'closed', '', 'study-abroad', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=234', 5, 'nav_menu_item', '', 0),
(235, 1, '2021-09-26 06:30:31', '2021-09-24 08:10:52', '', 'SERVICES', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=235', 10, 'nav_menu_item', '', 0),
(236, 1, '2021-09-26 06:30:32', '2021-09-24 08:10:53', '', 'TEST PREPARATION', '', 'publish', 'closed', 'closed', '', 'test-preparation', '', '', '2021-09-26 06:30:32', '2021-09-26 06:30:32', '', 0, 'http://localhost/consultancy-wp/?p=236', 17, 'nav_menu_item', '', 0),
(237, 1, '2021-09-26 06:30:31', '2021-09-24 08:10:50', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us-3', '', '', '2021-09-26 06:30:31', '2021-09-26 06:30:31', '', 0, 'http://localhost/consultancy-wp/?p=237', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(238, 1, '2021-09-24 08:17:33', '2021-09-24 08:17:33', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".sub-menu {\\n\\tbackground: #CD0E15;\\n\\tcolor: #fff;\\n}\\n.sub-item {\\n\\tcolor: #fff !important;\\n}\\n/* .sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\\n\\tbackground: #fff;\\n} */\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-24 08:17:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2996cec-aa45-4e51-983a-97590ff9dcd5', '', '', '2021-09-24 08:17:33', '2021-09-24 08:17:33', '', 0, 'http://localhost/consultancy-wp/a2996cec-aa45-4e51-983a-97590ff9dcd5/', 0, 'customize_changeset', '', 0),
(239, 1, '2021-09-24 08:17:34', '2021-09-24 08:17:34', '.sub-menu {\n	background: #CD0E15;\n	color: #fff;\n}\n.sub-item {\n	color: #fff !important;\n}\n/* .sub-menu li > a:hover, .sub-menu li > a:focus, .sub-menu li.submenu-open > a {\n	background: #fff;\n} */', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-24 08:17:34', '2021-09-24 08:17:34', '', 225, 'http://localhost/consultancy-wp/?p=239', 0, 'revision', '', 0),
(240, 1, '2021-09-26 05:38:39', '2021-09-26 05:38:39', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-26 05:38:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e3a33a6-917f-40e2-be3d-cf1b37aa7ae8', '', '', '2021-09-26 05:38:39', '2021-09-26 05:38:39', '', 0, 'http://localhost/consultancy-wp/9e3a33a6-917f-40e2-be3d-cf1b37aa7ae8/', 0, 'customize_changeset', '', 0),
(241, 1, '2021-09-26 05:38:39', '2021-09-26 05:38:39', '', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-26 05:38:39', '2021-09-26 05:38:39', '', 225, 'http://localhost/consultancy-wp/?p=241', 0, 'revision', '', 0),
(242, 1, '2021-09-26 05:39:17', '2021-09-26 05:39:17', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \".enquiry > a.nav-link {\\n    color: white;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-26 05:39:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd84cdb36-43de-4d9c-809b-e92cc703304a', '', '', '2021-09-26 05:39:17', '2021-09-26 05:39:17', '', 0, 'http://localhost/consultancy-wp/d84cdb36-43de-4d9c-809b-e92cc703304a/', 0, 'customize_changeset', '', 0),
(243, 1, '2021-09-26 05:39:17', '2021-09-26 05:39:17', '.enquiry > a.nav-link {\n    color: white;\n}', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-26 05:39:17', '2021-09-26 05:39:17', '', 225, 'http://localhost/consultancy-wp/?p=243', 0, 'revision', '', 0),
(244, 1, '2021-09-26 05:39:24', '2021-09-26 05:39:24', '{\n    \"custom_css[consultancy]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-26 05:39:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ce232f5-dfd1-4a3b-b8da-e42f0801f284', '', '', '2021-09-26 05:39:24', '2021-09-26 05:39:24', '', 0, 'http://localhost/consultancy-wp/2ce232f5-dfd1-4a3b-b8da-e42f0801f284/', 0, 'customize_changeset', '', 0),
(245, 1, '2021-09-26 05:39:24', '2021-09-26 05:39:24', '', 'consultancy', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-09-26 05:39:24', '2021-09-26 05:39:24', '', 225, 'http://localhost/consultancy-wp/?p=245', 0, 'revision', '', 0),
(246, 1, '2021-09-26 06:46:56', '2021-09-26 06:46:56', ' ', '', '', 'publish', 'closed', 'closed', '', '246', '', '', '2021-09-26 06:46:56', '2021-09-26 06:46:56', '', 0, 'http://localhost/consultancy-wp/?p=246', 1, 'nav_menu_item', '', 0),
(247, 1, '2021-09-26 06:46:57', '2021-09-26 06:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '247', '', '', '2021-09-26 06:46:57', '2021-09-26 06:46:57', '', 0, 'http://localhost/consultancy-wp/?p=247', 3, 'nav_menu_item', '', 0),
(248, 1, '2021-09-26 06:46:57', '2021-09-26 06:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2021-09-26 06:46:57', '2021-09-26 06:46:57', '', 0, 'http://localhost/consultancy-wp/?p=248', 4, 'nav_menu_item', '', 0),
(249, 1, '2021-09-26 06:46:56', '2021-09-26 06:46:56', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-09-26 06:46:56', '2021-09-26 06:46:56', '', 0, 'http://localhost/consultancy-wp/?p=249', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Photography', 'photography', 0),
(2, 'header', 'header', 0),
(3, 'footer', 'footer', 0),
(4, 'test', 'test', 0),
(5, 'Study Abroad', 'study-abroad', 0),
(6, 'Preparations', 'preparations', 0),
(7, 'Australlia', 'australlia', 0),
(8, 'Travel', 'travel', 0),
(9, 'travel', 'travel', 0),
(10, 'photography', 'photography', 0),
(11, 'Canada', 'canada', 0),
(12, 'Australia', 'australia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(108, 2, 0),
(109, 2, 0),
(110, 2, 0),
(111, 2, 0),
(149, 4, 0),
(150, 4, 0),
(151, 4, 0),
(152, 4, 0),
(153, 4, 0),
(154, 4, 0),
(161, 1, 0),
(161, 5, 0),
(161, 6, 0),
(170, 1, 0),
(170, 5, 0),
(170, 9, 0),
(170, 10, 0),
(173, 5, 0),
(173, 7, 0),
(173, 9, 0),
(173, 11, 0),
(173, 12, 0),
(176, 1, 0),
(176, 5, 0),
(204, 2, 0),
(205, 2, 0),
(206, 2, 0),
(207, 2, 0),
(208, 2, 0),
(210, 2, 0),
(211, 2, 0),
(212, 2, 0),
(213, 2, 0),
(214, 2, 0),
(215, 2, 0),
(216, 2, 0),
(217, 2, 0),
(218, 2, 0),
(219, 2, 0),
(220, 2, 0),
(221, 2, 0),
(222, 2, 0),
(233, 2, 0),
(234, 2, 0),
(235, 2, 0),
(236, 2, 0),
(237, 2, 0),
(246, 3, 0),
(247, 3, 0),
(248, 3, 0),
(249, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 27),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'post_tag', '', 0, 4),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bb3b162bf2a8f5b5fd966e06364e24300adf7197c7df117a02767561bb9e779e\";a:4:{s:10:\"expiration\";i:1633416398;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1632206798;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1632391028'),
(20, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:\"add-post-type-teams\";i:1;s:26:\"add-post-type-testimonials\";i:2;s:26:\"add-post-type-sliderimages\";i:3;s:22:\"add-post-type-partners\";i:4;s:18:\"add-post-type-faqs\";i:5;s:12:\"add-post_tag\";}'),
(22, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_media_library_mode', 'grid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BuCHWw3E6Kozakh/gDhjCYsH7i4z6m/', 'admin', 'ngakhusisarila@gmail.com', 'http://localhost/consultancy-wp', '2021-09-21 06:45:52', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

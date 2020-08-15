-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 11:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharmal`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(25, 84, 'ActionScheduler', '', '', '', '2019-05-08 14:09:33', '2019-05-08 14:09:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(28, 85, 'ActionScheduler', '', '', '', '2019-05-08 14:09:34', '2019-05-08 14:09:34', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(29, 84, 'ActionScheduler', '', '', '', '2020-01-25 19:23:40', '2020-01-25 19:23:40', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(30, 84, 'ActionScheduler', '', '', '', '2020-01-25 19:23:41', '2020-01-25 19:23:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(31, 86, 'ActionScheduler', '', '', '', '2020-01-25 19:23:42', '2020-01-25 19:23:42', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(32, 85, 'ActionScheduler', '', '', '', '2020-01-25 19:24:46', '2020-01-25 19:24:46', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(33, 85, 'ActionScheduler', '', '', '', '2020-01-25 19:24:48', '2020-01-25 19:24:48', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(34, 87, 'ActionScheduler', '', '', '', '2020-01-25 19:24:48', '2020-01-25 19:24:48', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
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
(1, 'siteurl', 'http://localhost:81/wp/bharmal/dev', 'yes'),
(2, 'home', 'http://localhost:81/wp/bharmal/dev', 'yes'),
(3, 'blogname', 'Bharmal Brothers', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'akshaychidre0@gmail.com', 'yes'),
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
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:165:{s:14:\"sitemap.xml.gz\";s:60:\"index.php?aiosp_sitemap_gzipped=1&aiosp_sitemap_path=root.gz\";s:25:\"sitemap_(.+)_(\\d+).xml.gz\";s:74:\"index.php?aiosp_sitemap_path=$matches[1].gz&aiosp_sitemap_page=$matches[2]\";s:19:\"sitemap_(.+).xml.gz\";s:43:\"index.php?aiosp_sitemap_path=$matches[1].gz\";s:11:\"sitemap.xml\";s:33:\"index.php?aiosp_sitemap_path=root\";s:22:\"sitemap_(.+)_(\\d+).xml\";s:71:\"index.php?aiosp_sitemap_path=$matches[1]&aiosp_sitemap_page=$matches[2]\";s:16:\"sitemap_(.+).xml\";s:40:\"index.php?aiosp_sitemap_path=$matches[1]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?cb_gallery_types=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?cb_gallery_types=$matches[1]&feed=$matches[2]\";s:24:\"gallery/([^/]+)/embed/?$\";s:49:\"index.php?cb_gallery_types=$matches[1]&embed=true\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?cb_gallery_types=$matches[1]&paged=$matches[2]\";s:18:\"gallery/([^/]+)/?$\";s:38:\"index.php?cb_gallery_types=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:1;s:20:\"cb-gallery/index.php\";i:2;s:21:\"cb-snippets/index.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:5;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:6;s:35:\"nav-menu-images/nav-menu-images.php\";i:7;s:49:\"webhook-netlify-deploy/netlify-webhook-deploy.php\";i:8;s:41:\"widget-css-classes/widget-css-classes.php\";i:9;s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";i:10;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bharmal', 'yes'),
(41, 'stylesheet', 'bharmal', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:8:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:76:\"<a href=\"tel:9850212720\"><i class=\"fas fa-phone-square\"></i>985 021 2720</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:5:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:163:\"<i class=\"fas fa-map-marker\"></i>\r\n<h4 class=\"et_pb_module_header\">Address</h4>\r\n1119, Tulshibaug Internal Rd,\r\nTulshibaug, Budhwar Peth,\r\nPune, Maharashtra 411002\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;s:7:\"classes\";s:8:\"col-lg-4\";}i:5;a:5:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:121:\"<i class=\"fas fa-phone\"></i>\r\n<h4 class=\"et_pb_module_header\">Call Us</h4>\r\n<a href=\"tel:9850212720\">+91 985 021 2720</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;s:7:\"classes\";s:8:\"col-lg-4\";}i:6;a:5:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:144:\"<i class=\"fas fa-envelope\"></i>\r\n<h4 class=\"et_pb_module_header\">Email Us</h4>\r\n<a href=\"mailto:hussainjumi@gmail.com\">hussainjumi@gmail.com</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;s:7:\"classes\";s:8:\"col-lg-4\";}i:7;a:5:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:468:\"<i class=\"fas fa-phone\"></i><a href=\"tel:985 0212720\">+91 985 021 2720</a><i class=\"fas fa-envelope\"></i><a href=\"mailto:hussainjumi@gmail.com\" class=\"mail\">hussainjumi@gmail.com</a><div class=\"social-icon\"><a href=\"\" target=\"_blank\"><i class=\"fab fa-facebook-f\"></i></a><a href=\"\" target=\"_blank\"><i class=\"fab fa-instagram\"></i></a><a href=\"\" target=\"_blank\"><i class=\"fab fa-twitter\"></i></a><a href=\"\" target=\"_blank\"><i class=\"fab fa-google-plus-g\"></i></a></div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '68', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"aiosp_manage_seo\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"content-sidebar\";a:0:{}s:14:\"header-sidebar\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:14:\"footer-sidebar\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:6:\"text-7\";}s:15:\"contact-sidebar\";a:3:{i:0;s:6:\"text-4\";i:1;s:6:\"text-5\";i:2;s:6:\"text-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:8:\"nav_menu\";i:2;s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:13:{i:1579982879;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1579983823;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1579984832;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579996800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580017232;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580017247;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580017248;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580020787;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580042387;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580042397;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580053187;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580904000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(117, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579980816;s:7:\"checked\";a:1:{s:7:\"bharmal\";s:3:\"2.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(124, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555566198;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(125, 'current_theme', 'bharmal', 'yes'),
(126, 'theme_mods_bharmal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"sitemap\";i:0;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(129, 'WPLANG', '', 'yes'),
(130, 'new_admin_email', 'akshaychidre0@gmail.com', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'cb_gallery', 'a:3:{s:21:\"applicable_post_types\";a:1:{i:3;a:1:{i:0;s:4:\"page\";}}s:21:\"applicable_taxonomies\";a:0:{}s:21:\"applicable_user_roles\";a:0:{}}', 'yes'),
(156, 'cb_gallery_types_children', 'a:0:{}', 'yes'),
(164, 'aioseop_options', 'a:81:{s:16:\"aiosp_home_title\";N;s:22:\"aiosp_home_description\";s:0:\"\";s:20:\"aiosp_togglekeywords\";i:1;s:19:\"aiosp_home_keywords\";N;s:26:\"aiosp_use_static_home_info\";i:0;s:9:\"aiosp_can\";i:1;s:30:\"aiosp_no_paged_canonical_links\";i:0;s:31:\"aiosp_customize_canonical_links\";i:0;s:20:\"aiosp_rewrite_titles\";i:1;s:20:\"aiosp_force_rewrites\";i:1;s:24:\"aiosp_use_original_title\";i:0;s:28:\"aiosp_home_page_title_format\";s:12:\"%page_title%\";s:23:\"aiosp_page_title_format\";s:27:\"%page_title% | %blog_title%\";s:23:\"aiosp_post_title_format\";s:27:\"%post_title% | %blog_title%\";s:27:\"aiosp_category_title_format\";s:31:\"%category_title% | %blog_title%\";s:26:\"aiosp_archive_title_format\";s:30:\"%archive_title% | %blog_title%\";s:23:\"aiosp_date_title_format\";s:21:\"%date% | %blog_title%\";s:25:\"aiosp_author_title_format\";s:23:\"%author% | %blog_title%\";s:22:\"aiosp_tag_title_format\";s:20:\"%tag% | %blog_title%\";s:25:\"aiosp_search_title_format\";s:23:\"%search% | %blog_title%\";s:24:\"aiosp_description_format\";s:13:\"%description%\";s:22:\"aiosp_404_title_format\";s:33:\"Nothing found for %request_words%\";s:18:\"aiosp_paged_format\";s:14:\" - Part %page%\";s:17:\"aiosp_enablecpost\";s:2:\"on\";s:17:\"aiosp_cpostactive\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_cpostadvanced\";i:0;s:18:\"aiosp_cpostnoindex\";a:0:{}s:19:\"aiosp_cpostnofollow\";a:0:{}s:17:\"aiosp_cposttitles\";i:0;s:21:\"aiosp_posttypecolumns\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_google_verify\";s:0:\"\";s:17:\"aiosp_bing_verify\";s:0:\"\";s:22:\"aiosp_pinterest_verify\";s:0:\"\";s:22:\"aiosp_google_publisher\";s:0:\"\";s:28:\"aiosp_google_disable_profile\";i:0;s:29:\"aiosp_google_sitelinks_search\";N;s:26:\"aiosp_google_set_site_name\";N;s:30:\"aiosp_google_specify_site_name\";N;s:28:\"aiosp_google_author_advanced\";i:0;s:28:\"aiosp_google_author_location\";a:1:{i:0;s:3:\"all\";}s:29:\"aiosp_google_enable_publisher\";s:2:\"on\";s:30:\"aiosp_google_specify_publisher\";N;s:25:\"aiosp_google_analytics_id\";N;s:25:\"aiosp_ga_advanced_options\";s:2:\"on\";s:15:\"aiosp_ga_domain\";N;s:21:\"aiosp_ga_multi_domain\";i:0;s:21:\"aiosp_ga_addl_domains\";N;s:21:\"aiosp_ga_anonymize_ip\";N;s:28:\"aiosp_ga_display_advertising\";N;s:22:\"aiosp_ga_exclude_users\";N;s:29:\"aiosp_ga_track_outbound_links\";i:0;s:25:\"aiosp_ga_link_attribution\";i:0;s:27:\"aiosp_ga_enhanced_ecommerce\";i:0;s:20:\"aiosp_use_categories\";i:0;s:26:\"aiosp_use_tags_as_keywords\";i:1;s:32:\"aiosp_dynamic_postspage_keywords\";i:1;s:22:\"aiosp_category_noindex\";i:1;s:26:\"aiosp_archive_date_noindex\";i:1;s:28:\"aiosp_archive_author_noindex\";i:1;s:18:\"aiosp_tags_noindex\";i:0;s:20:\"aiosp_search_noindex\";i:0;s:17:\"aiosp_404_noindex\";i:0;s:17:\"aiosp_tax_noindex\";a:0:{}s:23:\"aiosp_paginated_noindex\";i:0;s:24:\"aiosp_paginated_nofollow\";i:0;s:27:\"aiosp_generate_descriptions\";i:0;s:18:\"aiosp_skip_excerpt\";i:0;s:20:\"aiosp_run_shortcodes\";i:0;s:33:\"aiosp_hide_paginated_descriptions\";i:0;s:32:\"aiosp_dont_truncate_descriptions\";i:0;s:19:\"aiosp_schema_markup\";i:1;s:20:\"aiosp_unprotect_meta\";i:0;s:33:\"aiosp_redirect_attachement_parent\";i:0;s:14:\"aiosp_ex_pages\";s:0:\"\";s:20:\"aiosp_post_meta_tags\";s:0:\"\";s:20:\"aiosp_page_meta_tags\";s:0:\"\";s:21:\"aiosp_front_meta_tags\";s:0:\"\";s:20:\"aiosp_home_meta_tags\";s:0:\"\";s:12:\"aiosp_do_log\";N;s:19:\"last_active_version\";s:3:\"2.5\";s:7:\"modules\";a:1:{s:29:\"aiosp_feature_manager_options\";a:7:{s:36:\"aiosp_feature_manager_enable_sitemap\";s:2:\"on\";s:38:\"aiosp_feature_manager_enable_opengraph\";s:0:\"\";s:35:\"aiosp_feature_manager_enable_robots\";s:0:\"\";s:40:\"aiosp_feature_manager_enable_file_editor\";s:0:\"\";s:46:\"aiosp_feature_manager_enable_importer_exporter\";s:0:\"\";s:39:\"aiosp_feature_manager_enable_bad_robots\";s:0:\"\";s:40:\"aiosp_feature_manager_enable_performance\";s:2:\"on\";}}}', 'yes'),
(175, 'category_children', 'a:0:{}', 'yes'),
(197, 'WCSSC_options', 'a:9:{s:7:\"show_id\";b:0;s:4:\"type\";i:1;s:15:\"defined_classes\";a:0:{}s:11:\"show_number\";b:1;s:13:\"show_location\";b:1;s:12:\"show_evenodd\";b:1;s:17:\"fix_widget_params\";b:0;s:13:\"filter_unique\";b:0;s:17:\"translate_classes\";b:0;}', 'yes'),
(198, 'WCSSC_db_version', '1.5.2.1', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1555701705;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(231, 'woocommerce_store_address', '1119, Tulshibaug Internal Rd, Tulshibaug, Budhwar Peth, Pune,', 'yes'),
(232, 'woocommerce_store_address_2', '1119, Tulshibaug Internal Rd, Tulshibaug, Budhwar Peth, Pune,', 'yes'),
(233, 'woocommerce_store_city', 'pune', 'yes'),
(234, 'woocommerce_default_country', 'IN:MH', 'yes'),
(235, 'woocommerce_store_postcode', '411002', 'yes'),
(236, 'woocommerce_allowed_countries', 'all', 'yes'),
(237, 'woocommerce_all_except_countries', '', 'yes'),
(238, 'woocommerce_specific_allowed_countries', '', 'yes'),
(239, 'woocommerce_ship_to_countries', '', 'yes'),
(240, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(241, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(242, 'woocommerce_calc_taxes', 'no', 'yes'),
(243, 'woocommerce_enable_coupons', 'yes', 'yes'),
(244, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(245, 'woocommerce_currency', 'INR', 'yes'),
(246, 'woocommerce_currency_pos', 'left', 'yes'),
(247, 'woocommerce_price_thousand_sep', ',', 'yes'),
(248, 'woocommerce_price_decimal_sep', '.', 'yes'),
(249, 'woocommerce_price_num_decimals', '2', 'yes'),
(250, 'woocommerce_shop_page_id', '10', 'yes'),
(251, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(252, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(253, 'woocommerce_placeholder_image', '30', 'yes'),
(254, 'woocommerce_weight_unit', 'kg', 'yes'),
(255, 'woocommerce_dimension_unit', 'cm', 'yes'),
(256, 'woocommerce_enable_reviews', 'yes', 'yes'),
(257, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(258, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(259, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(260, 'woocommerce_review_rating_required', 'yes', 'no'),
(261, 'woocommerce_manage_stock', 'yes', 'yes'),
(262, 'woocommerce_hold_stock_minutes', '60', 'no'),
(263, 'woocommerce_notify_low_stock', 'yes', 'no'),
(264, 'woocommerce_notify_no_stock', 'yes', 'no'),
(265, 'woocommerce_stock_email_recipient', 'akshaychidre0@gmail.com', 'no'),
(266, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(267, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(268, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(269, 'woocommerce_stock_format', '', 'yes'),
(270, 'woocommerce_file_download_method', 'force', 'no'),
(271, 'woocommerce_downloads_require_login', 'no', 'no'),
(272, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(273, 'woocommerce_prices_include_tax', 'no', 'yes'),
(274, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(275, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(276, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(277, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(278, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(279, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(280, 'woocommerce_price_display_suffix', '', 'yes'),
(281, 'woocommerce_tax_total_display', 'itemized', 'no'),
(282, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(283, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(284, 'woocommerce_ship_to_destination', 'billing', 'no'),
(285, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(286, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(287, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(288, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(289, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(290, 'woocommerce_registration_generate_username', 'yes', 'no'),
(291, 'woocommerce_registration_generate_password', 'yes', 'no'),
(292, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(293, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(294, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(295, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(296, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(297, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(298, 'woocommerce_trash_pending_orders', '', 'no'),
(299, 'woocommerce_trash_failed_orders', '', 'no'),
(300, 'woocommerce_trash_cancelled_orders', '', 'no'),
(301, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(302, 'woocommerce_email_from_name', 'Bharmal Brothers', 'no'),
(303, 'woocommerce_email_from_address', 'akshaychidre0@gmail.com', 'no'),
(304, 'woocommerce_email_header_image', '', 'no'),
(305, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(306, 'woocommerce_email_base_color', '#96588a', 'no'),
(307, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(308, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(309, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(310, 'woocommerce_cart_page_id', '33', 'yes'),
(311, 'woocommerce_checkout_page_id', '34', 'yes'),
(312, 'woocommerce_myaccount_page_id', '35', 'yes'),
(313, 'woocommerce_terms_page_id', '', 'no'),
(314, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(315, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(316, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(317, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(318, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(319, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(320, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(321, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(322, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(323, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(324, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(325, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(326, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(327, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(328, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(329, 'woocommerce_api_enabled', 'no', 'yes'),
(330, 'woocommerce_allow_tracking', 'yes', 'no'),
(331, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(332, 'woocommerce_single_image_width', '600', 'yes'),
(333, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(334, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(335, 'woocommerce_demo_store', 'no', 'no'),
(336, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(337, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(338, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(339, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(340, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(341, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(344, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(345, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(348, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(349, 'widget_cb_woocommerce_account', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(350, 'widget_cb_best_sellers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(351, 'widget_cb_woocommerce_catalog_ordering', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(352, 'widget_cb-featured-products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(353, 'widget_cb_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(354, 'widget_cb_woocommerce_mini_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(355, 'widget_cb_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(356, 'widget_cb_wc_products_in_category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(357, 'widget_cb_woocommerce_reslut_count', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(359, 'widget_cb_woocommerce_results_per_page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(360, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(361, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(362, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(366, '_transient_product_query-transient-version', '1579980643', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(369, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(370, 'default_product_cat', '18', 'yes'),
(371, 'woocommerce_admin_notices', 'a:3:{i:0;s:20:\"no_secure_connection\";i:1;s:14:\"template_files\";i:2;s:19:\"no_shipping_methods\";}', 'yes'),
(374, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1579980286;}', 'no'),
(379, 'woocommerce_version', '3.6.1', 'yes'),
(380, 'woocommerce_db_version', '3.6.1', 'yes'),
(391, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(392, 'woocommerce_product_type', 'both', 'yes'),
(393, 'woocommerce_sell_in_person', '1', 'yes'),
(396, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(397, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(398, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(399, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(400, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(403, 'mailchimp_woocommerce_version', '2.1.15', 'no'),
(407, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(412, 'mailchimp-woocommerce-store_id', '5cbb139b767ad', 'yes'),
(413, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(415, '_transient_shipping-transient-version', '1555764172', 'yes'),
(513, 'woocommerce_tracker_ua', 'a:4:{i:0;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36\";i:1;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36\";i:2;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";i:3;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";}', 'yes'),
(573, 'woocommerce_tracker_last_send', '1579980277', 'yes'),
(593, '_transient_product-transient-version', '1556003069', 'yes'),
(762, 'product_number', '20', 'yes'),
(763, 'max_char_per_cat', '20', 'yes'),
(764, 'column_number', '4', 'yes'),
(765, 'order_product_by', 'ASC', 'yes'),
(767, 'custom_global_css', '', 'yes'),
(862, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(863, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(924, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(961, 'product_cat_children', 'a:1:{i:21;a:3:{i:0;i:24;i:1;i:25;i:2;i:23;}}', 'yes'),
(1167, '_transient_timeout_wc_term_counts', '1582572207', 'no'),
(1168, '_transient_wc_term_counts', 'a:6:{i:20;s:1:\"1\";i:21;s:1:\"2\";i:19;s:1:\"4\";i:18;s:1:\"2\";i:25;s:1:\"1\";i:23;s:1:\"1\";}', 'no'),
(1169, '_transient_timeout_wc_product_loop_7558c517343254be934b24a2643796e9', '1582572814', 'no'),
(1170, '_transient_wc_product_loop_7558c517343254be934b24a2643796e9', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:49;i:1;i:53;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1171, '_transient_timeout_wc_product_loop_5df8cc1a1bc227b49e31095a7cc193f8', '1582572814', 'no'),
(1172, '_transient_wc_product_loop_5df8cc1a1bc227b49e31095a7cc193f8', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:53;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1173, '_transient_timeout_wc_product_loop_f5eadecfd27a9f549bbd0c2284d7e84a', '1582572814', 'no'),
(1174, '_transient_wc_product_loop_f5eadecfd27a9f549bbd0c2284d7e84a', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:54;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1175, '_transient_timeout_wc_product_loop_8855f80878bf1936f512f9373393cdd8', '1582572815', 'no'),
(1176, '_transient_wc_product_loop_8855f80878bf1936f512f9373393cdd8', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:51;i:1;i:54;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1177, '_transient_timeout_wc_product_loop_55c29ad3e2f1270fde0310f0909513c0', '1582572815', 'no'),
(1178, '_transient_wc_product_loop_55c29ad3e2f1270fde0310f0909513c0', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:46;i:1;i:50;i:2;i:52;i:3;i:55;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1179, '_transient_timeout_wc_product_loop_f9df924e430c128293bed21962321289', '1582572816', 'no'),
(1180, '_transient_wc_product_loop_f9df924e430c128293bed21962321289', 'a:2:{s:7:\"version\";s:10:\"1579980643\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:51;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:20;s:12:\"current_page\";i:1;}}', 'no'),
(1181, '_site_transient_timeout_theme_roots', '1579982028', 'no'),
(1182, '_site_transient_theme_roots', 'a:1:{s:7:\"bharmal\";s:7:\"/themes\";}', 'no'),
(1187, '_site_transient_timeout_aioseop_update_check_time', '1580001880', 'no'),
(1188, '_site_transient_aioseop_update_check_time', '1579980280', 'no'),
(1191, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1579980811;s:15:\"version_checked\";s:5:\"5.1.4\";s:12:\"translations\";a:0:{}}', 'no'),
(1193, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"akshaychidre0@gmail.com\";s:7:\"version\";s:5:\"5.1.4\";s:9:\"timestamp\";i:1579980290;}', 'no'),
(1197, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:8;s:3:\"all\";i:8;s:8:\"approved\";s:1:\"8\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1198, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1199, '_site_transient_timeout_browser_affe907f01beeb7ae927d7439f19ca32', '1580585432', 'no'),
(1200, '_site_transient_browser_affe907f01beeb7ae927d7439f19ca32', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1201, '_site_transient_timeout_php_check_9992af39e7d9dc2331a59590fe0115c4', '1580585435', 'no'),
(1202, '_site_transient_php_check_9992af39e7d9dc2331a59590fe0115c4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(1203, '_transient_timeout_wc_shipping_method_count', '1582572635', 'no'),
(1204, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1555764172\";s:5:\"value\";i:0;}', 'no'),
(1205, '_transient_timeout_feed_54af7cb0f50a8f4f8cdb30f2d9b4f50c', '1580023841', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1206, '_transient_feed_54af7cb0f50a8f4f8cdb30f2d9b4f50c', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Semper Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"https://semperplugins.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Premium WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Nov 2019 11:12:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=5.3.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://semperplugins.com/wp-content/uploads/2016/06/cropped-AIOSEOP-Gear-Blue-32x32.png\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Semper Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"https://semperplugins.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Don’t miss out on our Black Friday deal\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:147:\"https://semperplugins.com/dont-miss-out-on-our-black-friday-deal/?utm_source=rss&utm_medium=rss&utm_campaign=dont-miss-out-on-our-black-friday-deal\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://semperplugins.com/dont-miss-out-on-our-black-friday-deal/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Nov 2019 11:08:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=5312\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:411:\"2019 has been quite remarkable, with the release of our major 3.0 version and countless of new features such as Schema.org markup and support for Google Tag Manager. We have also been doing a lot of work behind the scenes,<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/dont-miss-out-on-our-black-friday-deal/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:888:\"\n<p>\n\n2019 has been quite remarkable, with the release of our major 3.0 version and countless of new features such as Schema.org markup and support for Google Tag Manager. We have also been doing a lot of work behind the scenes, refactoring older code and fixing&nbsp;bugs so that All in One SEO Pack&nbsp;is ready for future WordPress versions to come.</p>\n\n\n\n<p>Because it is Black Friday, we want to give you an unique opportunity to save&nbsp;40% when you upgrade to our premium version.&nbsp;All in One SEO Pack Pro is our commitment to deliver the best SEO toolset out there, and we want as many people as possible to benefit from it.</p>\n\n\n\n<p><a href=\"https://semperplugins.com/all-in-one-seo-pack-pro-version/\">Head over to our sale page</a> and use coupon code <strong>SHOPPINGSPREE </strong>for a 40% discount. Please note that this offer is valid for a limited-time only.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://semperplugins.com/dont-miss-out-on-our-black-friday-deal/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Here’s some exciting Google news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://semperplugins.com/heres-some-exciting-google-news/?utm_source=rss&utm_medium=rss&utm_campaign=heres-some-exciting-google-news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://semperplugins.com/heres-some-exciting-google-news/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Nov 2019 02:14:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=5260\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:431:\"We&#8217;ve got some exciting Google news for you. New Speed report in Google Search Console In order to help site owners discover potential user experience problems, Google just launched a new Speed report feature in Google Search Console. This new<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/heres-some-exciting-google-news/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4729:\"\n<p> We&#8217;ve got some exciting Google news for you.</p>\n\n\n\n<h2>New Speed report in Google Search Console</h2>\n\n\n\n<p>In order to help site owners discover potential user experience problems, Google just launched a new Speed report feature in Google Search Console. This new report classifies URLs based on their load time and issues that may cause slowdowns. </p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/11/speed-report.png\" alt=\"Screenshot of Speed report in Google Search Console\" class=\"wp-image-5263\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/11/speed-report.png 639w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-150x150.png 150w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-300x300.png 300w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-250x250.png 250w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-100x100.png 100w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-200x200.png 200w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-450x451.png 450w, https://semperplugins.com/wp-content/uploads/2019/11/speed-report-600x601.png 600w\" sizes=\"(max-width: 639px) 100vw, 639px\" /></figure></div>\n\n\n\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n\n\n\n<p>\n\nURLs are assigned to &#8220;Fast&#8221;, &#8220;Moderate&#8221; or &#8220;Slow&#8221; speed buckets and allow you to drill down on them to see what is impacting performance and prioritize performance improvements for them. The report also links to the Page Speed Insight tool in order to provide information on specific optimization opportunities.</p>\n\n\n\n<p>This report is a great new addition if you want to monitor your website performance over time and track improvements you made to your website. Once you fix an issue, you can use the Speed report to track whether users experience improved performance when browsing your website. The brand new report is still marked as experimental, but we highly recommend you check it out. </p>\n\n\n\n<h4>Site Kit plugin now available for all WordPress sites</h4>\n\n\n\n<p>Some of you may know that Google had been quietly working on its first official WordPress plugin during the past year. Site Kit by Google has just been launched and gives you insights on how visitors find and use your website, how you can improve &amp; monetize your content and display data from multiple Google tools such as Google Analytics &amp; Google Search Console. </p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/11/site-kit-1024x576.png\" alt=\"Screenshot of WordPress Dashboard with Site Kit by Google plugin.\" class=\"wp-image-5262\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/11/site-kit-1024x576.png 1024w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-300x169.png 300w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-768x432.png 768w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-444x250.png 444w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-100x56.png 100w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-150x84.png 150w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-200x113.png 200w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-450x253.png 450w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-600x338.png 600w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit-900x506.png 900w, https://semperplugins.com/wp-content/uploads/2019/11/site-kit.png 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n\n\n\n<p>\n\nSite Kit makes it a breeze for&nbsp;<strong>site owners</strong>&nbsp;to understand how their website is performing and what they should do next. Some of its features are:</p>\n\n\n\n<ul><li>Covenient access to relevant statistics directly in your WordPress administrator panel. You save time by seeing key information right after you sign in.</li><li>Google Analytics, PageSpeed Insights, Google Search Console and AdSense are all combined into a single dashboard. This way you can make informed decisions quickly.</li><li>No manual source code editing &#8211; Site Kit by Google takes care of many tedious tasks for you.</li></ul>\n\n\n\n<p>On the other hand, if you are a&nbsp;<strong>developer&nbsp;</strong>working on WordPress websites, then Site Kit can make a few things easier for you too. Think of setting up new Google services to provide interesting insights to your clients, comparing the top performing pages and checking whether a particular product is attracting visitors from social media.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://semperplugins.com/heres-some-exciting-google-news/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"What’s new in All in One SEO Pack 3.2?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://semperplugins.com/all-in-one-seo-pack-3-2/?utm_source=rss&utm_medium=rss&utm_campaign=all-in-one-seo-pack-3-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://semperplugins.com/all-in-one-seo-pack-3-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Aug 2019 21:08:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4996\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:418:\"Our latest 3.2 release brings new functionality to All in One SEO Pack that you have all been waiting for: Schema.org markup! In addition to structured data, this update also introduces two other new features and numerous improvements &#38; bug<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/all-in-one-seo-pack-3-2/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5154:\"<p>Our latest 3.2 release brings new functionality to All in One SEO Pack that you have all been waiting for: Schema.org markup! In addition to structured data, this update also introduces two other new features and numerous improvements &amp; bug fixes. Find out more below.</p>\n<h2>Schema.org markup</h2>\n<p>The most prominent feature of this update is the Schema.org markup functionality that we are bringing to the plugin. Many of you have been eagerly awaiting this, so we are pleased to announce that it is finally here.</p>\n<p><div id=\"attachment_5010\" style=\"width: 610px\" class=\"wp-caption aligncenter\"><img aria-describedby=\"caption-attachment-5010\" class=\"wp-image-5010\" src=\"https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization.png\" alt=\"Schema Settings in All in One SEO Pack\" width=\"600\" height=\"534\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization.png 1444w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-300x267.png 300w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-768x683.png 768w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-1024x911.png 1024w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-281x250.png 281w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-100x89.png 100w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-150x133.png 150w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-200x178.png 200w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-450x400.png 450w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-600x534.png 600w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-900x800.png 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><p id=\"caption-attachment-5010\" class=\"wp-caption-text\">Schema Settings in All in One SEO Pack</p></div></p>\n<p>Schema.org markup is of code that is found in the HEAD of your source code to help search engines determine what your content is about and provide more informative results to their users. If you have ever used rich snippets, then you will understand what structured data is all about.</p>\n<p>We won&#8217;t dive into the details in this post as Schema.org markup is quite a large addition, but if you are curious and would like to find out more about the new settings and features we have added, then we recommend that you read our dedicated <a href=\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/\">Schema.org markup post</a>.</p>\n<h2>New features</h2>\n<h3>&lt;lastmod&gt; field for taxonomies &amp; archive pages</h3>\n<p>Google has stated that the &lt;lastmod&gt; sitemap field is an important indicator for them and that it might speed up indexing of your website. That&#8217;s why we are happy to announce that Categories, Tags, custom taxonomies and archive pages (including the static Posts page) now reflect their &#8220;Last Change&#8221; in the sitemap.</p>\n<p><img class=\"aligncenter wp-image-5000\" src=\"https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp.jpg\" alt=\"\" width=\"600\" height=\"293\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp.jpg 806w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-300x147.jpg 300w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-768x375.jpg 768w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-511x250.jpg 511w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-100x49.jpg 100w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-150x73.jpg 150w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-200x98.jpg 200w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-450x220.jpg 450w, https://semperplugins.com/wp-content/uploads/2019/07/tax-timestamp-600x293.jpg 600w\" sizes=\"(max-width: 600px) 100vw, 600px\" /></p>\n<p>The timestamp for these archives is based on the last modified post that is assigned to them and we support taxonomies with multiple attached post types.</p>\n<h3>New title macros</h3>\n<p>Due to popular demand, All in One SEO Pack now also supports both the %current_month% and %current_month_i18n% macros for certain title format fields. These macros can be used to include the current month (either in English or localized) in the title.</p>\n<h2>Other improvements &amp; bug fixes</h2>\n<p>This release also includes numerous improvements and bug fixes. Here are some of the highlights:</p>\n<ul>\n<li>Refactored preview snippet title and robots meta tag code that introduces significant improvements and resolves a number of bugs</li>\n<li>Updated inline tooltip help</li>\n<li>Minified CSS files</li>\n<li>Improved internal coding standards</li>\n</ul>\n<p>In total, a number of 61 issues made it into this release. Read the <a href=\"https://semperplugins.com/all-in-one-seo-pack-changelog/\">full changelog</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://semperplugins.com/all-in-one-seo-pack-3-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"17\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"All-New Schema markup in All in One SEO Pack v3.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:137:\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/?utm_source=rss&utm_medium=rss&utm_campaign=schema-markup-all-in-one-seo-pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Aug 2019 16:04:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=5023\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:392:\"Version 3.2 of All in One SEO Pack and All in One SEO Pack Pro adds new Schema.org structured data markup along with new options to manage this. (Read our complete release post about All in One SEO Pack 3.2.)<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Steve Mortiboy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7288:\"<p>Version 3.2 of All in One SEO Pack and All in One SEO Pack Pro adds new Schema.org structured data markup along with new options to manage this. (Read our complete release post about <a href=\"https://semperplugins.com/all-in-one-seo-pack-3-2/\">All in One SEO Pack 3.2.</a>)</p>\n<p><div id=\"attachment_5010\" style=\"width: 610px\" class=\"wp-caption aligncenter\"><img aria-describedby=\"caption-attachment-5010\" class=\"wp-image-5010\" src=\"https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization.png\" alt=\"Schema Settings in All in One SEO Pack\" width=\"600\" height=\"534\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization.png 1444w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-300x267.png 300w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-768x683.png 768w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-1024x911.png 1024w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-281x250.png 281w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-100x89.png 100w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-150x133.png 150w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-200x178.png 200w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-450x400.png 450w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-600x534.png 600w, https://semperplugins.com/wp-content/uploads/2019/07/Schema-Settings-Organization-900x800.png 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><p id=\"caption-attachment-5010\" class=\"wp-caption-text\">Schema Settings in All in One SEO Pack</p></div></p>\n<h2>What is Schema.org Markup?</h2>\n<p><a href=\"https://schema.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Schema.org</a> structured data markup is information that is provided to search engines that enables them to display <a href=\"https://developers.google.com/search/docs/guides/search-gallery\" target=\"_blank\" rel=\"noopener noreferrer\">rich search snippets</a>.  These rich snippets in search results give searchers more information about your website, organization, or content.</p>\n<p>This structured data markup has become very important to search engines. Currently, Google, <a href=\"https://www.bing.com/webmaster/help/marking-up-your-site-with-structured-data-3a93e731\" target=\"_blank\" rel=\"noopener noreferrer\">Bing</a> and <a href=\"https://yandex.ru/support/webmaster/schema-org/what-is-schema-org.html\" target=\"_blank\" rel=\"noopener noreferrer\">Yandex</a> support the newest JSON-LD markup that we generate.</p>\n<p>All in One SEO Pack outputs structured data markup on Posts, Pages, Categories, Tags and the search results page.  We also support custom post types and custom taxonomies <a href=\"https://semperplugins.com/documentation/enabling-schema-for-custom-post-types-and-custom-taxonomies/\">via our API using a filter</a>.</p>\n<h2>Schema Settings in All in One SEO Pack</h2>\n<p>The screenshot above shows the new Schema Settings.  Some of these settings were already in the plugin prior to v3.2 but we&#8217;ve now gathered them together under a new Schema Settings section.  Here&#8217;s a brief rundown on these settings:</p>\n<h3>Use Schema.org Markup:</h3>\n<p>This settings used to be under All in One SEO &gt; General Settings but has been moved to the new section.  This enables or disables the Schema settings and adds or removes all structured data markup from your page source code.</p>\n<h3>Display Sitelinks Search Box:</h3>\n<p>This setting used to be under All in One SEO &gt; General Settings &gt; Google Settings.  It outputs markup that for the Sitelinks Search Box that Google may display in certain search results.</p>\n<h3>Social Profile Links:</h3>\n<p>This setting used to be under All in One SEO &gt; Social Meta &gt; Social Profile Links.  It provides search engines with the links to the social media profiles for you site.  Some search engines may use this information when displaying information about your organization or business, for example in Google&#8217;s Knowledge Graph box.</p>\n<h3>Person or Organization:</h3>\n<p>This settings also used to be under All in One SEO &gt; Social Meta &gt; Social Profile Links.  It enables you to select whether your site is for a person (such as a personal blog) or an organization (such as a business website).</p>\n<h3>Person&#8217;s Username:</h3>\n<p>If you select Person in the Person or Organization setting, then this setting will be displayed.  You can use it to select the user profile for the site owner.  This will tell search engines who the primary content publisher or owner is for your site.</p>\n<h3>Organization Name:</h3>\n<p>If you select Organization in the Person or Organization setting, then this setting and the settings described below will be displayed.  Here you can enter the name for your organization or business.  This will tell search engines which organization owns the website.</p>\n<h3>Organization Logo:</h3>\n<p>Here you can upload your logo which search engines may use when displaying information about your organization or business, for example in Google&#8217;s Knowledge Graph box.</p>\n<h3>Phone Number:</h3>\n<p>Here you can enter your primary business phone number which search engines may use when displaying information about your organization or business, for example in Google&#8217;s Knowledge Graph box.</p>\n<h3>Type of Contact:</h3>\n<p>Here you can select which type of contact your primary phone number is used for, for example Sales.  Search engines use this in conjunction with the Phone Number setting.</p>\n<h2>Structured Data Markup in All in One SEO Pack</h2>\n<p>All in One SEO Pack outputs the JSON-LD markup in the HEAD of your pages, posts, categories, tags and search results page.  You can view this by looking at the page source code, where you see the green All in One SEO Pack line you&#8217;ll find code wrapped in script tags like this <span class=\"html-tag\">&lt;script <span class=\"html-attribute-name\">type</span>=&#8221;<span class=\"html-attribute-value\">application/ld+json</span>&#8221; <span class=\"html-attribute-name\">class</span>=&#8221;<span class=\"html-attribute-value\">aioseop-schema</span>&#8220;&gt;</span>{}<span class=\"html-tag\">&lt;/script&gt;.</span></p>\n<p>All in One SEO Pack uses information from your content such as your Page or Post Title, SEO Description or Page / Post content, the Featured Image, as well as other information.</p>\n<h2>Help and Documentation</h2>\n<p>You can find additional help on Schema.org as well as full documentation on the new settings at the links below:</p>\n<ul>\n<li><a href=\"https://semperplugins.com/documentation/adding-schema-org-markup-for-rich-snippets/\">Guide to Schema.org markup for Rich Snippets</a></li>\n<li><a href=\"https://semperplugins.com/documentation/schema-settings/\">Schema Settings documentation</a></li>\n<li><a href=\"https://semperplugins.com/documentation/enabling-schema-for-custom-post-types-and-custom-taxonomies/\">Enabling Schema for Custom Post Types and Custom Taxonomies</a></li>\n</ul>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"All in One SEO Pack v3.1 changes XML Sitemap naming convention\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://semperplugins.com/aioseop-3-1-xml-sitemap-changes/?utm_source=rss&utm_medium=rss&utm_campaign=aioseop-3-1-xml-sitemap-changes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://semperplugins.com/aioseop-3-1-xml-sitemap-changes/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 10 Jun 2019 05:11:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:23:\"All in One SEO Pack Pro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:15:\"Version Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4912\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:399:\"Today we released version 3.1 of All in One SEO Pack and All in One SEO Pack Pro which changes the naming convention we use for paginated XML sitemaps when Sitemap Indexes is enabled. Background In all versions of All<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/aioseop-3-1-xml-sitemap-changes/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Steve Mortiboy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11164:\"\n<p>Today we released version 3.1 of All in One SEO Pack and All in One SEO Pack Pro which changes the naming convention we use for <strong>paginated XML sitemaps</strong> when <strong><a href=\"https://semperplugins.com/documentation/xml-sitemaps-module/#enable-sitemap-indexes\">Sitemap Indexes</a></strong> is enabled.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-1024x433.png\" alt=\"\" class=\"wp-image-4923\" width=\"600\" height=\"254\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-1024x433.png 1024w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-300x127.png 300w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-768x325.png 768w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-592x250.png 592w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-100x42.png 100w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-150x63.png 150w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-200x85.png 200w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-450x190.png 450w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-600x254.png 600w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention-900x380.png 900w, https://semperplugins.com/wp-content/uploads/2019/06/All-in-One-SEO-Pack-v3.1-changes-XML-Sitemap-naming-convention.png 1278w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><figcaption>Sitemap Indexes and Pagination Settings in All in One SEO Pack.</figcaption></figure></div>\n\n\n\n<h2>Background</h2>\n\n\n\n<p>In all versions of All in One SEO Pack prior to v3.1, the naming convention for paginated sitemaps looked like this:</p>\n\n\n\n<ul><li>sitemap_post_1.xml</li><li>sitemap_post_2.xml</li><li>sitemap_page_1.xml</li><li>sitemap_page_2.xml</li><li>&#8230;</li></ul>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-1024x587.png\" alt=\"\" class=\"wp-image-4926\" width=\"600\" height=\"344\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-1024x587.png 1024w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-300x172.png 300w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-768x441.png 768w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-436x250.png 436w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-100x57.png 100w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-150x86.png 150w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-200x115.png 200w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-450x258.png 450w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-600x344.png 600w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention-900x516.png 900w, https://semperplugins.com/wp-content/uploads/2019/06/Old-XML-Sitemap-naming-convention.png 1590w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><figcaption>Example XML Sitemap showing old naming convention.</figcaption></figure></div>\n\n\n\n<p>However, in the past couple of days we received reports of some paginated sitemaps no longer being listed under <a rel=\"noreferrer noopener\" aria-label=\"Submitted Sitemaps (opens in a new tab)\" href=\"https://support.google.com/webmasters/answer/7451001?hl=en&amp;authuser=1\" target=\"_blank\"><strong>Sitemaps read</strong></a> in the new Google Search Console reports.  </p>\n\n\n\n<p>We immediately opened an <a href=\"https://github.com/semperfiwebdesign/all-in-one-seo-pack/issues/2554\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\">issue</a> for this and investigated to see if we could reproduce this problem.  We were able to confirm that Google sometimes has problems listing paginated sitemaps with &#8220;_post_&#8221; in the filename. This only affects sites with the &#8220;Enable Sitemap Indexes&#8221; option enabled in the XML Sitemap settings and with pagination for the post sitemap pages, meaning the site has more than 1000-10,000 posts. Even then it only affected some sites.</p>\n\n\n\n<p>It is also important to note that <strong>these missing sitemap index pages will not negatively affect your SEO</strong>. ie Google doesn&#8217;t drop a URL in the rankings if it&#8217;s no longer in a sitemap.</p>\n\n\n\n<h2>New Naming Convention</h2>\n\n\n\n<p>From our investigation, it appeared that the root cause of the problem was a possible recent (and likely unintentional) change by Google to the naming convention that they support for paginated sitemaps.  We contacted Google to get confirmation of this and will update this post with their response.  </p>\n\n\n\n<p>However, through extensive testing across many sites, we were able to determine that changing the naming convention to the examples shown below enabled Google to accept all paginated sitemaps in a sitemap index:</p>\n\n\n\n<ul><li>post-sitemap1.xml</li><li>post-sitemap2.xml</li><li>page-sitemap1.xml</li><li>page-sitemap2.xml</li><li>&#8230;</li></ul>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-1024x595.png\" alt=\"\" class=\"wp-image-4925\" width=\"600\" height=\"350\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-1024x595.png 1024w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-300x174.png 300w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-430x250.png 430w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-100x58.png 100w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-150x87.png 150w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-200x116.png 200w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-450x262.png 450w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-600x349.png 600w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention-900x523.png 900w, https://semperplugins.com/wp-content/uploads/2019/06/New-XML-Sitemap-naming-convention.png 1590w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><figcaption>Example of the new naming convention.</figcaption></figure></div>\n\n\n\n<h2>Impact to your Site</h2>\n\n\n\n<p>If you don&#8217;t use Sitemap Indexes then this does not affect your site.  If you do use Sitemap Indexes but do not have multiple pages of a sitemap, i.e. sitemap_post_1, sitemap_post_2, etc. then this does not affect your site either. However, if you use Sitemap Indexes and you have pagination set so that you have multiple pages, then this change does affect you.</p>\n\n\n\n<p><strong>It is important to note that this does not, nor never did, affect the indexing of content on sites using All in One SEO Pack. </strong> The XML Sitemap is only one way in which modern search engines crawl and index content.  Also, Google and other search engines were not having any problems reaching the main sitemap index, which in All in One SEO Pack has a standard name of sitemap.xml.  They could reach the sitemap index and could therefore crawl each of the sitemaps listed in the index.  To our knowledge, Google&#8217;s ability to crawl paginated sitemaps in an index was never affected and this was proved by our extensive testing.</p>\n\n\n\n<p>The only impact we saw was in Google Search Console where they list the Submitted read in the Sitemap Report.  Instead of Google listing all the sitemaps, Google would only list some.</p>\n\n\n\n<h2>Recommended Action Users Should Take</h2>\n\n\n\n<p>After upgrading to v3.1, users may wish to remove and resubmit their main sitemap index to Google (i.e. sitemap.xml).  This action is not required as Google has stated that they will pick up any changes to your XML Sitemap the next time they crawl it.  This includes changes to the names of sitemaps listed in the index.</p>\n\n\n\n<p>Users are advised to monitor their <a rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\" href=\"https://search.google.com/search-console/sitemaps?utm_medium=referral&amp;utm_campaign=7451001\" target=\"_blank\">Sitemaps Report</a> in Google Search Console for any errors.  Although we don&#8217;t anticipate any, please do report any problems to us via our <a href=\"https://semperplugins.com/contact/\">contact form</a>.  Please select &#8220;Plugin support&#8221; as the Contact Reason and, for users who don&#8217;t have a license key, enter the URL of this post in the &#8220;Your license code&#8221; field.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-1024x698.png\" alt=\"\" class=\"wp-image-4927\" width=\"600\" height=\"410\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-1024x698.png 1024w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-300x204.png 300w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-768x523.png 768w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-367x250.png 367w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-100x68.png 100w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-150x102.png 150w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-200x136.png 200w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-450x307.png 450w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-600x409.png 600w, https://semperplugins.com/wp-content/uploads/2019/06/Sitemaps-Report-in-Google-Search-Console-900x613.png 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" /><figcaption>Sitemaps Report in Google Search Console showing Sitemaps read.</figcaption></figure></div>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://semperplugins.com/aioseop-3-1-xml-sitemap-changes/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"What’s new in All in One SEO Pack 3.0?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://semperplugins.com/all-in-one-seo-pack-3-0/?utm_source=rss&utm_medium=rss&utm_campaign=all-in-one-seo-pack-3-0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://semperplugins.com/all-in-one-seo-pack-3-0/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Jun 2019 21:03:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4834\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:381:\"For the past few months we have been working non-stop on the next major 3.0 version of All in One SEO Pack. We have added exciting new features and made quite a few changes. Here’s an overview of what this<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/all-in-one-seo-pack-3-0/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9678:\"\r\n<p>For the past few months we have been working non-stop on the next major 3.0 version of All in One SEO Pack. We have added exciting new features and made quite a few changes. Here’s an overview of what this release is bringing to the table. This is the biggest release since 2.0 eight years ago and resolves 117 issues (most are closer to 15-30). <a href=\"https://semperplugins.com/all-in-one-seo-pack-changelog/\">Full changelog here</a>.</p>\r\n\r\n\r\n\r\n<h2>UI changes</h2>\r\n\r\n\r\n\r\n<p>Over the past few years, the amount of features and settings in All in One SEO Pack has grown significantly, and so has our user interface. This update comes with some much needed UI changes which will undoubtedly improve your user experience.</p>\r\n\r\n\r\n\r\n<h3>Denser menu structure</h3>\r\n\r\n\r\n\r\n<p>If you are just like us and spend countless hours on tweaking your SEO settings, then you have surely realized by now that some of our menus (the General Settings menu comes to mind) are lengthy. We do not want you to sprain your wrist whilst scrolling through the vast amount of features that All in One SEO Pack has to offer, so we have cut down on whitespace and trimmed a few redundant settings to achieve a denser layout.</p>\r\n\r\n\r\n\r\n<h3>New modern user interface</h3>\r\n\r\n\r\n\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-4839\" src=\"https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-1024x937.png\" alt=\"\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-1024x937.png 1024w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-300x275.png 300w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-768x703.png 768w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-273x250.png 273w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-100x92.png 100w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-150x137.png 150w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-200x183.png 200w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-450x412.png 450w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-600x549.png 600w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look-900x824.png 900w, https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-new-look.png 1076w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\r\n\r\n\r\n\r\n<p>It was also about time for us to give our UI a fresh lick of paint. This release comes with numerous CSS changes. We restyled our menus so that they integrate better with WordPress 5.0 and the minimalist, modern look we are all yearning for in 2019.</p>\r\n\r\n\r\n\r\n<h3>Tooltips instead of inline help text</h3>\r\n\r\n<p><img class=\"aligncenter size-full wp-image-4840\" src=\"https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-tooltip.gif\" alt=\"\" width=\"1077\" height=\"996\" /></p>\r\n\r\n<p>Lastly, we have replaced our inline help text with tooltips so you no longer have to click each setting to find out what it exactly does.</p>\r\n\r\n\r\n\r\n<p>We would love for you to tell us your thoughts about our new UI in the comments!</p>\r\n\r\n\r\n\r\n<h2>New features</h2>\r\n\r\n\r\n\r\n<p>The focus in this major release and many of our other recent releases has mainly been on improving our sitemap functionality so that search engines always have the latest and best data at their disposal.</p>\r\n\r\n\r\n\r\n<h3>Noindexed pages excluded from sitemap</h3>\r\n\r\n\r\n\r\n<p>Excluded posts, pages and custom post types are no longer included in the sitemap when they have been set to noindex. This should resolve many errors in Google Search Console and other webmaster tools where noindexed pages are submitted for crawling through the sitemap. This means you also no longer have to check the General Settings menu to see what content types you have marked as noindex.</p>\r\n\r\n\r\n\r\n<h3>Excluded Terms setting</h3>\r\n\r\n<p><img class=\"aligncenter size-full wp-image-4841\" src=\"https://semperplugins.com/wp-content/uploads/2019/05/all-in-one-seo-pack-3-0-excluded-terms.gif\" alt=\"\" width=\"1075\" height=\"255\" /></p>\r\n\r\n<p>The new &#8220;Excluded Terms&#8221; setting is replacing the &#8220;Excluded Categories&#8221; setting and allows you to exclude any taxonomy terms and all posts that are assigned to them from the sitemap.</p>\r\n\r\n\r\n\r\n<p>We worked hard on an intuitive user-interface for this setting so that you can effortlessly search for taxonomy terms and keep track of the terms that you are excluding.</p>\r\n\r\n\r\n\r\n<h3>Yandex and Baidu verification</h3>\r\n\r\n\r\n\r\n<p>Did you know Yandex and Baidu are the largest search engine providers in Russia and China and outperform Google by a huge margin in their local markets? We have added two new fields in the General Settings menu and published two guides on our website so you can easily verify your website in their Webmaster Tools.</p>\r\n\r\n\r\n\r\n<h2>Improvements to existing features</h2>\r\n\r\n\r\n\r\n<p>With v3.0 also comes a number of improvements to existing functionality.</p>\r\n\r\n\r\n\r\n<h3>New and deprecated title macros</h3>\r\n\r\n\r\n\r\n<p>The existing <em>%blog_title% </em>and <em>%blog_description%</em> macros have been deprecated (but still work) and have been replaced by the <em>%site_title%</em> and <em>%site_description%</em> macros. WordPress originally started out as a blogging platform but has grown into something that is much more than that and now our plugin reflects this.</p>\r\n\r\n\r\n\r\n<p>We also added the <em>%current_year%</em> macro which displays, as you might have guessed, the current year. This comes in handy when your site has a lot of &#8220;best … 2019&#8221; and &#8220;top 10 … of 2019&#8221; lists that are suffixed with the current year. You no longer need to manually adjust these when a new year arrives.</p>\r\n\r\n\r\n\r\n<h3>Default to sitemap indexes and pagination</h3>\r\n\r\n\r\n\r\n<p>The XML Sitemap module now defaults to Sitemap Indexes. We also decreased the default number of URLs per sitemap from 50,000 (maximum) to 1,000 URLs. Both of these changes were made to improve the performance of the XML Sitemap module on large sites.</p>\r\n\r\n\r\n\r\n<p>Our 2.9 release from last year added a number of new features, such as the including of images, to the XML Sitemap module and had a rather significant impact on the time it takes to dynamically generate your sitemap files.</p>\r\n\r\n\r\n\r\n<p>We recommend that all existing users enable <a href=\"https://semperplugins.com/documentation/xml-sitemaps-module/#enable-sitemap-indexes\">Sitemap Indexes</a> and set the <a href=\"https://semperplugins.com/documentation/xml-sitemaps-module/#enable-sitemap-indexes\">Maximum Posts Per Sitemap Page</a> to 1,000. You can see how you can do this in the GIF below:</p>\r\n\r\n<p><img class=\"aligncenter size-full wp-image-4874\" src=\"https://semperplugins.com/wp-content/uploads/2019/05/xml-sitemap-indexes.gif\" alt=\"\" width=\"986\" height=\"752\" /></p>\r\n\r\n<h3>Sitemap now lists URLs in reverse chronological order</h3>\r\n\r\n\r\n\r\n<p>Previously, our XML Sitemap module would write new posts to the first sitemap file and push existing URLs to the next file once it was filled up. This is not efficient especially for sites that add or update content frequently.</p>\r\n\r\n\r\n\r\n<p>We have reversed this order so that existing URLs remain within the same existing files and search engines only have to look at the last file in order to discover new posts.</p>\r\n\r\n\r\n\r\n<h3>OG:title &amp; OG:description</h3>\r\n\r\n\r\n\r\n<p>Autogenerated OG:descriptions have been trimmed down from 1,000 to 200 characters since this is now the optimal amount for most social media sites. Also, the OG:title and OG:description fields for the homepage in the Social Meta module now have character counters.</p>\r\n\r\n\r\n\r\n<h2>Removed features</h2>\r\n\r\n\r\n\r\n<p>We have also removed some features from the plugin because they were deprecated. Here&#8217;s what and why:</p>\r\n\r\n\r\n\r\n<h3>Sitemap compression</h3>\r\n\r\n\r\n\r\n<p>We no longer support sitemap compression. Many years ago when bandwidth was limited, compressing sitemap files used to be much more important because it helped reduce the data that had to be transferred between web servers and search engines.</p>\r\n\r\n\r\n\r\n<p>Today this issue is no longer relevant. In fact, sitemap compression only increases the time it takes to dynamically generate your sitemap, so we have removed this functionality entirely.</p>\r\n\r\n\r\n\r\n<p>If you have only submitted the compressed version of your sitemap in Google Search Console or other webmaster tools then we strongly recommend you change this to submit the standard (uncompressed) URL. All in One SEO Pack will automatically redirect the old URL for your compressed sitemap to your uncompressed sitemap but there may be some instances where this redirect does not occur due to server issues.</p>\r\n\r\n\r\n\r\n<h3>Google+ support</h3>\r\n\r\n\r\n\r\n<p>Google+ is no more. The platform was permanently shutdown in April, so we have removed all relevant settings and features. You can read <a href=\"https://semperplugins.com/google-shutdown-after-an-eventful-2018/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"here (opens in a new tab)\">here</a> why this happened.</p>\r\n\r\n\r\n\r\n<p>All of the above is just a small selection of the numerous improvements and changes that All in One SEO Pack 3.0 includes.</p>\r\n\r\n\r\n\r\n<p>Want to benefit from even more improvements? <a href=\"https://semperplugins.com/all-in-one-seo-pack-pro-version/\">Upgrade to the premium version</a>!</p>\r\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://semperplugins.com/all-in-one-seo-pack-3-0/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:70:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"What’s new in WordPress 5.2?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://semperplugins.com/whats-new-in-wordpress-5-2/?utm_source=rss&utm_medium=rss&utm_campaign=whats-new-in-wordpress-5-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://semperplugins.com/whats-new-in-wordpress-5-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 May 2019 16:11:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"WordPress 5.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4728\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:413:\"Since WordPress 5.2 is being released today, let’s look into the details and see what this update brings to the table. The latest version continues on the theme from the last release and provides administrators with even more tools to<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/whats-new-in-wordpress-5-2/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6996:\"\n<p>Since WordPress 5.2 is being released today, let’s look into the details and see what this update brings to the table. The latest version continues on the theme from the last release and provides administrators with even more tools to detect and fix configuration issues and fatal errors.  </p>\n\n\n\n<h2>Introducing… the Site\nHealth Check feature</h2>\n\n\n\n<p>The biggest addition of WordPress 5.2 is the long awaited Site Health Check. This feature brings two new pages to the admin dashboard to help users maintain their website and spot common issues such as configuration errors. It is now the <em>de facto</em> standardized location in WordPress for all debugging information.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/05/site-health-example.jpg\" alt=\"Site Health Check feature\" class=\"wp-image-4731\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/05/site-health-example.jpg 940w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-300x203.jpg 300w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-768x520.jpg 768w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-369x250.jpg 369w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-100x68.jpg 100w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-150x101.jpg 150w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-200x135.jpg 200w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-450x304.jpg 450w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-600x406.jpg 600w, https://semperplugins.com/wp-content/uploads/2019/05/site-health-example-900x609.jpg 900w\" sizes=\"(max-width: 940px) 100vw, 940px\" /><figcaption>This site has quite a few issues that need to be addressed.</figcaption></figure>\n\n\n\n<p>The <strong>Status</strong> tab runs a number of tests on the website and will categorize the results as either <strong>critical</strong>, <strong>recommended</strong> or <strong>good</strong>. These results in turn determine the health percentage that is shown at the top of the page. Each test can be expanded to see an explanation of the problem that needs to be addressed and may offer the option to automatically fix the issue for you.</p>\n\n\n\n<p>The <strong>Info</strong> tab provides an abundance of information about the website and web server configuration, similar to what the <a href=\"https://semperplugins.com/documentation/performance-settings/\">Performance module </a>in All in One SEO Pack does. There’s even a button to copy all non-sensitive data so you can easily share your debug information for support purposes.</p>\n\n\n\n<p>These two new pages are located under the Tools menu. &nbsp;Site Health Check also provides developers with <a href=\"https://make.wordpress.org/core/2019/04/25/site-health-check-in-5-2/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\">an API to add tests or filter debug information</a>.</p>\n\n\n\n<h2>Protection against fatal\nerrors in WordPress</h2>\n\n\n\n<p>Fatal errors\nstop users from accessing the admin panel and can be a pain to resolve. This\nusually means you need to use an FTP client to connect to the web server and\nundo whatever changes were made or ask your hosting company for support. </p>\n\n\n\n<p>Fortunately, WordPress 5.2 now introduces a new recovery mode for website administrators. When a fatal occurs, an error message will show that <strong>&#8220;This site is experiencing technical difficulties&#8221;</strong>. WordPress will then also send an email to all administrators with a special login link for them to access the dashboard in <strong>Recovery Mode</strong> and undo any changes that may have triggered the error. Of course, that doesn’t include changes to the database or wp-config file.</p>\n\n\n\n<h2>Improvements for the\nGutenberg editor</h2>\n\n\n\n<p>Since the\nnew Gutenberg block editor was introduced in WordPress 5.0, there has been continuous\ndevelopment in order to improve it. As we expect from all releases in the near\nfuture, WordPress 5.2 brings a number of new features and enhancements to the editor.</p>\n\n\n\n<p>Even though the new editor is much faster than the older one, lengthier articles with dozens of blocks would load quite a bit slower in the back-end. This issue has now been addressed as the newest release reduces load times for long blog posts with about 35%. Also, typing feels much more responsive as the key press time has been cut in half.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example.jpg\" alt=\"Tag cloud block\" class=\"wp-image-4730\" srcset=\"https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example.jpg 700w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-300x150.jpg 300w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-500x250.jpg 500w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-100x50.jpg 100w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-150x75.jpg 150w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-200x100.jpg 200w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-450x225.jpg 450w, https://semperplugins.com/wp-content/uploads/2019/05/tag-cloud-example-600x300.jpg 600w\" sizes=\"(max-width: 700px) 100vw, 700px\" /><figcaption>Here&#8217;s an example of how the Tag Cloud block looks like.</figcaption></figure>\n\n\n\n<p>WordPress\n5.2 also introduces a number of new default blocks. These are:</p>\n\n\n\n<ul><li>RSS\nblock – easily fetch and display any RSS feed on your WordPress blog;</li><li>Amazon\nKindle block – embed content from Amazon Kindle;</li><li>Search\nblock – add the default WordPress search feature in your article;</li><li>Calendar\nblock – display a calendar of your blog articles so that users can view which\narticles were published on each day;</li><li>Tag\nCloud block – display a cloud of your tags in your content.</li></ul>\n\n\n\n<h2>Other Under The Hood improvements\n</h2>\n\n\n\n<p>In addition, there are a number of other changes which are useful to developers including <a rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\" href=\"https://make.wordpress.org/core/2019/04/11/dashicons-in-wordpress-5-2/\" target=\"_blank\">new Dashicons</a> for the WordPress administrator area, an option to define the log file path for the WP_DEBUG_LOG function in the wp-config file and also a new minimum required PHP version. WordPress 5.2 sets the minimum PHP version to 5.6, which is up from 5.2.4 but still old compared to the current stable version of PHP which is 7.3.2.</p>\n\n\n\n<p><strong>Want to get the best out of your WordPress site?<br></strong><a href=\"https://semperplugins.com/all-in-one-seo-pack-pro-version/\">Upgrade to All in One SEO Pack Pro and supercharge your SEO.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://semperplugins.com/whats-new-in-wordpress-5-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Google+ shutdown after an eventful 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:147:\"https://semperplugins.com/google-shutdown-after-an-eventful-2018/?utm_source=rss&utm_medium=rss&utm_campaign=google-shutdown-after-an-eventful-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://semperplugins.com/google-shutdown-after-an-eventful-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Apr 2019 14:20:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Google News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"Google\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4687\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:446:\"If you haven’t heard already, the consumer version of Google+ was permanently shutdown early this month. After Google first announced a rather gracious timeline to kill off the platform, the company decided to speed up its termination dramatically after a<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/google-shutdown-after-an-eventful-2018/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Arnaud\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2653:\"\n<p>If you haven’t heard already, the consumer version of Google+ was permanently shutdown early this month. After Google first announced a rather gracious timeline to kill off the platform, the company decided to speed up its termination dramatically after a second security bug was revealed to impact millions of users. </p>\n\n\n\n<h2>Data\nbreach affected millions of users</h2>\n\n\n\n<p>The March 2018 data\nbreach is one of the main reasons why Google+ has been shutdown. A number of\ndevelopers had access to the private information of over 500,000 accounts\nwithout user consent. This happened during the same time that Facebook faced\nimmense pressure due to the Cambridge Analytica privacy scandal, and just a few\nmonths before the new European General Data Protection Regulation (GDPR) came\ninto effect.</p>\n\n\n\n<p>The fact that Google\ndid not disclose the data breach immediately left many profiles vulnerable.\nEven though the company claims that no data was misused, it did not inform the public\nin a timely manner, which gave rise to formal investigations by the United\nStates government and the European Union.</p>\n\n\n\n<p>Later that year in\nNovember, a second issue was uncovered with regard to the Google+ API. Third-party\napps that requested rights to view profile data were also granted access to\ndata the user specifically marked as non-public. Due to this major breach that\naffected almost 53 million users, Google decided to expedite the deprecation of\nthe platform.</p>\n\n\n\n<h2>No\nmatch for other social media networks</h2>\n\n\n\n<p>Perhaps the most obvious\nreason for the fall of Google+ is its disappointing user base. Google came quite\nlate to the game with its own social media platform after billions of people across\nthe internet already had joined Facebook or Twitter. </p>\n\n\n\n<p>Even though Google+\nwas able to amass quite a few dedicated communities, the platform never came\nclose to the amount of active users other social media networks have. Google+\nessentially became a platform for specific niches with less of a crowd but a\nmore passionate community. </p>\n\n\n\n<h2>What\ndoes this mean for All in One SEO Pack?</h2>\n\n\n\n<p>Even though Google+ will\nstill be around for enterprise customers who use G Suite, All in One SEO Pack\nwill no longer support Google+. This means that we’re removing all related settings\nin our upcoming major 3.0 release.</p>\n\n\n\n<p>If you’re concerned that this shutdown affects you in any other way, then we suggest that you <a href=\"https://support.google.com/plus/answer/9195133?hl=en\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\">check out Google’s support page</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://semperplugins.com/google-shutdown-after-an-eventful-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"Upgrading to 2.9.x made your SEO meta section disappear? Read this post!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"https://semperplugins.com/upgrading-to-2-9-seo-meta-disappear/?utm_source=rss&utm_medium=rss&utm_campaign=upgrading-to-2-9-seo-meta-disappear\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://semperplugins.com/upgrading-to-2-9-seo-meta-disappear/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 25 Oct 2018 13:53:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4464\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:409:\"Hi friends, In 2.9, several users reported in the community forums that the SEO section disappeared from their source code or back-end. There was a similar issue when we fixed a bug in 2.6, described here. See if that fixes<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/upgrading-to-2-9-seo-meta-disappear/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Michael Torbert\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1301:\"<p>Hi friends,</p>\n<p>In 2.9, several users reported in the community forums that the SEO section disappeared from their source code or back-end. There was a similar issue when we fixed a bug in 2.6, <a href=\"https://semperplugins.com/missing-all-in-one-seo-pack-2-6-post-and-page-meta/\">described here</a>. See if that fixes it for you, if not, read on.</p>\n<p>Some are reporting that their issue is unrelated to the one from 2.6. If that&#8217;s the case with you, we need your help to fix this pesky issue. Five developers worked for hours and hours trying to reproduce this problem, without being able to. All in One SEO Pack is used on millions of websites across the planet, so unfortunately we simply can not reproduce every single environment, configuration, and mix of plugins and themes out there.</p>\n<p>You can help us by <a href=\"https://semperplugins.com/contact/\">contacting us here</a> with the details of your issue and website so that we can investigate your site and determine the cause, and then quickly thereafter, a solution. As a special Thank You from us to anyone who reports a bug and our investigation of their site leads to a fix, you&#8217;ll receive a free license for <a href=\"https://semperplugins.com/all-in-one-seo-pack-pro-version/\">All in One SEO Pack Pro</a>!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://semperplugins.com/upgrading-to-2-9-seo-meta-disappear/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"20\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"New Robots.txt module with Multisite Network support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://semperplugins.com/new-robots-txt-module/?utm_source=rss&utm_medium=rss&utm_campaign=new-robots-txt-module\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://semperplugins.com/new-robots-txt-module/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 12:22:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://semperplugins.com/?p=4352\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:417:\"Missed the release notes for All in One SEO Pack v2.7? Then you may not be aware that we&#8217;ve completely overhauled the Robots.txt module.  Here&#8217;s what&#8217;s new! Prior to All in One SEO Pack v2.7, the robots.txt file was output as<span class=\"ellipsis\">&#8230;</span><div class=\"read-more\"><a href=\"https://semperplugins.com/new-robots-txt-module/\">Read more &#8250;</a></div><!-- end of .read-more -->\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Steve Mortiboy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4838:\"<p>Missed the <a href=\"https://semperfiwebdesign.com/all-in-one-seo-pack-release-history/\">release notes</a> for All in One SEO Pack v2.7? Then you may not be aware that we&#8217;ve completely overhauled the <a href=\"https://semperplugins.com/documentation/robots-txt-module/\">Robots.txt module</a>.  Here&#8217;s what&#8217;s new!</p>\n<p>Prior to All in One SEO Pack v2.7, the robots.txt file was output as a physical file on your web server.  However, WordPress creates a dynamic virtual robots.txt file, which is always preferred over a physical file.  The overhaul of the Robots.txt module meant that we could remove support for physical files entirely and instead use the dynamic virtual file that WordPress creates.  This has two benefits:</p>\n<ol>\n<li>Rules that are added to the robots.txt file are stored in the database.</li>\n<li>The default rules created by WordPress are used by All in One SEO Pack.</li>\n</ol>\n<p>In addition to switching from a physical file to a virtual file, we also overhauled the user interface.  We kept the easy-to-use rule builder and added a table that displays your custom rules.</p>\n<p><img class=\"aligncenter wp-image-4215\" src=\"https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule.png\" alt=\"Adding a rule to your robots.txt\" width=\"500\" height=\"496\" srcset=\"https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule.png 1384w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-150x149.png 150w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-300x298.png 300w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-768x762.png 768w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-1024x1017.png 1024w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-252x250.png 252w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-100x99.png 100w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-200x199.png 200w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-450x447.png 450w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-600x596.png 600w, https://semperplugins.com/wp-content/uploads/2014/01/adding-a-rule-900x893.png 900w\" sizes=\"(max-width: 500px) 100vw, 500px\" /></p>\n<p>The new Robots.txt module now also supports WordPress Multisite Networks.  There&#8217;s a new <a href=\"https://semperplugins.com/documentation/robots-txt-editor-for-multisite-networks/\">Robots.txt Editor</a> in the Network Admin panel that enables Network Administrators to set global rules.  These global rules are used by all sites in the network and cannot be overridden at site level.</p>\n<p><img class=\"aligncenter wp-image-4329\" src=\"https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin.png\" alt=\"Robots.txt Editor in Network Admin\" width=\"500\" height=\"396\" srcset=\"https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin.png 1896w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-300x238.png 300w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-768x608.png 768w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-1024x811.png 1024w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-316x250.png 316w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-100x79.png 100w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-150x119.png 150w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-200x158.png 200w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-450x356.png 450w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-600x475.png 600w, https://semperplugins.com/wp-content/uploads/2018/08/Robots.txt-Editor-in-Network-Admin-900x713.png 900w\" sizes=\"(max-width: 500px) 100vw, 500px\" /></p>\n<p>The new Robots.txt module is a big improvement for both site administrators and network administrators of large multisite installations.  It continues our commitment to deliver the best possible SEO tools to you so you can effectively manage your own SEO.</p>\n<p>If you&#8217;d like to learn more, then we highly recommend you to check out our documentation on the new Robots.txt module and Network Admin Robots.txt Editor:</p>\n<ul>\n<li class=\"icon-bg\"><a href=\"https://semperplugins.com/documentation/robots-txt-module/\">Robots.txt Module</a></li>\n<li class=\"icon-bg\"><a href=\"https://semperplugins.com/documentation/robots-txt-editor-for-multisite-networks/\">Robots.txt Editor for Multisite Networks</a></li>\n</ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://semperplugins.com/new-robots-txt-module/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:31:\"https://semperplugins.com/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:14:{s:6:\"server\";s:12:\"nginx/1.17.3\";s:4:\"date\";s:29:\"Sat, 25 Jan 2020 19:30:44 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:10:\"set-cookie\";a:3:{i:0;s:98:\"srv_id=642bb54d8df0b663ead3557fbe5bd9fa; expires=Sat, 25-Jan-20 20:30:44 GMT; max-age=3600; path=/\";i:1;s:50:\"PHPSESSID=569835fd35d7d93b081f1992da42c6d9; path=/\";i:2;s:70:\"Cart66DBSID=S74YSO34DGJNP1NS79EAU4BKHBJYGRDXK0MDIOXJ; path=/; HttpOnly\";}s:7:\"expires\";s:29:\"Thu, 19 Nov 1981 08:52:00 GMT\";s:13:\"cache-control\";s:35:\"no-store, no-cache, must-revalidate\";s:6:\"pragma\";s:8:\"no-cache\";s:3:\"p3p\";s:69:\"CP=\"IDC DSP COR ADM DEVi TAIi PSA PSD IVAi IVDi CONi HIS OUR IND CNT\"\";s:13:\"last-modified\";s:29:\"Sat, 25 Jan 2020 01:20:32 GMT\";s:4:\"etag\";s:34:\"\"635c77bc68ccfbecb98c774e8941f226\"\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:4:\"link\";s:62:\"<https://semperplugins.com/wp-json/>; rel=\"https://api.w.org/\"\";s:9:\"x-backend\";s:22:\"awesomemotive-web6.com\";s:25:\"strict-transport-security\";s:13:\"max-age=86400\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1207, '_transient_timeout_feed_mod_54af7cb0f50a8f4f8cdb30f2d9b4f50c', '1580023841', 'no'),
(1208, '_transient_feed_mod_54af7cb0f50a8f4f8cdb30f2d9b4f50c', '1579980641', 'no'),
(1209, '_transient_timeout_aioseop_feed', '1580023841', 'no'),
(1210, '_transient_aioseop_feed', 'a:4:{i:0;a:4:{s:3:\"url\";s:155:\"https://semperplugins.com/dont-miss-out-on-our-black-friday-deal/?utm_source=rss&amp;utm_medium=rss&amp;utm_campaign=dont-miss-out-on-our-black-friday-deal\";s:5:\"title\";s:41:\"Don’t miss out on our Black Friday deal\";s:4:\"date\";s:13:\"Nov 28th 2019\";s:7:\"content\";s:131:\"\n\n2019 has been quite remarkable, with the release of our major 3.0 version and countless of new features such as Schema.org mar...\";}i:1;a:4:{s:3:\"url\";s:141:\"https://semperplugins.com/heres-some-exciting-google-news/?utm_source=rss&amp;utm_medium=rss&amp;utm_campaign=heres-some-exciting-google-news\";s:5:\"title\";s:34:\"Here’s some exciting Google news\";s:4:\"date\";s:13:\"Nov 26th 2019\";s:7:\"content\";s:131:\" We&#8217;ve got some exciting Google news for you.\n\n\n\nNew Speed report in Google Search Console\n\n\n\nIn order to help site owners...\";}i:2;a:4:{s:3:\"url\";s:125:\"https://semperplugins.com/all-in-one-seo-pack-3-2/?utm_source=rss&amp;utm_medium=rss&amp;utm_campaign=all-in-one-seo-pack-3-2\";s:5:\"title\";s:40:\"What’s new in All in One SEO Pack 3.2?\";s:4:\"date\";s:12:\"Aug 1st 2019\";s:7:\"content\";s:131:\"Our latest 3.2 release brings new functionality to All in One SEO Pack that you have all been waiting for: Schema.org markup! In...\";}i:3;a:4:{s:3:\"url\";s:145:\"https://semperplugins.com/schema-markup-all-in-one-seo-pack/?utm_source=rss&amp;utm_medium=rss&amp;utm_campaign=schema-markup-all-in-one-seo-pack\";s:5:\"title\";s:49:\"All-New Schema markup in All in One SEO Pack v3.2\";s:4:\"date\";s:12:\"Aug 1st 2019\";s:7:\"content\";s:131:\"Version 3.2 of All in One SEO Pack and All in One SEO Pack Pro adds new Schema.org structured data markup along with new options...\";}}', 'no'),
(1211, '_transient_timeout_wc_report_sales_by_date', '1580067042', 'no'),
(1212, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"cfe9db35f390a517c4d314b7354be61c\";a:0:{}s:32:\"876719f9afa82f342b469759048801bf\";a:0:{}s:32:\"c8d8f8866b86fd4118f7c019bdd653ad\";a:0:{}s:32:\"d5bc1711cc1a7f3c73eee011dce9fbe3\";N;s:32:\"ac8aaddde72b037887726155ee0dde3a\";a:0:{}s:32:\"78beb2e4a6eff63891e0fbc11c280d9a\";a:0:{}s:32:\"1431e48988db740cc46fe2272b7a92a7\";a:0:{}s:32:\"0bd6c97a6344e25036eaf8576f35422f\";a:0:{}}', 'no'),
(1213, '_transient_timeout_wc_admin_report', '1580067042', 'no'),
(1214, '_transient_wc_admin_report', 'a:1:{s:32:\"bd70e6f0d0fb9272d4ebe89c4f97dea7\";a:0:{}}', 'no'),
(1215, '_transient_timeout_wc_low_stock_count', '1582572642', 'no'),
(1216, '_transient_wc_low_stock_count', '0', 'no'),
(1217, '_transient_timeout_wc_outofstock_count', '1582572642', 'no'),
(1218, '_transient_wc_outofstock_count', '0', 'no'),
(1223, '_transient_timeout__woocommerce_helper_updates', '1580023936', 'no'),
(1224, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1579980736;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1225, '_transient_timeout_plugin_slugs', '1580067647', 'no'),
(1226, '_transient_plugin_slugs', 'a:14:{i:0;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:1;s:20:\"cb-gallery/index.php\";i:2;s:21:\"cb-snippets/index.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:5;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:6;s:35:\"nav-menu-images/nav-menu-images.php\";i:7;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:8;s:39:\"so-widgets-bundle/so-widgets-bundle.php\";i:9;s:49:\"webhook-netlify-deploy/netlify-webhook-deploy.php\";i:10;s:41:\"widget-css-classes/widget-css-classes.php\";i:11;s:27:\"woocommerce/woocommerce.php\";i:12;s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";i:13;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'no'),
(1227, '_transient_timeout_wc_upgrade_notice_3.9.0', '1580067142', 'no'),
(1228, '_transient_wc_upgrade_notice_3.9.0', '', 'no'),
(1229, '_transient_is_multi_author', '0', 'yes'),
(1230, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1579991564', 'no'),
(1231, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4661;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3875;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2657;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2537;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1788;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1771;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1479;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1465;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1459;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1446;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1406;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1383;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1169;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1157;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1116;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1084;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1082;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:977;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:864;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:864;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:839;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:781;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:756;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:752;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:749;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:730;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:696;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:690;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:641;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:639;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:626;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:610;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:568;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:540;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:538;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:533;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:492;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:491;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:485;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:474;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:463;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:458;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:435;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:391;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:390;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:375;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:355;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:343;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:324;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:322;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:320;}}', 'no'),
(1239, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579981243;s:7:\"checked\";a:14:{s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:3:\"2.5\";s:20:\"cb-gallery/index.php\";s:3:\"4.3\";s:21:\"cb-snippets/index.php\";s:3:\"1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.9.11\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.15\";s:35:\"nav-menu-images/nav-menu-images.php\";s:3:\"3.4\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.6.6\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:6:\"1.11.8\";s:49:\"webhook-netlify-deploy/netlify-webhook-deploy.php\";s:5:\"1.1.3\";s:41:\"widget-css-classes/widget-css-classes.php\";s:7:\"1.5.2.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.1\";s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";s:5:\"1.9.0\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.2.5\";}s:8:\"response\";a:10:{s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-seo-pack\";s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:6:\"plugin\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.3.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-256x256.png?rev=2075006\";s:2:\"1x\";s:72:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-128x128.png?rev=2075006\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=1354894\";s:2:\"1x\";s:74:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=1354894\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:7:\"2.10.13\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/so-widgets-bundle\";s:4:\"slug\";s:17:\"so-widgets-bundle\";s:6:\"plugin\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:11:\"new_version\";s:6:\"1.15.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/so-widgets-bundle/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.15.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-256x256.png?rev=1044942\";s:2:\"1x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-128x128.png?rev=1044942\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/so-widgets-bundle/assets/banner-772x250.jpg?rev=1044942\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"widget-css-classes/widget-css-classes.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/widget-css-classes\";s:4:\"slug\";s:18:\"widget-css-classes\";s:6:\"plugin\";s:41:\"widget-css-classes/widget-css-classes.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/widget-css-classes/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/widget-css-classes.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-256x256.jpg?rev=1130657\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-128x128.jpg?rev=1130657\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/widget-css-classes/assets/banner-1544x500.jpg?rev=1130650\";s:2:\"1x\";s:73:\"https://ps.w.org/widget-css-classes/assets/banner-772x250.jpg?rev=1130650\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:49:\"w.org/plugins/woo-tabbed-category-product-listing\";s:4:\"slug\";s:35:\"woo-tabbed-category-product-listing\";s:6:\"plugin\";s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/woo-tabbed-category-product-listing/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/woo-tabbed-category-product-listing.2.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.png?rev=2095725\";s:2:\"1x\";s:88:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.png?rev=2095725\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:90:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/banner-772x250.jpg?rev=1718935\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:5:\"5.6.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:35:\"nav-menu-images/nav-menu-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/nav-menu-images\";s:4:\"slug\";s:15:\"nav-menu-images\";s:6:\"plugin\";s:35:\"nav-menu-images/nav-menu-images.php\";s:11:\"new_version\";s:3:\"3.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nav-menu-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/nav-menu-images.3.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/nav-menu-images.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:49:\"webhook-netlify-deploy/netlify-webhook-deploy.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/webhook-netlify-deploy\";s:4:\"slug\";s:22:\"webhook-netlify-deploy\";s:6:\"plugin\";s:49:\"webhook-netlify-deploy/netlify-webhook-deploy.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/webhook-netlify-deploy/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/webhook-netlify-deploy.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/webhook-netlify-deploy/assets/icon-256x256.jpg?rev=2097561\";s:2:\"1x\";s:75:\"https://ps.w.org/webhook-netlify-deploy/assets/icon-128x128.jpg?rev=2097561\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/webhook-netlify-deploy/assets/banner-1544x500.jpg?rev=2097561\";s:2:\"1x\";s:77:\"https://ps.w.org/webhook-netlify-deploy/assets/banner-772x250.jpg?rev=2097561\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1247, 'webhook_address', '', 'yes'),
(1248, 'netlify_site_id', '_ga=2.37030308.506335667.1579980433-596670579.1578881174', 'yes'),
(1249, 'netlify_api_key', '_ga=2.37030308.506335667.1579980433-596670579.1578881174', 'yes'),
(1250, 'netlify_user_agent', 'bharmal.netlify.com', 'yes'),
(1251, '_transient_timeout_settings_errors', '1579981775', 'no'),
(1252, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"updated\";}}', 'no'),
(1254, 'enable_scheduled_builds', '', 'yes'),
(1255, 'select_time_build', '00:00', 'yes'),
(1256, 'select_schedule_builds', 'a:1:{i:0;s:5:\"daily\";}', 'yes'),
(1257, '_transient_timeout_external_ip_address_::1', '1585468059', 'no'),
(1258, '_transient_external_ip_address_::1', '103.26.58.78', 'no'),
(1259, '_transient_doing_cron', '1584863260.9714701175689697265625', 'yes');

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
(1, 2, '_wp_page_template', 'templates/front-page.php'),
(7, 2, '_edit_last', '1'),
(8, 2, '_edit_lock', '1555958218:1'),
(12, 8, '_edit_lock', '1555566114:1'),
(13, 10, '_edit_lock', '1555870131:1'),
(14, 12, '_edit_lock', '1555701268:1'),
(15, 15, '_menu_item_type', 'post_type'),
(16, 15, '_menu_item_menu_item_parent', '0'),
(17, 15, '_menu_item_object_id', '12'),
(18, 15, '_menu_item_object', 'page'),
(19, 15, '_menu_item_target', ''),
(20, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 15, '_menu_item_xfn', ''),
(22, 15, '_menu_item_url', ''),
(23, 15, '_menu_item_orphaned', '1555566612'),
(24, 16, '_menu_item_type', 'post_type'),
(25, 16, '_menu_item_menu_item_parent', '0'),
(26, 16, '_menu_item_object_id', '10'),
(27, 16, '_menu_item_object', 'page'),
(28, 16, '_menu_item_target', ''),
(29, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 16, '_menu_item_xfn', ''),
(31, 16, '_menu_item_url', ''),
(32, 16, '_menu_item_orphaned', '1555566613'),
(33, 17, '_menu_item_type', 'post_type'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '8'),
(36, 17, '_menu_item_object', 'page'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(41, 17, '_menu_item_orphaned', '1555566614'),
(42, 18, '_menu_item_type', 'post_type'),
(43, 18, '_menu_item_menu_item_parent', '0'),
(44, 18, '_menu_item_object_id', '2'),
(45, 18, '_menu_item_object', 'page'),
(46, 18, '_menu_item_target', ''),
(47, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 18, '_menu_item_xfn', ''),
(49, 18, '_menu_item_url', ''),
(50, 18, '_menu_item_orphaned', '1555566614'),
(51, 19, '_menu_item_type', 'post_type'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '12'),
(54, 19, '_menu_item_object', 'page'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', ''),
(60, 20, '_menu_item_type', 'post_type'),
(61, 20, '_menu_item_menu_item_parent', '0'),
(62, 20, '_menu_item_object_id', '10'),
(63, 20, '_menu_item_object', 'page'),
(64, 20, '_menu_item_target', ''),
(65, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 20, '_menu_item_xfn', ''),
(67, 20, '_menu_item_url', ''),
(69, 21, '_menu_item_type', 'post_type'),
(70, 21, '_menu_item_menu_item_parent', '0'),
(71, 21, '_menu_item_object_id', '8'),
(72, 21, '_menu_item_object', 'page'),
(73, 21, '_menu_item_target', ''),
(74, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 21, '_menu_item_xfn', ''),
(76, 21, '_menu_item_url', ''),
(78, 22, '_menu_item_type', 'post_type'),
(79, 22, '_menu_item_menu_item_parent', '0'),
(80, 22, '_menu_item_object_id', '2'),
(81, 22, '_menu_item_object', 'page'),
(82, 22, '_menu_item_target', ''),
(83, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 22, '_menu_item_xfn', ''),
(85, 22, '_menu_item_url', ''),
(86, 23, '_wp_attached_file', '2019/04/banner-1.png'),
(87, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:542;s:4:\"file\";s:20:\"2019/04/banner-1.png\";s:5:\"sizes\";a:10:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banner-1-600x203.png\";s:5:\"width\";i:600;s:6:\"height\";i:203;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-1-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-1-768x260.png\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-1-1024x347.png\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-624x211.png\";s:5:\"width\";i:624;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banner-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"banner-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 2, 'cb_gallery_galleries', 'a:1:{s:1:\"a\";a:1:{i:3;a:2:{i:0;s:2:\"23\";i:1;s:2:\"27\";}}}'),
(89, 23, '_edit_lock', '1555762773:1'),
(90, 24, '_edit_lock', '1555648234:1'),
(91, 24, '_edit_last', '1'),
(92, 24, 'cb_gallery_galleries', 'a:1:{s:1:\"a\";a:0:{}}'),
(93, 24, '_wp_page_template', 'templates/sitemap.php'),
(94, 12, '_wp_page_template', 'templates/contact.php'),
(95, 12, '_edit_last', '1'),
(96, 12, 'cb_gallery_galleries', 'a:1:{s:1:\"a\";a:0:{}}'),
(97, 26, '_form', '<div class=\"row\">\n<div class=\"col-sm-6\">\n[text* first-name class:form-control placeholder \"First Name\"]\n</div>\n<div class=\"col-sm-6\">\n[text last-name class:form-control placeholder \"Last Name\"]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-sm-6\">\n[email* your-email class:form-control placeholder \"Email Address\"]\n</div>\n<div class=\"col-sm-6\">\n[text your-subject class:form-control placeholder \"Subject\"]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-sm-12\">\n[textarea your-message class:form-control placeholder \"Message\"]\n</div>\n</div>\n[submit]\n<br />\n<br />'),
(98, 26, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:33:\"Bharmal Brothers \"[your-subject]\"\";s:6:\"sender\";s:37:\"[your-name] <akshaychidre0@gmail.com>\";s:9:\"recipient\";s:23:\"akshaychidre0@gmail.com\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Bharmal Brothers (http://localhost:81/wp/bharmal/dev)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(99, 26, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"Bharmal Brothers \"[your-subject]\"\";s:6:\"sender\";s:42:\"Bharmal Brothers <akshaychidre0@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Bharmal Brothers (http://localhost:81/wp/bharmal/dev)\";s:18:\"additional_headers\";s:33:\"Reply-To: akshaychidre0@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(100, 26, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(101, 26, '_additional_settings', ''),
(102, 26, '_locale', 'en_US'),
(103, 23, 'cb_gallery_meta_link', ''),
(104, 23, 'cb_gallery_meta_embed_code', ''),
(105, 23, '_edit_last', '1'),
(106, 27, '_wp_attached_file', '2019/04/banner-2.png'),
(107, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:542;s:4:\"file\";s:20:\"2019/04/banner-2.png\";s:5:\"sizes\";a:10:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banner-2-600x203.png\";s:5:\"width\";i:600;s:6:\"height\";i:203;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-2-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-2-768x260.png\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-2-1024x347.png\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-624x211.png\";s:5:\"width\";i:624;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banner-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"banner-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 27, '_edit_lock', '1555763175:1'),
(109, 27, 'cb_gallery_meta_link', ''),
(110, 27, 'cb_gallery_meta_embed_code', ''),
(111, 27, '_edit_last', '1'),
(114, 30, '_wp_attached_file', 'woocommerce-placeholder.png'),
(116, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-624x624.png\";s:5:\"width\";i:624;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 36, '_wp_attached_file', '2019/04/MENS.png'),
(119, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:298;s:6:\"height\";i:338;s:4:\"file\";s:16:\"2019/04/MENS.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"MENS-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"MENS-264x300.png\";s:5:\"width\";i:264;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"MENS-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"MENS-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"MENS-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"MENS-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 37, '_wp_attached_file', '2019/04/LADS.png'),
(121, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:296;s:6:\"height\";i:336;s:4:\"file\";s:16:\"2019/04/LADS.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"LADS-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"LADS-264x300.png\";s:5:\"width\";i:264;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"LADS-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"LADS-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"LADS-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"LADS-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 41, '_menu_item_type', 'taxonomy'),
(150, 41, '_menu_item_menu_item_parent', '0'),
(151, 41, '_menu_item_object_id', '20'),
(152, 41, '_menu_item_object', 'product_cat'),
(153, 41, '_menu_item_target', ''),
(154, 41, '_menu_item_classes', 'a:1:{i:0;s:8:\"col-lg-4\";}'),
(155, 41, '_menu_item_xfn', ''),
(156, 41, '_menu_item_url', ''),
(158, 42, '_menu_item_type', 'taxonomy'),
(159, 42, '_menu_item_menu_item_parent', '0'),
(160, 42, '_menu_item_object_id', '21'),
(161, 42, '_menu_item_object', 'product_cat'),
(162, 42, '_menu_item_target', ''),
(163, 42, '_menu_item_classes', 'a:1:{i:0;s:8:\"col-lg-4\";}'),
(164, 42, '_menu_item_xfn', ''),
(165, 42, '_menu_item_url', ''),
(167, 43, '_menu_item_type', 'taxonomy'),
(168, 43, '_menu_item_menu_item_parent', '0'),
(169, 43, '_menu_item_object_id', '19'),
(170, 43, '_menu_item_object', 'product_cat'),
(171, 43, '_menu_item_target', ''),
(172, 43, '_menu_item_classes', 'a:1:{i:0;s:8:\"col-lg-4\";}'),
(173, 43, '_menu_item_xfn', ''),
(174, 43, '_menu_item_url', ''),
(176, 44, '_wp_attached_file', '2019/04/LADS-1.png'),
(177, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:296;s:6:\"height\";i:336;s:4:\"file\";s:18:\"2019/04/LADS-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"LADS-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"LADS-1-264x300.png\";s:5:\"width\";i:264;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"LADS-1-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"LADS-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"LADS-1-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"LADS-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 45, '_wp_attached_file', '2019/04/MENS-1.png'),
(179, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:298;s:6:\"height\";i:338;s:4:\"file\";s:18:\"2019/04/MENS-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"MENS-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"MENS-1-264x300.png\";s:5:\"width\";i:264;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"MENS-1-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"MENS-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"MENS-1-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"MENS-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 41, '_thumbnail_id', '44'),
(181, 42, '_thumbnail_id', '37'),
(182, 43, '_thumbnail_id', '36'),
(183, 46, '_edit_last', '1'),
(184, 46, '_edit_lock', '1555872596:1'),
(185, 47, '_wp_attached_file', '2019/04/8.1-600x600.jpg'),
(186, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2019/04/8.1-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"8.1-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"8.1-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"8.1-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 46, '_thumbnail_id', '47'),
(188, 46, 'total_sales', '0'),
(189, 46, '_tax_status', 'taxable'),
(190, 46, '_tax_class', ''),
(191, 46, '_manage_stock', 'no'),
(192, 46, '_backorders', 'no'),
(193, 46, '_sold_individually', 'no'),
(194, 46, '_virtual', 'no'),
(195, 46, '_downloadable', 'no'),
(196, 46, '_download_limit', '-1'),
(197, 46, '_download_expiry', '-1'),
(198, 46, '_stock', NULL),
(199, 46, '_stock_status', 'instock'),
(200, 46, '_wc_average_rating', '0'),
(201, 46, '_wc_review_count', '0'),
(202, 46, '_product_version', '3.6.1'),
(203, 49, '_edit_last', '1'),
(204, 49, '_edit_lock', '1555872660:1'),
(205, 49, '_thumbnail_id', '47'),
(206, 49, 'total_sales', '0'),
(207, 49, '_tax_status', 'taxable'),
(208, 49, '_tax_class', ''),
(209, 49, '_manage_stock', 'no'),
(210, 49, '_backorders', 'no'),
(211, 49, '_sold_individually', 'no'),
(212, 49, '_virtual', 'no'),
(213, 49, '_downloadable', 'no'),
(214, 49, '_download_limit', '-1'),
(215, 49, '_download_expiry', '-1'),
(216, 49, '_stock', NULL),
(217, 49, '_stock_status', 'instock'),
(218, 49, '_wc_average_rating', '0'),
(219, 49, '_wc_review_count', '0'),
(220, 49, '_product_version', '3.6.1'),
(221, 50, '_edit_last', '1'),
(222, 50, '_edit_lock', '1555958391:1'),
(223, 50, '_thumbnail_id', '47'),
(224, 50, 'total_sales', '0'),
(225, 50, '_tax_status', 'taxable'),
(226, 50, '_tax_class', ''),
(227, 50, '_manage_stock', 'no'),
(228, 50, '_backorders', 'no'),
(229, 50, '_sold_individually', 'no'),
(230, 50, '_virtual', 'no'),
(231, 50, '_downloadable', 'no'),
(232, 50, '_download_limit', '-1'),
(233, 50, '_download_expiry', '-1'),
(234, 50, '_stock', NULL),
(235, 50, '_stock_status', 'instock'),
(236, 50, '_wc_average_rating', '0'),
(237, 50, '_wc_review_count', '0'),
(238, 50, '_product_version', '3.6.1'),
(239, 51, '_edit_last', '1'),
(240, 51, '_edit_lock', '1555996718:1'),
(241, 51, '_thumbnail_id', '47'),
(242, 51, 'total_sales', '0'),
(243, 51, '_tax_status', 'taxable'),
(244, 51, '_tax_class', ''),
(245, 51, '_manage_stock', 'no'),
(246, 51, '_backorders', 'no'),
(247, 51, '_sold_individually', 'no'),
(248, 51, '_virtual', 'no'),
(249, 51, '_downloadable', 'no'),
(250, 51, '_download_limit', '-1'),
(251, 51, '_download_expiry', '-1'),
(252, 51, '_stock', NULL),
(253, 51, '_stock_status', 'instock'),
(254, 51, '_wc_average_rating', '0'),
(255, 51, '_wc_review_count', '0'),
(256, 51, '_product_version', '3.6.1'),
(257, 52, '_edit_last', '1'),
(258, 52, '_edit_lock', '1555958389:1'),
(259, 52, 'total_sales', '0'),
(260, 52, '_tax_status', 'taxable'),
(261, 52, '_tax_class', ''),
(262, 52, '_manage_stock', 'no'),
(263, 52, '_backorders', 'no'),
(264, 52, '_sold_individually', 'no'),
(265, 52, '_virtual', 'no'),
(266, 52, '_downloadable', 'no'),
(267, 52, '_download_limit', '-1'),
(268, 52, '_download_expiry', '-1'),
(269, 52, '_stock', NULL),
(270, 52, '_stock_status', 'instock'),
(271, 52, '_wc_average_rating', '0'),
(272, 52, '_wc_review_count', '0'),
(273, 52, '_product_version', '3.6.1'),
(274, 52, '_thumbnail_id', '47'),
(275, 53, '_edit_last', '1'),
(276, 53, '_edit_lock', '1555958390:1'),
(277, 53, '_thumbnail_id', '47'),
(278, 53, 'total_sales', '0'),
(279, 53, '_tax_status', 'taxable'),
(280, 53, '_tax_class', ''),
(281, 53, '_manage_stock', 'no'),
(282, 53, '_backorders', 'no'),
(283, 53, '_sold_individually', 'no'),
(284, 53, '_virtual', 'no'),
(285, 53, '_downloadable', 'no'),
(286, 53, '_download_limit', '-1'),
(287, 53, '_download_expiry', '-1'),
(288, 53, '_stock', NULL),
(289, 53, '_stock_status', 'instock'),
(290, 53, '_wc_average_rating', '0'),
(291, 53, '_wc_review_count', '0'),
(292, 53, '_product_version', '3.6.1'),
(293, 54, '_edit_last', '1'),
(294, 54, '_edit_lock', '1556003401:1'),
(295, 54, '_thumbnail_id', '47'),
(296, 54, 'total_sales', '0'),
(297, 54, '_tax_status', 'taxable'),
(298, 54, '_tax_class', ''),
(299, 54, '_manage_stock', 'no'),
(300, 54, '_backorders', 'no'),
(301, 54, '_sold_individually', 'no'),
(302, 54, '_virtual', 'no'),
(303, 54, '_downloadable', 'no'),
(304, 54, '_download_limit', '-1'),
(305, 54, '_download_expiry', '-1'),
(306, 54, '_stock', NULL),
(307, 54, '_stock_status', 'instock'),
(308, 54, '_wc_average_rating', '0'),
(309, 54, '_wc_review_count', '0'),
(310, 54, '_product_version', '3.6.1'),
(311, 55, '_edit_last', '1'),
(312, 55, '_edit_lock', '1555996528:1'),
(313, 55, '_thumbnail_id', '47'),
(314, 55, 'total_sales', '0'),
(315, 55, '_tax_status', 'taxable'),
(316, 55, '_tax_class', ''),
(317, 55, '_manage_stock', 'no'),
(318, 55, '_backorders', 'no'),
(319, 55, '_sold_individually', 'no'),
(320, 55, '_virtual', 'no'),
(321, 55, '_downloadable', 'no'),
(322, 55, '_download_limit', '-1'),
(323, 55, '_download_expiry', '-1'),
(324, 55, '_stock', NULL),
(325, 55, '_stock_status', 'instock'),
(326, 55, '_wc_average_rating', '0'),
(327, 55, '_wc_review_count', '0'),
(328, 55, '_product_version', '3.6.1'),
(339, 65, '_wp_attached_file', '2019/04/20.1-650x650.jpg'),
(340, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:24:\"2019/04/20.1-650x650.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-624x624.jpg\";s:5:\"width\";i:624;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"20.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"20.1-650x650-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 66, '_wp_attached_file', '2019/04/15.1-650x650.jpg'),
(342, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:24:\"2019/04/15.1-650x650.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-624x624.jpg\";s:5:\"width\";i:624;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"15.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"15.1-650x650-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 68, '_wp_attached_file', '2019/04/fav.png'),
(346, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:78;s:6:\"height\";i:80;s:4:\"file\";s:15:\"2019/04/fav.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 84, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1557324452;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}'),
(374, 85, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1557324452;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}'),
(375, 86, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1557324452;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}'),
(376, 87, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1557324452;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}');

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
(2, 1, '2019-04-18 05:40:30', '2019-04-18 05:40:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2019-04-22 18:37:44', '2019-04-22 18:37:44', '', 0, 'http://localhost:81/wp/bharmal/dev/?page_id=2', 0, 'page', '', 0),
(6, 1, '2019-04-18 05:41:43', '2019-04-18 05:41:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:81/wp/bharmal/dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-04-18 05:41:43', '2019-04-18 05:41:43', '', 2, 'http://localhost:81/wp/bharmal/dev/2019/04/18/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-04-18 05:42:09', '2019-04-18 05:42:09', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-04-18 05:42:09', '2019-04-18 05:42:09', '', 0, 'http://localhost:81/wp/bharmal/dev/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-04-18 05:42:09', '2019-04-18 05:42:09', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-04-18 05:42:09', '2019-04-18 05:42:09', '', 8, 'http://localhost:81/wp/bharmal/dev/2019/04/18/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-04-18 05:42:22', '2019-04-18 05:42:22', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-04-18 05:42:22', '2019-04-18 05:42:22', '', 0, 'http://localhost:81/wp/bharmal/dev/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-04-18 05:42:22', '2019-04-18 05:42:22', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-04-18 05:42:22', '2019-04-18 05:42:22', '', 10, 'http://localhost:81/wp/bharmal/dev/2019/04/18/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-04-18 05:42:31', '2019-04-18 05:42:31', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-04-19 17:47:20', '2019-04-19 17:47:20', '', 0, 'http://localhost:81/wp/bharmal/dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-04-18 05:42:31', '2019-04-18 05:42:31', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-04-18 05:42:31', '2019-04-18 05:42:31', '', 12, 'http://localhost:81/wp/bharmal/dev/2019/04/18/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-04-18 05:45:36', '2019-04-18 05:45:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-04-18 05:45:36', '2019-04-18 05:45:36', '', 2, 'http://localhost:81/wp/bharmal/dev/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-04-18 05:50:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-18 05:50:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-04-18 05:50:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-18 05:50:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-04-18 05:50:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-18 05:50:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2019-04-18 05:50:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-18 05:50:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-04-18 05:50:39', '2019-04-18 05:50:39', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-04-20 18:23:59', '2019-04-20 18:23:59', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2019-04-18 05:50:38', '2019-04-18 05:50:38', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-04-20 18:23:58', '2019-04-20 18:23:58', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2019-04-18 05:50:39', '2019-04-18 05:50:39', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-04-20 18:23:58', '2019-04-20 18:23:58', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2019-04-18 05:50:38', '2019-04-18 05:50:38', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-04-20 18:23:58', '2019-04-20 18:23:58', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-04-18 19:33:54', '2019-04-18 19:33:54', '<h1>Bags & Handbags </h1>\r\n<p>Lorem Ipsum is simply dummy text of the printing</p>\r\n<p>Lorem Ipsum has been the</p>\r\n<a href=\"#\" href=\"\" class=\"button\">View Collation</a>', 'banner-1', '', 'inherit', 'closed', 'closed', '', 'banner-1', '', '', '2019-04-20 12:21:49', '2019-04-20 12:21:49', '', 2, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/banner-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-04-18 20:04:54', '2019-04-18 20:04:54', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2019-04-18 20:05:14', '2019-04-18 20:05:14', '', 0, 'http://localhost:81/wp/bharmal/dev/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-04-18 20:04:54', '2019-04-18 20:04:54', '', 'Sitemap', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-04-18 20:04:54', '2019-04-18 20:04:54', '', 24, 'http://localhost:81/wp/bharmal/dev/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-04-19 19:21:44', '2019-04-19 19:21:44', '<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n[text* first-name class:form-control placeholder \"First Name\"]\r\n</div>\r\n<div class=\"col-sm-6\">\r\n[text last-name class:form-control placeholder \"Last Name\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n[email* your-email class:form-control placeholder \"Email Address\"]\r\n</div>\r\n<div class=\"col-sm-6\">\r\n[text your-subject class:form-control placeholder \"Subject\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n[textarea your-message class:form-control placeholder \"Message\"]\r\n</div>\r\n</div>\r\n[submit]\r\n<br />\r\n<br />\n1\nBharmal Brothers \"[your-subject]\"\n[your-name] <akshaychidre0@gmail.com>\nakshaychidre0@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Bharmal Brothers (http://localhost:81/wp/bharmal/dev)\nReply-To: [your-email]\n\n\n\n\nBharmal Brothers \"[your-subject]\"\nBharmal Brothers <akshaychidre0@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Bharmal Brothers (http://localhost:81/wp/bharmal/dev)\nReply-To: akshaychidre0@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-04-19 19:23:27', '2019-04-19 19:23:27', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=wpcf7_contact_form&#038;p=26', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2019-04-20 12:20:00', '2019-04-20 12:20:00', '<h1> Purse & Bags </h1>\r\n<p>Lorem Ipsum is simply dummy text of the printing</p>\r\n<p>Lorem Ipsum has been the</p>\r\n<a href=\"#\" href=\"\" class=\"button\">View Collation</a>', 'banner-2', '', 'inherit', 'closed', 'closed', '', 'banner-2', '', '', '2019-04-20 12:22:04', '2019-04-20 12:22:04', '', 2, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/banner-2.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-04-20 12:39:47', '2019-04-20 12:39:47', '', 'woocommerce-placeholder', '', 'inherit', 'closed', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-20 12:39:47', '2019-04-20 12:39:47', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2019-04-20 12:41:27', '2019-04-20 12:41:27', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-04-20 12:41:27', '2019-04-20 12:41:27', '', 0, 'http://localhost:81/wp/bharmal/dev/cart/', 0, 'page', '', 0),
(34, 1, '2019-04-20 12:41:27', '2019-04-20 12:41:27', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-04-20 12:41:27', '2019-04-20 12:41:27', '', 0, 'http://localhost:81/wp/bharmal/dev/checkout/', 0, 'page', '', 0),
(35, 1, '2019-04-20 12:41:28', '2019-04-20 12:41:28', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-04-20 12:41:28', '2019-04-20 12:41:28', '', 0, 'http://localhost:81/wp/bharmal/dev/my-account/', 0, 'page', '', 0),
(36, 1, '2019-04-20 12:47:07', '2019-04-20 12:47:07', '', 'MENS', '', 'inherit', 'closed', 'closed', '', 'mens', '', '', '2019-04-20 12:47:07', '2019-04-20 12:47:07', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/MENS.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-04-20 12:47:14', '2019-04-20 12:47:14', '', 'LADS', '', 'inherit', 'closed', 'closed', '', 'lads', '', '', '2019-04-20 12:47:14', '2019-04-20 12:47:14', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/LADS.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-04-20 18:16:36', '2019-04-20 18:16:36', 'Lorem Ipsum is simply dummy text', '#FOR CHAILD', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-04-20 18:36:04', '2019-04-20 18:36:04', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2019-04-20 18:16:36', '2019-04-20 18:16:36', 'Lorem Ipsum is simply dummy text', '#FOR LADS', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-04-20 18:36:04', '2019-04-20 18:36:04', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2019-04-20 18:16:37', '2019-04-20 18:16:37', 'Lorem Ipsum is simply dummy text', '#FOR MENS', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-04-20 18:36:04', '2019-04-20 18:36:04', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-04-20 18:25:45', '2019-04-20 18:25:45', '', 'LADS', '', 'inherit', 'closed', 'closed', '', 'lads-2', '', '', '2019-04-20 18:25:45', '2019-04-20 18:25:45', '', 41, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/LADS-1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-04-20 18:26:02', '2019-04-20 18:26:02', '', 'MENS', '', 'inherit', 'closed', 'closed', '', 'mens-2', '', '', '2019-04-20 18:26:02', '2019-04-20 18:26:02', '', 41, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/MENS-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-04-21 18:01:39', '2019-04-21 18:01:39', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag', '', '', '2019-04-22 18:31:00', '2019-04-22 18:31:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2019-04-21 18:01:30', '2019-04-21 18:01:30', '', '8.1-600x600', '', 'inherit', 'closed', 'closed', '', '8-1-600x600', '', '', '2019-04-21 18:01:30', '2019-04-21 18:01:30', '', 46, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/8.1-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-04-21 18:53:00', '2019-04-21 18:53:00', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-2', '', '', '2019-04-21 18:53:17', '2019-04-21 18:53:17', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2019-04-21 18:53:41', '2019-04-21 18:53:41', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-3', '', '', '2019-04-22 18:42:05', '2019-04-22 18:42:05', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2019-04-21 18:54:07', '2019-04-21 18:54:07', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-4', '', '', '2019-04-23 05:18:06', '2019-04-23 05:18:06', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2019-04-21 18:55:43', '2019-04-21 18:55:43', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-5', '', '', '2019-04-22 18:41:54', '2019-04-22 18:41:54', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2019-04-21 18:56:37', '2019-04-21 18:56:37', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-6', '', '', '2019-04-22 18:41:47', '2019-04-22 18:41:47', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2019-04-21 18:57:16', '2019-04-21 18:57:16', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-7', '', '', '2019-04-23 07:04:28', '2019-04-23 07:04:28', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2019-04-21 18:57:51', '2019-04-21 18:57:51', '', 'BARREL BAG', '', 'publish', 'closed', 'closed', '', 'barrel-bag-8', '', '', '2019-04-22 18:42:08', '2019-04-22 18:42:08', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2019-04-22 18:34:51', '2019-04-22 18:34:51', '[wtcpl-product-cat]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-04-22 18:34:51', '2019-04-22 18:34:51', '', 2, 'http://localhost:81/wp/bharmal/dev/2-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-04-22 18:37:43', '2019-04-22 18:37:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-04-22 18:37:43', '2019-04-22 18:37:43', '', 2, 'http://localhost:81/wp/bharmal/dev/2-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-04-22 18:41:33', '2019-04-22 18:41:33', '', 'BARREL BAG', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2019-04-22 18:41:33', '2019-04-22 18:41:33', '', 55, 'http://localhost:81/wp/bharmal/dev/55-autosave-v1/', 0, 'revision', '', 0),
(65, 1, '2019-04-23 07:12:48', '2019-04-23 07:12:48', '', '20.1-650x650', '', 'inherit', 'closed', 'closed', '', '20-1-650x650', '', '', '2019-04-23 07:12:48', '2019-04-23 07:12:48', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/20.1-650x650.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-04-23 07:13:12', '2019-04-23 07:13:12', '', '15.1-650x650', '', 'inherit', 'closed', 'closed', '', '15-1-650x650', '', '', '2019-04-23 07:13:12', '2019-04-23 07:13:12', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/15.1-650x650.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-04-23 08:12:46', '2019-04-23 08:12:46', '', 'fav', '', 'inherit', 'closed', 'closed', '', 'fav', '', '', '2019-04-23 08:12:46', '2019-04-23 08:12:46', '', 0, 'http://localhost:81/wp/bharmal/dev/wp-content/uploads/2019/04/fav.png', 0, 'attachment', 'image/png', 0),
(84, 0, '2019-05-15 14:09:32', '2019-05-15 14:09:32', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e2c95be26da42.94784413-5Ixl7gOPbLA6BlsenYugtlFvlAmBli9c', '', '', '2020-01-25 19:23:42', '2020-01-25 19:23:42', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=scheduled-action&#038;p=84', 1, 'scheduled-action', '', 3),
(85, 0, '2019-05-15 14:09:33', '2019-05-15 14:09:33', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'closed', 'closed', '', 'scheduled-action-5e2c960064d023.92811483-jqMSbLITVsbIkKjlVWk1A1N0igG2IXaF', '', '', '2020-01-25 19:24:48', '2020-01-25 19:24:48', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=scheduled-action&#038;p=85', 0, 'scheduled-action', '', 3),
(86, 0, '2020-02-01 19:23:42', '2020-02-01 19:23:42', '[]', 'woocommerce_update_marketplace_suggestions', '', 'pending', 'closed', 'closed', '', '', '', '', '2020-02-01 19:23:42', '2020-02-01 19:23:42', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=scheduled-action&p=86', 0, 'scheduled-action', '', 1),
(87, 0, '2020-02-01 19:24:48', '2020-02-01 19:24:48', '[]', 'woocommerce_update_marketplace_suggestions', '', 'pending', 'closed', 'closed', '', '', '', '', '2020-02-01 19:24:48', '2020-02-01 19:24:48', '', 0, 'http://localhost:81/wp/bharmal/dev/?post_type=scheduled-action&p=87', 0, 'scheduled-action', '', 1),
(88, 1, '2020-01-25 19:30:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2020-01-25 19:30:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/wp/bharmal/dev/?p=88', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_taxonomymeta`
--

CREATE TABLE `wp_taxonomymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 19, 'order', '0'),
(2, 19, 'display_type', ''),
(3, 19, 'thumbnail_id', '36'),
(4, 20, 'order', '0'),
(5, 20, 'display_type', ''),
(6, 20, 'thumbnail_id', '37'),
(7, 21, 'order', '0'),
(8, 21, 'display_type', ''),
(9, 21, 'thumbnail_id', '37'),
(10, 19, 'product_count_product_cat', '4'),
(11, 18, 'product_count_product_cat', '2'),
(12, 21, 'product_count_product_cat', '2'),
(13, 20, 'product_count_product_cat', '1'),
(14, 23, 'order', '0'),
(15, 23, 'display_type', ''),
(16, 23, 'thumbnail_id', '66'),
(17, 23, 'product_count_product_cat', '1'),
(18, 24, 'order', '0'),
(19, 24, 'display_type', ''),
(20, 24, 'thumbnail_id', '0'),
(21, 25, 'order', '0'),
(22, 25, 'display_type', ''),
(23, 25, 'thumbnail_id', '65'),
(24, 25, 'product_count_product_cat', '1');

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'nav menu', 'nav-menu', 0),
(3, 'banner', 'banner', 0),
(5, 'simple', 'simple', 0),
(6, 'grouped', 'grouped', 0),
(7, 'variable', 'variable', 0),
(8, 'external', 'external', 0),
(9, 'exclude-from-search', 'exclude-from-search', 0),
(10, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(11, 'featured', 'featured', 0),
(12, 'outofstock', 'outofstock', 0),
(13, 'rated-1', 'rated-1', 0),
(14, 'rated-2', 'rated-2', 0),
(15, 'rated-3', 'rated-3', 0),
(16, 'rated-4', 'rated-4', 0),
(17, 'rated-5', 'rated-5', 0),
(18, 'Uncategorized', 'uncategorized', 0),
(19, 'MENS', 'mens', 0),
(20, 'CHAILD', 'chaild', 0),
(21, 'LADS', 'lads', 0),
(22, 'Categories', 'categories', 0),
(23, 'purse', 'purse', 0),
(24, 'backpacks', 'backpacks', 0),
(25, 'cluthches', 'cluthches', 0);

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
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(41, 22, 0),
(42, 22, 0),
(43, 22, 0),
(46, 5, 0),
(46, 11, 0),
(46, 19, 0),
(49, 5, 0),
(49, 18, 0),
(50, 5, 0),
(50, 11, 0),
(50, 19, 0),
(51, 5, 0),
(51, 11, 0),
(51, 21, 0),
(51, 23, 0),
(52, 5, 0),
(52, 11, 0),
(52, 19, 0),
(53, 5, 0),
(53, 11, 0),
(53, 18, 0),
(53, 20, 0),
(54, 5, 0),
(54, 11, 0),
(54, 21, 0),
(54, 25, 0),
(55, 5, 0),
(55, 11, 0),
(55, 19, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'cb_gallery_types', '', 0, 0),
(5, 5, 'product_type', '', 0, 8),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 7),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', '', 0, 2),
(19, 19, 'product_cat', '', 0, 4),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'product_cat', '', 0, 2),
(22, 22, 'nav_menu', '', 0, 3),
(23, 23, 'product_cat', '', 21, 1),
(24, 24, 'product_cat', '', 21, 0),
(25, 25, 'product_cat', '', 21, 1);

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
(1, 1, 'nickname', 'bharmal'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html,text_widget_paste_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"772e39d73c20de8cc923319cf0273404dad108cd56ae87d8db7ef7f1411c04cb\";a:4:{s:10:\"expiration\";i:1580153426;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579980626;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(18, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '22'),
(21, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1555761013'),
(23, 1, 'aioseop_seen_about_page', '2.5'),
(24, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(25, 1, '_woocommerce_tracks_anon_id', 'woo:opi9FyQdK7KqVWUxdVI5TTGR'),
(26, 1, 'wc_last_active', '1579910400'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(29, 1, 'aioseop_visibility_notice_dismissed', '1');

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
(1, 'bharmal', '$P$Bcgmeep0SlSLUb8HAZXBPTFtoIUPfU1', 'bharmal', 'akshaychidre0@gmail.com', '', '2019-04-18 05:40:29', '', 0, 'bharmal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(46, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(49, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(50, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(51, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(52, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(53, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(54, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(55, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:8:{s:22:\"mailchimp_landing_site\";s:70:\"http://localhost:81/wp/bharmal/dev/wp/bharmal/dev/wp-admin/admin-ajax.php\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:711:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"akshaychidre0@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1580153508);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_taxonomymeta`
--
ALTER TABLE `wp_taxonomymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `taxonomy_id` (`taxonomy_id`),
  ADD KEY `meta_key` (`meta_key`(191));

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1260;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_taxonomymeta`
--
ALTER TABLE `wp_taxonomymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

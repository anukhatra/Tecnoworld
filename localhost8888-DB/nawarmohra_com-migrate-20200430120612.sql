# WordPress MySQL database migration
#
# Generated: Thursday 30. April 2020 12:06 UTC
# Hostname: nawarmohra.com.mysql.service.one.com
# Database: `nawarmohra_com`
# URL: http://localhost:8888
# Path: /customers/a/f/c/nawarmohra.com/httpd.www/tecno-world
# Tables: tecno_world_actionscheduler_actions, tecno_world_actionscheduler_claims, tecno_world_actionscheduler_groups, tecno_world_actionscheduler_logs, tecno_world_commentmeta, tecno_world_comments, tecno_world_links, tecno_world_mailchimp_carts, tecno_world_mailchimp_jobs, tecno_world_options, tecno_world_postmeta, tecno_world_posts, tecno_world_term_relationships, tecno_world_term_taxonomy, tecno_world_termmeta, tecno_world_terms, tecno_world_usermeta, tecno_world_users, tecno_world_wc_admin_note_actions, tecno_world_wc_admin_notes, tecno_world_wc_category_lookup, tecno_world_wc_customer_lookup, tecno_world_wc_download_log, tecno_world_wc_order_coupon_lookup, tecno_world_wc_order_product_lookup, tecno_world_wc_order_stats, tecno_world_wc_order_tax_lookup, tecno_world_wc_product_meta_lookup, tecno_world_wc_tax_rate_classes, tecno_world_wc_webhooks, tecno_world_woocommerce_api_keys, tecno_world_woocommerce_attribute_taxonomies, tecno_world_woocommerce_downloadable_product_permissions, tecno_world_woocommerce_log, tecno_world_woocommerce_order_itemmeta, tecno_world_woocommerce_order_items, tecno_world_woocommerce_payment_tokenmeta, tecno_world_woocommerce_payment_tokens, tecno_world_woocommerce_sessions, tecno_world_woocommerce_shipping_zone_locations, tecno_world_woocommerce_shipping_zone_methods, tecno_world_woocommerce_shipping_zones, tecno_world_woocommerce_tax_rate_locations, tecno_world_woocommerce_tax_rates
# Table Prefix: tecno_world_
# Post Types: revision, attachment, custom_css, customize_changeset, nav_menu_item, page, post, product
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `tecno_world_actionscheduler_actions`
#

DROP TABLE IF EXISTS `tecno_world_actionscheduler_actions`;


#
# Table structure of table `tecno_world_actionscheduler_actions`
#

CREATE TABLE `tecno_world_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_actionscheduler_actions`
#
INSERT INTO `tecno_world_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-04-28 09:45:45', '2020-04-28 10:45:45', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1588067145;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1588067145;s:19:"scheduled_timestamp";i:1588067145;s:9:"timestamp";i:1588067145;}', 1, 1, '2020-04-28 09:45:47', '2020-04-28 10:45:47', 0, NULL),
(7, 'action_scheduler/migration_hook', 'complete', '2020-04-28 09:45:47', '2020-04-28 10:45:47', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1588067147;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1588067147;s:19:"scheduled_timestamp";i:1588067147;s:9:"timestamp";i:1588067147;}', 1, 1, '2020-04-28 09:45:48', '2020-04-28 10:45:48', 0, NULL),
(8, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-04-28 09:47:52', '2020-04-28 10:47:52', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1588067272;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1588067272;s:19:"scheduled_timestamp";i:1588067272;s:9:"timestamp";i:1588067272;}', 0, 1, '2020-04-28 09:48:07', '2020-04-28 10:48:07', 0, NULL) ;

#
# End of data contents of table `tecno_world_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_actionscheduler_claims`
#

DROP TABLE IF EXISTS `tecno_world_actionscheduler_claims`;


#
# Table structure of table `tecno_world_actionscheduler_claims`
#

CREATE TABLE `tecno_world_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_actionscheduler_claims`
#

#
# End of data contents of table `tecno_world_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_actionscheduler_groups`
#

DROP TABLE IF EXISTS `tecno_world_actionscheduler_groups`;


#
# Table structure of table `tecno_world_actionscheduler_groups`
#

CREATE TABLE `tecno_world_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_actionscheduler_groups`
#
INSERT INTO `tecno_world_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration') ;

#
# End of data contents of table `tecno_world_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_actionscheduler_logs`
#

DROP TABLE IF EXISTS `tecno_world_actionscheduler_logs`;


#
# Table structure of table `tecno_world_actionscheduler_logs`
#

CREATE TABLE `tecno_world_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_actionscheduler_logs`
#
INSERT INTO `tecno_world_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-04-28 09:45:45', '2020-04-28 10:45:45'),
(2, 6, 'action started via Async Request', '2020-04-28 09:45:47', '2020-04-28 10:45:47'),
(3, 6, 'action complete via Async Request', '2020-04-28 09:45:47', '2020-04-28 10:45:47'),
(4, 7, 'action created', '2020-04-28 09:45:47', '2020-04-28 10:45:47'),
(5, 7, 'action started via WP Cron', '2020-04-28 09:45:48', '2020-04-28 10:45:48'),
(6, 7, 'action complete via WP Cron', '2020-04-28 09:45:48', '2020-04-28 10:45:48'),
(7, 8, 'action created', '2020-04-28 09:47:52', '2020-04-28 10:47:52'),
(8, 8, 'action started via Async Request', '2020-04-28 09:48:06', '2020-04-28 10:48:06'),
(9, 8, 'action complete via Async Request', '2020-04-28 09:48:07', '2020-04-28 10:48:07') ;

#
# End of data contents of table `tecno_world_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_commentmeta`
#

DROP TABLE IF EXISTS `tecno_world_commentmeta`;


#
# Table structure of table `tecno_world_commentmeta`
#

CREATE TABLE `tecno_world_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_commentmeta`
#

#
# End of data contents of table `tecno_world_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_comments`
#

DROP TABLE IF EXISTS `tecno_world_comments`;


#
# Table structure of table `tecno_world_comments`
#

CREATE TABLE `tecno_world_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_comments`
#
INSERT INTO `tecno_world_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-28 10:29:21', '2020-04-28 09:29:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `tecno_world_comments`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_links`
#

DROP TABLE IF EXISTS `tecno_world_links`;


#
# Table structure of table `tecno_world_links`
#

CREATE TABLE `tecno_world_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_links`
#

#
# End of data contents of table `tecno_world_links`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_mailchimp_carts`
#

DROP TABLE IF EXISTS `tecno_world_mailchimp_carts`;


#
# Table structure of table `tecno_world_mailchimp_carts`
#

CREATE TABLE `tecno_world_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_mailchimp_carts`
#

#
# End of data contents of table `tecno_world_mailchimp_carts`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_mailchimp_jobs`
#

DROP TABLE IF EXISTS `tecno_world_mailchimp_jobs`;


#
# Table structure of table `tecno_world_mailchimp_jobs`
#

CREATE TABLE `tecno_world_mailchimp_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_mailchimp_jobs`
#

#
# End of data contents of table `tecno_world_mailchimp_jobs`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_options`
#

DROP TABLE IF EXISTS `tecno_world_options`;


#
# Table structure of table `tecno_world_options`
#

CREATE TABLE `tecno_world_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_options`
#
INSERT INTO `tecno_world_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Tecnoworld', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nawarmohra@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=14&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";i:3;s:67:"klarna-checkout-for-woocommerce/klarna-checkout-for-woocommerce.php";i:4;s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";i:5;s:47:"onecom-themes-plugins/onecom-themes-plugins.php";i:6;s:26:"onecom-vcache/vcaching.php";i:7;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:8;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:9;s:45:"woocommerce-services/woocommerce-services.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:12:"Social media";s:4:"text";s:505:"<a href="http://www.facebook.com"><img class="alignleft" src="https://image.flaticon.com/icons/svg/1312/1312139.svg" alt="Facebook free icon" width="30" height="30" /></a><a href="http://www.Youtube.com"><img class="alignleft" src="https://image.flaticon.com/icons/svg/185/185983.svg" alt="Youtube free icon" width="30" height="30" /></a><a href="http://www.Twitter.com"><img class="alignleft" src="https://image.flaticon.com/icons/svg/185/185961.svg" alt="Twitter free icon" width="30" height="30" /></a>";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:8:"About us";s:4:"text";s:254:"<strong>Lorem Ipsum</strong> är en utfyllnadstext från tryck- och förlagsindustrin. Lorem ipsum har varit standard ända sedan 1500-talet, när en okänd boksättare tog att antal bokstäver och blandade dem för att göra ett provexemplar av en bok.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:0:"";s:4:"text";s:165:"&nbsp;\r\n\r\n<img class="alignnone wp-image-110 size-medium" src="http://localhost:8888/wp-content/uploads/2020/04/1footer-300x98.png" alt="" width="300" height="98" />";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '101', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603618160', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'tecno_world_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `tecno_world_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:1:{i:0;s:6:"text-4";}s:8:"footer-2";a:1:{i:0;s:6:"text-2";}s:8:"footer-3";a:1:{i:0;s:6:"text-3";}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:16:{i:1588248403;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1588249763;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1588250744;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588250747;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1588250752;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1588251759;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1588261544;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1588282163;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1588287600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588325362;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588325364;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588325369;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588326354;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1588757497;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1589363204;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1588067059;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'onecom_activation_plugins_onecom-themes-plugins', '1', 'no'),
(119, 'onecom_plugin_version_vcache', '0.1.29', 'no'),
(123, 'varnish_caching_enable', 'true', 'no'),
(124, 'oc_cdn_enabled', 'true', 'no'),
(125, 'varnish_caching_ttl', '2592000', 'no'),
(126, 'varnish_caching_homepage_ttl', '2592000', 'no'),
(136, 'onecom_vcache_check', '1588066224', 'yes'),
(142, 'oc_rules_version', '1.1', 'no'),
(143, 'varnish_caching_cookie', '34d734b34ce8fd6ce060ca93bdbee88a0e4cd354', 'yes'),
(144, 'varnish_caching_ips', '46.30.215.140', 'yes'),
(147, 'onecom_local_promo', 'a:3:{s:4:"show";b:1;s:4:"html";s:0:"";s:6:"xpromo";s:0:"";}', 'no'),
(163, 'db_upgraded', '', 'yes'),
(169, 'can_compress_scripts', '0', 'no'),
(174, 'current_theme', 'storefront Child', 'yes'),
(175, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1588067062;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(176, 'theme_switched', '', 'yes'),
(177, 'storefront_nux_fresh_site', '1', 'yes'),
(179, 'theme_mods_storefront-child', 'a:14:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:24;}s:18:"custom_css_post_id";i:105;s:28:"storefront_header_text_color";s:7:"#1e73be";s:28:"storefront_header_link_color";s:7:"#30c7ff";s:28:"storefront_footer_text_color";s:7:"#0d607a";s:28:"storefront_footer_link_color";s:7:"#30c7ff";s:16:"background_color";s:6:"ffffff";s:23:"storefront_accent_color";s:7:"#30c7ff";s:11:"custom_logo";i:103;s:34:"storefront_footer_background_color";s:7:"#333333";s:29:"storefront_hero_heading_color";s:7:"#002244";s:24:"storefront_heading_color";s:7:"#1e73be";s:31:"storefront_footer_heading_color";s:7:"#00799e";}', 'yes'),
(181, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(184, 'schema-ActionScheduler_StoreSchema', '3.0.1588067143', 'yes'),
(185, 'schema-ActionScheduler_LoggerSchema', '2.0.1588067143', 'yes'),
(188, 'woocommerce_store_address', 'örnäsvägen', 'yes'),
(189, 'woocommerce_store_address_2', '', 'yes'),
(190, 'woocommerce_store_city', 'halmstad', 'yes'),
(191, 'woocommerce_default_country', 'SE:*', 'yes'),
(192, 'woocommerce_store_postcode', '30291', 'yes'),
(193, 'woocommerce_allowed_countries', 'all', 'yes'),
(194, 'woocommerce_all_except_countries', '', 'yes'),
(195, 'woocommerce_specific_allowed_countries', '', 'yes'),
(196, 'woocommerce_ship_to_countries', '', 'yes'),
(197, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(198, 'woocommerce_default_customer_address', 'base', 'yes'),
(199, 'woocommerce_calc_taxes', 'yes', 'yes'),
(200, 'woocommerce_enable_coupons', 'yes', 'yes'),
(201, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(202, 'woocommerce_currency', 'SEK', 'yes'),
(203, 'woocommerce_currency_pos', 'left', 'yes'),
(204, 'woocommerce_price_thousand_sep', ',', 'yes'),
(205, 'woocommerce_price_decimal_sep', '.', 'yes'),
(206, 'woocommerce_price_num_decimals', '2', 'yes'),
(207, 'woocommerce_shop_page_id', '6', 'yes'),
(208, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(209, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(210, 'woocommerce_placeholder_image', '5', 'yes'),
(211, 'woocommerce_weight_unit', 'kg', 'yes'),
(212, 'woocommerce_dimension_unit', 'cm', 'yes'),
(213, 'woocommerce_enable_reviews', 'yes', 'yes'),
(214, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(215, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(216, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(217, 'woocommerce_review_rating_required', 'yes', 'no'),
(218, 'woocommerce_manage_stock', 'yes', 'yes'),
(219, 'woocommerce_hold_stock_minutes', '60', 'no'),
(220, 'woocommerce_notify_low_stock', 'yes', 'no'),
(221, 'woocommerce_notify_no_stock', 'yes', 'no'),
(222, 'woocommerce_stock_email_recipient', 'nawarmohra@gmail.com', 'no'),
(223, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(224, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(225, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(226, 'woocommerce_stock_format', '', 'yes'),
(227, 'woocommerce_file_download_method', 'force', 'no'),
(228, 'woocommerce_downloads_require_login', 'no', 'no'),
(229, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(230, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(231, 'woocommerce_prices_include_tax', 'no', 'yes'),
(232, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(233, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(234, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(235, 'woocommerce_tax_classes', '', 'yes'),
(236, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(237, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(238, 'woocommerce_price_display_suffix', '', 'yes'),
(239, 'woocommerce_tax_total_display', 'itemized', 'no'),
(240, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(241, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(242, 'woocommerce_ship_to_destination', 'billing', 'no'),
(243, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(244, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(245, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(246, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(247, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(248, 'woocommerce_registration_generate_username', 'yes', 'no'),
(249, 'woocommerce_registration_generate_password', 'yes', 'no'),
(250, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(251, 'woocommerce_erasure_request_removes_download_data', 'no', 'no') ;
INSERT INTO `tecno_world_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(252, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(253, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(254, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(255, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(256, 'woocommerce_trash_pending_orders', '', 'no'),
(257, 'woocommerce_trash_failed_orders', '', 'no'),
(258, 'woocommerce_trash_cancelled_orders', '', 'no'),
(259, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(260, 'woocommerce_email_from_name', ' tecnoworld', 'no'),
(261, 'woocommerce_email_from_address', 'nawarmohra@gmail.com', 'no'),
(262, 'woocommerce_email_header_image', '', 'no'),
(263, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(264, 'woocommerce_email_base_color', '#96588a', 'no'),
(265, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(266, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(267, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(268, 'woocommerce_cart_page_id', '7', 'no'),
(269, 'woocommerce_checkout_page_id', '8', 'no'),
(270, 'woocommerce_myaccount_page_id', '9', 'no'),
(271, 'woocommerce_terms_page_id', '', 'no'),
(272, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(273, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(274, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(275, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(276, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(277, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(278, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(279, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(280, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(281, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(282, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(283, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(284, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(285, 'woocommerce_api_enabled', 'no', 'yes'),
(286, 'woocommerce_allow_tracking', 'yes', 'no'),
(287, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(288, 'woocommerce_single_image_width', '600', 'yes'),
(289, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(290, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(291, 'woocommerce_demo_store', 'no', 'no'),
(292, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(293, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(294, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(297, 'default_product_cat', '15', 'yes'),
(298, 'woocommerce_admin_notices', 'a:1:{i:2;s:19:"no_shipping_methods";}', 'yes'),
(301, 'woocommerce_version', '4.0.1', 'yes'),
(302, 'woocommerce_db_version', '4.0.1', 'yes'),
(303, 'action_scheduler_lock_async-request-runner', '1588248370', 'yes'),
(304, 'storefront_cleared_widgets', '1', 'yes'),
(305, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"pgdtS5oZfrrGfi2BRG373wBKBQpRfrmQ";}', 'yes'),
(307, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(308, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(309, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(310, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(311, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(312, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(313, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(314, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(316, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(317, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(318, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(319, 'woocommerce_onboarding_opt_in', 'no', 'yes'),
(322, 'woocommerce_admin_version', '1.0.3', 'yes'),
(323, 'woocommerce_admin_install_timestamp', '1588067146', 'yes'),
(327, 'action_scheduler_migration_status', 'complete', 'yes'),
(329, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(330, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(331, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(337, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(340, 'woocommerce_product_type', 'both', 'yes'),
(341, 'woocommerce_sell_in_person', '1', 'yes'),
(346, 'woocommerce_tracker_last_send', '1588067172', 'yes'),
(351, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:3:"yes";s:14:"create_account";s:3:"yes";s:5:"email";s:20:"nawarmohra@gmail.com";}', 'yes'),
(353, 'woocommerce_klarna_checkout_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(355, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:"reroute_requests";b:0;s:5:"email";b:0;}', 'yes'),
(356, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(357, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(358, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(359, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (). <a href="http://localhost:8888/wp-admin/index.php?wc-install-plugin-redirect=jetpack">Please install it manually by clicking here.</a>', 'yes'),
(360, 'woocommerce_admin_notice_klarna_checkout_install_error', 'Klarna Checkout for WooCommerce could not be installed (). <a href="http://localhost:8888/wp-admin/index.php?wc-install-plugin-redirect=klarna-checkout-for-woocommerce">Please install it manually by clicking here.</a>', 'yes'),
(361, 'wc_ppec_version', '1.6.21', 'yes'),
(367, 'wc_stripe_show_style_notice', 'no', 'yes'),
(368, 'wc_stripe_show_sca_notice', 'no', 'yes'),
(369, 'wc_stripe_version', '4.3.3', 'yes'),
(370, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(372, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(375, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (). <a href="http://localhost:8888/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce">Please install it manually by clicking here.</a>', 'yes'),
(376, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(377, 'wc_facebook_for_woocommerce_lifecycle_events', '[{"name":"install","time":1588070864,"version":"1.11.0"}]', 'no'),
(378, 'wc_facebook_for_woocommerce_version', '1.11.0', 'yes'),
(390, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:116:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:116:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:112:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:118:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:108:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:97:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:108:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:118:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:102:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:99:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:104:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:99:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1588067286;}', 'no'),
(392, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(398, 'wc_stripe_show_keys_notice', 'no', 'yes'),
(399, 'mailchimp_woocommerce_version', '2.3.6', 'no'),
(400, 'mailchimp-woocommerce', 'a:2:{s:33:"woocommerce_settings_save_general";b:1;s:19:"store_currency_code";s:3:"SEK";}', 'yes'),
(401, 'mailchimp-woocommerce-store_id', '5ea7fc101c3e8', 'yes'),
(402, 'mailchimp-woocommerce-store-id-last-verified', '1588248164', 'yes'),
(403, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(404, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes') ;
INSERT INTO `tecno_world_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(431, 'storefront_nux_guided_tour', '1', 'yes'),
(435, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(449, 'WPLANG', 'en_GB', 'yes'),
(450, 'new_admin_email', 'nawarmohra@gmail.com', 'yes'),
(495, 'woocommerce_tracker_ua', 'a:4:{i:0;s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";i:1;s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36";i:2;s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";i:3;s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36";}', 'yes'),
(813, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1588248372;}', 'no'),
(1132, 'product_cat_children', 'a:2:{i:17;a:2:{i:0;i:16;i:1;i:18;}i:19;a:2:{i:0;i:20;i:1;i:21;}}', 'yes'),
(1160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(1213, 'woocommerce_demo_store_notice', '', 'yes'),
(1289, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"nawarmohra@gmail.com";s:7:"version";s:5:"5.4.1";s:9:"timestamp";i:1588197477;}', 'no') ;

#
# End of data contents of table `tecno_world_options`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_postmeta`
#

DROP TABLE IF EXISTS `tecno_world_postmeta`;


#
# Table structure of table `tecno_world_postmeta`
#

CREATE TABLE `tecno_world_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_postmeta`
#
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"woocommerce-placeholder-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 11, '_edit_lock', '1588067492:1'),
(6, 11, '_wp_trash_meta_status', 'publish'),
(7, 11, '_wp_trash_meta_time', '1588067504'),
(8, 12, '_wp_trash_meta_status', 'publish'),
(9, 12, '_wp_trash_meta_time', '1588067537'),
(10, 13, '_edit_lock', '1588067552:1'),
(12, 14, '_customize_changeset_uuid', 'dcf273b5-a499-4ad6-bbad-bdbff0d4ae17'),
(13, 13, '_wp_trash_meta_status', 'publish'),
(14, 13, '_wp_trash_meta_time', '1588067596'),
(15, 16, '_edit_last', '1'),
(16, 16, 'total_sales', '0'),
(17, 16, '_tax_status', 'taxable'),
(18, 16, '_tax_class', ''),
(19, 16, '_manage_stock', 'no'),
(20, 16, '_backorders', 'no'),
(21, 16, '_sold_individually', 'no'),
(22, 16, '_virtual', 'no'),
(23, 16, '_downloadable', 'no'),
(24, 16, '_download_limit', '-1'),
(25, 16, '_download_expiry', '-1'),
(26, 16, '_stock', NULL),
(27, 16, '_stock_status', 'instock'),
(28, 16, '_wc_average_rating', '0'),
(29, 16, '_wc_review_count', '0'),
(30, 16, '_product_version', '4.0.1'),
(31, 16, '_wc_facebook_sync_enabled', 'no'),
(32, 16, '_edit_lock', '1588151482:1'),
(33, 17, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_bla_baksida.png'),
(34, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:47:"2020/04/samsung_galaxy_s10_plus_bla_baksida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_bla_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 18, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_bla_framsida.png'),
(36, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:48:"2020/04/samsung_galaxy_s10_plus_bla_framsida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_bla_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 19, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_bla_sida2.png'),
(38, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:45:"2020/04/samsung_galaxy_s10_plus_bla_sida2.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"samsung_galaxy_s10_plus_bla_sida2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 20, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_svart_1.png'),
(40, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:43:"2020/04/samsung_galaxy_s10_plus_svart_1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"samsung_galaxy_s10_plus_svart_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 21, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_svart_baksida3.png'),
(42, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:50:"2020/04/samsung_galaxy_s10_plus_svart_baksida3.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"samsung_galaxy_s10_plus_svart_baksida3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 22, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_svart_sida_2.png'),
(44, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:48:"2020/04/samsung_galaxy_s10_plus_svart_sida_2.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_svart_sida_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 23, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_vit_baksida.png'),
(46, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:47:"2020/04/samsung_galaxy_s10_plus_vit_baksida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:47:"samsung_galaxy_s10_plus_vit_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 24, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_vit_framsida.png'),
(48, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:48:"2020/04/samsung_galaxy_s10_plus_vit_framsida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"samsung_galaxy_s10_plus_vit_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 25, '_wp_attached_file', '2020/04/samsung_galaxy_s10_plus_vit_sida_2.png'),
(50, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:46:"2020/04/samsung_galaxy_s10_plus_vit_sida_2.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"samsung_galaxy_s10_plus_vit_sida_2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 16, '_thumbnail_id', '25'),
(52, 16, '_wp_old_slug', 'test'),
(53, 16, '_regular_price', '3000'),
(54, 16, '_price', '3000'),
(55, 16, '_product_image_gallery', '25'),
(56, 26, '_edit_lock', '1588152020:1'),
(57, 26, '_edit_last', '1'),
(58, 26, '_regular_price', '3000'),
(59, 26, 'total_sales', '0'),
(60, 26, '_tax_status', 'taxable'),
(61, 26, '_tax_class', ''),
(62, 26, '_manage_stock', 'no'),
(63, 26, '_backorders', 'no'),
(64, 26, '_sold_individually', 'no'),
(65, 26, '_virtual', 'no'),
(66, 26, '_downloadable', 'no'),
(67, 26, '_download_limit', '-1'),
(68, 26, '_download_expiry', '-1'),
(69, 26, '_stock', NULL),
(70, 26, '_stock_status', 'instock'),
(71, 26, '_wc_average_rating', '0'),
(72, 26, '_wc_review_count', '0'),
(73, 26, '_product_version', '4.0.1'),
(74, 26, '_price', '3000'),
(75, 26, '_product_image_gallery', '20,19'),
(76, 26, '_wc_facebook_sync_enabled', 'no'),
(77, 27, '_edit_lock', '1588151586:1'),
(78, 27, '_edit_last', '1'),
(79, 27, '_thumbnail_id', '22'),
(80, 27, '_regular_price', '1500'),
(81, 27, 'total_sales', '0'),
(82, 27, '_tax_status', 'taxable'),
(83, 27, '_tax_class', ''),
(84, 27, '_manage_stock', 'no'),
(85, 27, '_backorders', 'no'),
(86, 27, '_sold_individually', 'no'),
(87, 27, '_virtual', 'no'),
(88, 27, '_downloadable', 'no'),
(89, 27, '_download_limit', '-1'),
(90, 27, '_download_expiry', '-1'),
(91, 27, '_stock', NULL),
(92, 27, '_stock_status', 'instock'),
(93, 27, '_wc_average_rating', '0'),
(94, 27, '_wc_review_count', '0'),
(95, 27, '_product_version', '4.0.1'),
(96, 27, '_price', '1500'),
(97, 27, '_product_image_gallery', '22'),
(98, 27, '_wc_facebook_sync_enabled', 'no'),
(99, 28, '_edit_lock', '1588151689:1'),
(100, 29, '_wp_attached_file', '2020/04/samsung-galaxy-z-flip-lila-framsida02-1.png'),
(101, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:51:"2020/04/samsung-galaxy-z-flip-lila-framsida02-1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:51:"samsung-galaxy-z-flip-lila-framsida02-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(102, 30, '_wp_attached_file', '2020/04/samsung-galaxy-flip-z-lila-001.png'),
(103, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:42:"2020/04/samsung-galaxy-flip-z-lila-001.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-001-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 31, '_wp_attached_file', '2020/04/samsung-galaxy-flip-z-lila-002.png'),
(105, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:42:"2020/04/samsung-galaxy-flip-z-lila-002.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-002-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 32, '_wp_attached_file', '2020/04/samsung-galaxy-flip-z-lila-005.png'),
(107, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:42:"2020/04/samsung-galaxy-flip-z-lila-005.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-005-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 33, '_wp_attached_file', '2020/04/samsung-galaxy-flip-z-lila-006.png'),
(109, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:42:"2020/04/samsung-galaxy-flip-z-lila-006.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"samsung-galaxy-flip-z-lila-006-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 34, '_wp_attached_file', '2020/04/samsung-galaxy-flip-z-lila-baksida.png'),
(111, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:46:"2020/04/samsung-galaxy-flip-z-lila-baksida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"samsung-galaxy-flip-z-lila-baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 28, '_edit_last', '1'),
(113, 28, '_thumbnail_id', '29'),
(114, 28, '_regular_price', '9000'),
(115, 28, 'total_sales', '0'),
(116, 28, '_tax_status', 'taxable'),
(117, 28, '_tax_class', ''),
(118, 28, '_manage_stock', 'no'),
(119, 28, '_backorders', 'no'),
(120, 28, '_sold_individually', 'no'),
(121, 28, '_virtual', 'no'),
(122, 28, '_downloadable', 'no'),
(123, 28, '_download_limit', '-1'),
(124, 28, '_download_expiry', '-1'),
(125, 28, '_stock', NULL),
(126, 28, '_stock_status', 'instock'),
(127, 28, '_wc_average_rating', '0'),
(128, 28, '_wc_review_count', '0'),
(129, 28, '_product_version', '4.0.1'),
(130, 28, '_price', '9000'),
(131, 28, '_product_image_gallery', '30,31,32,33,34'),
(132, 28, '_wc_facebook_sync_enabled', 'no'),
(133, 35, '_edit_lock', '1588151808:1'),
(134, 36, '_wp_attached_file', '2020/04/samsung_galaxy_note10_aura_black_framsida_penna.png'),
(135, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:59:"2020/04/samsung_galaxy_note10_aura_black_framsida_penna.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"samsung_galaxy_note10_aura_black_framsida_penna-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 37, '_wp_attached_file', '2020/04/samsung_galaxy_note10_aura_black_baksida.png'),
(137, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:52:"2020/04/samsung_galaxy_note10_aura_black_baksida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:52:"samsung_galaxy_note10_aura_black_baksida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 38, '_wp_attached_file', '2020/04/samsung_galaxy_note10_aura_black_framsida_penna-1.png'),
(139, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:61:"2020/04/samsung_galaxy_note10_aura_black_framsida_penna-1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:61:"samsung_galaxy_note10_aura_black_framsida_penna-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 39, '_wp_attached_file', '2020/04/samsung_galaxy_note10_aura_black_framsida.png'),
(141, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:53:"2020/04/samsung_galaxy_note10_aura_black_framsida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:53:"samsung_galaxy_note10_aura_black_framsida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 40, '_wp_attached_file', '2020/04/samsung_galaxy_note10_aura_black_sida.png'),
(143, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:49:"2020/04/samsung_galaxy_note10_aura_black_sida.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:49:"samsung_galaxy_note10_aura_black_sida-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 35, '_edit_last', '1'),
(145, 35, '_thumbnail_id', '36'),
(146, 35, '_regular_price', '4000'),
(147, 35, 'total_sales', '0'),
(148, 35, '_tax_status', 'taxable'),
(149, 35, '_tax_class', ''),
(150, 35, '_manage_stock', 'no'),
(151, 35, '_backorders', 'no'),
(152, 35, '_sold_individually', 'no'),
(153, 35, '_virtual', 'no'),
(154, 35, '_downloadable', 'no'),
(155, 35, '_download_limit', '-1'),
(156, 35, '_download_expiry', '-1'),
(157, 35, '_stock', NULL),
(158, 35, '_stock_status', 'instock'),
(159, 35, '_wc_average_rating', '0'),
(160, 35, '_wc_review_count', '0'),
(161, 35, '_product_version', '4.0.1'),
(162, 35, '_price', '4000'),
(163, 35, '_product_image_gallery', '37,38,39,40'),
(164, 35, '_wc_facebook_sync_enabled', 'no'),
(165, 41, '_edit_lock', '1588151894:1'),
(166, 42, '_wp_attached_file', '2020/04/iphonexr_black_side_1.png'),
(167, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:33:"2020/04/iphonexr_black_side_1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"iphonexr_black_side_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_side_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(168, 43, '_wp_attached_file', '2020/04/iphonexr_black_back_1.png'),
(169, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:33:"2020/04/iphonexr_black_back_1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"iphonexr_black_back_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"iphonexr_black_back_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(170, 44, '_wp_attached_file', '2020/04/iphonexr_black_front_1.png'),
(171, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:34:"2020/04/iphonexr_black_front_1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"iphonexr_black_front_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"iphonexr_black_front_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(172, 41, '_edit_last', '1'),
(173, 41, '_thumbnail_id', '44'),
(174, 41, '_regular_price', '6000'),
(175, 41, 'total_sales', '0'),
(176, 41, '_tax_status', 'taxable'),
(177, 41, '_tax_class', ''),
(178, 41, '_manage_stock', 'no'),
(179, 41, '_backorders', 'no'),
(180, 41, '_sold_individually', 'no'),
(181, 41, '_virtual', 'no'),
(182, 41, '_downloadable', 'no'),
(183, 41, '_download_limit', '-1'),
(184, 41, '_download_expiry', '-1'),
(185, 41, '_stock', NULL),
(186, 41, '_stock_status', 'instock'),
(187, 41, '_wc_average_rating', '0'),
(188, 41, '_wc_review_count', '0'),
(189, 41, '_product_version', '4.0.1'),
(190, 41, '_price', '6000'),
(191, 41, '_product_image_gallery', '44,43,42'),
(192, 41, '_wc_facebook_sync_enabled', 'no'),
(193, 45, '_regular_price', '6000'),
(194, 45, 'total_sales', '0'),
(195, 45, '_tax_status', 'taxable'),
(196, 45, '_tax_class', ''),
(197, 45, '_manage_stock', 'no'),
(198, 45, '_backorders', 'no'),
(199, 45, '_sold_individually', 'no'),
(200, 45, '_virtual', 'no'),
(201, 45, '_downloadable', 'no') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(202, 45, '_product_image_gallery', '43,42'),
(203, 45, '_download_limit', '-1'),
(204, 45, '_download_expiry', '-1'),
(205, 45, '_thumbnail_id', '46'),
(206, 45, '_stock', NULL),
(207, 45, '_stock_status', 'instock'),
(208, 45, '_wc_average_rating', '0'),
(209, 45, '_wc_review_count', '0'),
(210, 45, '_product_version', '4.0.1'),
(211, 45, '_price', '6000'),
(212, 45, '_wc_facebook_sync_enabled', 'no'),
(213, 45, '_edit_lock', '1588151937:1'),
(214, 46, '_wp_attached_file', '2020/04/iphone_xs_spacegray_front.png'),
(215, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:37:"2020/04/iphone_xs_spacegray_front.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"iphone_xs_spacegray_front-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"iphone_xs_spacegray_front-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 45, '_edit_last', '1'),
(217, 47, '_edit_lock', '1588151987:1'),
(218, 48, '_wp_attached_file', '2020/04/apple_iphone_11_svart_1-1.png'),
(219, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:748;s:6:"height";i:748;s:4:"file";s:37:"2020/04/apple_iphone_11_svart_1-1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"apple_iphone_11_svart_1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(220, 47, '_edit_last', '1'),
(221, 47, '_thumbnail_id', '48'),
(222, 47, '_regular_price', '5000'),
(223, 47, 'total_sales', '0'),
(224, 47, '_tax_status', 'taxable'),
(225, 47, '_tax_class', ''),
(226, 47, '_manage_stock', 'no'),
(227, 47, '_backorders', 'no'),
(228, 47, '_sold_individually', 'no'),
(229, 47, '_virtual', 'no'),
(230, 47, '_downloadable', 'no'),
(231, 47, '_download_limit', '-1'),
(232, 47, '_download_expiry', '-1'),
(233, 47, '_stock', NULL),
(234, 47, '_stock_status', 'instock'),
(235, 47, '_wc_average_rating', '0'),
(236, 47, '_wc_review_count', '0'),
(237, 47, '_product_version', '4.0.1'),
(238, 47, '_price', '5000'),
(239, 47, '_wc_facebook_sync_enabled', 'no'),
(240, 26, '_thumbnail_id', '20'),
(241, 49, '_edit_lock', '1588152225:1'),
(242, 52, '_wp_attached_file', '2020/04/macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1.jpg'),
(243, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:64:"2020/04/macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:64:"macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 51, '_edit_lock', '1588152324:1'),
(245, 53, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.24.31.png'),
(246, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:674;s:6:"height";i:428;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.24.31.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-416x264.png";s:5:"width";i:416;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-416x264.png";s:5:"width";i:416;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.24.31-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 51, '_edit_last', '1'),
(248, 51, '_thumbnail_id', '53'),
(249, 51, '_regular_price', '12790'),
(250, 51, 'total_sales', '0'),
(251, 51, '_tax_status', 'taxable'),
(252, 51, '_tax_class', ''),
(253, 51, '_manage_stock', 'no'),
(254, 51, '_backorders', 'no'),
(255, 51, '_sold_individually', 'no'),
(256, 51, '_virtual', 'no'),
(257, 51, '_downloadable', 'no'),
(258, 51, '_download_limit', '-1'),
(259, 51, '_download_expiry', '-1'),
(260, 51, '_stock', NULL),
(261, 51, '_stock_status', 'instock'),
(262, 51, '_wc_average_rating', '0'),
(263, 51, '_wc_review_count', '0'),
(264, 51, '_product_version', '4.0.1'),
(265, 51, '_price', '12790'),
(266, 51, '_wc_facebook_sync_enabled', 'no'),
(267, 54, '_regular_price', '13790'),
(268, 54, 'total_sales', '0'),
(269, 54, '_tax_status', 'taxable'),
(270, 54, '_tax_class', ''),
(271, 54, '_manage_stock', 'no'),
(272, 54, '_backorders', 'no'),
(273, 54, '_sold_individually', 'no'),
(274, 54, '_virtual', 'no'),
(275, 54, '_downloadable', 'no'),
(276, 54, '_download_limit', '-1'),
(277, 54, '_download_expiry', '-1'),
(278, 54, '_thumbnail_id', '55'),
(279, 54, '_stock', NULL),
(280, 54, '_stock_status', 'instock'),
(281, 54, '_wc_average_rating', '0'),
(282, 54, '_wc_review_count', '0'),
(283, 54, '_product_version', '4.0.1'),
(284, 54, '_price', '13790'),
(285, 54, '_wc_facebook_sync_enabled', 'no'),
(286, 54, '_edit_lock', '1588152410:1'),
(287, 55, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.25.57.png'),
(288, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:712;s:6:"height";i:442;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.25.57.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-300x186.png";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-416x258.png";s:5:"width";i:416;s:6:"height";i:258;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-416x258.png";s:5:"width";i:416;s:6:"height";i:258;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.25.57-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 54, '_edit_last', '1'),
(290, 54, '_wp_old_slug', 'apple-macbook-air-copy'),
(291, 56, '_regular_price', '16790'),
(292, 56, 'total_sales', '0'),
(293, 56, '_tax_status', 'taxable'),
(294, 56, '_tax_class', ''),
(295, 56, '_manage_stock', 'no'),
(296, 56, '_backorders', 'no'),
(297, 56, '_sold_individually', 'no'),
(298, 56, '_virtual', 'no'),
(299, 56, '_downloadable', 'no'),
(300, 56, '_download_limit', '-1'),
(301, 56, '_download_expiry', '-1') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(302, 56, '_thumbnail_id', '52'),
(303, 56, '_stock', NULL),
(304, 56, '_stock_status', 'instock'),
(305, 56, '_wc_average_rating', '0'),
(306, 56, '_wc_review_count', '0'),
(307, 56, '_product_version', '4.0.1'),
(308, 56, '_price', '16790'),
(309, 56, '_wc_facebook_sync_enabled', 'no'),
(310, 56, '_edit_lock', '1588152452:1'),
(311, 56, '_edit_last', '1'),
(312, 57, '_regular_price', '23790'),
(313, 57, 'total_sales', '0'),
(314, 57, '_tax_status', 'taxable'),
(315, 57, '_tax_class', ''),
(316, 57, '_manage_stock', 'no'),
(317, 57, '_backorders', 'no'),
(318, 57, '_sold_individually', 'no'),
(319, 57, '_virtual', 'no'),
(320, 57, '_downloadable', 'no'),
(321, 57, '_download_limit', '-1'),
(322, 57, '_download_expiry', '-1'),
(323, 57, '_thumbnail_id', '58'),
(324, 57, '_stock', NULL),
(325, 57, '_stock_status', 'instock'),
(326, 57, '_wc_average_rating', '0'),
(327, 57, '_wc_review_count', '0'),
(328, 57, '_product_version', '4.0.1'),
(329, 57, '_price', '23790'),
(330, 57, '_wc_facebook_sync_enabled', 'no'),
(331, 57, '_edit_lock', '1588152518:1'),
(332, 58, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.27.27.png'),
(333, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:628;s:6:"height";i:474;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.27.27.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-300x226.png";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-416x314.png";s:5:"width";i:416;s:6:"height";i:314;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-416x314.png";s:5:"width";i:416;s:6:"height";i:314;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.27.27-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(334, 57, '_edit_last', '1'),
(335, 59, '_edit_lock', '1588152605:1'),
(336, 60, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.28.26.png'),
(337, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:754;s:6:"height";i:478;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.28.26.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-416x264.png";s:5:"width";i:416;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-416x264.png";s:5:"width";i:416;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.26-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(338, 61, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.28.30.png'),
(339, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:734;s:6:"height";i:414;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.28.30.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-416x235.png";s:5:"width";i:416;s:6:"height";i:235;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-416x235.png";s:5:"width";i:416;s:6:"height";i:235;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.30-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(340, 62, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.28.34.png'),
(341, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:760;s:6:"height";i:454;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.28.34.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-300x179.png";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-416x249.png";s:5:"width";i:416;s:6:"height";i:249;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-416x249.png";s:5:"width";i:416;s:6:"height";i:249;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.28.34-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(342, 59, '_edit_last', '1'),
(343, 59, '_thumbnail_id', '60'),
(344, 59, 'total_sales', '0'),
(345, 59, '_tax_status', 'taxable'),
(346, 59, '_tax_class', ''),
(347, 59, '_manage_stock', 'no'),
(348, 59, '_backorders', 'no'),
(349, 59, '_sold_individually', 'no'),
(350, 59, '_virtual', 'no'),
(351, 59, '_downloadable', 'no'),
(352, 59, '_download_limit', '-1'),
(353, 59, '_download_expiry', '-1'),
(354, 59, '_stock', NULL),
(355, 59, '_stock_status', 'instock'),
(356, 59, '_wc_average_rating', '0'),
(357, 59, '_wc_review_count', '0'),
(358, 59, '_product_version', '4.0.1'),
(359, 59, '_product_image_gallery', '61,62'),
(360, 59, '_wc_facebook_sync_enabled', 'no'),
(361, 59, '_regular_price', '17990'),
(362, 59, '_price', '17990'),
(363, 64, '_edit_lock', '1588152668:1'),
(364, 64, '_edit_last', '1'),
(365, 64, '_thumbnail_id', '60'),
(366, 64, '_regular_price', '21990'),
(367, 64, 'total_sales', '0'),
(368, 64, '_tax_status', 'taxable'),
(369, 64, '_tax_class', ''),
(370, 64, '_manage_stock', 'no'),
(371, 64, '_backorders', 'no'),
(372, 64, '_sold_individually', 'no'),
(373, 64, '_virtual', 'no'),
(374, 64, '_downloadable', 'no'),
(375, 64, '_download_limit', '-1'),
(376, 64, '_download_expiry', '-1'),
(377, 64, '_stock', NULL),
(378, 64, '_stock_status', 'instock'),
(379, 64, '_wc_average_rating', '0'),
(380, 64, '_wc_review_count', '0'),
(381, 64, '_product_version', '4.0.1'),
(382, 64, '_price', '21990'),
(383, 64, '_wc_facebook_sync_enabled', 'no'),
(384, 65, '_edit_lock', '1588152688:1'),
(385, 66, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.31.04.png'),
(386, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:680;s:6:"height";i:472;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.31.04.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-300x208.png";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-416x289.png";s:5:"width";i:416;s:6:"height";i:289;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-416x289.png";s:5:"width";i:416;s:6:"height";i:289;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.31.04-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(387, 65, '_edit_last', '1'),
(388, 65, '_thumbnail_id', '66'),
(389, 65, '_regular_price', '6990'),
(390, 65, 'total_sales', '0'),
(391, 65, '_tax_status', 'taxable'),
(392, 65, '_tax_class', ''),
(393, 65, '_manage_stock', 'no'),
(394, 65, '_backorders', 'no'),
(395, 65, '_sold_individually', 'no'),
(396, 65, '_virtual', 'no'),
(397, 65, '_downloadable', 'no'),
(398, 65, '_download_limit', '-1'),
(399, 65, '_download_expiry', '-1'),
(400, 65, '_stock', NULL),
(401, 65, '_stock_status', 'instock') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(402, 65, '_wc_average_rating', '0'),
(403, 65, '_wc_review_count', '0'),
(404, 65, '_product_version', '4.0.1'),
(405, 65, '_price', '6990'),
(406, 65, '_wc_facebook_sync_enabled', 'no'),
(407, 67, '_edit_lock', '1588152770:1'),
(408, 68, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.32.05.png'),
(409, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:574;s:6:"height";i:480;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.32.05.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-300x251.png";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-416x348.png";s:5:"width";i:416;s:6:"height";i:348;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-416x348.png";s:5:"width";i:416;s:6:"height";i:348;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.05-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(410, 69, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.32.12.png'),
(411, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:796;s:6:"height";i:480;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.32.12.png";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-300x181.png";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-768x463.png";s:5:"width";i:768;s:6:"height";i:463;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-416x251.png";s:5:"width";i:416;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-416x251.png";s:5:"width";i:416;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.12-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(412, 70, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.32.17.png'),
(413, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:734;s:6:"height";i:474;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.32.17.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-300x194.png";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-416x269.png";s:5:"width";i:416;s:6:"height";i:269;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-416x269.png";s:5:"width";i:416;s:6:"height";i:269;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.32.17-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(414, 67, '_edit_last', '1'),
(415, 67, '_thumbnail_id', '68'),
(416, 67, '_regular_price', '7890'),
(417, 67, 'total_sales', '0'),
(418, 67, '_tax_status', 'taxable'),
(419, 67, '_tax_class', ''),
(420, 67, '_manage_stock', 'no'),
(421, 67, '_backorders', 'no'),
(422, 67, '_sold_individually', 'no'),
(423, 67, '_virtual', 'no'),
(424, 67, '_downloadable', 'no'),
(425, 67, '_download_limit', '-1'),
(426, 67, '_download_expiry', '-1'),
(427, 67, '_stock', NULL),
(428, 67, '_stock_status', 'instock'),
(429, 67, '_wc_average_rating', '0'),
(430, 67, '_wc_review_count', '0'),
(431, 67, '_product_version', '4.0.1'),
(432, 67, '_price', '7890'),
(433, 67, '_wc_facebook_sync_enabled', 'no'),
(434, 71, '_edit_lock', '1588152795:1'),
(435, 71, '_edit_last', '1'),
(436, 71, '_thumbnail_id', '69'),
(437, 71, '_regular_price', '12990'),
(438, 71, 'total_sales', '0'),
(439, 71, '_tax_status', 'taxable'),
(440, 71, '_tax_class', ''),
(441, 71, '_manage_stock', 'no'),
(442, 71, '_backorders', 'no'),
(443, 71, '_sold_individually', 'no'),
(444, 71, '_virtual', 'no'),
(445, 71, '_downloadable', 'no'),
(446, 71, '_download_limit', '-1'),
(447, 71, '_download_expiry', '-1'),
(448, 71, '_stock', NULL),
(449, 71, '_stock_status', 'instock'),
(450, 71, '_wc_average_rating', '0'),
(451, 71, '_wc_review_count', '0'),
(452, 71, '_product_version', '4.0.1'),
(453, 71, '_price', '12990'),
(454, 71, '_wc_facebook_sync_enabled', 'no'),
(455, 72, '_edit_lock', '1588152859:1'),
(456, 72, '_edit_last', '1'),
(457, 72, '_thumbnail_id', '70'),
(458, 72, '_regular_price', '17990'),
(459, 72, 'total_sales', '0'),
(460, 72, '_tax_status', 'taxable'),
(461, 72, '_tax_class', ''),
(462, 72, '_manage_stock', 'no'),
(463, 72, '_backorders', 'no'),
(464, 72, '_sold_individually', 'no'),
(465, 72, '_virtual', 'no'),
(466, 72, '_downloadable', 'no'),
(467, 72, '_download_limit', '-1'),
(468, 72, '_download_expiry', '-1'),
(469, 72, '_stock', NULL),
(470, 72, '_stock_status', 'instock'),
(471, 72, '_wc_average_rating', '0'),
(472, 72, '_wc_review_count', '0'),
(473, 72, '_product_version', '4.0.1'),
(474, 72, '_price', '17990'),
(475, 72, '_wc_facebook_sync_enabled', 'no'),
(476, 73, '_edit_lock', '1588152892:1'),
(477, 74, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.33.50.png'),
(478, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:558;s:6:"height";i:478;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.33.50.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-300x257.png";s:5:"width";i:300;s:6:"height";i:257;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-416x356.png";s:5:"width";i:416;s:6:"height";i:356;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-416x356.png";s:5:"width";i:416;s:6:"height";i:356;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.33.50-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(479, 73, '_edit_last', '1'),
(480, 73, '_thumbnail_id', '74'),
(481, 73, '_regular_price', '899'),
(482, 73, 'total_sales', '0'),
(483, 73, '_tax_status', 'taxable'),
(484, 73, '_tax_class', ''),
(485, 73, '_manage_stock', 'no'),
(486, 73, '_backorders', 'no'),
(487, 73, '_sold_individually', 'no'),
(488, 73, '_virtual', 'no'),
(489, 73, '_downloadable', 'no'),
(490, 73, '_download_limit', '-1'),
(491, 73, '_download_expiry', '-1'),
(492, 73, '_stock', NULL),
(493, 73, '_stock_status', 'instock'),
(494, 73, '_wc_average_rating', '0'),
(495, 73, '_wc_review_count', '0'),
(496, 73, '_product_version', '4.0.1'),
(497, 73, '_price', '899'),
(498, 73, '_wc_facebook_sync_enabled', 'no'),
(499, 75, '_edit_lock', '1588152930:1'),
(500, 76, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.35.01.png'),
(501, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:472;s:6:"height";i:490;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.35.01.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-289x300.png";s:5:"width";i:289;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-416x432.png";s:5:"width";i:416;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-416x432.png";s:5:"width";i:416;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.35.01-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(502, 75, '_edit_last', '1'),
(503, 75, '_thumbnail_id', '76'),
(504, 75, '_regular_price', '1200'),
(505, 75, 'total_sales', '0'),
(506, 75, '_tax_status', 'taxable'),
(507, 75, '_tax_class', ''),
(508, 75, '_manage_stock', 'no'),
(509, 75, '_backorders', 'no'),
(510, 75, '_sold_individually', 'no'),
(511, 75, '_virtual', 'no'),
(512, 75, '_downloadable', 'no'),
(513, 75, '_download_limit', '-1'),
(514, 75, '_download_expiry', '-1'),
(515, 75, '_stock', NULL),
(516, 75, '_stock_status', 'instock'),
(517, 75, '_wc_average_rating', '0'),
(518, 75, '_wc_review_count', '0'),
(519, 75, '_product_version', '4.0.1'),
(520, 75, '_price', '1200'),
(521, 75, '_wc_facebook_sync_enabled', 'no'),
(522, 77, '_edit_lock', '1588152980:1'),
(523, 77, '_edit_last', '1'),
(524, 77, '_thumbnail_id', '74'),
(525, 77, '_regular_price', '649'),
(526, 77, 'total_sales', '0'),
(527, 77, '_tax_status', 'taxable'),
(528, 77, '_tax_class', ''),
(529, 77, '_manage_stock', 'no'),
(530, 77, '_backorders', 'no'),
(531, 77, '_sold_individually', 'no'),
(532, 77, '_virtual', 'no'),
(533, 77, '_downloadable', 'no'),
(534, 77, '_download_limit', '-1'),
(535, 77, '_download_expiry', '-1'),
(536, 77, '_stock', NULL),
(537, 77, '_stock_status', 'instock'),
(538, 77, '_wc_average_rating', '0'),
(539, 77, '_wc_review_count', '0'),
(540, 77, '_product_version', '4.0.1'),
(541, 77, '_price', '649'),
(542, 77, '_wc_facebook_sync_enabled', 'no'),
(543, 78, '_edit_lock', '1588153052:1'),
(544, 79, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.37.11.png'),
(545, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:714;s:6:"height";i:476;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.37.11.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-416x277.png";s:5:"width";i:416;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-416x277.png";s:5:"width";i:416;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.11-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(546, 78, '_edit_last', '1'),
(547, 78, '_thumbnail_id', '79'),
(548, 78, '_regular_price', '366'),
(549, 78, 'total_sales', '0'),
(550, 78, '_tax_status', 'taxable'),
(551, 78, '_tax_class', ''),
(552, 78, '_manage_stock', 'no'),
(553, 78, '_backorders', 'no'),
(554, 78, '_sold_individually', 'no'),
(555, 78, '_virtual', 'no'),
(556, 78, '_downloadable', 'no'),
(557, 78, '_download_limit', '-1'),
(558, 78, '_download_expiry', '-1'),
(559, 78, '_stock', NULL),
(560, 78, '_stock_status', 'instock'),
(561, 78, '_wc_average_rating', '0'),
(562, 78, '_wc_review_count', '0'),
(563, 78, '_product_version', '4.0.1'),
(564, 78, '_price', '366'),
(565, 78, '_wc_facebook_sync_enabled', 'no'),
(566, 80, '_edit_lock', '1588153095:1'),
(567, 81, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.37.43.png'),
(568, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:408;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.37.43.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-416x229.png";s:5:"width";i:416;s:6:"height";i:229;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-416x229.png";s:5:"width";i:416;s:6:"height";i:229;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.37.43-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(569, 80, '_edit_last', '1'),
(570, 80, '_thumbnail_id', '81'),
(571, 80, '_regular_price', '349'),
(572, 80, 'total_sales', '0'),
(573, 80, '_tax_status', 'taxable'),
(574, 80, '_tax_class', ''),
(575, 80, '_manage_stock', 'no'),
(576, 80, '_backorders', 'no'),
(577, 80, '_sold_individually', 'no'),
(578, 80, '_virtual', 'no'),
(579, 80, '_downloadable', 'no'),
(580, 80, '_download_limit', '-1'),
(581, 80, '_download_expiry', '-1'),
(582, 80, '_stock', NULL),
(583, 80, '_stock_status', 'instock'),
(584, 80, '_wc_average_rating', '0'),
(585, 80, '_wc_review_count', '0'),
(586, 80, '_product_version', '4.0.1'),
(587, 80, '_price', '349'),
(588, 80, '_wc_facebook_sync_enabled', 'no'),
(589, 6, '_edit_last', '1'),
(590, 6, '_wp_page_template', 'default'),
(591, 6, '_edit_lock', '1588153259:1'),
(592, 83, '_menu_item_type', 'post_type'),
(593, 83, '_menu_item_menu_item_parent', '0'),
(594, 83, '_menu_item_object_id', '9'),
(595, 83, '_menu_item_object', 'page'),
(596, 83, '_menu_item_target', ''),
(597, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(598, 83, '_menu_item_xfn', ''),
(599, 83, '_menu_item_url', ''),
(600, 83, '_menu_item_orphaned', '1588153294'),
(601, 84, '_menu_item_type', 'post_type') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(602, 84, '_menu_item_menu_item_parent', '0'),
(603, 84, '_menu_item_object_id', '8'),
(604, 84, '_menu_item_object', 'page'),
(605, 84, '_menu_item_target', ''),
(606, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(607, 84, '_menu_item_xfn', ''),
(608, 84, '_menu_item_url', ''),
(609, 84, '_menu_item_orphaned', '1588153294'),
(610, 85, '_menu_item_type', 'post_type'),
(611, 85, '_menu_item_menu_item_parent', '0'),
(612, 85, '_menu_item_object_id', '7'),
(613, 85, '_menu_item_object', 'page'),
(614, 85, '_menu_item_target', ''),
(615, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(616, 85, '_menu_item_xfn', ''),
(617, 85, '_menu_item_url', ''),
(618, 85, '_menu_item_orphaned', '1588153294'),
(619, 86, '_menu_item_type', 'post_type'),
(620, 86, '_menu_item_menu_item_parent', '0'),
(621, 86, '_menu_item_object_id', '6'),
(622, 86, '_menu_item_object', 'page'),
(623, 86, '_menu_item_target', ''),
(624, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(625, 86, '_menu_item_xfn', ''),
(626, 86, '_menu_item_url', ''),
(628, 87, '_menu_item_type', 'post_type'),
(629, 87, '_menu_item_menu_item_parent', '0'),
(630, 87, '_menu_item_object_id', '2'),
(631, 87, '_menu_item_object', 'page'),
(632, 87, '_menu_item_target', ''),
(633, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(634, 87, '_menu_item_xfn', ''),
(635, 87, '_menu_item_url', ''),
(636, 87, '_menu_item_orphaned', '1588153294'),
(637, 88, '_menu_item_type', 'post_type'),
(638, 88, '_menu_item_menu_item_parent', '0'),
(639, 88, '_menu_item_object_id', '14'),
(640, 88, '_menu_item_object', 'page'),
(641, 88, '_menu_item_target', ''),
(642, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(643, 88, '_menu_item_xfn', ''),
(644, 88, '_menu_item_url', ''),
(646, 89, '_menu_item_type', 'custom'),
(647, 89, '_menu_item_menu_item_parent', '0'),
(648, 89, '_menu_item_object_id', '89'),
(649, 89, '_menu_item_object', 'custom'),
(650, 89, '_menu_item_target', ''),
(651, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(652, 89, '_menu_item_xfn', ''),
(653, 89, '_menu_item_url', '#'),
(655, 90, '_menu_item_type', 'custom'),
(656, 90, '_menu_item_menu_item_parent', '89'),
(657, 90, '_menu_item_object_id', '90'),
(658, 90, '_menu_item_object', 'custom'),
(659, 90, '_menu_item_target', ''),
(660, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(661, 90, '_menu_item_xfn', ''),
(662, 90, '_menu_item_url', '/product-category/laptop/'),
(664, 91, '_menu_item_type', 'custom'),
(665, 91, '_menu_item_menu_item_parent', '89'),
(666, 91, '_menu_item_object_id', '91'),
(667, 91, '_menu_item_object', 'custom'),
(668, 91, '_menu_item_target', ''),
(669, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(670, 91, '_menu_item_xfn', ''),
(671, 91, '_menu_item_url', '/product-category/mobile/'),
(673, 92, '_menu_item_type', 'custom'),
(674, 92, '_menu_item_menu_item_parent', '89'),
(675, 92, '_menu_item_object_id', '92'),
(676, 92, '_menu_item_object', 'custom'),
(677, 92, '_menu_item_target', ''),
(678, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(679, 92, '_menu_item_xfn', ''),
(680, 92, '_menu_item_url', '/product-category/mouse/'),
(682, 93, '_menu_item_type', 'custom'),
(683, 93, '_menu_item_menu_item_parent', '89'),
(684, 93, '_menu_item_object_id', '93'),
(685, 93, '_menu_item_object', 'custom'),
(686, 93, '_menu_item_target', ''),
(687, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(688, 93, '_menu_item_xfn', ''),
(689, 93, '_menu_item_url', '/product-category/software/'),
(691, 94, '_edit_last', '1'),
(692, 94, '_wp_page_template', 'default'),
(693, 94, '_edit_lock', '1588153561:1'),
(694, 96, '_menu_item_type', 'post_type'),
(695, 96, '_menu_item_menu_item_parent', '0'),
(696, 96, '_menu_item_object_id', '94'),
(697, 96, '_menu_item_object', 'page'),
(698, 96, '_menu_item_target', ''),
(699, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(700, 96, '_menu_item_xfn', ''),
(701, 96, '_menu_item_url', ''),
(703, 97, '_wp_trash_meta_status', 'publish'),
(704, 97, '_wp_trash_meta_time', '1588153594'),
(705, 98, '_wp_attached_file', '2020/04/Screenshot-2020-04-29-at-11.47.09.png'),
(706, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:318;s:4:"file";s:45:"2020/04/Screenshot-2020-04-29-at-11.47.09.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-300x293.png";s:5:"width";i:300;s:6:"height";i:293;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-324x318.png";s:5:"width";i:324;s:6:"height";i:318;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-324x318.png";s:5:"width";i:324;s:6:"height";i:318;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-04-29-at-11.47.09-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(707, 99, '_wp_attached_file', '2020/04/cropped-Screenshot-2020-04-29-at-11.47.09.png'),
(708, 99, '_wp_attachment_context', 'custom-logo'),
(709, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:300;s:4:"file";s:53:"2020/04/cropped-Screenshot-2020-04-29-at-11.47.09.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-300x276.png";s:5:"width";i:300;s:6:"height";i:276;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-324x300.png";s:5:"width";i:324;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-324x300.png";s:5:"width";i:324;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `tecno_world_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(710, 100, '_edit_lock', '1588153827:1'),
(711, 101, '_wp_attached_file', '2020/04/cropped-Screenshot-2020-04-29-at-11.47.09-1.png'),
(712, 101, '_wp_attachment_context', 'site-icon'),
(713, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:55:"2020/04/cropped-Screenshot-2020-04-29-at-11.47.09-1.png";s:5:"sizes";a:12:{s:6:"medium";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:55:"cropped-Screenshot-2020-04-29-at-11.47.09-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:53:"cropped-Screenshot-2020-04-29-at-11.47.09-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(714, 102, '_wp_attached_file', '2020/04/tec5.png'),
(715, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:486;s:6:"height";i:158;s:4:"file";s:16:"2020/04/tec5.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:15:"tec5-300x98.png";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"tec5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"tec5-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"tec5-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"tec5-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"tec5-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:16:"tec5-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"tec5-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(716, 103, '_wp_attached_file', '2020/04/cropped-tec5.png'),
(717, 103, '_wp_attachment_context', 'custom-logo'),
(718, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:486;s:6:"height";i:158;s:4:"file";s:24:"2020/04/cropped-tec5.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:23:"cropped-tec5-300x98.png";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-tec5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:24:"cropped-tec5-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:24:"cropped-tec5-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"cropped-tec5-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"cropped-tec5-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:24:"cropped-tec5-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"cropped-tec5-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(719, 100, '_wp_trash_meta_status', 'publish'),
(720, 100, '_wp_trash_meta_time', '1588153854'),
(721, 104, '_wp_trash_meta_status', 'publish'),
(722, 104, '_wp_trash_meta_time', '1588154037'),
(723, 107, '_wp_trash_meta_status', 'publish'),
(724, 107, '_wp_trash_meta_time', '1588154978'),
(725, 108, '_edit_lock', '1588155002:1'),
(726, 108, '_wp_trash_meta_status', 'publish'),
(727, 108, '_wp_trash_meta_time', '1588155010'),
(728, 109, '_wp_trash_meta_status', 'publish'),
(729, 109, '_wp_trash_meta_time', '1588155045'),
(730, 110, '_wp_attached_file', '2020/04/1footer.png'),
(731, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:486;s:6:"height";i:158;s:4:"file";s:19:"2020/04/1footer.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:18:"1footer-300x98.png";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"1footer-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"1footer-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"1footer-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"1footer-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"1footer-324x158.png";s:5:"width";i:324;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:19:"1footer-416x135.png";s:5:"width";i:416;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"1footer-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(732, 111, '_wp_trash_meta_status', 'publish'),
(733, 111, '_wp_trash_meta_time', '1588155171'),
(734, 112, '_wp_trash_meta_status', 'publish'),
(735, 112, '_wp_trash_meta_time', '1588155199'),
(736, 114, '_edit_lock', '1588155222:1'),
(737, 114, '_customize_restore_dismissed', '1'),
(738, 115, '_wp_trash_meta_status', 'publish'),
(739, 115, '_wp_trash_meta_time', '1588155280'),
(740, 117, '_wp_trash_meta_status', 'publish'),
(741, 117, '_wp_trash_meta_time', '1588155293') ;

#
# End of data contents of table `tecno_world_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_posts`
#

DROP TABLE IF EXISTS `tecno_world_posts`;


#
# Table structure of table `tecno_world_posts`
#

CREATE TABLE `tecno_world_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_posts`
#
INSERT INTO `tecno_world_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-28 10:29:21', '2020-04-28 09:29:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-28 10:29:21', '2020-04-28 09:29:21', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-28 10:29:21', '2020-04-28 09:29:21', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-28 10:29:21', '2020-04-28 09:29:21', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-28 10:29:21', '2020-04-28 09:29:21', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-28 10:29:21', '2020-04-28 09:29:21', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-28 10:29:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-28 10:29:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=4', 0, 'post', '', 0),
(5, 1, '2020-04-28 10:45:44', '2020-04-28 09:45:44', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-04-28 10:45:44', '2020-04-28 09:45:44', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-04-28 10:46:12', '2020-04-28 09:46:12', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-04-29 10:40:57', '2020-04-29 09:40:57', '', 0, 'http://localhost:8888/shop/', 0, 'page', '', 0),
(7, 1, '2020-04-28 10:46:12', '2020-04-28 09:46:12', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-04-28 10:46:12', '2020-04-28 09:46:12', '', 0, 'http://localhost:8888/cart/', 0, 'page', '', 0),
(8, 1, '2020-04-28 10:46:12', '2020-04-28 09:46:12', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-04-28 10:46:12', '2020-04-28 09:46:12', '', 0, 'http://localhost:8888/checkout/', 0, 'page', '', 0),
(9, 1, '2020-04-28 10:46:12', '2020-04-28 09:46:12', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-04-28 10:46:12', '2020-04-28 09:46:12', '', 0, 'http://localhost:8888/my-account/', 0, 'page', '', 0),
(10, 1, '2020-04-28 10:47:52', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-04-28 10:47:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=product&p=10', 0, 'product', '', 0),
(11, 1, '2020-04-28 10:51:44', '2020-04-28 09:51:44', '{"storefront-child::storefront_header_text_color":{"value":"#ffffff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:51:32"},"storefront-child::storefront_header_link_color":{"value":"#30c7ff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:51:44"}}', '', '', 'trash', 'closed', 'closed', '', 'bf642275-4854-490f-8cf3-921bbed58396', '', '', '2020-04-28 10:51:44', '2020-04-28 09:51:44', '', 0, 'http://localhost:8888/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2020-04-28 10:52:17', '2020-04-28 09:52:17', '{"storefront-child::storefront_footer_text_color":{"value":"#0d607a","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:52:17"},"storefront-child::storefront_footer_link_color":{"value":"#30c7ff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:52:17"}}', '', '', 'trash', 'closed', 'closed', '', 'f646e8e3-2437-40d6-953b-ae3d0655c7d9', '', '', '2020-04-28 10:52:17', '2020-04-28 09:52:17', '', 0, 'http://localhost:8888/2020/04/28/f646e8e3-2437-40d6-953b-ae3d0655c7d9/', 0, 'customize_changeset', '', 0),
(13, 1, '2020-04-28 10:53:16', '2020-04-28 09:53:16', '{"storefront-child::background_color":{"value":"#ffffff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:52:32"},"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2020-04-28 09:53:16"},"page_on_front":{"value":"14","type":"option","user_id":1,"date_modified_gmt":"2020-04-28 09:53:16"},"storefront-child::storefront_accent_color":{"value":"#30c7ff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-28 09:53:16"},"nav_menus_created_posts":{"value":[14],"type":"option","user_id":1,"date_modified_gmt":"2020-04-28 09:53:16"}}', '', '', 'trash', 'closed', 'closed', '', 'dcf273b5-a499-4ad6-bbad-bdbff0d4ae17', '', '', '2020-04-28 10:53:16', '2020-04-28 09:53:16', '', 0, 'http://localhost:8888/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-04-28 10:53:16', '2020-04-28 09:53:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-28 10:53:16', '2020-04-28 09:53:16', '', 0, 'http://localhost:8888/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-04-28 10:53:16', '2020-04-28 09:53:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-04-28 10:53:16', '2020-04-28 09:53:16', '', 14, 'http://localhost:8888/2020/04/28/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-04-28 13:36:38', '2020-04-28 12:36:38', 'Skaffa abonnemang och få en Samsung Galaxy A10 på köpet (värde 1 790 kr). Galaxy A10 har en stor 6,2-tums infinityskärm, kraftfullt batteri och ljusstarka kameror.', 'Galaxy A10', '', 'publish', 'open', 'closed', '', 'galaxy-a10', '', '', '2020-04-29 10:11:21', '2020-04-29 09:11:21', '', 0, 'http://localhost:8888/?post_type=product&#038;p=16', 0, 'product', '', 0),
(17, 1, '2020-04-28 13:38:01', '2020-04-28 12:38:01', '', 'samsung_galaxy_s10_plus_bla_baksida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_bla_baksida', '', '', '2020-04-28 13:38:01', '2020-04-28 12:38:01', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_bla_baksida.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-04-28 13:38:02', '2020-04-28 12:38:02', '', 'samsung_galaxy_s10_plus_bla_framsida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_bla_framsida', '', '', '2020-04-28 13:38:02', '2020-04-28 12:38:02', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_bla_framsida.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-04-28 13:38:02', '2020-04-28 12:38:02', '', 'samsung_galaxy_s10_plus_bla_sida2', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_bla_sida2', '', '', '2020-04-28 13:38:02', '2020-04-28 12:38:02', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_bla_sida2.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2020-04-28 13:38:03', '2020-04-28 12:38:03', '', 'samsung_galaxy_s10_plus_svart_1', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_svart_1', '', '', '2020-04-28 13:38:03', '2020-04-28 12:38:03', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_svart_1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-04-28 13:38:04', '2020-04-28 12:38:04', '', 'samsung_galaxy_s10_plus_svart_baksida3', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_svart_baksida3', '', '', '2020-04-28 13:38:04', '2020-04-28 12:38:04', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_svart_baksida3.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2020-04-28 13:38:04', '2020-04-28 12:38:04', '', 'samsung_galaxy_s10_plus_svart_sida_2', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_svart_sida_2', '', '', '2020-04-28 13:38:04', '2020-04-28 12:38:04', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_svart_sida_2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2020-04-28 13:38:05', '2020-04-28 12:38:05', '', 'samsung_galaxy_s10_plus_vit_baksida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_vit_baksida', '', '', '2020-04-28 13:38:05', '2020-04-28 12:38:05', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_vit_baksida.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-04-28 13:38:06', '2020-04-28 12:38:06', '', 'samsung_galaxy_s10_plus_vit_framsida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_vit_framsida', '', '', '2020-04-28 13:38:06', '2020-04-28 12:38:06', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_vit_framsida.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2020-04-28 13:38:07', '2020-04-28 12:38:07', '', 'samsung_galaxy_s10_plus_vit_sida_2', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_s10_plus_vit_sida_2', '', '', '2020-04-28 13:38:07', '2020-04-28 12:38:07', '', 16, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_s10_plus_vit_sida_2.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2020-04-29 10:12:11', '2020-04-29 09:12:11', 'Samsung Galaxy S20 är en mobil där kameran fått en ordentlig uppgradering. En lagom skärm på 6,2 tum. Trippelkamera med telefoto, vidvinkel och ultravidvinkel. Stort batteri på 4000 mAh med snabbladdning, trådlös laddning och trådlös batteridelning.', 'Galaxy S20 5G 128 GB', '', 'publish', 'open', 'closed', '', 'galaxy-s20-5g-128-gb', '', '', '2020-04-29 10:20:20', '2020-04-29 09:20:20', '', 0, 'http://localhost:8888/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2020-04-29 10:12:49', '2020-04-29 09:12:49', 'Galaxy S10 har en skärm med biokänsla, trippelkamera och ett batteri som låter dig dela med dig av mobilens laddning till dina kompisar. Galaxy S10 har fått en helt ny fingeravtrycksläsare som är placerad i skärmen och säkrare än någonsin med hjälp av ultraljud. Den funkar även när fingret eller skärmen är blött eller kallt.', 'Galaxy S10 128 GB', '', 'publish', 'open', 'closed', '', 'galaxy-s10-128-gb', '', '', '2020-04-29 10:12:49', '2020-04-29 09:12:49', '', 0, 'http://localhost:8888/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2020-04-29 10:14:48', '2020-04-29 09:14:48', 'Samsung Galaxy Z Flip är cool och flexibel mobil. Sättet den viks ihop på gör att den känns väldigt smidig och kompakt. Z Flip passar dig som ser mobilen som en naturlig del av ditt liv, men som också vill kunna fälla ihop mobilen och leva ett liv utanför den digitala världen.', 'Galaxy Z Flip', '', 'publish', 'open', 'closed', '', 'galaxy-z-flip', '', '', '2020-04-29 10:14:48', '2020-04-29 09:14:48', '', 0, 'http://localhost:8888/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2020-04-29 10:13:37', '2020-04-29 09:13:37', '', 'samsung-galaxy-z-flip-lila-framsida02 (1)', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-z-flip-lila-framsida02-1', '', '', '2020-04-29 10:13:37', '2020-04-29 09:13:37', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-z-flip-lila-framsida02-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-04-29 10:14:16', '2020-04-29 09:14:16', '', 'samsung-galaxy-flip-z--lila-001', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-flip-z-lila-001', '', '', '2020-04-29 10:14:16', '2020-04-29 09:14:16', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-flip-z-lila-001.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-04-29 10:14:16', '2020-04-29 09:14:16', '', 'samsung-galaxy-flip-z-lila-002', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-flip-z-lila-002', '', '', '2020-04-29 10:14:16', '2020-04-29 09:14:16', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-flip-z-lila-002.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-04-29 10:14:17', '2020-04-29 09:14:17', '', 'samsung-galaxy-flip-z-lila-005', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-flip-z-lila-005', '', '', '2020-04-29 10:14:17', '2020-04-29 09:14:17', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-flip-z-lila-005.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2020-04-29 10:14:17', '2020-04-29 09:14:17', '', 'samsung-galaxy-flip-z-lila-006', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-flip-z-lila-006', '', '', '2020-04-29 10:14:17', '2020-04-29 09:14:17', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-flip-z-lila-006.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-04-29 10:14:19', '2020-04-29 09:14:19', '', 'samsung-galaxy-flip-z-lila-baksida', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-flip-z-lila-baksida', '', '', '2020-04-29 10:14:19', '2020-04-29 09:14:19', '', 28, 'http://localhost:8888/wp-content/uploads/2020/04/samsung-galaxy-flip-z-lila-baksida.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2020-04-29 10:16:25', '2020-04-29 09:16:25', 'Note10 är en kraftfull mobil med 6,3 tums skärm. Det unika med Note-serien är pennan som följer med. Med den kan du rita, styra kameran och anteckna. Anteckningarna kan sedan omvandlas till textformat för exempelvis Microsoft Word. Trippelkameran tar skarpa bilder och det finns stora möjligheter till att redigera dina videor. Mobilen är vattentålig (IP68), kan snabbladdas och trådlöst dela laddning till andra enheter.', 'Galaxy Note10', '', 'publish', 'open', 'closed', '', 'galaxy-note10', '', '', '2020-04-29 10:16:25', '2020-04-29 09:16:25', '', 0, 'http://localhost:8888/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2020-04-29 10:15:57', '2020-04-29 09:15:57', '', 'samsung_galaxy_note10_aura_black_framsida_penna', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_note10_aura_black_framsida_penna', '', '', '2020-04-29 10:15:57', '2020-04-29 09:15:57', '', 35, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_note10_aura_black_framsida_penna.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-04-29 10:16:09', '2020-04-29 09:16:09', '', 'samsung_galaxy_note10_aura_black_baksida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_note10_aura_black_baksida', '', '', '2020-04-29 10:16:09', '2020-04-29 09:16:09', '', 35, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_note10_aura_black_baksida.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-04-29 10:16:10', '2020-04-29 09:16:10', '', 'samsung_galaxy_note10_aura_black_framsida_penna', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_note10_aura_black_framsida_penna-2', '', '', '2020-04-29 10:16:10', '2020-04-29 09:16:10', '', 35, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_note10_aura_black_framsida_penna-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2020-04-29 10:16:11', '2020-04-29 09:16:11', '', 'samsung_galaxy_note10_aura_black_framsida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_note10_aura_black_framsida', '', '', '2020-04-29 10:16:11', '2020-04-29 09:16:11', '', 35, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_note10_aura_black_framsida.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-04-29 10:16:11', '2020-04-29 09:16:11', '', 'samsung_galaxy_note10_aura_black_sida', '', 'inherit', 'open', 'closed', '', 'samsung_galaxy_note10_aura_black_sida', '', '', '2020-04-29 10:16:11', '2020-04-29 09:16:11', '', 35, 'http://localhost:8888/wp-content/uploads/2020/04/samsung_galaxy_note10_aura_black_sida.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-04-29 10:18:13', '2020-04-29 09:18:13', 'Med iPhone XR får du mycket mobil för pengarna. Det kraftfulla A12 Bionic-chippet är detsamma som hos iPhone XS och iPhone XS Max, dessutom får du den största LCD-skärmen någonsin i smartphone. Baksidan är tillverkad i glas, vilket gör att du kan ladda din iPhone XR trådlöst.', 'iPhone XR', 'Just nu får du som ny kund 50 GB extra surf att använda under tre månader. Gäller för dig som:\r\n<ul class="list">\r\n 	<li>Blir ny kund med abonnemang</li>\r\n 	<li>Byter från kontantkort till abonnemang</li>\r\n 	<li></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'iphone-xr', '', '', '2020-04-29 10:18:13', '2020-04-29 09:18:13', '', 0, 'http://localhost:8888/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2020-04-29 10:17:54', '2020-04-29 09:17:54', '', 'iphonexr_black_side_1', '', 'inherit', 'open', 'closed', '', 'iphonexr_black_side_1', '', '', '2020-04-29 10:17:54', '2020-04-29 09:17:54', '', 41, 'http://localhost:8888/wp-content/uploads/2020/04/iphonexr_black_side_1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2020-04-29 10:18:01', '2020-04-29 09:18:01', '', 'iphonexr_black_back_1', '', 'inherit', 'open', 'closed', '', 'iphonexr_black_back_1', '', '', '2020-04-29 10:18:01', '2020-04-29 09:18:01', '', 41, 'http://localhost:8888/wp-content/uploads/2020/04/iphonexr_black_back_1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-04-29 10:18:02', '2020-04-29 09:18:02', '', 'iphonexr_black_front_1', '', 'inherit', 'open', 'closed', '', 'iphonexr_black_front_1', '', '', '2020-04-29 10:18:02', '2020-04-29 09:18:02', '', 41, 'http://localhost:8888/wp-content/uploads/2020/04/iphonexr_black_front_1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2020-04-29 10:18:20', '2020-04-29 09:18:20', 'Med iPhone XR får du mycket mobil för pengarna. Det kraftfulla A12 Bionic-chippet är detsamma som hos iPhone XS och iPhone XS Max, dessutom får du den största LCD-skärmen någonsin i smartphone. Baksidan är tillverkad i glas, vilket gör att du kan ladda din iPhone XR trådlöst.', 'iPhone XS', 'Just nu får du som ny kund 50 GB extra surf att använda under tre månader. Gäller för dig som:\r\n<ul class="list">\r\n 	<li>Blir ny kund med abonnemang</li>\r\n 	<li>Byter från kontantkort till abonnemang</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'iphone-xs', '', '', '2020-04-29 10:18:57', '2020-04-29 09:18:57', '', 0, 'http://localhost:8888/?post_type=product&#038;p=45', 0, 'product', '', 0),
(46, 1, '2020-04-29 10:18:48', '2020-04-29 09:18:48', '', 'iphone_xs_spacegray_front', '', 'inherit', 'open', 'closed', '', 'iphone_xs_spacegray_front', '', '', '2020-04-29 10:18:48', '2020-04-29 09:18:48', '', 45, 'http://localhost:8888/wp-content/uploads/2020/04/iphone_xs_spacegray_front.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2020-04-29 10:19:47', '2020-04-29 09:19:47', 'Apple iPhone 11 kommer i sex eleganta färger med en Liquid Retina HD-skärm på 6,1 tum. Den dubbla 12 megapixelkameran har ett vidvinkel- och ett ultravidvinkelobjektiv. Dolby Atmos-ljud, snabbladdning, trådlös laddning och nattläge på kameran är några av funktionerna du kommer älska.', 'iPhone 11', 'Just nu får du som ny kund 50 GB extra surf att använda under tre månader. Gäller för dig som:\r\n<ul class="list">\r\n 	<li>Blir ny kund med abonnemang</li>\r\n 	<li>Byter från kontantkort till abonnemang</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'iphone-11', '', '', '2020-04-29 10:19:47', '2020-04-29 09:19:47', '', 0, 'http://localhost:8888/?post_type=product&#038;p=47', 0, 'product', '', 0),
(48, 1, '2020-04-29 10:19:40', '2020-04-29 09:19:40', '', 'apple_iphone_11_svart_1 (1)', '', 'inherit', 'open', 'closed', '', 'apple_iphone_11_svart_1-1', '', '', '2020-04-29 10:19:40', '2020-04-29 09:19:40', '', 47, 'http://localhost:8888/wp-content/uploads/2020/04/apple_iphone_11_svart_1-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-04-29 10:21:29', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-04-29 10:21:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=product&p=49', 0, 'product', '', 0),
(50, 1, '2020-04-29 10:23:49', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-04-29 10:23:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=product&p=50', 0, 'product', '', 0),
(51, 1, '2020-04-29 10:25:23', '2020-04-29 09:25:23', 'Otroligt tunna och lätta Apple MacBook Air (2020) är nu kraftfullare än någonsin. Den har en kristallklar Retina-skärm, nya Magic Keyboard, Touch ID, processorer med upp till dubbel prestanda, snabbare grafik och dubbelt så stor lagringskapacitet.', 'APPLE MacBook Air', 'APPLE MacBook Air (2020) 13.3" Bärbar Dator - Guld', 'publish', 'open', 'closed', '', 'apple-macbook-air', '', '', '2020-04-29 10:25:24', '2020-04-29 09:25:24', '', 0, 'http://localhost:8888/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2020-04-29 10:24:01', '2020-04-29 09:24:01', '', 'macbook-pro-13-4tbt-late-2016-space-gray-1-300x300', '', 'inherit', 'open', 'closed', '', 'macbook-pro-13-4tbt-late-2016-space-gray-1-300x300', '', '', '2020-04-29 10:24:01', '2020-04-29 09:24:01', '', 51, 'http://localhost:8888/wp-content/uploads/2020/04/macbook-pro-13-4tbt-late-2016-space-gray-1-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-04-29 10:24:48', '2020-04-29 09:24:48', '', 'Screenshot 2020-04-29 at 11.24.31', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-24-31', '', '', '2020-04-29 10:24:48', '2020-04-29 09:24:48', '', 51, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.24.31.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-04-29 10:25:33', '2020-04-29 09:25:33', 'Otroligt tunna och lätta Apple MacBook Air (2020) är nu kraftfullare än någonsin. Den har en kristallklar Retina-skärm, nya Magic Keyboard, Touch ID, processorer med upp till dubbel prestanda, snabbare grafik och dubbelt så stor lagringskapacitet.', 'APPLE MacBook Air (2020)', 'APPLE MacBook Air (2020) 13.3" Bärbar Dator - Guld', 'publish', 'open', 'closed', '', 'apple-macbook-air-2020', '', '', '2020-04-29 10:26:34', '2020-04-29 09:26:34', '', 0, 'http://localhost:8888/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2020-04-29 10:26:07', '2020-04-29 09:26:07', '', 'Screenshot 2020-04-29 at 11.25.57', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-25-57', '', '', '2020-04-29 10:26:07', '2020-04-29 09:26:07', '', 54, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.25.57.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-04-29 10:26:53', '2020-04-29 09:26:53', 'Otroligt tunna och lätta Apple MacBook Air (2020) är nu kraftfullare än någonsin. Den har en kristallklar Retina-skärm, nya Magic Keyboard, Touch ID, processorer med upp till dubbel prestanda, snabbare grafik och dubbelt så stor lagringskapacitet.', 'APPLE MacBook Pro (2019)', 'APPLE MacBook Air (2020) 13.3" Bärbar Dator - Guld', 'publish', 'open', 'closed', '', 'apple-macbook-pro-2019', '', '', '2020-04-29 10:27:07', '2020-04-29 09:27:07', '', 0, 'http://localhost:8888/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2020-04-29 10:27:38', '2020-04-29 09:27:38', 'En skrivbordsupplevelse som trollbinder dig. Det är idén bakom iMac. Denna all-in-one-dator från Apple har en 27" Retina 5K-skärm, Intel Core i5-9600K-processor, 8 GB RAM, 2000 GB Fusion Drive, AMD Radeon Pro 580X-grafik, WiFi och Thunderbolt 3.', 'APPLE iMac (2019)', '', 'publish', 'open', 'closed', '', 'apple-imac-2019', '', '', '2020-04-29 10:28:08', '2020-04-29 09:28:08', '', 0, 'http://localhost:8888/?post_type=product&#038;p=57', 0, 'product', '', 0),
(58, 1, '2020-04-29 10:28:00', '2020-04-29 09:28:00', '', 'Screenshot 2020-04-29 at 11.27.27', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-27-27', '', '', '2020-04-29 10:28:00', '2020-04-29 09:28:00', '', 57, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.27.27.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-04-29 10:29:46', '2020-04-29 09:29:46', 'Lenovo Legion Y740 (81HE001XMX) är en mycket kraftfull bärbar speldator med 15.6" FHD IPS-skärm (144 Hz/G-Sync), Intel Core i7-8750H-processor, 16 GB RAM, 512 GB SSD, NVIDIA GeForce RTX 2060-grafik, Thunderbolt 3 och Windows 10.', 'LENOVO Legion Y740', '', 'publish', 'open', 'closed', '', 'lenovo-legion-y740', '', '', '2020-04-29 10:30:05', '2020-04-29 09:30:05', '', 0, 'http://localhost:8888/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2020-04-29 10:29:27', '2020-04-29 09:29:27', '', 'Screenshot 2020-04-29 at 11.28.26', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-28-26', '', '', '2020-04-29 10:29:27', '2020-04-29 09:29:27', '', 59, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.28.26.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-04-29 10:29:42', '2020-04-29 09:29:42', '', 'Screenshot 2020-04-29 at 11.28.30', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-28-30', '', '', '2020-04-29 10:29:42', '2020-04-29 09:29:42', '', 59, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.28.30.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2020-04-29 10:29:43', '2020-04-29 09:29:43', '', 'Screenshot 2020-04-29 at 11.28.34', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-28-34', '', '', '2020-04-29 10:29:43', '2020-04-29 09:29:43', '', 59, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.28.34.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-04-29 10:29:50', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-04-29 10:29:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=product&p=63', 0, 'product', '', 0),
(64, 1, '2020-04-29 10:30:51', '2020-04-29 09:30:51', 'Lenovo Legion Y740 (81HE001XMX) är en mycket kraftfull bärbar speldator med 15.6" FHD IPS-skärm (144 Hz/G-Sync), Intel Core i7-8750H-processor, 16 GB RAM, dubbla lagringsenheter (512 GB SSD + 1 TB HDD), NVIDIA GeForce RTX 2070-grafik och W10.', 'LENOVO Legion Y740 (81HE001XMX) - 15.6" Gaming Laptop', '', 'publish', 'open', 'closed', '', 'lenovo-legion-y740-81he001xmx-15-6-gaming-laptop', '', '', '2020-04-29 10:30:52', '2020-04-29 09:30:52', '', 0, 'http://localhost:8888/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-04-29 10:31:27', '2020-04-29 09:31:27', '', 'LENOVO IdeaPad S145 (81MV00DHMX) - 15.6" Bärbar Dator', '', 'publish', 'open', 'closed', '', 'lenovo-ideapad-s145-81mv00dhmx-15-6-barbar-dator', '', '', '2020-04-29 10:31:27', '2020-04-29 09:31:27', '', 0, 'http://localhost:8888/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2020-04-29 10:31:23', '2020-04-29 09:31:23', '', 'Screenshot 2020-04-29 at 11.31.04', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-31-04', '', '', '2020-04-29 10:31:23', '2020-04-29 09:31:23', '', 65, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.31.04.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2020-04-29 10:32:50', '2020-04-29 09:32:50', 'Lenovo IdeaPad 330S är en tunn (1.89 cm), lätt (1.6 kg) och prisvärd laptop med elegant design och bra prestanda. Denna bärbara dator har 14" FHD IPS-skärm, Intel Core i5-8250U-processor, 8 GB RAM, 512 GB SSD, Intel UHD Graphics 620 och W10.', 'LENOVO IdeaPad 330S (81F401DAMX) - 14" Bärbar Dator', '', 'publish', 'open', 'closed', '', 'lenovo-ideapad-330s-81f401damx-14-barbar-dator', '', '', '2020-04-29 10:32:50', '2020-04-29 09:32:50', '', 0, 'http://localhost:8888/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2020-04-29 10:32:37', '2020-04-29 09:32:37', '', 'Screenshot 2020-04-29 at 11.32.05', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-32-05', '', '', '2020-04-29 10:32:37', '2020-04-29 09:32:37', '', 67, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.32.05.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-04-29 10:32:38', '2020-04-29 09:32:38', '', 'Screenshot 2020-04-29 at 11.32.12', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-32-12', '', '', '2020-04-29 10:32:38', '2020-04-29 09:32:38', '', 67, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.32.12.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-04-29 10:32:39', '2020-04-29 09:32:39', '', 'Screenshot 2020-04-29 at 11.32.17', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-32-17', '', '', '2020-04-29 10:32:39', '2020-04-29 09:32:39', '', 67, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.32.17.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-04-29 10:33:15', '2020-04-29 09:33:15', 'Lenovo Legion Y540 (81SX00L5MX) är en bärbar speldator med 15.6" FHD IPS-skärm (144 Hz), Intel Core i5-9300H-processor, 8 GB RAM, 512 GB SSD, NVIDIA GeForce GTX 1660 Ti-grafik och Windows 10. Denna gamingdator klarar krävande PC-spel.', 'LENOVO Legion Y540 (81SX00L5MX) - 15.6" Gaming Laptop', '', 'publish', 'open', 'closed', '', 'lenovo-legion-y540-81sx00l5mx-15-6-gaming-laptop', '', '', '2020-04-29 10:33:15', '2020-04-29 09:33:15', '', 0, 'http://localhost:8888/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2020-04-29 10:33:37', '2020-04-29 09:33:37', 'Lenovo Yoga S940 är en extremt tunn (1.22 cm), lätt (1.2 kg) och kraftfull laptop med lång batteritid (upp till 15 h). Datorn har 14" 4K UHD HDR IPS-skärm (3840 x 2160), Intel Core i7-8565U-processor, 16 GB RAM, 512 GB SSD och Windows 10 Pro.', 'LENOVO Yoga S940 (81Q7000MMX) - 14" Bärbar Dator', '', 'publish', 'open', 'closed', '', 'lenovo-yoga-s940-81q7000mmx-14-barbar-dator', '', '', '2020-04-29 10:34:18', '2020-04-29 09:34:18', '', 0, 'http://localhost:8888/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2020-04-29 10:34:51', '2020-04-29 09:34:51', 'Med Office 365 Home får hela familjen tillgång till premiumversioner av Word, Excel, PowerPoint, OneNote och Outlook (upp till 6 användare). Du får även 1 TB molnlagring i OneDrive per person. Jobba var som helst med appar som alltid är uppdaterade', 'MICROSOFT Office 365 Home Win/Mac (1 år, 6 användare)', '', 'publish', 'open', 'closed', '', 'microsoft-office-365-home-win-mac-1-ar-6-anvandare', '', '', '2020-04-29 10:34:51', '2020-04-29 09:34:51', '', 0, 'http://localhost:8888/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2020-04-29 10:34:45', '2020-04-29 09:34:45', '', 'Screenshot 2020-04-29 at 11.33.50', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-33-50', '', '', '2020-04-29 10:34:45', '2020-04-29 09:34:45', '', 73, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.33.50.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-04-29 10:35:30', '2020-04-29 09:35:30', 'Licens för Windows 10 Home 64-bit på svenska inklusive installationsskiva.', 'MICROSOFT Windows 10 Home 64-bit OEM - Svenska', '', 'publish', 'open', 'closed', '', 'microsoft-windows-10-home-64-bit-oem-svenska', '', '', '2020-04-29 10:35:30', '2020-04-29 09:35:30', '', 0, 'http://localhost:8888/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2020-04-29 10:35:26', '2020-04-29 09:35:26', '', 'Screenshot 2020-04-29 at 11.35.01', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-35-01', '', '', '2020-04-29 10:35:26', '2020-04-29 09:35:26', '', 75, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.35.01.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2020-04-29 10:36:03', '2020-04-29 09:36:03', 'Office 365 Personal ger dig tillgång till premiumversioner av Word, Excel, PowerPoint, OneNote och Outlook. Du får även 1 TB molnlagring i OneDrive. Jobba var som helst med appar som alltid är uppdaterade (för 1 användare).', 'MICROSOFT Office 365 Personal Win/Mac (1 år, 1 användare)', '', 'publish', 'open', 'closed', '', 'microsoft-office-365-personal-win-mac-1-ar-1-anvandare', '', '', '2020-04-29 10:36:03', '2020-04-29 09:36:03', '', 0, 'http://localhost:8888/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2020-04-29 10:37:31', '2020-04-29 09:37:31', 'HyperX Pulsefire Core™ har allt det som datorspelsentusiaster söker, en solid optisk mus med anpassningsbara RGB-ljuseffekter.', 'HYPERX Pulsefire Core RGB - Gamingmus', '', 'publish', 'open', 'closed', '', 'hyperx-pulsefire-core-rgb-gamingmus', '', '', '2020-04-29 10:37:32', '2020-04-29 09:37:32', '', 0, 'http://localhost:8888/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2020-04-29 10:37:23', '2020-04-29 09:37:23', '', 'Screenshot 2020-04-29 at 11.37.11', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-37-11', '', '', '2020-04-29 10:37:23', '2020-04-29 09:37:23', '', 78, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.37.11.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2020-04-29 10:38:14', '2020-04-29 09:38:14', '<div class="product-details">\r\n\r\nExtra stor musmatta för dataspelsproffs\r\n\r\n</div>', 'HYPERX FURY S Pro Gaming Mouse Pad - Extra Large', '', 'publish', 'open', 'closed', '', 'hyperx-fury-s-pro-gaming-mouse-pad-extra-large', '', '', '2020-04-29 10:38:15', '2020-04-29 09:38:15', '', 0, 'http://localhost:8888/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2020-04-29 10:38:11', '2020-04-29 09:38:11', '', 'Screenshot 2020-04-29 at 11.37.43', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-37-43', '', '', '2020-04-29 10:38:11', '2020-04-29 09:38:11', '', 80, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.37.43.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2020-04-29 10:40:57', '2020-04-29 09:40:57', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-29 10:40:57', '2020-04-29 09:40:57', '', 6, 'http://localhost:8888/2020/04/29/6-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-04-29 10:41:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-29 10:41:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2020-04-29 10:41:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-29 10:41:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-04-29 10:41:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-29 10:41:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2020-04-29 10:43:31', '2020-04-29 09:43:31', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2020-04-29 10:41:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-29 10:41:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2020-04-29 10:43:31', '2020-04-29 09:43:31', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-04-29 10:43:31', '2020-04-29 09:43:31', '', 'All categories', '', 'publish', 'closed', 'closed', '', 'all-categories', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=89', 3, 'nav_menu_item', '', 0),
(90, 1, '2020-04-29 10:45:43', '2020-04-29 09:45:43', '', 'Laptop', '', 'publish', 'closed', 'closed', '', 'laptop', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2020-04-29 10:45:43', '2020-04-29 09:45:43', '', 'Mobile', '', 'publish', 'closed', 'closed', '', 'mobile', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=91', 5, 'nav_menu_item', '', 0),
(92, 1, '2020-04-29 10:45:43', '2020-04-29 09:45:43', '', 'Mouse', '', 'publish', 'closed', 'closed', '', 'mouse', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=92', 6, 'nav_menu_item', '', 0),
(93, 1, '2020-04-29 10:45:43', '2020-04-29 09:45:43', '', 'Software', '', 'publish', 'closed', 'closed', '', 'software', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=93', 7, 'nav_menu_item', '', 0),
(94, 1, '2020-04-29 10:46:00', '2020-04-29 09:46:00', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-04-29 10:46:00', '2020-04-29 09:46:00', '', 0, 'http://localhost:8888/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-04-29 10:46:00', '2020-04-29 09:46:00', '', 'contact us', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-04-29 10:46:00', '2020-04-29 09:46:00', '', 94, 'http://localhost:8888/2020/04/29/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-04-29 10:46:15', '2020-04-29 09:46:15', '', 0, 'http://localhost:8888/?p=96', 8, 'nav_menu_item', '', 0),
(97, 1, '2020-04-29 10:46:34', '2020-04-29 09:46:34', '{"blogname":{"value":"Tecnoworld","type":"option","user_id":1,"date_modified_gmt":"2020-04-29 09:46:34"}}', '', '', 'trash', 'closed', 'closed', '', '8d2fc7bb-a412-440e-9484-74a533fdbd24', '', '', '2020-04-29 10:46:34', '2020-04-29 09:46:34', '', 0, 'http://localhost:8888/2020/04/29/8d2fc7bb-a412-440e-9484-74a533fdbd24/', 0, 'customize_changeset', '', 0),
(98, 1, '2020-04-29 10:47:20', '2020-04-29 09:47:20', '', 'Screenshot 2020-04-29 at 11.47.09', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-04-29-at-11-47-09', '', '', '2020-04-29 10:47:20', '2020-04-29 09:47:20', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/Screenshot-2020-04-29-at-11.47.09.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2020-04-29 10:47:30', '2020-04-29 09:47:30', 'http://localhost:8888/wp-content/uploads/2020/04/cropped-Screenshot-2020-04-29-at-11.47.09.png', 'cropped-Screenshot-2020-04-29-at-11.47.09.png', '', 'inherit', 'open', 'closed', '', 'cropped-screenshot-2020-04-29-at-11-47-09-png', '', '', '2020-04-29 10:47:30', '2020-04-29 09:47:30', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/cropped-Screenshot-2020-04-29-at-11.47.09.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-04-29 10:50:54', '2020-04-29 09:50:54', '{"storefront-child::custom_logo":{"value":103,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 09:50:54"},"site_icon":{"value":101,"type":"option","user_id":1,"date_modified_gmt":"2020-04-29 09:48:41"}}', '', '', 'trash', 'closed', 'closed', '', '54ba849d-2927-4af4-99eb-f86a87339a83', '', '', '2020-04-29 10:50:54', '2020-04-29 09:50:54', '', 0, 'http://localhost:8888/?p=100', 0, 'customize_changeset', '', 0) ;
INSERT INTO `tecno_world_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2020-04-29 10:47:41', '2020-04-29 09:47:41', 'http://localhost:8888/wp-content/uploads/2020/04/cropped-Screenshot-2020-04-29-at-11.47.09-1.png', 'cropped-Screenshot-2020-04-29-at-11.47.09-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-screenshot-2020-04-29-at-11-47-09-1-png', '', '', '2020-04-29 10:47:41', '2020-04-29 09:47:41', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/cropped-Screenshot-2020-04-29-at-11.47.09-1.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2020-04-29 10:50:42', '2020-04-29 09:50:42', '', 'tec5', '', 'inherit', 'open', 'closed', '', 'tec5', '', '', '2020-04-29 10:50:42', '2020-04-29 09:50:42', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/tec5.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-04-29 10:50:49', '2020-04-29 09:50:49', 'http://localhost:8888/wp-content/uploads/2020/04/cropped-tec5.png', 'cropped-tec5.png', '', 'inherit', 'open', 'closed', '', 'cropped-tec5-png', '', '', '2020-04-29 10:50:49', '2020-04-29 09:50:49', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/cropped-tec5.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2020-04-29 10:53:57', '2020-04-29 09:53:57', '{"custom_css[storefront-child]":{"value":".site-info a {\\n    display: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2020-04-29 09:53:57"}}', '', '', 'trash', 'closed', 'closed', '', 'de07dd0e-c8e8-4c4d-bc6b-12bee41a53bc', '', '', '2020-04-29 10:53:57', '2020-04-29 09:53:57', '', 0, 'http://localhost:8888/2020/04/29/de07dd0e-c8e8-4c4d-bc6b-12bee41a53bc/', 0, 'customize_changeset', '', 0),
(105, 1, '2020-04-29 10:53:57', '2020-04-29 09:53:57', '.site-info a {\n    display: none;\n}\n\n.site-footer {\n   background-color: #2c2d34;\n   color: #ffffff;\n}', 'storefront-child', '', 'publish', 'closed', 'closed', '', 'storefront-child', '', '', '2020-04-29 11:14:53', '2020-04-29 10:14:53', '', 0, 'http://localhost:8888/2020/04/29/storefront-child/', 0, 'custom_css', '', 0),
(106, 1, '2020-04-29 10:53:57', '2020-04-29 09:53:57', '.site-info a {\n    display: none;\n}', 'storefront-child', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-29 10:53:57', '2020-04-29 09:53:57', '', 105, 'http://localhost:8888/2020/04/29/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-04-29 11:09:38', '2020-04-29 10:09:38', '{"storefront-child::storefront_header_text_color":{"value":"#1e73be","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:09:38"},"storefront-child::storefront_footer_background_color":{"value":"#333333","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:09:38"}}', '', '', 'trash', 'closed', 'closed', '', 'cbe8e642-1067-49f7-8ded-ff0c9770db80', '', '', '2020-04-29 11:09:38', '2020-04-29 10:09:38', '', 0, 'http://localhost:8888/2020/04/29/cbe8e642-1067-49f7-8ded-ff0c9770db80/', 0, 'customize_changeset', '', 0),
(108, 1, '2020-04-29 11:10:10', '2020-04-29 10:10:10', '{"storefront-child::storefront_hero_heading_color":{"value":"#002244","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:10:10"},"storefront-child::storefront_heading_color":{"value":"#1e73be","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:10:10"}}', '', '', 'trash', 'closed', 'closed', '', '5b2dc075-0268-4248-bb88-2ce693dba875', '', '', '2020-04-29 11:10:10', '2020-04-29 10:10:10', '', 0, 'http://localhost:8888/?p=108', 0, 'customize_changeset', '', 0),
(109, 1, '2020-04-29 11:10:45', '2020-04-29 10:10:45', '{"woocommerce_demo_store_notice":{"value":"","type":"option","user_id":1,"date_modified_gmt":"2020-04-29 10:10:45"}}', '', '', 'trash', 'closed', 'closed', '', 'bce6d804-dafe-4ed9-971d-a098ca021e49', '', '', '2020-04-29 11:10:45', '2020-04-29 10:10:45', '', 0, 'http://localhost:8888/2020/04/29/bce6d804-dafe-4ed9-971d-a098ca021e49/', 0, 'customize_changeset', '', 0),
(110, 1, '2020-04-29 11:11:37', '2020-04-29 10:11:37', '', '1footer', '', 'inherit', 'open', 'closed', '', '1footer', '', '', '2020-04-29 11:11:37', '2020-04-29 10:11:37', '', 0, 'http://localhost:8888/wp-content/uploads/2020/04/1footer.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2020-04-29 11:12:51', '2020-04-29 10:12:51', '{"storefront-child::storefront_footer_heading_color":{"value":"#00799e","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:12:51"}}', '', '', 'trash', 'closed', 'closed', '', '7000aed4-8fd2-4196-a436-f19cc3445d56', '', '', '2020-04-29 11:12:51', '2020-04-29 10:12:51', '', 0, 'http://localhost:8888/2020/04/29/7000aed4-8fd2-4196-a436-f19cc3445d56/', 0, 'customize_changeset', '', 0),
(112, 1, '2020-04-29 11:13:19', '2020-04-29 10:13:19', '{"custom_css[storefront-child]":{"value":".site-info a {\\n    display: none;\\n}\\n\\n.site-footer {\\n    background-color: #2c2d34;\\n    color: #3b3c3f;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2020-04-29 10:13:19"}}', '', '', 'trash', 'closed', 'closed', '', 'dc00c13d-7886-45af-9101-ab58a7e72ef0', '', '', '2020-04-29 11:13:19', '2020-04-29 10:13:19', '', 0, 'http://localhost:8888/2020/04/29/dc00c13d-7886-45af-9101-ab58a7e72ef0/', 0, 'customize_changeset', '', 0),
(113, 1, '2020-04-29 11:13:19', '2020-04-29 10:13:19', '.site-info a {\n    display: none;\n}\n\n.site-footer {\n    background-color: #2c2d34;\n    color: #3b3c3f;\n}', 'storefront-child', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-29 11:13:19', '2020-04-29 10:13:19', '', 105, 'http://localhost:8888/2020/04/29/105-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-04-29 11:13:42', '0000-00-00 00:00:00', '{"storefront-child::storefront_footer_background_color":{"value":"#ffffff","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-04-29 10:13:42"}}', '', '', 'auto-draft', 'closed', 'closed', '', '00f5e252-db96-419e-b575-9056656d8ceb', '', '', '2020-04-29 11:13:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=114', 0, 'customize_changeset', '', 0),
(115, 1, '2020-04-29 11:14:40', '2020-04-29 10:14:40', '{"custom_css[storefront-child]":{"value":".site-info a {\\n    display: none;\\n}\\n\\n.site-footer {\\n    background-color: #2c2d34;\\ncolor: #ffffff;}","type":"custom_css","user_id":1,"date_modified_gmt":"2020-04-29 10:14:40"}}', '', '', 'trash', 'closed', 'closed', '', '21ba4c10-b2a9-46ed-9e69-2f0a0bafac21', '', '', '2020-04-29 11:14:40', '2020-04-29 10:14:40', '', 0, 'http://localhost:8888/2020/04/29/21ba4c10-b2a9-46ed-9e69-2f0a0bafac21/', 0, 'customize_changeset', '', 0),
(116, 1, '2020-04-29 11:14:40', '2020-04-29 10:14:40', '.site-info a {\n    display: none;\n}\n\n.site-footer {\n    background-color: #2c2d34;\ncolor: #ffffff;}', 'storefront-child', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-29 11:14:40', '2020-04-29 10:14:40', '', 105, 'http://localhost:8888/2020/04/29/105-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-04-29 11:14:53', '2020-04-29 10:14:53', '{"custom_css[storefront-child]":{"value":".site-info a {\\n    display: none;\\n}\\n\\n.site-footer {\\n   background-color: #2c2d34;\\n   color: #ffffff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2020-04-29 10:14:53"}}', '', '', 'trash', 'closed', 'closed', '', '0bf0a09b-8d8c-4e6b-98eb-3930725e39f9', '', '', '2020-04-29 11:14:53', '2020-04-29 10:14:53', '', 0, 'http://localhost:8888/2020/04/29/0bf0a09b-8d8c-4e6b-98eb-3930725e39f9/', 0, 'customize_changeset', '', 0),
(118, 1, '2020-04-29 11:14:53', '2020-04-29 10:14:53', '.site-info a {\n    display: none;\n}\n\n.site-footer {\n   background-color: #2c2d34;\n   color: #ffffff;\n}', 'storefront-child', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-29 11:14:53', '2020-04-29 10:14:53', '', 105, 'http://localhost:8888/2020/04/29/105-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `tecno_world_posts`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_term_relationships`
#

DROP TABLE IF EXISTS `tecno_world_term_relationships`;


#
# Table structure of table `tecno_world_term_relationships`
#

CREATE TABLE `tecno_world_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_term_relationships`
#
INSERT INTO `tecno_world_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(16, 17, 0),
(26, 2, 0),
(26, 16, 0),
(26, 17, 0),
(27, 2, 0),
(27, 16, 0),
(28, 2, 0),
(28, 16, 0),
(28, 17, 0),
(35, 2, 0),
(35, 16, 0),
(41, 2, 0),
(41, 18, 0),
(45, 2, 0),
(45, 18, 0),
(47, 2, 0),
(47, 17, 0),
(47, 18, 0),
(51, 2, 0),
(51, 20, 0),
(54, 2, 0),
(54, 20, 0),
(56, 2, 0),
(56, 20, 0),
(57, 2, 0),
(57, 20, 0),
(59, 2, 0),
(59, 21, 0),
(64, 2, 0),
(64, 21, 0),
(65, 2, 0),
(65, 21, 0),
(67, 2, 0),
(67, 21, 0),
(71, 2, 0),
(71, 21, 0),
(72, 2, 0),
(72, 21, 0),
(73, 2, 0),
(73, 22, 0),
(75, 2, 0),
(75, 22, 0),
(77, 2, 0),
(77, 22, 0),
(78, 2, 0),
(78, 23, 0),
(80, 2, 0),
(80, 23, 0),
(86, 24, 0),
(88, 24, 0),
(89, 24, 0),
(90, 24, 0),
(91, 24, 0),
(92, 24, 0),
(93, 24, 0),
(96, 24, 0) ;

#
# End of data contents of table `tecno_world_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_term_taxonomy`
#

DROP TABLE IF EXISTS `tecno_world_term_taxonomy`;


#
# Table structure of table `tecno_world_term_taxonomy`
#

CREATE TABLE `tecno_world_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_term_taxonomy`
#
INSERT INTO `tecno_world_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 23),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 17, 4),
(17, 17, 'product_cat', '', 0, 4),
(18, 18, 'product_cat', '', 17, 3),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 19, 4),
(21, 21, 'product_cat', '', 19, 6),
(22, 22, 'product_cat', '', 0, 3),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'nav_menu', '', 0, 8) ;

#
# End of data contents of table `tecno_world_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_termmeta`
#

DROP TABLE IF EXISTS `tecno_world_termmeta`;


#
# Table structure of table `tecno_world_termmeta`
#

CREATE TABLE `tecno_world_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_termmeta`
#
INSERT INTO `tecno_world_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 16, 'product_count_product_cat', '4'),
(4, 17, 'order', '0'),
(5, 17, 'product_count_product_cat', '8'),
(6, 16, 'display_type', ''),
(7, 16, 'thumbnail_id', '0'),
(8, 18, 'order', '0'),
(9, 18, 'product_count_product_cat', '3'),
(10, 19, 'order', '0'),
(11, 20, 'order', '0'),
(12, 20, 'product_count_product_cat', '4'),
(13, 19, 'product_count_product_cat', '10'),
(14, 21, 'order', '0'),
(15, 21, 'product_count_product_cat', '6'),
(16, 22, 'order', '0'),
(17, 22, 'product_count_product_cat', '3'),
(18, 23, 'order', '0'),
(19, 23, 'product_count_product_cat', '2') ;

#
# End of data contents of table `tecno_world_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_terms`
#

DROP TABLE IF EXISTS `tecno_world_terms`;


#
# Table structure of table `tecno_world_terms`
#

CREATE TABLE `tecno_world_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_terms`
#
INSERT INTO `tecno_world_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorised', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Samsung', 'samsung', 0),
(17, 'Mobile', 'mobile', 0),
(18, 'Apple', 'apple', 0),
(19, 'Laptop', 'laptop', 0),
(20, 'Apple Mac', 'apple-mac', 0),
(21, 'Lenover', 'lenover', 0),
(22, 'Software', 'software', 0),
(23, 'Mouse', 'mouse', 0),
(24, 'tecnoworld', 'tecnoworld', 0) ;

#
# End of data contents of table `tecno_world_terms`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_usermeta`
#

DROP TABLE IF EXISTS `tecno_world_usermeta`;


#
# Table structure of table `tecno_world_usermeta`
#

CREATE TABLE `tecno_world_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_usermeta`
#
INSERT INTO `tecno_world_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nawar'),
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
(12, 1, 'tecno_world_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'tecno_world_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:"75b669e7cc0fe0dc4c4fc14aaa137aef5d23754d3dde6a6d1484e79acdcb3b4e";a:4:{s:10:"expiration";i:1588250031;s:2:"ip";s:10:"78.70.6.55";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";s:5:"login";i:1588077231;}s:64:"5518c4bd4382cd83efbef917a1d1a878a04b6a64243574247e905a5aa4a42b5f";a:4:{s:10:"expiration";i:1588250039;s:2:"ip";s:14:"84.216.176.105";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36";s:5:"login";i:1588077239;}s:64:"dcd581bf7ea5743188625eab3b4af083546de47607ff8a3d8591c4c46734cd0b";a:4:{s:10:"expiration";i:1588250041;s:2:"ip";s:13:"78.71.219.131";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";s:5:"login";i:1588077241;}s:64:"88feb56ae58169deab645492f3101f9d213352bf7afe8765412ba955512a6d05";a:4:{s:10:"expiration";i:1588268431;s:2:"ip";s:10:"78.70.6.55";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";s:5:"login";i:1588095631;}s:64:"878fd7744e3991a9c49a15b19a0fdf0a6d41ed9fdee76240690a2cc2a204c0fb";a:4:{s:10:"expiration";i:1588321971;s:2:"ip";s:13:"78.71.219.131";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36";s:5:"login";i:1588149171;}s:64:"f36718d782a7286b0abeff271768bf813b26db280747ff469d849decbe30587a";a:4:{s:10:"expiration";i:1588420967;s:2:"ip";s:13:"78.71.219.131";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36";s:5:"login";i:1588248167;}}'),
(17, 1, 'tecno_world_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"78.71.219.0";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:hA1Qx8DqM1BB2vMvxQB8iZaE'),
(20, 1, 'wc_last_active', '1588204800'),
(21, 1, 'last_update', '1588077221'),
(24, 1, 'tecno_world_user-settings', 'libraryContent=browse&editor=html'),
(25, 1, 'tecno_world_user-settings-time', '1588154798'),
(26, 2, 'nickname', 'anu'),
(27, 2, 'first_name', ''),
(28, 2, 'last_name', ''),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'tecno_world_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(38, 2, 'tecno_world_user_level', '10'),
(39, 2, 'dismissed_wp_pointers', ''),
(40, 2, 'last_update', '1588077600'),
(42, 1, '_order_count', '0'),
(44, 3, 'nickname', 'admin'),
(45, 3, 'first_name', ''),
(46, 3, 'last_name', ''),
(47, 3, 'description', ''),
(48, 3, 'rich_editing', 'true'),
(49, 3, 'syntax_highlighting', 'true'),
(50, 3, 'comment_shortcuts', 'false'),
(51, 3, 'admin_color', 'fresh'),
(52, 3, 'use_ssl', '0'),
(53, 3, 'show_admin_bar_front', 'true'),
(54, 3, 'locale', ''),
(55, 3, 'tecno_world_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(56, 3, 'tecno_world_user_level', '10'),
(57, 3, 'dismissed_wp_pointers', ''),
(58, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(59, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(60, 1, 'nav_menu_recently_edited', '24'),
(61, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"35f4a8d465e6e1edc05f3d8ab658c551";a:11:{s:3:"key";s:32:"35f4a8d465e6e1edc05f3d8ab658c551";s:10:"product_id";i:78;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:366;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:366;s:8:"line_tax";i:0;}s:32:"28dd2c7955ce926456240b2ff0100bde";a:6:{s:3:"key";s:32:"28dd2c7955ce926456240b2ff0100bde";s:10:"product_id";i:77;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";}}}') ;

#
# End of data contents of table `tecno_world_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_users`
#

DROP TABLE IF EXISTS `tecno_world_users`;


#
# Table structure of table `tecno_world_users`
#

CREATE TABLE `tecno_world_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_users`
#
INSERT INTO `tecno_world_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nawar', '$P$Ba4Sg2EuCep0E9LVb4JgTVONXtBefW/', 'nawar', 'nawarmohra@gmail.com', '', '2020-04-28 09:29:21', '1588077221:$P$BuefzS2JIMjJN5J3jltWTZRLMY5G.a/', 0, 'nawar'),
(2, 'anu', '$P$BqIh74arwMUWx5akqFxHKsqfqcEHkQ0', 'anu', 'anu.khatra@gmail.com', '', '2020-04-28 12:39:59', '1588077600:$P$Benkm50y1UPQz7.T1h68qRo7CMAzsN0', 0, 'anu'),
(3, 'admin', '$P$BLvDFpW2x2wbf9riq.Noqgdbd8XP6v/', 'admin', 'nawarmuhra41@gmail.com', '', '2020-04-29 09:09:57', '', 0, 'admin') ;

#
# End of data contents of table `tecno_world_users`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_admin_note_actions`
#

DROP TABLE IF EXISTS `tecno_world_wc_admin_note_actions`;


#
# Table structure of table `tecno_world_wc_admin_note_actions`
#

CREATE TABLE `tecno_world_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_admin_note_actions`
#
INSERT INTO `tecno_world_wc_admin_note_actions` ( `action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'open-customizer', 'Open Customizer', 'customize.php', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0) ;

#
# End of data contents of table `tecno_world_wc_admin_note_actions`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_admin_notes`
#

DROP TABLE IF EXISTS `tecno_world_wc_admin_notes`;


#
# Table structure of table `tecno_world_wc_admin_notes`
#

CREATE TABLE `tecno_world_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_admin_notes`
#
INSERT INTO `tecno_world_wc_admin_notes` ( `note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-28 09:45:46', NULL, 0),
(2, 'wc-admin-store-notice-setting-moved', 'info', 'en_US', 'Looking for the Store Notice setting?', 'It can now be found in the Customizer.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-28 09:45:46', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-28 09:45:47', NULL, 0) ;

#
# End of data contents of table `tecno_world_wc_admin_notes`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_category_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_category_lookup`;


#
# Table structure of table `tecno_world_wc_category_lookup`
#

CREATE TABLE `tecno_world_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_category_lookup`
#
INSERT INTO `tecno_world_wc_category_lookup` ( `category_tree_id`, `category_id`) VALUES
(16, 16),
(17, 16) ;

#
# End of data contents of table `tecno_world_wc_category_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_customer_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_customer_lookup`;


#
# Table structure of table `tecno_world_wc_customer_lookup`
#

CREATE TABLE `tecno_world_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_customer_lookup`
#

#
# End of data contents of table `tecno_world_wc_customer_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_download_log`
#

DROP TABLE IF EXISTS `tecno_world_wc_download_log`;


#
# Table structure of table `tecno_world_wc_download_log`
#

CREATE TABLE `tecno_world_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_download_log`
#

#
# End of data contents of table `tecno_world_wc_download_log`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_order_coupon_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_order_coupon_lookup`;


#
# Table structure of table `tecno_world_wc_order_coupon_lookup`
#

CREATE TABLE `tecno_world_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_order_coupon_lookup`
#

#
# End of data contents of table `tecno_world_wc_order_coupon_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_order_product_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_order_product_lookup`;


#
# Table structure of table `tecno_world_wc_order_product_lookup`
#

CREATE TABLE `tecno_world_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_order_product_lookup`
#

#
# End of data contents of table `tecno_world_wc_order_product_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_order_stats`
#

DROP TABLE IF EXISTS `tecno_world_wc_order_stats`;


#
# Table structure of table `tecno_world_wc_order_stats`
#

CREATE TABLE `tecno_world_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_order_stats`
#

#
# End of data contents of table `tecno_world_wc_order_stats`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_order_tax_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_order_tax_lookup`;


#
# Table structure of table `tecno_world_wc_order_tax_lookup`
#

CREATE TABLE `tecno_world_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_order_tax_lookup`
#

#
# End of data contents of table `tecno_world_wc_order_tax_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_product_meta_lookup`
#

DROP TABLE IF EXISTS `tecno_world_wc_product_meta_lookup`;


#
# Table structure of table `tecno_world_wc_product_meta_lookup`
#

CREATE TABLE `tecno_world_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_product_meta_lookup`
#
INSERT INTO `tecno_world_wc_product_meta_lookup` ( `product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(16, '', 0, 0, '3000.0000', '3000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(26, '', 0, 0, '3000.0000', '3000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(27, '', 0, 0, '1500.0000', '1500.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(28, '', 0, 0, '9000.0000', '9000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(35, '', 0, 0, '4000.0000', '4000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(41, '', 0, 0, '6000.0000', '6000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(45, '', 0, 0, '6000.0000', '6000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(47, '', 0, 0, '5000.0000', '5000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(51, '', 0, 0, '12790.0000', '12790.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(54, '', 0, 0, '13790.0000', '13790.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, '', 0, 0, '16790.0000', '16790.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(57, '', 0, 0, '23790.0000', '23790.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(59, '', 0, 0, '17990.0000', '17990.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, '', 0, 0, '21990.0000', '21990.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(65, '', 0, 0, '6990.0000', '6990.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, '', 0, 0, '7890.0000', '7890.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(71, '', 0, 0, '12990.0000', '12990.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, '', 0, 0, '17990.0000', '17990.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(73, '', 0, 0, '899.0000', '899.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(75, '', 0, 0, '1200.0000', '1200.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(77, '', 0, 0, '649.0000', '649.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, '', 0, 0, '366.0000', '366.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, '', 0, 0, '349.0000', '349.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '') ;

#
# End of data contents of table `tecno_world_wc_product_meta_lookup`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_tax_rate_classes`
#

DROP TABLE IF EXISTS `tecno_world_wc_tax_rate_classes`;


#
# Table structure of table `tecno_world_wc_tax_rate_classes`
#

CREATE TABLE `tecno_world_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_tax_rate_classes`
#
INSERT INTO `tecno_world_wc_tax_rate_classes` ( `tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate') ;

#
# End of data contents of table `tecno_world_wc_tax_rate_classes`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_wc_webhooks`
#

DROP TABLE IF EXISTS `tecno_world_wc_webhooks`;


#
# Table structure of table `tecno_world_wc_webhooks`
#

CREATE TABLE `tecno_world_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_wc_webhooks`
#

#
# End of data contents of table `tecno_world_wc_webhooks`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_api_keys`;


#
# Table structure of table `tecno_world_woocommerce_api_keys`
#

CREATE TABLE `tecno_world_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_api_keys`
#

#
# End of data contents of table `tecno_world_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_attribute_taxonomies`;


#
# Table structure of table `tecno_world_woocommerce_attribute_taxonomies`
#

CREATE TABLE `tecno_world_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `tecno_world_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `tecno_world_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `tecno_world_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `tecno_world_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_log`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_log`;


#
# Table structure of table `tecno_world_woocommerce_log`
#

CREATE TABLE `tecno_world_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_log`
#

#
# End of data contents of table `tecno_world_woocommerce_log`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_order_itemmeta`;


#
# Table structure of table `tecno_world_woocommerce_order_itemmeta`
#

CREATE TABLE `tecno_world_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_order_itemmeta`
#

#
# End of data contents of table `tecno_world_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_order_items`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_order_items`;


#
# Table structure of table `tecno_world_woocommerce_order_items`
#

CREATE TABLE `tecno_world_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_order_items`
#

#
# End of data contents of table `tecno_world_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_payment_tokenmeta`;


#
# Table structure of table `tecno_world_woocommerce_payment_tokenmeta`
#

CREATE TABLE `tecno_world_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `tecno_world_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_payment_tokens`;


#
# Table structure of table `tecno_world_woocommerce_payment_tokens`
#

CREATE TABLE `tecno_world_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_payment_tokens`
#

#
# End of data contents of table `tecno_world_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_sessions`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_sessions`;


#
# Table structure of table `tecno_world_woocommerce_sessions`
#

CREATE TABLE `tecno_world_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_sessions`
#
INSERT INTO `tecno_world_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:9:{s:4:"cart";s:818:"a:2:{s:32:"35f4a8d465e6e1edc05f3d8ab658c551";a:11:{s:3:"key";s:32:"35f4a8d465e6e1edc05f3d8ab658c551";s:10:"product_id";i:78;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:366;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:366;s:8:"line_tax";i:0;}s:32:"28dd2c7955ce926456240b2ff0100bde";a:11:{s:3:"key";s:32:"28dd2c7955ce926456240b2ff0100bde";s:10:"product_id";i:77;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:649;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:649;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:411:"a:15:{s:8:"subtotal";s:7:"1015.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:7:"1015.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:7:"1015.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:736:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2020-04-28T13:33:41+01:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:1:"*";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:1:"*";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:20:"nawarmohra@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:22:"mailchimp_landing_site";s:45:"http://localhost:8888/wp-admin/admin-ajax.php";s:21:"chosen_payment_method";s:11:"ppec_paypal";}', 1588328156) ;

#
# End of data contents of table `tecno_world_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_shipping_zone_locations`;


#
# Table structure of table `tecno_world_woocommerce_shipping_zone_locations`
#

CREATE TABLE `tecno_world_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_shipping_zone_locations`
#

#
# End of data contents of table `tecno_world_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_shipping_zone_methods`;


#
# Table structure of table `tecno_world_woocommerce_shipping_zone_methods`
#

CREATE TABLE `tecno_world_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_shipping_zone_methods`
#

#
# End of data contents of table `tecno_world_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_shipping_zones`;


#
# Table structure of table `tecno_world_woocommerce_shipping_zones`
#

CREATE TABLE `tecno_world_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_shipping_zones`
#

#
# End of data contents of table `tecno_world_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_tax_rate_locations`;


#
# Table structure of table `tecno_world_woocommerce_tax_rate_locations`
#

CREATE TABLE `tecno_world_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `tecno_world_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `tecno_world_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `tecno_world_woocommerce_tax_rates`;


#
# Table structure of table `tecno_world_woocommerce_tax_rates`
#

CREATE TABLE `tecno_world_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `tecno_world_woocommerce_tax_rates`
#

#
# End of data contents of table `tecno_world_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

ALTER TABLE `tecno_world_wc_download_log`
  ADD CONSTRAINT `fk_tecno_world_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `tecno_world_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;


PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS _mysql_data_types_cache;
CREATE TABLE _mysql_data_types_cache (
		`table` TEXT NOT NULL,
		`column_or_index` TEXT NOT NULL,
		`mysql_type` TEXT NOT NULL,
		PRIMARY KEY(`table`, `column_or_index`)
	);

INSERT INTO _mysql_data_types_cache ('table','column_or_index','mysql_type') VALUES
('wp_users','ID','bigint(20) unsigned'),
('wp_users','user_login','varchar(60)'),
('wp_users','user_pass','varchar(255)'),
('wp_users','user_nicename','varchar(50)'),
('wp_users','user_email','varchar(100)'),
('wp_users','user_url','varchar(100)'),
('wp_users','user_registered','datetime'),
('wp_users','user_activation_key','varchar(255)'),
('wp_users','user_status','int(11)'),
('wp_users','display_name','varchar(250)'),
('wp_users','wp_users__user_login_key','KEY'),
('wp_users','wp_users__user_nicename','KEY'),
('wp_users','wp_users__user_email','KEY'),
('wp_usermeta','umeta_id','bigint(20) unsigned'),
('wp_usermeta','user_id','bigint(20) unsigned'),
('wp_usermeta','meta_key','varchar(255)'),
('wp_usermeta','meta_value','longtext'),
('wp_usermeta','wp_usermeta__user_id','KEY'),
('wp_usermeta','wp_usermeta__meta_key','KEY'),
('wp_termmeta','meta_id','bigint(20) unsigned'),
('wp_termmeta','term_id','bigint(20) unsigned'),
('wp_termmeta','meta_key','varchar(255)'),
('wp_termmeta','meta_value','longtext'),
('wp_termmeta','wp_termmeta__term_id','KEY'),
('wp_termmeta','wp_termmeta__meta_key','KEY'),
('wp_terms','term_id','bigint(20) unsigned'),
('wp_terms','name','varchar(200)'),
('wp_terms','slug','varchar(200)'),
('wp_terms','term_group','bigint(10)'),
('wp_terms','wp_terms__slug','KEY'),
('wp_terms','wp_terms__name','KEY'),
('wp_term_taxonomy','term_taxonomy_id','bigint(20) unsigned'),
('wp_term_taxonomy','term_id','bigint(20) unsigned'),
('wp_term_taxonomy','taxonomy','varchar(32)'),
('wp_term_taxonomy','description','longtext'),
('wp_term_taxonomy','parent','bigint(20) unsigned'),
('wp_term_taxonomy','count','bigint(20)'),
('wp_term_taxonomy','wp_term_taxonomy__term_id_taxonomy','UNIQUE'),
('wp_term_taxonomy','wp_term_taxonomy__taxonomy','KEY'),
('wp_term_relationships','object_id','bigint(20) unsigned'),
('wp_term_relationships','term_taxonomy_id','bigint(20) unsigned'),
('wp_term_relationships','term_order','int(11)'),
('wp_term_relationships','wp_term_relationships__term_taxonomy_id','KEY'),
('wp_commentmeta','meta_id','bigint(20) unsigned'),
('wp_commentmeta','comment_id','bigint(20) unsigned'),
('wp_commentmeta','meta_key','varchar(255)'),
('wp_commentmeta','meta_value','longtext'),
('wp_commentmeta','wp_commentmeta__comment_id','KEY'),
('wp_commentmeta','wp_commentmeta__meta_key','KEY'),
('wp_comments','comment_ID','bigint(20) unsigned'),
('wp_comments','comment_post_ID','bigint(20) unsigned'),
('wp_comments','comment_author','tinytext'),
('wp_comments','comment_author_email','varchar(100)'),
('wp_comments','comment_author_url','varchar(200)'),
('wp_comments','comment_author_IP','varchar(100)'),
('wp_comments','comment_date','datetime'),
('wp_comments','comment_date_gmt','datetime'),
('wp_comments','comment_content','text'),
('wp_comments','comment_karma','int(11)'),
('wp_comments','comment_approved','varchar(20)'),
('wp_comments','comment_agent','varchar(255)'),
('wp_comments','comment_type','varchar(20)'),
('wp_comments','comment_parent','bigint(20) unsigned'),
('wp_comments','user_id','bigint(20) unsigned'),
('wp_comments','wp_comments__comment_post_ID','KEY'),
('wp_comments','wp_comments__comment_approved_date_gmt','KEY'),
('wp_comments','wp_comments__comment_date_gmt','KEY'),
('wp_comments','wp_comments__comment_parent','KEY'),
('wp_comments','wp_comments__comment_author_email','KEY'),
('wp_links','link_id','bigint(20) unsigned'),
('wp_links','link_url','varchar(255)'),
('wp_links','link_name','varchar(255)'),
('wp_links','link_image','varchar(255)'),
('wp_links','link_target','varchar(25)'),
('wp_links','link_description','varchar(255)'),
('wp_links','link_visible','varchar(20)'),
('wp_links','link_owner','bigint(20) unsigned'),
('wp_links','link_rating','int(11)'),
('wp_links','link_updated','datetime'),
('wp_links','link_rel','varchar(255)'),
('wp_links','link_notes','mediumtext'),
('wp_links','link_rss','varchar(255)'),
('wp_links','wp_links__link_visible','KEY'),
('wp_options','option_id','bigint(20) unsigned'),
('wp_options','option_name','varchar(191)'),
('wp_options','option_value','longtext'),
('wp_options','autoload','varchar(20)'),
('wp_options','wp_options__option_name','UNIQUE'),
('wp_options','wp_options__autoload','KEY'),
('wp_postmeta','meta_id','bigint(20) unsigned'),
('wp_postmeta','post_id','bigint(20) unsigned'),
('wp_postmeta','meta_key','varchar(255)'),
('wp_postmeta','meta_value','longtext'),
('wp_postmeta','wp_postmeta__post_id','KEY'),
('wp_postmeta','wp_postmeta__meta_key','KEY'),
('wp_posts','ID','bigint(20) unsigned'),
('wp_posts','post_author','bigint(20) unsigned'),
('wp_posts','post_date','datetime'),
('wp_posts','post_date_gmt','datetime'),
('wp_posts','post_content','longtext'),
('wp_posts','post_title','text'),
('wp_posts','post_excerpt','text'),
('wp_posts','post_status','varchar(20)'),
('wp_posts','comment_status','varchar(20)'),
('wp_posts','ping_status','varchar(20)'),
('wp_posts','post_password','varchar(255)'),
('wp_posts','post_name','varchar(200)'),
('wp_posts','to_ping','text'),
('wp_posts','pinged','text'),
('wp_posts','post_modified','datetime'),
('wp_posts','post_modified_gmt','datetime'),
('wp_posts','post_content_filtered','longtext'),
('wp_posts','post_parent','bigint(20) unsigned'),
('wp_posts','guid','varchar(255)'),
('wp_posts','menu_order','int(11)'),
('wp_posts','post_type','varchar(20)'),
('wp_posts','post_mime_type','varchar(100)'),
('wp_posts','comment_count','bigint(20)'),
('wp_posts','wp_posts__post_name','KEY'),
('wp_posts','wp_posts__type_status_date','KEY'),
('wp_posts','wp_posts__post_parent','KEY'),
('wp_posts','wp_posts__post_author','KEY');

DROP TABLE IF EXISTS wp_users;
CREATE TABLE "wp_users" (
"ID" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"user_login" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_pass" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_nicename" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_email" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_url" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_registered" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"user_activation_key" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"user_status" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"display_name" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE);

INSERT INTO wp_users ('ID','user_login','user_pass','user_nicename','user_email','user_url','user_registered','user_activation_key','user_status','display_name') VALUES
('1','admin','$wp$2y$10$WKjFihmEy.1VqohpujkS3.ffIJYioT.dqtpz5tPsSinaaXsLM3n.u','admin','admin@exmaple.com','http://localhost:23459','2025-06-07 08:03:27','','0','admin');

DROP TABLE IF EXISTS wp_usermeta;
CREATE TABLE "wp_usermeta" (
"umeta_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"user_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"meta_key" text DEFAULT NULL COLLATE NOCASE,
"meta_value" text COLLATE NOCASE);

INSERT INTO wp_usermeta ('umeta_id','user_id','meta_key','meta_value') VALUES
('1','1','nickname','admin'),
('2','1','first_name',''),
('3','1','last_name',''),
('4','1','description',''),
('5','1','rich_editing','true'),
('6','1','syntax_highlighting','true'),
('7','1','comment_shortcuts','false'),
('8','1','admin_color','fresh'),
('9','1','use_ssl','0'),
('10','1','show_admin_bar_front','true'),
('11','1','locale',''),
('12','1','wp_capabilities','a:1:{s:13:"administrator";b:1;}'),
('13','1','wp_user_level','10'),
('14','1','dismissed_wp_pointers',''),
('15','1','show_welcome_panel','1');

DROP TABLE IF EXISTS wp_termmeta;
CREATE TABLE "wp_termmeta" (
"meta_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"term_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"meta_key" text DEFAULT NULL COLLATE NOCASE,
"meta_value" text COLLATE NOCASE);

DROP TABLE IF EXISTS wp_terms;
CREATE TABLE "wp_terms" (
"term_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"name" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"slug" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"term_group" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0);

INSERT INTO wp_terms ('term_id','name','slug','term_group') VALUES
('1','Uncategorized','uncategorized','0');

DROP TABLE IF EXISTS wp_term_taxonomy;
CREATE TABLE "wp_term_taxonomy" (
"term_taxonomy_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"term_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"taxonomy" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"description" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"parent" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"count" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0);

INSERT INTO wp_term_taxonomy ('term_taxonomy_id','term_id','taxonomy','description','parent','count') VALUES
('1','1','category','','0','1');

DROP TABLE IF EXISTS wp_term_relationships;
CREATE TABLE "wp_term_relationships" (
"object_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"term_taxonomy_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"term_order" integer NOT NULL ON CONFLICT REPLACE DEFAULT 0,
PRIMARY KEY ("object_id", "term_taxonomy_id"));

INSERT INTO wp_term_relationships ('object_id','term_taxonomy_id','term_order') VALUES
('1','1','0');

DROP TABLE IF EXISTS wp_commentmeta;
CREATE TABLE "wp_commentmeta" (
"meta_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"comment_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"meta_key" text DEFAULT NULL COLLATE NOCASE,
"meta_value" text COLLATE NOCASE);

DROP TABLE IF EXISTS wp_comments;
CREATE TABLE "wp_comments" (
"comment_ID" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"comment_post_ID" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"comment_author" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_author_email" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_author_url" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_author_IP" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_date" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"comment_date_gmt" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"comment_content" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_karma" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"comment_approved" text NOT NULL ON CONFLICT REPLACE DEFAULT '1' COLLATE NOCASE,
"comment_agent" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_type" text NOT NULL ON CONFLICT REPLACE DEFAULT 'comment' COLLATE NOCASE,
"comment_parent" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"user_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0');

INSERT INTO wp_comments ('comment_ID','comment_post_ID','comment_author','comment_author_email','comment_author_url','comment_author_IP','comment_date','comment_date_gmt','comment_content','comment_karma','comment_approved','comment_agent','comment_type','comment_parent','user_id') VALUES
('1','1','A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-06-07 08:03:27','2025-06-07 08:03:27','Hi, this is a comment.' || char(10) || 'To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.' || char(10) || 'Commenter avatars come from <a href="https://gravatar.com/">Gravatar</a>.','0','1','','comment','0','0');

DROP TABLE IF EXISTS wp_links;
CREATE TABLE "wp_links" (
"link_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"link_url" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_name" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_image" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_target" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_description" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_visible" text NOT NULL ON CONFLICT REPLACE DEFAULT 'Y' COLLATE NOCASE,
"link_owner" integer NOT NULL ON CONFLICT REPLACE DEFAULT '1',
"link_rating" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"link_updated" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"link_rel" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_notes" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"link_rss" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE);

DROP TABLE IF EXISTS wp_options;
CREATE TABLE "wp_options" (
"option_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"option_name" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"option_value" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"autoload" text NOT NULL ON CONFLICT REPLACE DEFAULT 'yes' COLLATE NOCASE);

INSERT INTO wp_options ('option_id','option_name','option_value','autoload') VALUES
('1','siteurl','http://localhost:23459','on'),
('2','home','http://localhost:23459','on'),
('3','blogname','HR Management Addon Test','on'),
('4','blogdescription','','on'),
('5','users_can_register','0','on'),
('6','admin_email','admin@exmaple.com','on'),
('7','start_of_week','1','on'),
('8','use_balanceTags','0','on'),
('9','use_smilies','1','on'),
('10','require_name_email','1','on'),
('11','comments_notify','1','on'),
('12','posts_per_rss','10','on'),
('13','rss_use_excerpt','0','on'),
('14','mailserver_url','mail.example.com','on'),
('15','mailserver_login','login@example.com','on'),
('16','mailserver_pass','','on'),
('17','mailserver_port','110','on'),
('18','default_category','1','on'),
('19','default_comment_status','open','on'),
('20','default_ping_status','open','on'),
('21','default_pingback_flag','1','on'),
('22','posts_per_page','10','on'),
('23','date_format','F j, Y','on'),
('24','time_format','g:i a','on'),
('25','links_updated_date_format','F j, Y g:i a','on'),
('26','comment_moderation','0','on'),
('27','moderation_notify','1','on'),
('28','permalink_structure','/%year%/%monthnum%/%day%/%postname%/','on'),
('29','rewrite_rules','','on'),
('30','hack_file','0','on'),
('31','blog_charset','UTF-8','on'),
('32','moderation_keys','','off'),
('33','active_plugins','a:1:{i:0;s:43:"hr-management-addon/hr-management-addon.php";}','on'),
('34','category_base','','on'),
('35','ping_sites','http://rpc.pingomatic.com/','on'),
('36','comment_max_links','2','on'),
('37','gmt_offset','0','on'),
('38','default_email_category','1','on'),
('39','recently_edited','','off'),
('40','template','twentytwentyfive','on'),
('41','stylesheet','twentytwentyfive','on'),
('42','comment_registration','0','on'),
('43','html_type','text/html','on'),
('44','use_trackback','0','on'),
('45','default_role','subscriber','on'),
('46','db_version','58975','on'),
('47','uploads_use_yearmonth_folders','1','on'),
('48','upload_path','','on'),
('49','blog_public','1','on'),
('50','default_link_category','2','on'),
('51','show_on_front','posts','on'),
('52','tag_base','','on'),
('53','show_avatars','1','on'),
('54','avatar_rating','G','on'),
('55','upload_url_path','','on'),
('56','thumbnail_size_w','150','on'),
('57','thumbnail_size_h','150','on'),
('58','thumbnail_crop','1','on'),
('59','medium_size_w','300','on'),
('60','medium_size_h','300','on'),
('61','avatar_default','mystery','on'),
('62','large_size_w','1024','on'),
('63','large_size_h','1024','on'),
('64','image_default_link_type','none','on'),
('65','image_default_size','','on'),
('66','image_default_align','','on'),
('67','close_comments_for_old_posts','0','on'),
('68','close_comments_days_old','14','on'),
('69','thread_comments','1','on'),
('70','thread_comments_depth','5','on'),
('71','page_comments','0','on'),
('72','comments_per_page','50','on'),
('73','default_comments_page','newest','on'),
('74','comment_order','asc','on'),
('75','sticky_posts','a:0:{}','on'),
('76','widget_categories','a:0:{}','on'),
('77','widget_text','a:0:{}','on'),
('78','widget_rss','a:0:{}','on'),
('79','uninstall_plugins','a:0:{}','off'),
('80','timezone_string','','on'),
('81','page_for_posts','0','on'),
('82','page_on_front','0','on'),
('83','default_post_format','0','on'),
('84','link_manager_enabled','0','on'),
('85','finished_splitting_shared_terms','1','on'),
('86','site_icon','0','on'),
('87','medium_large_size_w','768','on'),
('88','medium_large_size_h','0','on'),
('89','wp_page_for_privacy_policy','3','on'),
('90','show_comments_cookies_opt_in','1','on'),
('91','admin_email_lifespan','1764835407','on'),
('92','disallowed_keys','','off'),
('93','comment_previously_approved','1','on'),
('94','auto_plugin_theme_update_emails','a:0:{}','off'),
('95','auto_update_core_dev','enabled','on'),
('96','auto_update_core_minor','enabled','on'),
('97','auto_update_core_major','enabled','on'),
('98','wp_force_deactivated_plugins','a:0:{}','on'),
('99','wp_attachment_pages_enabled','0','on'),
('100','initial_db_version','58975','on'),
('101','wp_user_roles','a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}','on'),
('102','fresh_site','1','auto'),
('103','user_count','1','off'),
('104','widget_block','a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}','auto'),
('105','sidebars_widgets','a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:13:"array_version";i:3;}','auto'),
('106','cron','a:3:{i:1749283408;a:4:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1749369808;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}','on'),
('107','widget_pages','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('108','widget_calendar','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('109','widget_archives','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('110','widget_media_audio','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('111','widget_media_image','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('112','widget_media_gallery','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('113','widget_media_video','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('114','widget_meta','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('115','widget_search','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('116','widget_recent-posts','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('117','widget_recent-comments','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('118','widget_tag_cloud','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('119','widget_nav_menu','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('120','widget_custom_html','a:1:{s:12:"_multiwidget";i:1;}','auto'),
('121','_transient_wp_core_block_css_files','a:2:{s:7:"version";s:5:"6.8.1";s:5:"files";a:536:{i:0;s:23:"archives/editor-rtl.css";i:1;s:27:"archives/editor-rtl.min.css";i:2;s:19:"archives/editor.css";i:3;s:23:"archives/editor.min.css";i:4;s:22:"archives/style-rtl.css";i:5;s:26:"archives/style-rtl.min.css";i:6;s:18:"archives/style.css";i:7;s:22:"archives/style.min.css";i:8;s:20:"audio/editor-rtl.css";i:9;s:24:"audio/editor-rtl.min.css";i:10;s:16:"audio/editor.css";i:11;s:20:"audio/editor.min.css";i:12;s:19:"audio/style-rtl.css";i:13;s:23:"audio/style-rtl.min.css";i:14;s:15:"audio/style.css";i:15;s:19:"audio/style.min.css";i:16;s:19:"audio/theme-rtl.css";i:17;s:23:"audio/theme-rtl.min.css";i:18;s:15:"audio/theme.css";i:19;s:19:"audio/theme.min.css";i:20;s:21:"avatar/editor-rtl.css";i:21;s:25:"avatar/editor-rtl.min.css";i:22;s:17:"avatar/editor.css";i:23;s:21:"avatar/editor.min.css";i:24;s:20:"avatar/style-rtl.css";i:25;s:24:"avatar/style-rtl.min.css";i:26;s:16:"avatar/style.css";i:27;s:20:"avatar/style.min.css";i:28;s:21:"button/editor-rtl.css";i:29;s:25:"button/editor-rtl.min.css";i:30;s:17:"button/editor.css";i:31;s:21:"button/editor.min.css";i:32;s:20:"button/style-rtl.css";i:33;s:24:"button/style-rtl.min.css";i:34;s:16:"button/style.css";i:35;s:20:"button/style.min.css";i:36;s:22:"buttons/editor-rtl.css";i:37;s:26:"buttons/editor-rtl.min.css";i:38;s:18:"buttons/editor.css";i:39;s:22:"buttons/editor.min.css";i:40;s:21:"buttons/style-rtl.css";i:41;s:25:"buttons/style-rtl.min.css";i:42;s:17:"buttons/style.css";i:43;s:21:"buttons/style.min.css";i:44;s:22:"calendar/style-rtl.css";i:45;s:26:"calendar/style-rtl.min.css";i:46;s:18:"calendar/style.css";i:47;s:22:"calendar/style.min.css";i:48;s:25:"categories/editor-rtl.css";i:49;s:29:"categories/editor-rtl.min.css";i:50;s:21:"categories/editor.css";i:51;s:25:"categories/editor.min.css";i:52;s:24:"categories/style-rtl.css";i:53;s:28:"categories/style-rtl.min.css";i:54;s:20:"categories/style.css";i:55;s:24:"categories/style.min.css";i:56;s:19:"code/editor-rtl.css";i:57;s:23:"code/editor-rtl.min.css";i:58;s:15:"code/editor.css";i:59;s:19:"code/editor.min.css";i:60;s:18:"code/style-rtl.css";i:61;s:22:"code/style-rtl.min.css";i:62;s:14:"code/style.css";i:63;s:18:"code/style.min.css";i:64;s:18:"code/theme-rtl.css";i:65;s:22:"code/theme-rtl.min.css";i:66;s:14:"code/theme.css";i:67;s:18:"code/theme.min.css";i:68;s:22:"columns/editor-rtl.css";i:69;s:26:"columns/editor-rtl.min.css";i:70;s:18:"columns/editor.css";i:71;s:22:"columns/editor.min.css";i:72;s:21:"columns/style-rtl.css";i:73;s:25:"columns/style-rtl.min.css";i:74;s:17:"columns/style.css";i:75;s:21:"columns/style.min.css";i:76;s:33:"comment-author-name/style-rtl.css";i:77;s:37:"comment-author-name/style-rtl.min.css";i:78;s:29:"comment-author-name/style.css";i:79;s:33:"comment-author-name/style.min.css";i:80;s:29:"comment-content/style-rtl.css";i:81;s:33:"comment-content/style-rtl.min.css";i:82;s:25:"comment-content/style.css";i:83;s:29:"comment-content/style.min.css";i:84;s:26:"comment-date/style-rtl.css";i:85;s:30:"comment-date/style-rtl.min.css";i:86;s:22:"comment-date/style.css";i:87;s:26:"comment-date/style.min.css";i:88;s:31:"comment-edit-link/style-rtl.css";i:89;s:35:"comment-edit-link/style-rtl.min.css";i:90;s:27:"comment-edit-link/style.css";i:91;s:31:"comment-edit-link/style.min.css";i:92;s:32:"comment-reply-link/style-rtl.css";i:93;s:36:"comment-reply-link/style-rtl.min.css";i:94;s:28:"comment-reply-link/style.css";i:95;s:32:"comment-reply-link/style.min.css";i:96;s:30:"comment-template/style-rtl.css";i:97;s:34:"comment-template/style-rtl.min.css";i:98;s:26:"comment-template/style.css";i:99;s:30:"comment-template/style.min.css";i:100;s:42:"comments-pagination-numbers/editor-rtl.css";i:101;s:46:"comments-pagination-numbers/editor-rtl.min.css";i:102;s:38:"comments-pagination-numbers/editor.css";i:103;s:42:"comments-pagination-numbers/editor.min.css";i:104;s:34:"comments-pagination/editor-rtl.css";i:105;s:38:"comments-pagination/editor-rtl.min.css";i:106;s:30:"comments-pagination/editor.css";i:107;s:34:"comments-pagination/editor.min.css";i:108;s:33:"comments-pagination/style-rtl.css";i:109;s:37:"comments-pagination/style-rtl.min.css";i:110;s:29:"comments-pagination/style.css";i:111;s:33:"comments-pagination/style.min.css";i:112;s:29:"comments-title/editor-rtl.css";i:113;s:33:"comments-title/editor-rtl.min.css";i:114;s:25:"comments-title/editor.css";i:115;s:29:"comments-title/editor.min.css";i:116;s:23:"comments/editor-rtl.css";i:117;s:27:"comments/editor-rtl.min.css";i:118;s:19:"comments/editor.css";i:119;s:23:"comments/editor.min.css";i:120;s:22:"comments/style-rtl.css";i:121;s:26:"comments/style-rtl.min.css";i:122;s:18:"comments/style.css";i:123;s:22:"comments/style.min.css";i:124;s:20:"cover/editor-rtl.css";i:125;s:24:"cover/editor-rtl.min.css";i:126;s:16:"cover/editor.css";i:127;s:20:"cover/editor.min.css";i:128;s:19:"cover/style-rtl.css";i:129;s:23:"cover/style-rtl.min.css";i:130;s:15:"cover/style.css";i:131;s:19:"cover/style.min.css";i:132;s:22:"details/editor-rtl.css";i:133;s:26:"details/editor-rtl.min.css";i:134;s:18:"details/editor.css";i:135;s:22:"details/editor.min.css";i:136;s:21:"details/style-rtl.css";i:137;s:25:"details/style-rtl.min.css";i:138;s:17:"details/style.css";i:139;s:21:"details/style.min.css";i:140;s:20:"embed/editor-rtl.css";i:141;s:24:"embed/editor-rtl.min.css";i:142;s:16:"embed/editor.css";i:143;s:20:"embed/editor.min.css";i:144;s:19:"embed/style-rtl.css";i:145;s:23:"embed/style-rtl.min.css";i:146;s:15:"embed/style.css";i:147;s:19:"embed/style.min.css";i:148;s:19:"embed/theme-rtl.css";i:149;s:23:"embed/theme-rtl.min.css";i:150;s:15:"embed/theme.css";i:151;s:19:"embed/theme.min.css";i:152;s:19:"file/editor-rtl.css";i:153;s:23:"file/editor-rtl.min.css";i:154;s:15:"file/editor.css";i:155;s:19:"file/editor.min.css";i:156;s:18:"file/style-rtl.css";i:157;s:22:"file/style-rtl.min.css";i:158;s:14:"file/style.css";i:159;s:18:"file/style.min.css";i:160;s:23:"footnotes/style-rtl.css";i:161;s:27:"footnotes/style-rtl.min.css";i:162;s:19:"footnotes/style.css";i:163;s:23:"footnotes/style.min.css";i:164;s:23:"freeform/editor-rtl.css";i:165;s:27:"freeform/editor-rtl.min.css";i:166;s:19:"freeform/editor.css";i:167;s:23:"freeform/editor.min.css";i:168;s:22:"gallery/editor-rtl.css";i:169;s:26:"gallery/editor-rtl.min.css";i:170;s:18:"gallery/editor.css";i:171;s:22:"gallery/editor.min.css";i:172;s:21:"gallery/style-rtl.css";i:173;s:25:"gallery/style-rtl.min.css";i:174;s:17:"gallery/style.css";i:175;s:21:"gallery/style.min.css";i:176;s:21:"gallery/theme-rtl.css";i:177;s:25:"gallery/theme-rtl.min.css";i:178;s:17:"gallery/theme.css";i:179;s:21:"gallery/theme.min.css";i:180;s:20:"group/editor-rtl.css";i:181;s:24:"group/editor-rtl.min.css";i:182;s:16:"group/editor.css";i:183;s:20:"group/editor.min.css";i:184;s:19:"group/style-rtl.css";i:185;s:23:"group/style-rtl.min.css";i:186;s:15:"group/style.css";i:187;s:19:"group/style.min.css";i:188;s:19:"group/theme-rtl.css";i:189;s:23:"group/theme-rtl.min.css";i:190;s:15:"group/theme.css";i:191;s:19:"group/theme.min.css";i:192;s:21:"heading/style-rtl.css";i:193;s:25:"heading/style-rtl.min.css";i:194;s:17:"heading/style.css";i:195;s:21:"heading/style.min.css";i:196;s:19:"html/editor-rtl.css";i:197;s:23:"html/editor-rtl.min.css";i:198;s:15:"html/editor.css";i:199;s:19:"html/editor.min.css";i:200;s:20:"image/editor-rtl.css";i:201;s:24:"image/editor-rtl.min.css";i:202;s:16:"image/editor.css";i:203;s:20:"image/editor.min.css";i:204;s:19:"image/style-rtl.css";i:205;s:23:"image/style-rtl.min.css";i:206;s:15:"image/style.css";i:207;s:19:"image/style.min.css";i:208;s:19:"image/theme-rtl.css";i:209;s:23:"image/theme-rtl.min.css";i:210;s:15:"image/theme.css";i:211;s:19:"image/theme.min.css";i:212;s:29:"latest-comments/style-rtl.css";i:213;s:33:"latest-comments/style-rtl.min.css";i:214;s:25:"latest-comments/style.css";i:215;s:29:"latest-comments/style.min.css";i:216;s:27:"latest-posts/editor-rtl.css";i:217;s:31:"latest-posts/editor-rtl.min.css";i:218;s:23:"latest-posts/editor.css";i:219;s:27:"latest-posts/editor.min.css";i:220;s:26:"latest-posts/style-rtl.css";i:221;s:30:"latest-posts/style-rtl.min.css";i:222;s:22:"latest-posts/style.css";i:223;s:26:"latest-posts/style.min.css";i:224;s:18:"list/style-rtl.css";i:225;s:22:"list/style-rtl.min.css";i:226;s:14:"list/style.css";i:227;s:18:"list/style.min.css";i:228;s:22:"loginout/style-rtl.css";i:229;s:26:"loginout/style-rtl.min.css";i:230;s:18:"loginout/style.css";i:231;s:22:"loginout/style.min.css";i:232;s:25:"media-text/editor-rtl.css";i:233;s:29:"media-text/editor-rtl.min.css";i:234;s:21:"media-text/editor.css";i:235;s:25:"media-text/editor.min.css";i:236;s:24:"media-text/style-rtl.css";i:237;s:28:"media-text/style-rtl.min.css";i:238;s:20:"media-text/style.css";i:239;s:24:"media-text/style.min.css";i:240;s:19:"more/editor-rtl.css";i:241;s:23:"more/editor-rtl.min.css";i:242;s:15:"more/editor.css";i:243;s:19:"more/editor.min.css";i:244;s:30:"navigation-link/editor-rtl.css";i:245;s:34:"navigation-link/editor-rtl.min.css";i:246;s:26:"navigation-link/editor.css";i:247;s:30:"navigation-link/editor.min.css";i:248;s:29:"navigation-link/style-rtl.css";i:249;s:33:"navigation-link/style-rtl.min.css";i:250;s:25:"navigation-link/style.css";i:251;s:29:"navigation-link/style.min.css";i:252;s:33:"navigation-submenu/editor-rtl.css";i:253;s:37:"navigation-submenu/editor-rtl.min.css";i:254;s:29:"navigation-submenu/editor.css";i:255;s:33:"navigation-submenu/editor.min.css";i:256;s:25:"navigation/editor-rtl.css";i:257;s:29:"navigation/editor-rtl.min.css";i:258;s:21:"navigation/editor.css";i:259;s:25:"navigation/editor.min.css";i:260;s:24:"navigation/style-rtl.css";i:261;s:28:"navigation/style-rtl.min.css";i:262;s:20:"navigation/style.css";i:263;s:24:"navigation/style.min.css";i:264;s:23:"nextpage/editor-rtl.css";i:265;s:27:"nextpage/editor-rtl.min.css";i:266;s:19:"nextpage/editor.css";i:267;s:23:"nextpage/editor.min.css";i:268;s:24:"page-list/editor-rtl.css";i:269;s:28:"page-list/editor-rtl.min.css";i:270;s:20:"page-list/editor.css";i:271;s:24:"page-list/editor.min.css";i:272;s:23:"page-list/style-rtl.css";i:273;s:27:"page-list/style-rtl.min.css";i:274;s:19:"page-list/style.css";i:275;s:23:"page-list/style.min.css";i:276;s:24:"paragraph/editor-rtl.css";i:277;s:28:"paragraph/editor-rtl.min.css";i:278;s:20:"paragraph/editor.css";i:279;s:24:"paragraph/editor.min.css";i:280;s:23:"paragraph/style-rtl.css";i:281;s:27:"paragraph/style-rtl.min.css";i:282;s:19:"paragraph/style.css";i:283;s:23:"paragraph/style.min.css";i:284;s:35:"post-author-biography/style-rtl.css";i:285;s:39:"post-author-biography/style-rtl.min.css";i:286;s:31:"post-author-biography/style.css";i:287;s:35:"post-author-biography/style.min.css";i:288;s:30:"post-author-name/style-rtl.css";i:289;s:34:"post-author-name/style-rtl.min.css";i:290;s:26:"post-author-name/style.css";i:291;s:30:"post-author-name/style.min.css";i:292;s:26:"post-author/editor-rtl.css";i:293;s:30:"post-author/editor-rtl.min.css";i:294;s:22:"post-author/editor.css";i:295;s:26:"post-author/editor.min.css";i:296;s:25:"post-author/style-rtl.css";i:297;s:29:"post-author/style-rtl.min.css";i:298;s:21:"post-author/style.css";i:299;s:25:"post-author/style.min.css";i:300;s:33:"post-comments-form/editor-rtl.css";i:301;s:37:"post-comments-form/editor-rtl.min.css";i:302;s:29:"post-comments-form/editor.css";i:303;s:33:"post-comments-form/editor.min.css";i:304;s:32:"post-comments-form/style-rtl.css";i:305;s:36:"post-comments-form/style-rtl.min.css";i:306;s:28:"post-comments-form/style.css";i:307;s:32:"post-comments-form/style.min.css";i:308;s:26:"post-content/style-rtl.css";i:309;s:30:"post-content/style-rtl.min.css";i:310;s:22:"post-content/style.css";i:311;s:26:"post-content/style.min.css";i:312;s:23:"post-date/style-rtl.css";i:313;s:27:"post-date/style-rtl.min.css";i:314;s:19:"post-date/style.css";i:315;s:23:"post-date/style.min.css";i:316;s:27:"post-excerpt/editor-rtl.css";i:317;s:31:"post-excerpt/editor-rtl.min.css";i:318;s:23:"post-excerpt/editor.css";i:319;s:27:"post-excerpt/editor.min.css";i:320;s:26:"post-excerpt/style-rtl.css";i:321;s:30:"post-excerpt/style-rtl.min.css";i:322;s:22:"post-excerpt/style.css";i:323;s:26:"post-excerpt/style.min.css";i:324;s:34:"post-featured-image/editor-rtl.css";i:325;s:38:"post-featured-image/editor-rtl.min.css";i:326;s:30:"post-featured-image/editor.css";i:327;s:34:"post-featured-image/editor.min.css";i:328;s:33:"post-featured-image/style-rtl.css";i:329;s:37:"post-featured-image/style-rtl.min.css";i:330;s:29:"post-featured-image/style.css";i:331;s:33:"post-featured-image/style.min.css";i:332;s:34:"post-navigation-link/style-rtl.css";i:333;s:38:"post-navigation-link/style-rtl.min.css";i:334;s:30:"post-navigation-link/style.css";i:335;s:34:"post-navigation-link/style.min.css";i:336;s:27:"post-template/style-rtl.css";i:337;s:31:"post-template/style-rtl.min.css";i:338;s:23:"post-template/style.css";i:339;s:27:"post-template/style.min.css";i:340;s:24:"post-terms/style-rtl.css";i:341;s:28:"post-terms/style-rtl.min.css";i:342;s:20:"post-terms/style.css";i:343;s:24:"post-terms/style.min.css";i:344;s:24:"post-title/style-rtl.css";i:345;s:28:"post-title/style-rtl.min.css";i:346;s:20:"post-title/style.css";i:347;s:24:"post-title/style.min.css";i:348;s:26:"preformatted/style-rtl.css";i:349;s:30:"preformatted/style-rtl.min.css";i:350;s:22:"preformatted/style.css";i:351;s:26:"preformatted/style.min.css";i:352;s:24:"pullquote/editor-rtl.css";i:353;s:28:"pullquote/editor-rtl.min.css";i:354;s:20:"pullquote/editor.css";i:355;s:24:"pullquote/editor.min.css";i:356;s:23:"pullquote/style-rtl.css";i:357;s:27:"pullquote/style-rtl.min.css";i:358;s:19:"pullquote/style.css";i:359;s:23:"pullquote/style.min.css";i:360;s:23:"pullquote/theme-rtl.css";i:361;s:27:"pullquote/theme-rtl.min.css";i:362;s:19:"pullquote/theme.css";i:363;s:23:"pullquote/theme.min.css";i:364;s:39:"query-pagination-numbers/editor-rtl.css";i:365;s:43:"query-pagination-numbers/editor-rtl.min.css";i:366;s:35:"query-pagination-numbers/editor.css";i:367;s:39:"query-pagination-numbers/editor.min.css";i:368;s:31:"query-pagination/editor-rtl.css";i:369;s:35:"query-pagination/editor-rtl.min.css";i:370;s:27:"query-pagination/editor.css";i:371;s:31:"query-pagination/editor.min.css";i:372;s:30:"query-pagination/style-rtl.css";i:373;s:34:"query-pagination/style-rtl.min.css";i:374;s:26:"query-pagination/style.css";i:375;s:30:"query-pagination/style.min.css";i:376;s:25:"query-title/style-rtl.css";i:377;s:29:"query-title/style-rtl.min.css";i:378;s:21:"query-title/style.css";i:379;s:25:"query-title/style.min.css";i:380;s:25:"query-total/style-rtl.css";i:381;s:29:"query-total/style-rtl.min.css";i:382;s:21:"query-total/style.css";i:383;s:25:"query-total/style.min.css";i:384;s:20:"query/editor-rtl.css";i:385;s:24:"query/editor-rtl.min.css";i:386;s:16:"query/editor.css";i:387;s:20:"query/editor.min.css";i:388;s:19:"quote/style-rtl.css";i:389;s:23:"quote/style-rtl.min.css";i:390;s:15:"quote/style.css";i:391;s:19:"quote/style.min.css";i:392;s:19:"quote/theme-rtl.css";i:393;s:23:"quote/theme-rtl.min.css";i:394;s:15:"quote/theme.css";i:395;s:19:"quote/theme.min.css";i:396;s:23:"read-more/style-rtl.css";i:397;s:27:"read-more/style-rtl.min.css";i:398;s:19:"read-more/style.css";i:399;s:23:"read-more/style.min.css";i:400;s:18:"rss/editor-rtl.css";i:401;s:22:"rss/editor-rtl.min.css";i:402;s:14:"rss/editor.css";i:403;s:18:"rss/editor.min.css";i:404;s:17:"rss/style-rtl.css";i:405;s:21:"rss/style-rtl.min.css";i:406;s:13:"rss/style.css";i:407;s:17:"rss/style.min.css";i:408;s:21:"search/editor-rtl.css";i:409;s:25:"search/editor-rtl.min.css";i:410;s:17:"search/editor.css";i:411;s:21:"search/editor.min.css";i:412;s:20:"search/style-rtl.css";i:413;s:24:"search/style-rtl.min.css";i:414;s:16:"search/style.css";i:415;s:20:"search/style.min.css";i:416;s:20:"search/theme-rtl.css";i:417;s:24:"search/theme-rtl.min.css";i:418;s:16:"search/theme.css";i:419;s:20:"search/theme.min.css";i:420;s:24:"separator/editor-rtl.css";i:421;s:28:"separator/editor-rtl.min.css";i:422;s:20:"separator/editor.css";i:423;s:24:"separator/editor.min.css";i:424;s:23:"separator/style-rtl.css";i:425;s:27:"separator/style-rtl.min.css";i:426;s:19:"separator/style.css";i:427;s:23:"separator/style.min.css";i:428;s:23:"separator/theme-rtl.css";i:429;s:27:"separator/theme-rtl.min.css";i:430;s:19:"separator/theme.css";i:431;s:23:"separator/theme.min.css";i:432;s:24:"shortcode/editor-rtl.css";i:433;s:28:"shortcode/editor-rtl.min.css";i:434;s:20:"shortcode/editor.css";i:435;s:24:"shortcode/editor.min.css";i:436;s:24:"site-logo/editor-rtl.css";i:437;s:28:"site-logo/editor-rtl.min.css";i:438;s:20:"site-logo/editor.css";i:439;s:24:"site-logo/editor.min.css";i:440;s:23:"site-logo/style-rtl.css";i:441;s:27:"site-logo/style-rtl.min.css";i:442;s:19:"site-logo/style.css";i:443;s:23:"site-logo/style.min.css";i:444;s:27:"site-tagline/editor-rtl.css";i:445;s:31:"site-tagline/editor-rtl.min.css";i:446;s:23:"site-tagline/editor.css";i:447;s:27:"site-tagline/editor.min.css";i:448;s:26:"site-tagline/style-rtl.css";i:449;s:30:"site-tagline/style-rtl.min.css";i:450;s:22:"site-tagline/style.css";i:451;s:26:"site-tagline/style.min.css";i:452;s:25:"site-title/editor-rtl.css";i:453;s:29:"site-title/editor-rtl.min.css";i:454;s:21:"site-title/editor.css";i:455;s:25:"site-title/editor.min.css";i:456;s:24:"site-title/style-rtl.css";i:457;s:28:"site-title/style-rtl.min.css";i:458;s:20:"site-title/style.css";i:459;s:24:"site-title/style.min.css";i:460;s:26:"social-link/editor-rtl.css";i:461;s:30:"social-link/editor-rtl.min.css";i:462;s:22:"social-link/editor.css";i:463;s:26:"social-link/editor.min.css";i:464;s:27:"social-links/editor-rtl.css";i:465;s:31:"social-links/editor-rtl.min.css";i:466;s:23:"social-links/editor.css";i:467;s:27:"social-links/editor.min.css";i:468;s:26:"social-links/style-rtl.css";i:469;s:30:"social-links/style-rtl.min.css";i:470;s:22:"social-links/style.css";i:471;s:26:"social-links/style.min.css";i:472;s:21:"spacer/editor-rtl.css";i:473;s:25:"spacer/editor-rtl.min.css";i:474;s:17:"spacer/editor.css";i:475;s:21:"spacer/editor.min.css";i:476;s:20:"spacer/style-rtl.css";i:477;s:24:"spacer/style-rtl.min.css";i:478;s:16:"spacer/style.css";i:479;s:20:"spacer/style.min.css";i:480;s:20:"table/editor-rtl.css";i:481;s:24:"table/editor-rtl.min.css";i:482;s:16:"table/editor.css";i:483;s:20:"table/editor.min.css";i:484;s:19:"table/style-rtl.css";i:485;s:23:"table/style-rtl.min.css";i:486;s:15:"table/style.css";i:487;s:19:"table/style.min.css";i:488;s:19:"table/theme-rtl.css";i:489;s:23:"table/theme-rtl.min.css";i:490;s:15:"table/theme.css";i:491;s:19:"table/theme.min.css";i:492;s:24:"tag-cloud/editor-rtl.css";i:493;s:28:"tag-cloud/editor-rtl.min.css";i:494;s:20:"tag-cloud/editor.css";i:495;s:24:"tag-cloud/editor.min.css";i:496;s:23:"tag-cloud/style-rtl.css";i:497;s:27:"tag-cloud/style-rtl.min.css";i:498;s:19:"tag-cloud/style.css";i:499;s:23:"tag-cloud/style.min.css";i:500;s:28:"template-part/editor-rtl.css";i:501;s:32:"template-part/editor-rtl.min.css";i:502;s:24:"template-part/editor.css";i:503;s:28:"template-part/editor.min.css";i:504;s:27:"template-part/theme-rtl.css";i:505;s:31:"template-part/theme-rtl.min.css";i:506;s:23:"template-part/theme.css";i:507;s:27:"template-part/theme.min.css";i:508;s:30:"term-description/style-rtl.css";i:509;s:34:"term-description/style-rtl.min.css";i:510;s:26:"term-description/style.css";i:511;s:30:"term-description/style.min.css";i:512;s:27:"text-columns/editor-rtl.css";i:513;s:31:"text-columns/editor-rtl.min.css";i:514;s:23:"text-columns/editor.css";i:515;s:27:"text-columns/editor.min.css";i:516;s:26:"text-columns/style-rtl.css";i:517;s:30:"text-columns/style-rtl.min.css";i:518;s:22:"text-columns/style.css";i:519;s:26:"text-columns/style.min.css";i:520;s:19:"verse/style-rtl.css";i:521;s:23:"verse/style-rtl.min.css";i:522;s:15:"verse/style.css";i:523;s:19:"verse/style.min.css";i:524;s:20:"video/editor-rtl.css";i:525;s:24:"video/editor-rtl.min.css";i:526;s:16:"video/editor.css";i:527;s:20:"video/editor.min.css";i:528;s:19:"video/style-rtl.css";i:529;s:23:"video/style-rtl.min.css";i:530;s:15:"video/style.css";i:531;s:19:"video/style.min.css";i:532;s:19:"video/theme-rtl.css";i:533;s:23:"video/theme-rtl.min.css";i:534;s:15:"video/theme.css";i:535;s:19:"video/theme.min.css";}}','on'),
('122','_site_transient_timeout_wp_theme_files_patterns-5ac4f1c242c482f3ea1280285c7bf5ac','1749285208','off'),
('123','_site_transient_wp_theme_files_patterns-5ac4f1c242c482f3ea1280285c7bf5ac','a:2:{s:7:"version";s:3:"1.2";s:8:"patterns";a:98:{s:21:"banner-about-book.php";a:4:{s:5:"title";s:28:"Banner with book description";s:4:"slug";s:34:"twentytwentyfive/banner-about-book";s:11:"description";s:66:"Banner with book description and accompanying image for promotion.";s:10:"categories";a:1:{i:0;s:6:"banner";}}s:28:"banner-cover-big-heading.php";a:4:{s:5:"title";s:22:"Cover with big heading";s:4:"slug";s:41:"twentytwentyfive/banner-cover-big-heading";s:11:"description";s:82:"A full-width cover section with a large background image and an oversized heading.";s:10:"categories";a:3:{i:0;s:6:"banner";i:1;s:5:"about";i:2;s:8:"featured";}}s:22:"banner-intro-image.php";a:4:{s:5:"title";s:49:"Short heading and paragraph and image on the left";s:4:"slug";s:35:"twentytwentyfive/banner-intro-image";s:11:"description";s:68:"A Intro pattern with Short heading, paragraph and image on the left.";s:10:"categories";a:2:{i:0;s:6:"banner";i:1;s:8:"featured";}}s:16:"banner-intro.php";a:4:{s:5:"title";s:35:"Intro with left-aligned description";s:4:"slug";s:29:"twentytwentyfive/banner-intro";s:11:"description";s:66:"A large left-aligned heading with a brand name emphasized in bold.";s:10:"categories";a:1:{i:0;s:6:"banner";}}s:17:"banner-poster.php";a:4:{s:5:"title";s:19:"Poster-like section";s:4:"slug";s:30:"twentytwentyfive/banner-poster";s:11:"description";s:78:"A section that can be used as a banner or a landing page to announce an event.";s:10:"categories";a:2:{i:0;s:6:"banner";i:1;s:5:"media";}}s:43:"banner-with-description-and-images-grid.php";a:4:{s:5:"title";s:39:"Banner with description and images grid";s:4:"slug";s:47:"twentytwentyfive/banner-description-images-grid";s:11:"description";s:75:"A banner with a short paragraph, and two images displayed in a grid layout.";s:10:"categories";a:2:{i:0;s:6:"banner";i:1;s:8:"featured";}}s:18:"binding-format.php";a:4:{s:5:"title";s:16:"Post format name";s:4:"slug";s:31:"twentytwentyfive/binding-format";s:11:"description";s:75:"Prints the name of the post format with the help of the Block Bindings API.";s:10:"categories";a:1:{i:0;s:28:"twentytwentyfive_post-format";}}s:12:"comments.php";a:5:{s:5:"title";s:8:"Comments";s:4:"slug";s:25:"twentytwentyfive/comments";s:11:"description";s:63:"Comments area with comments list, pagination, and comment form.";s:10:"categories";a:1:{i:0;s:4:"text";}s:10:"blockTypes";a:1:{i:0;s:13:"core/comments";}}s:32:"contact-centered-social-link.php";a:5:{s:5:"title";s:30:"Centered link and social links";s:4:"slug";s:45:"twentytwentyfive/contact-centered-social-link";s:11:"description";s:73:"Centered contact section with a prominent message and social media links.";s:10:"categories";a:1:{i:0;s:7:"contact";}s:8:"keywords";a:3:{i:0;s:7:"contact";i:1;s:3:"faq";i:2;s:9:"questions";}}s:26:"contact-info-locations.php";a:6:{s:5:"title";s:27:"Contact, info and locations";s:4:"slug";s:39:"twentytwentyfive/contact-info-locations";s:11:"description";s:78:"Contact section with social media links, email, and multiple location details.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:7:"contact";}s:8:"keywords";a:2:{i:0;s:7:"contact";i:1;s:8:"location";}}s:29:"contact-location-and-link.php";a:4:{s:5:"title";s:25:"Contact location and link";s:4:"slug";s:42:"twentytwentyfive/contact-location-and-link";s:11:"description";s:89:"Contact section with a location address, a directions link, and an image of the location.";s:10:"categories";a:2:{i:0;s:7:"contact";i:1;s:8:"featured";}}s:18:"cta-book-links.php";a:4:{s:5:"title";s:30:"Call to action with book links";s:4:"slug";s:31:"twentytwentyfive/cta-book-links";s:11:"description";s:74:"A call to action section with links to get the book in different websites.";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:22:"cta-book-locations.php";a:4:{s:5:"title";s:29:"Call to action with locations";s:4:"slug";s:35:"twentytwentyfive/cta-book-locations";s:11:"description";s:82:"A call to action section with links to get the book in the most popular locations.";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:24:"cta-centered-heading.php";a:4:{s:5:"title";s:16:"Centered heading";s:4:"slug";s:37:"twentytwentyfive/cta-centered-heading";s:11:"description";s:53:"A hero with a centered heading, paragraph and button.";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:19:"cta-events-list.php";a:4:{s:5:"title";s:11:"Events list";s:4:"slug";s:32:"twentytwentyfive/cta-events-list";s:11:"description";s:37:"A list of events with call to action.";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:26:"cta-grid-products-link.php";a:5:{s:5:"title";s:54:"Call to action with grid layout with products and link";s:4:"slug";s:39:"twentytwentyfive/cta-grid-products-link";s:11:"description";s:42:"A call to action featuring product images.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:14:"call-to-action";i:1;s:8:"featured";}}s:22:"cta-heading-search.php";a:4:{s:5:"title";s:23:"Heading and search form";s:4:"slug";s:35:"twentytwentyfive/cta-heading-search";s:11:"description";s:54:"Large heading with a search form for quick navigation.";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:18:"cta-newsletter.php";a:5:{s:5:"title";s:18:"Newsletter sign-up";s:4:"slug";s:31:"twentytwentyfive/cta-newsletter";s:11:"description";s:0:"";s:10:"categories";a:1:{i:0;s:14:"call-to-action";}s:8:"keywords";a:2:{i:0;s:14:"call-to-action";i:1;s:10:"newsletter";}}s:15:"event-3-col.php";a:5:{s:5:"title";s:46:"Events, 3 columns with event images and titles";s:4:"slug";s:28:"twentytwentyfive/event-3-col";s:11:"description";s:95:"A header with title and text and three columns that show 3 events with their images and titles.";s:10:"categories";a:1:{i:0;s:6:"banner";}s:8:"keywords";a:3:{i:0;s:6:"events";i:1;s:7:"columns";i:2;s:6:"images";}}s:14:"event-rsvp.php";a:7:{s:5:"title";s:10:"Event RSVP";s:4:"slug";s:27:"twentytwentyfive/event-rsvp";s:11:"description";s:64:"RSVP for an upcoming event with a cover image and event details.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:14:"call-to-action";}s:8:"keywords";a:3:{i:0;s:14:"call-to-action";i:1;s:4:"rsvp";i:2;s:5:"event";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}}s:18:"event-schedule.php";a:5:{s:5:"title";s:14:"Event schedule";s:4:"slug";s:31:"twentytwentyfive/event-schedule";s:11:"description";s:54:"A section with specified dates and times for an event.";s:10:"categories";a:1:{i:0;s:5:"about";}s:8:"keywords";a:4:{i:0;s:6:"events";i:1;s:6:"agenda";i:2;s:8:"schedule";i:3;s:8:"lectures";}}s:19:"footer-centered.php";a:5:{s:5:"title";s:15:"Centered footer";s:4:"slug";s:32:"twentytwentyfive/footer-centered";s:11:"description";s:44:"Footer with centered site title and tagline.";s:10:"categories";a:1:{i:0;s:6:"footer";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/footer";}}s:18:"footer-columns.php";a:5:{s:5:"title";s:19:"Footer with columns";s:4:"slug";s:31:"twentytwentyfive/footer-columns";s:11:"description";s:45:"Footer columns with title, tagline and links.";s:10:"categories";a:1:{i:0;s:6:"footer";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/footer";}}s:21:"footer-newsletter.php";a:5:{s:5:"title";s:29:"Footer with newsletter signup";s:4:"slug";s:34:"twentytwentyfive/footer-newsletter";s:11:"description";s:51:"Footer with large site title and newsletter signup.";s:10:"categories";a:1:{i:0;s:6:"footer";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/footer";}}s:17:"footer-social.php";a:5:{s:5:"title";s:33:"Centered footer with social links";s:4:"slug";s:30:"twentytwentyfive/footer-social";s:11:"description";s:49:"Footer with centered site title and social links.";s:10:"categories";a:1:{i:0;s:6:"footer";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/footer";}}s:10:"footer.php";a:5:{s:5:"title";s:6:"Footer";s:4:"slug";s:23:"twentytwentyfive/footer";s:11:"description";s:51:"Footer columns with logo, title, tagline and links.";s:10:"categories";a:1:{i:0;s:6:"footer";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/footer";}}s:16:"format-audio.php";a:4:{s:5:"title";s:12:"Audio format";s:4:"slug";s:29:"twentytwentyfive/format-audio";s:11:"description";s:73:"An audio post format with an image, title, audio player, and description.";s:10:"categories";a:1:{i:0;s:28:"twentytwentyfive_post-format";}}s:15:"format-link.php";a:4:{s:5:"title";s:11:"Link format";s:4:"slug";s:28:"twentytwentyfive/format-link";s:11:"description";s:77:"A link post format with a description and an emphasized link for key content.";s:10:"categories";a:1:{i:0;s:28:"twentytwentyfive_post-format";}}s:15:"grid-videos.php";a:4:{s:5:"title";s:16:"Grid with videos";s:4:"slug";s:28:"twentytwentyfive/grid-videos";s:11:"description";s:19:"A grid with videos.";s:10:"categories";a:1:{i:0;s:5:"about";}}s:24:"grid-with-categories.php";a:5:{s:5:"title";s:20:"Grid with categories";s:4:"slug";s:37:"twentytwentyfive/grid-with-categories";s:11:"description";s:41:"A grid section with different categories.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:6:"banner";}}s:19:"header-centered.php";a:5:{s:5:"title";s:20:"Centered site header";s:4:"slug";s:32:"twentytwentyfive/header-centered";s:11:"description";s:52:"Site header with centered site title and navigation.";s:10:"categories";a:1:{i:0;s:6:"header";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/header";}}s:18:"header-columns.php";a:5:{s:5:"title";s:19:"Header with columns";s:4:"slug";s:31:"twentytwentyfive/header-columns";s:11:"description";s:54:"Site header with site title and navigation in columns.";s:10:"categories";a:1:{i:0;s:6:"header";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/header";}}s:22:"header-large-title.php";a:5:{s:5:"title";s:23:"Header with large title";s:4:"slug";s:35:"twentytwentyfive/header-large-title";s:11:"description";s:63:"Site header with large site title and right-aligned navigation.";s:10:"categories";a:1:{i:0;s:6:"header";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/header";}}s:10:"header.php";a:5:{s:5:"title";s:6:"Header";s:4:"slug";s:23:"twentytwentyfive/header";s:11:"description";s:43:"Site header with site title and navigation.";s:10:"categories";a:1:{i:0;s:6:"header";}s:10:"blockTypes";a:1:{i:0;s:25:"core/template-part/header";}}s:36:"heading-and-paragraph-with-image.php";a:4:{s:5:"title";s:45:"Heading and paragraph with image on the right";s:4:"slug";s:49:"twentytwentyfive/heading-and-paragraph-with-image";s:11:"description";s:89:"A two-column section with a heading and paragraph on the left, and an image on the right.";s:10:"categories";a:1:{i:0;s:5:"about";}}s:13:"hero-book.php";a:5:{s:5:"title";s:9:"Hero book";s:4:"slug";s:26:"twentytwentyfive/hero-book";s:11:"description";s:66:"A hero section for the book with a description and pre-order link.";s:10:"categories";a:1:{i:0;s:6:"banner";}s:8:"keywords";a:3:{i:0;s:7:"podcast";i:1;s:4:"hero";i:2;s:7:"stories";}}s:25:"hero-full-width-image.php";a:4:{s:5:"title";s:22:"Hero, full width image";s:4:"slug";s:38:"twentytwentyfive/hero-full-width-image";s:11:"description";s:68:"A hero with a full width image, heading, short paragraph and button.";s:10:"categories";a:1:{i:0;s:6:"banner";}}s:41:"hero-overlapped-book-cover-with-links.php";a:4:{s:5:"title";s:38:"Hero, overlapped book cover with links";s:4:"slug";s:54:"twentytwentyfive/hero-overlapped-book-cover-with-links";s:11:"description";s:47:"A hero with an overlapped book cover and links.";s:10:"categories";a:1:{i:0;s:6:"banner";}}s:16:"hero-podcast.php";a:5:{s:5:"title";s:12:"Hero podcast";s:4:"slug";s:29:"twentytwentyfive/hero-podcast";s:11:"description";s:0:"";s:10:"categories";a:1:{i:0;s:6:"banner";}s:8:"keywords";a:3:{i:0;s:7:"podcast";i:1;s:4:"hero";i:2;s:7:"stories";}}s:14:"hidden-404.php";a:4:{s:5:"title";s:3:"404";s:4:"slug";s:27:"twentytwentyfive/hidden-404";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:23:"hidden-blog-heading.php";a:4:{s:5:"title";s:19:"Hidden blog heading";s:4:"slug";s:36:"twentytwentyfive/hidden-blog-heading";s:11:"description";s:52:"Hidden heading for the home page and index template.";s:8:"inserter";b:0;}s:17:"hidden-search.php";a:4:{s:5:"title";s:6:"Search";s:4:"slug";s:30:"twentytwentyfive/hidden-search";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:18:"hidden-sidebar.php";a:4:{s:5:"title";s:7:"Sidebar";s:4:"slug";s:31:"twentytwentyfive/hidden-sidebar";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:21:"hidden-written-by.php";a:4:{s:5:"title";s:10:"Written by";s:4:"slug";s:34:"twentytwentyfive/hidden-written-by";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:9:"logos.php";a:4:{s:5:"title";s:5:"Logos";s:4:"slug";s:22:"twentytwentyfive/logos";s:11:"description";s:77:"Showcasing the podcast''s clients with a heading and a series of client logos.";s:10:"categories";a:1:{i:0;s:6:"banner";}}s:24:"media-instagram-grid.php";a:5:{s:5:"title";s:14:"Instagram grid";s:4:"slug";s:37:"twentytwentyfive/media-instagram-grid";s:11:"description";s:62:"A grid section with photos and a link to an Instagram profile.";s:13:"viewportWidth";i:1440;s:10:"categories";a:3:{i:0;s:5:"media";i:1;s:7:"gallery";i:2;s:8:"featured";}}s:14:"more-posts.php";a:5:{s:5:"title";s:10:"More posts";s:4:"slug";s:27:"twentytwentyfive/more-posts";s:11:"description";s:45:"Displays a list of posts with title and date.";s:10:"categories";a:1:{i:0;s:5:"query";}s:10:"blockTypes";a:1:{i:0;s:10:"core/query";}}s:21:"overlapped-images.php";a:4:{s:5:"title";s:41:"Overlapping images and paragraph on right";s:4:"slug";s:34:"twentytwentyfive/overlapped-images";s:11:"description";s:53:"A section with overlapping images, and a description.";s:10:"categories";a:2:{i:0;s:5:"about";i:1;s:8:"featured";}}s:22:"page-business-home.php";a:8:{s:5:"title";s:17:"Business homepage";s:4:"slug";s:35:"twentytwentyfive/page-business-home";s:11:"description";s:28:"A business homepage pattern.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:20:"page-coming-soon.php";a:8:{s:5:"title";s:11:"Coming soon";s:4:"slug";s:33:"twentytwentyfive/page-coming-soon";s:11:"description";s:96:"A full-width cover banner that can be applied to a page or it can work as a single landing page.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:15:"page-cv-bio.php";a:7:{s:5:"title";s:6:"CV/bio";s:4:"slug";s:28:"twentytwentyfive/page-cv-bio";s:11:"description";s:36:"A pattern for a CV/Bio landing page.";s:13:"viewportWidth";i:1400;s:10:"categories";a:3:{i:0;s:21:"twentytwentyfive_page";i:1;s:5:"about";i:2;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}}s:21:"page-landing-book.php";a:8:{s:5:"title";s:21:"Landing page for book";s:4:"slug";s:34:"twentytwentyfive/page-landing-book";s:11:"description";s:104:"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:22:"page-landing-event.php";a:8:{s:5:"title";s:22:"Landing page for event";s:4:"slug";s:35:"twentytwentyfive/page-landing-event";s:11:"description";s:87:"A landing page for the event with a hero section, description, FAQs and call to action.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:24:"page-landing-podcast.php";a:8:{s:5:"title";s:24:"Landing page for podcast";s:4:"slug";s:37:"twentytwentyfive/page-landing-podcast";s:11:"description";s:111:"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:50:"page-link-in-bio-heading-paragraph-links-image.php";a:7:{s:5:"title";s:59:"Link in bio heading, paragraph, links and full-height image";s:4:"slug";s:63:"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image";s:11:"description";s:84:"A link in bio landing page with a heading, paragraph, links and a full height image.";s:13:"viewportWidth";i:1400;s:10:"categories";a:3:{i:0;s:21:"twentytwentyfive_page";i:1;s:6:"banner";i:2;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}}s:33:"page-link-in-bio-wide-margins.php";a:7:{s:5:"title";s:48:"Link in bio with profile, links and wide margins";s:4:"slug";s:46:"twentytwentyfive/page-link-in-bio-wide-margins";s:11:"description";s:86:"A link in bio landing page with social links, a profile photo and a brief description.";s:13:"viewportWidth";i:1400;s:10:"categories";a:3:{i:0;s:21:"twentytwentyfive_page";i:1;s:6:"banner";i:2;s:8:"featured";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}}s:39:"page-link-in-bio-with-tight-margins.php";a:8:{s:5:"title";s:30:"Link in bio with tight margins";s:4:"slug";s:52:"twentytwentyfive/page-link-in-bio-with-tight-margins";s:11:"description";s:90:"A full-width, full-height link in bio section with an image, a paragraph and social links.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:6:"banner";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:23:"page-portfolio-home.php";a:8:{s:5:"title";s:18:"Portfolio homepage";s:4:"slug";s:36:"twentytwentyfive/page-portfolio-home";s:11:"description";s:29:"A portfolio homepage pattern.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:21:"twentytwentyfive_page";i:1;s:5:"posts";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:18:"page-shop-home.php";a:8:{s:5:"title";s:13:"Shop homepage";s:4:"slug";s:31:"twentytwentyfive/page-shop-home";s:11:"description";s:24:"A shop homepage pattern.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:21:"twentytwentyfive_page";}s:8:"keywords";a:1:{i:0;s:7:"starter";}s:10:"blockTypes";a:1:{i:0;s:17:"core/post-content";}s:9:"postTypes";a:2:{i:0;s:4:"page";i:1;s:11:"wp_template";}}s:19:"post-navigation.php";a:5:{s:5:"title";s:15:"Post navigation";s:4:"slug";s:32:"twentytwentyfive/post-navigation";s:11:"description";s:29:"Next and previous post links.";s:10:"categories";a:1:{i:0;s:4:"text";}s:10:"blockTypes";a:1:{i:0;s:25:"core/post-navigation-link";}}s:17:"pricing-2-col.php";a:5:{s:5:"title";s:18:"Pricing, 2 columns";s:4:"slug";s:30:"twentytwentyfive/pricing-2-col";s:11:"description";s:88:"Pricing section with two columns, pricing plan, description, and call-to-action buttons.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:14:"call-to-action";}}s:17:"pricing-3-col.php";a:4:{s:5:"title";s:18:"Pricing, 3 columns";s:4:"slug";s:30:"twentytwentyfive/pricing-3-col";s:11:"description";s:100:"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.";s:10:"categories";a:3:{i:0;s:14:"call-to-action";i:1;s:6:"banner";i:2;s:8:"services";}}s:18:"services-3-col.php";a:4:{s:5:"title";s:19:"Services, 3 columns";s:4:"slug";s:31:"twentytwentyfive/services-3-col";s:11:"description";s:56:"Three columns with images and text to showcase services.";s:10:"categories";a:3:{i:0;s:14:"call-to-action";i:1;s:6:"banner";i:2;s:8:"services";}}s:36:"services-subscriber-only-section.php";a:4:{s:5:"title";s:33:"Services, subscriber only section";s:4:"slug";s:49:"twentytwentyfive/services-subscriber-only-section";s:11:"description";s:72:"A subscriber-only section highlighting exclusive services and offerings.";s:10:"categories";a:2:{i:0;s:14:"call-to-action";i:1;s:8:"services";}}s:24:"services-team-photos.php";a:4:{s:5:"title";s:21:"Services, team photos";s:4:"slug";s:37:"twentytwentyfive/services-team-photos";s:11:"description";s:59:"Display team photos in a services section with grid layout.";s:10:"categories";a:3:{i:0;s:6:"banner";i:1;s:14:"call-to-action";i:2;s:8:"featured";}}s:37:"template-404-vertical-header-blog.php";a:5:{s:5:"title";s:17:"Right-aligned 404";s:4:"slug";s:50:"twentytwentyfive/template-404-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:13:"templateTypes";a:1:{i:0;s:3:"404";}}s:30:"template-archive-news-blog.php";a:6:{s:5:"title";s:17:"News blog archive";s:4:"slug";s:43:"twentytwentyfive/template-archive-news-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:7:"archive";}}s:31:"template-archive-photo-blog.php";a:6:{s:5:"title";s:18:"Photo blog archive";s:4:"slug";s:44:"twentytwentyfive/template-archive-photo-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:7:"archive";}}s:30:"template-archive-text-blog.php";a:6:{s:5:"title";s:17:"Text blog archive";s:4:"slug";s:43:"twentytwentyfive/template-archive-text-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:7:"archive";}}s:41:"template-archive-vertical-header-blog.php";a:6:{s:5:"title";s:21:"Right-aligned archive";s:4:"slug";s:54:"twentytwentyfive/template-archive-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:7:"archive";}}s:27:"template-home-news-blog.php";a:6:{s:5:"title";s:14:"News blog home";s:4:"slug";s:40:"twentytwentyfive/template-home-news-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:3:{i:0;s:10:"front-page";i:1;s:5:"index";i:2;s:4:"home";}}s:28:"template-home-photo-blog.php";a:6:{s:5:"title";s:15:"Photo blog home";s:4:"slug";s:41:"twentytwentyfive/template-home-photo-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:3:{i:0;s:10:"front-page";i:1;s:5:"index";i:2;s:4:"home";}}s:38:"template-home-posts-grid-news-blog.php";a:5:{s:5:"title";s:34:"News blog with featured posts grid";s:4:"slug";s:51:"twentytwentyfive/template-home-posts-grid-news-blog";s:11:"description";s:0:"";s:8:"inserter";b:0;s:13:"templateTypes";a:3:{i:0;s:10:"front-page";i:1;s:5:"index";i:2;s:4:"home";}}s:27:"template-home-text-blog.php";a:6:{s:5:"title";s:14:"Text blog home";s:4:"slug";s:40:"twentytwentyfive/template-home-text-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:10:"front-page";i:1;s:4:"home";}}s:38:"template-home-vertical-header-blog.php";a:6:{s:5:"title";s:18:"Right-aligned home";s:4:"slug";s:51:"twentytwentyfive/template-home-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:3:{i:0;s:10:"front-page";i:1;s:5:"index";i:2;s:4:"home";}}s:40:"template-home-with-sidebar-news-blog.php";a:6:{s:5:"title";s:22:"News blog with sidebar";s:4:"slug";s:53:"twentytwentyfive/template-home-with-sidebar-news-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:3:{i:0;s:10:"front-page";i:1;s:5:"index";i:2;s:4:"home";}}s:28:"template-page-photo-blog.php";a:5:{s:5:"title";s:15:"Photo blog page";s:4:"slug";s:41:"twentytwentyfive/template-page-photo-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:13:"templateTypes";a:1:{i:0;s:4:"page";}}s:38:"template-page-vertical-header-blog.php";a:5:{s:5:"title";s:18:"Right-aligned page";s:4:"slug";s:51:"twentytwentyfive/template-page-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:13:"templateTypes";a:1:{i:0;s:4:"page";}}s:33:"template-query-loop-news-blog.php";a:4:{s:5:"title";s:20:"News blog query loop";s:4:"slug";s:46:"twentytwentyfive/template-query-loop-news-blog";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:34:"template-query-loop-photo-blog.php";a:6:{s:5:"title";s:16:"Photo blog posts";s:4:"slug";s:47:"twentytwentyfive/template-query-loop-photo-blog";s:11:"description";s:54:"A list of posts, 3 columns, with only featured images.";s:13:"viewportWidth";i:1400;s:10:"categories";a:1:{i:0;s:5:"query";}s:10:"blockTypes";a:1:{i:0;s:10:"core/query";}}s:33:"template-query-loop-text-blog.php";a:4:{s:5:"title";s:20:"Text blog query loop";s:4:"slug";s:46:"twentytwentyfive/template-query-loop-text-blog";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:44:"template-query-loop-vertical-header-blog.php";a:4:{s:5:"title";s:24:"Right-aligned query loop";s:4:"slug";s:57:"twentytwentyfive/template-query-loop-vertical-header-blog";s:11:"description";s:0:"";s:8:"inserter";b:0;}s:23:"template-query-loop.php";a:5:{s:5:"title";s:23:"List of posts, 1 column";s:4:"slug";s:36:"twentytwentyfive/template-query-loop";s:11:"description";s:61:"A list of posts, 1 column, with featured image and post date.";s:10:"categories";a:1:{i:0;s:5:"query";}s:10:"blockTypes";a:1:{i:0;s:10:"core/query";}}s:29:"template-search-news-blog.php";a:6:{s:5:"title";s:24:"News blog search results";s:4:"slug";s:42:"twentytwentyfive/template-search-news-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:6:"search";}}s:30:"template-search-photo-blog.php";a:6:{s:5:"title";s:25:"Photo blog search results";s:4:"slug";s:43:"twentytwentyfive/template-search-photo-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:6:"search";}}s:29:"template-search-text-blog.php";a:6:{s:5:"title";s:24:"Text blog search results";s:4:"slug";s:42:"twentytwentyfive/template-search-text-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:6:"search";}}s:40:"template-search-vertical-header-blog.php";a:6:{s:5:"title";s:26:"Right-aligned blog, search";s:4:"slug";s:53:"twentytwentyfive/template-search-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:1:{i:0;s:6:"search";}}s:40:"template-single-left-aligned-content.php";a:6:{s:5:"title";s:30:"Post with left-aligned content";s:4:"slug";s:47:"twentytwentyfive/post-with-left-aligned-content";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:29:"template-single-news-blog.php";a:6:{s:5:"title";s:34:"News blog single post with sidebar";s:4:"slug";s:42:"twentytwentyfive/template-single-news-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:26:"template-single-offset.php";a:6:{s:5:"title";s:34:"Offset post without featured image";s:4:"slug";s:39:"twentytwentyfive/template-single-offset";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:30:"template-single-photo-blog.php";a:6:{s:5:"title";s:22:"Photo blog single post";s:4:"slug";s:43:"twentytwentyfive/template-single-photo-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:29:"template-single-text-blog.php";a:6:{s:5:"title";s:21:"Text blog single post";s:4:"slug";s:42:"twentytwentyfive/template-single-text-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:40:"template-single-vertical-header-blog.php";a:6:{s:5:"title";s:25:"Right-aligned single post";s:4:"slug";s:53:"twentytwentyfive/template-single-vertical-header-blog";s:11:"description";s:0:"";s:13:"viewportWidth";i:1400;s:8:"inserter";b:0;s:13:"templateTypes";a:2:{i:0;s:5:"posts";i:1;s:6:"single";}}s:22:"testimonials-2-col.php";a:5:{s:5:"title";s:21:"2 columns with avatar";s:4:"slug";s:35:"twentytwentyfive/testimonials-2-col";s:11:"description";s:42:"Two columns with testimonials and avatars.";s:10:"categories";a:1:{i:0;s:12:"testimonials";}s:8:"keywords";a:1:{i:0;s:11:"testimonial";}}s:22:"testimonials-6-col.php";a:5:{s:5:"title";s:35:"3 column layout with 6 testimonials";s:4:"slug";s:35:"twentytwentyfive/testimonials-6-col";s:11:"description";s:86:"A section with three columns and two rows, each containing a testimonial and citation.";s:10:"categories";a:1:{i:0;s:12:"testimonials";}s:8:"keywords";a:1:{i:0;s:11:"testimonial";}}s:22:"testimonials-large.php";a:5:{s:5:"title";s:32:"Review with large image on right";s:4:"slug";s:35:"twentytwentyfive/testimonials-large";s:11:"description";s:46:"A testimonial with a large image on the right.";s:10:"categories";a:1:{i:0;s:12:"testimonials";}s:8:"keywords";a:1:{i:0;s:11:"testimonial";}}s:13:"text-faqs.php";a:6:{s:5:"title";s:4:"FAQs";s:4:"slug";s:26:"twentytwentyfive/text-faqs";s:11:"description";s:68:"A FAQs section with a FAQ heading and list of questions and answers.";s:13:"viewportWidth";i:1400;s:10:"categories";a:2:{i:0;s:4:"text";i:1;s:5:"about";}s:8:"keywords";a:5:{i:0;s:3:"faq";i:1;s:5:"about";i:2;s:10:"frequently";i:3;s:5:"asked";i:4;s:9:"questions";}}s:19:"vertical-header.php";a:6:{s:5:"title";s:20:"Vertical site header";s:4:"slug";s:32:"twentytwentyfive/vertical-header";s:11:"description";s:52:"Vertical site header with site title and navigation.";s:13:"viewportWidth";i:300;s:10:"categories";a:1:{i:0;s:6:"header";}s:10:"blockTypes";a:1:{i:0;s:34:"core/template-part/vertical-header";}}}}','off');

DROP TABLE IF EXISTS wp_postmeta;
CREATE TABLE "wp_postmeta" (
"meta_id" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"post_id" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"meta_key" text DEFAULT NULL COLLATE NOCASE,
"meta_value" text COLLATE NOCASE);

INSERT INTO wp_postmeta ('meta_id','post_id','meta_key','meta_value') VALUES
('1','2','_wp_page_template','default'),
('2','3','_wp_page_template','default');

DROP TABLE IF EXISTS wp_posts;
CREATE TABLE "wp_posts" (
"ID" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE DEFAULT 0,
"post_author" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"post_date" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"post_date_gmt" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"post_content" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_title" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_excerpt" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_status" text NOT NULL ON CONFLICT REPLACE DEFAULT 'publish' COLLATE NOCASE,
"comment_status" text NOT NULL ON CONFLICT REPLACE DEFAULT 'open' COLLATE NOCASE,
"ping_status" text NOT NULL ON CONFLICT REPLACE DEFAULT 'open' COLLATE NOCASE,
"post_password" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_name" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"to_ping" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"pinged" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_modified" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"post_modified_gmt" text NOT NULL ON CONFLICT REPLACE DEFAULT '0000-00-00 00:00:00' COLLATE NOCASE,
"post_content_filtered" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"post_parent" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"guid" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"menu_order" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0',
"post_type" text NOT NULL ON CONFLICT REPLACE DEFAULT 'post' COLLATE NOCASE,
"post_mime_type" text NOT NULL ON CONFLICT REPLACE DEFAULT '' COLLATE NOCASE,
"comment_count" integer NOT NULL ON CONFLICT REPLACE DEFAULT '0');

INSERT INTO wp_posts ('ID','post_author','post_date','post_date_gmt','post_content','post_title','post_excerpt','post_status','comment_status','ping_status','post_password','post_name','to_ping','pinged','post_modified','post_modified_gmt','post_content_filtered','post_parent','guid','menu_order','post_type','post_mime_type','comment_count') VALUES
('1','1','2025-06-07 08:03:27','2025-06-07 08:03:27','<!-- wp:paragraph -->' || char(10) || '<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>' || char(10) || '<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-06-07 08:03:27','2025-06-07 08:03:27','','0','http://localhost:23459/?p=1','0','post','','1'),
('2','1','2025-06-07 08:03:27','2025-06-07 08:03:27','<!-- wp:paragraph -->' || char(10) || '<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '' || char(10) || '<!-- wp:quote -->' || char(10) || '<blockquote class="wp-block-quote"><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</p></blockquote>' || char(10) || '<!-- /wp:quote -->' || char(10) || '' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>...or something like this:</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '' || char(10) || '<!-- wp:quote -->' || char(10) || '<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>' || char(10) || '<!-- /wp:quote -->' || char(10) || '' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>As a new WordPress user, you should go to <a href="http://localhost:23459/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>' || char(10) || '<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-06-07 08:03:27','2025-06-07 08:03:27','','0','http://localhost:23459/?page_id=2','0','page','','0'),
('3','1','2025-06-07 08:03:27','2025-06-07 08:03:27','<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Who we are</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost:23459.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Comments</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Media</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Cookies</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Embedded content from other websites</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Who we share your data with</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">How long we retain your data</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">What rights you have over your data</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '<!-- wp:heading -->' || char(10) || '<h2 class="wp-block-heading">Where your data is sent</h2>' || char(10) || '<!-- /wp:heading -->' || char(10) || '<!-- wp:paragraph -->' || char(10) || '<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>' || char(10) || '<!-- /wp:paragraph -->' || char(10) || '','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-06-07 08:03:27','2025-06-07 08:03:27','','0','http://localhost:23459/?page_id=3','0','page','','0');

PRAGMA foreign_keys = ON

/*
Navicat MySQL Data Transfer

Source Server         : Project_Demo
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : mysite_mysql

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2021-03-30 12:25:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add blog', '7', 'add_blog');
INSERT INTO `auth_permission` VALUES ('26', 'Can change blog', '7', 'change_blog');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete blog', '7', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('28', 'Can view blog', '7', 'view_blog');
INSERT INTO `auth_permission` VALUES ('29', 'Can add profile', '8', 'add_profile');
INSERT INTO `auth_permission` VALUES ('30', 'Can change profile', '8', 'change_profile');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete profile', '8', 'delete_profile');
INSERT INTO `auth_permission` VALUES ('32', 'Can view profile', '8', 'view_profile');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$150000$eH94hgnOiLd2$3BC11GaDmVGKUwPaaZd/QDHAsNjtNdfKIAcgrv4V/3s=', '2021-03-29 16:32:26.124866', '1', 'tslld', '', '', '1559468337@qq.com', '1', '1', '2021-03-17 08:47:47.398727');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blog
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES ('1', '压力', '继续！', '2021-03-22 05:41:31.244072', '1');
INSERT INTO `blog_blog` VALUES ('2', '孤独', '生活', '2021-03-22 05:44:33.505334', '1');
INSERT INTO `blog_blog` VALUES ('3', '个人', '#天很蓝\r\n**继续努力**', '2021-03-28 08:42:16.703941', '1');
INSERT INTO `blog_blog` VALUES ('4', '测试1', '\'\'\'\r\n[百度](http://www.baidu.com \"百度\")\r\n``<font color=gray size=5>color=gray</font>``\r\n\r\n    <font color=gray size=5>color=gray</font>```c\r\n#include<stdio.h>2021-03-28 17:12:16 星期日:fire:&#105;1\r\n\r\n\r\n    from django.conf.urls import url, include\r\n    from django.contrib import admin\r\n    from blog.feeds import AllPostsRssFeed\r\n    + from django.conf.urls.static import static\r\n    + from django.conf import settings\r\n    \r\n    urlpatterns = [\r\n        url(r\'^admin/\', admin.site.urls),\r\n        url(r\'\', include(\'blog.urls\')),\r\n        url(r\'\', include(\'comments.urls\')),\r\n        url(r\'^all/rss/$\', AllPostsRssFeed(), name=\'rss\'),\r\n        + url(r\'mdeditor/\', include(\'mdeditor.urls\')),\r\n    ]\r\n    \r\n    + if settings.DEBUG:\r\n        # static files (images, css, javascript, etc.)\r\n        urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)\r\n    1111`\r\n\r\n    112221111`\r\n```\r\n#encoding:utf-8\r\n![heart](/media/editor\\heart_20210328170817871465.jpg \"heart\")\r\n\'\'\'', '2021-03-28 09:08:46.418553', '1');
INSERT INTO `blog_blog` VALUES ('5', 'markdown', '#markdown格式转换', '2021-03-29 16:32:52.692428', '1');
INSERT INTO `blog_blog` VALUES ('6', '6', '###第六页', '2021-03-29 16:33:11.741441', '1');
INSERT INTO `blog_blog` VALUES ('7', '7', '**第七页**', '2021-03-29 16:33:42.818064', '1');
INSERT INTO `blog_blog` VALUES ('8', '8', '*八*', '2021-03-29 16:33:58.428231', '1');
INSERT INTO `blog_blog` VALUES ('9', '9', '~~久~~', '2021-03-29 16:34:16.620616', '1');
INSERT INTO `blog_blog` VALUES ('10', '10', '第10页测试', '2021-03-30 02:36:30.014013', '1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2021-03-22 05:41:31.246034', '1', 'Blog object (1)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2021-03-22 05:44:33.506334', '2', '孤独', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2021-03-22 05:44:50.926298', '1', '压力', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2021-03-22 06:48:13.136882', '5', 'Profile object (5)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2021-03-28 08:42:16.704937', '3', '个人', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2021-03-28 09:08:46.418553', '4', '测试1', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2021-03-28 09:15:55.860416', '4', '测试1', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2021-03-28 09:19:49.604503', '4', '测试1', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2021-03-28 09:25:51.090560', '4', '测试1', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2021-03-29 16:32:52.693426', '5', 'markdown', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2021-03-29 16:33:11.742439', '6', '6', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2021-03-29 16:33:42.819058', '7', '7', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2021-03-29 16:33:58.429242', '8', '8', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2021-03-29 16:34:16.622623', '9', '9', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2021-03-30 02:36:30.015012', '10', '10', '1', '[{\"added\": {}}]', '7', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'blog');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'user', 'profile');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2021-03-17 08:44:16.350459');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2021-03-17 08:44:18.120215');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2021-03-17 08:44:24.171612');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2021-03-17 08:44:26.287561');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2021-03-17 08:44:26.350381');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2021-03-17 08:44:28.044311');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2021-03-17 08:44:28.761423');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2021-03-17 08:44:28.880072');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2021-03-17 08:44:28.946927');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2021-03-17 08:44:29.653152');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2021-03-17 08:44:29.697035');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2021-03-17 08:44:29.767847');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2021-03-17 08:44:30.923755');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2021-03-17 08:44:31.604767');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2021-03-17 08:44:31.996856');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2021-03-17 08:44:32.044723');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2021-03-17 08:44:32.385817');
INSERT INTO `django_migrations` VALUES ('18', 'blog', '0001_initial', '2021-03-22 05:39:59.927033');
INSERT INTO `django_migrations` VALUES ('19', 'user', '0001_initial', '2021-03-22 06:46:13.741024');
INSERT INTO `django_migrations` VALUES ('20', 'blog', '0002_auto_20210328_1629', '2021-03-28 08:29:33.411580');
INSERT INTO `django_migrations` VALUES ('21', 'blog', '0003_auto_20210330_0328', '2021-03-29 19:28:13.039220');
INSERT INTO `django_migrations` VALUES ('22', 'blog', '0004_auto_20210330_0330', '2021-03-29 19:30:38.291735');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('kmohxa3hrwv8nyocg0idn8t4ofhbujap', 'NjA4MmVmOGZhNmRlNjZmZmEwYTg1MzUwYjlkNmNlMzQxZDMyOTJkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNjBhZTAwOTE4MzcwOWEwNjU1Nzk0ZWE1OTNiODEyZWFiODEwNGJiIn0=', '2021-04-12 16:32:26.176769');

-- ----------------------------
-- Table structure for my_cache_table
-- ----------------------------
DROP TABLE IF EXISTS `my_cache_table`;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of my_cache_table
-- ----------------------------
INSERT INTO `my_cache_table` VALUES (':1:template.cache.\'cache_name\'.d41d8cd98f00b204e9800998ecf8427e', 'gASVUwcAAAAAAACMF2RqYW5nby51dGlscy5zYWZlc3RyaW5nlIwIU2FmZVRleHSUk5RYIQcAAAo8aGVhZGVyPgogICAgPGRpdj4KICAgICAgICA8ZGl2IGlkPSJpbWdsb2dvIj4KICAgICAgICAgICAgPGEgaHJlZj0iLyI+PGltZyBzcmM9Ii9tZWRpYS9oZWkuanBnIiBhbHQ9IuWPtuaWsOWuneeahOWNmuWuoiIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+PC9hPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgaWQ9InRleHRsb2dvIj4KICAgICAgICAgICAgPGgxIGNsYXNzPSJzaXRlLW5hbWUiPgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLyIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+5Y+25paw5a6d55qE5Y2a5a6iPC9hPgogICAgICAgICAgICA8L2gxPgogICAgICAgICAgICA8aDIgY2xhc3M9ImJsb2ctbW90dG8iPgogICAgICAgICAgICAgICAg5Yu+5YuS5bKA5pyq5p2l55qE6L2u5buT57q/77yM6K6i5LiL5YuH5b6A55u05YmN55qE5YeG5YiZ44CCCiAgICAgICAgICAgICAgICA8YnI+CiAgICAgICAgICAgICAgICDlvq7lsI/nmoTmoqbmg7PvvIzlhajpg6jngrnnh4PjgIIKICAgICAgICAgICAgICAgIDxicj4KICAgICAgICAgICAgICAgIOeUqOi/meS7veWFieiKkuWIuuegtOm7keaal++8jOeyieeijuS6hueahOWjgeWekuWPpuS4gOi+ue+8jOaIkeeci+ingeS6huWxnuS6juiHquW3seeahOWkqeepuuOAggogICAgICAgICAgICA8L2gyPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgY2xhc3M9Im5hdmJhciI+CiAgICAgICAgICAgIDxhIGNsYXNzPSJuYXZidXR0b24gbmF2bW9iaWxlIiBocmVmPSIjIiB0aXRsZT0i6I+c5Y2VIj48L2E+CiAgICAgICAgPC9kaXY+CiAgICAgICAgPG5hdiBjbGFzcz0iYW5pbWF0ZWQiPgogICAgICAgICAgICA8dWw+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii8iIHRhcmdldD0iX2JsYW5rIj7kuLvpobU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iL2Jsb2cvIiB0YXJnZXQ9Il9ibGFuayI+5paH56ug5b2S5qGjPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Imh0dHBzOi8vd3d3Lnl1cXVlLmNvbS9zZXJ2ZXJfbWluZC9hbnN3ZXIiIHRhcmdldD0iX2JsYW5rIj7nrZTnlpHlkajmiqU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iaHR0cHM6Ly93d3cueXVxdWUuY29tL3NlcnZlcl9taW5kL2Fuc3dlci9zZXJ2ZXJncm91cCIgdGFyZ2V0PSJfYmxhbmsiPuWQjuerr+ekvue+pDwvYT48L2xpPgoKICAgICAgICAgICAgICAgIDxsaT48YSBocmVmPSJodHRwczovL3d3dy55dXF1ZS5jb20vc2VydmVyX21pbmQvYW5zd2VyL2Jvb2tzIiB0YXJnZXQ9Il9ibGFuayI+5Lmm57GN5o6o6I2QPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPgoKICAgICAgICAgICAgICAgICAgICA8IS0tPGZvcm0gY2xhc3M9InNlYXJjaCIgYWN0aW9uPSIvL2dvb2dsZS5jb20vc2VhcmNoIiBtZXRob2Q9ImdldCIgYWNjZXB0LWNoYXJzZXQ9InV0Zi04Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsPlNlYXJjaDwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBpZD0ic2VhcmNoIiBuYW1lPSJxIiBhdXRvY29tcGxldGU9Im9mZiIgbWF4bGVuZ3RoPSIyMCIgcGxhY2Vob2xkZXI9IuaQnOe0oiIgLz4KICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0icSIgdmFsdWU9InNpdGU6YmxvZy43MjB1aS5jb20iPgogICAgICAgICAgICAgICAgICAgIDwvZm9ybT4tLT4KCiAgICAgICAgICAgICAgICA8L2xpPgogICAgICAgICAgICA8L3VsPgogICAgICAgIDwvbmF2PgogICAgPC9kaXY+CjwvaGVhZGVyPgqUhZSBlC4=', '2021-03-29 15:14:06.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_header..17abf5259517d604cc9599a00b7385d6.zh-hans.Asia/Shanghai', 'gARdlC4=', '2021-03-29 15:20:47.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_header..b7adfe8768a84c4f71e99582b0c473a7.zh-hans.Asia/Shanghai', 'gARdlC4=', '2021-03-29 14:53:11.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_page..GET.17abf5259517d604cc9599a00b7385d6.d41d8cd98f00b204e9800998ecf8427e.zh-hans.Asia/Shanghai', 'gASVSzAAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1Nb24sIDI5IE1hciAyMDIxIDE1OjIwOjQ3IEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAttYXgtYWdlPTkwMJSGlHWMEV9jbG9zYWJsZV9vYmplY3RzlF2UjA5faGFuZGxlcl9jbGFzc5ROjAdjb29raWVzlIwMaHR0cC5jb29raWVzlIwMU2ltcGxlQ29va2lllJOUKYGUjAZjbG9zZWSUiYwOX3JlYXNvbl9waHJhc2WUTowIX2NoYXJzZXSUTowKX2NvbnRhaW5lcpRdlELXLgAAPCFET0NUWVBFIGh0bWw+Cgo8aHRtbCBsYW5nPSJlbiI+CjxoZWFkPgogICAgPG1ldGEgY2hhcnNldD0iVVRGLTgiPgogICAgPHRpdGxlPlRzbGxk5Liq5Lq65Y2a5a6iPC90aXRsZT4KICAgIDxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MSwgbWF4aW11bS1zY2FsZT0zLCBtaW5pbXVtLXNjYWxlPTEiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2hlYWRlci5jc3MiPgogICAgPGxpbmsgcmVsPSJpY29uIiBocmVmPSIvbWVkaWEvZmF2aWNvbi5pY28iPgogICAgCiAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIGhyZWY9Ii9zdGF0aWMvY29udGFpbmVyLmNzcyI+Cgo8IS0tICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3N0YXRpYy9sYXl1aS9jc3MvbGF5dWkuY3NzIj4tLT4KPCEtLSAgICA8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIvc3RhdGljL2xheXVpL2xheXVpLmpzIj48L3NjcmlwdD4tLT4KPC9oZWFkPgo8Ym9keT4KCgo8aGVhZGVyPgogICAgPGRpdj4KICAgICAgICA8ZGl2IGlkPSJpbWdsb2dvIj4KICAgICAgICAgICAgPGEgaHJlZj0iLyI+PGltZyBzcmM9Ii9tZWRpYS9oZWkuanBnIiBhbHQ9IuWPtuaWsOWuneeahOWNmuWuoiIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+PC9hPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgaWQ9InRleHRsb2dvIj4KICAgICAgICAgICAgPGgxIGNsYXNzPSJzaXRlLW5hbWUiPgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLyIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+5Y+25paw5a6d55qE5Y2a5a6iPC9hPgogICAgICAgICAgICA8L2gxPgogICAgICAgICAgICA8aDIgY2xhc3M9ImJsb2ctbW90dG8iPgogICAgICAgICAgICAgICAg5Yu+5YuS5bKA5pyq5p2l55qE6L2u5buT57q/77yM6K6i5LiL5YuH5b6A55u05YmN55qE5YeG5YiZ44CCCiAgICAgICAgICAgICAgICA8YnI+CiAgICAgICAgICAgICAgICDlvq7lsI/nmoTmoqbmg7PvvIzlhajpg6jngrnnh4PjgIIKICAgICAgICAgICAgICAgIDxicj4KICAgICAgICAgICAgICAgIOeUqOi/meS7veWFieiKkuWIuuegtOm7keaal++8jOeyieeijuS6hueahOWjgeWekuWPpuS4gOi+ue+8jOaIkeeci+ingeS6huWxnuS6juiHquW3seeahOWkqeepuuOAggogICAgICAgICAgICA8L2gyPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgY2xhc3M9Im5hdmJhciI+CiAgICAgICAgICAgIDxhIGNsYXNzPSJuYXZidXR0b24gbmF2bW9iaWxlIiBocmVmPSIjIiB0aXRsZT0i6I+c5Y2VIj48L2E+CiAgICAgICAgPC9kaXY+CiAgICAgICAgPG5hdiBjbGFzcz0iYW5pbWF0ZWQiPgogICAgICAgICAgICA8dWw+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii8iIHRhcmdldD0iX2JsYW5rIj7kuLvpobU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iL2Jsb2cvIiB0YXJnZXQ9Il9ibGFuayI+5paH56ug5b2S5qGjPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Imh0dHBzOi8vd3d3Lnl1cXVlLmNvbS9zZXJ2ZXJfbWluZC9hbnN3ZXIiIHRhcmdldD0iX2JsYW5rIj7nrZTnlpHlkajmiqU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iaHR0cHM6Ly93d3cueXVxdWUuY29tL3NlcnZlcl9taW5kL2Fuc3dlci9zZXJ2ZXJncm91cCIgdGFyZ2V0PSJfYmxhbmsiPuWQjuerr+ekvue+pDwvYT48L2xpPgoKICAgICAgICAgICAgICAgIDxsaT48YSBocmVmPSJodHRwczovL3d3dy55dXF1ZS5jb20vc2VydmVyX21pbmQvYW5zd2VyL2Jvb2tzIiB0YXJnZXQ9Il9ibGFuayI+5Lmm57GN5o6o6I2QPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPgoKICAgICAgICAgICAgICAgICAgICA8IS0tPGZvcm0gY2xhc3M9InNlYXJjaCIgYWN0aW9uPSIvL2dvb2dsZS5jb20vc2VhcmNoIiBtZXRob2Q9ImdldCIgYWNjZXB0LWNoYXJzZXQ9InV0Zi04Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsPlNlYXJjaDwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBpZD0ic2VhcmNoIiBuYW1lPSJxIiBhdXRvY29tcGxldGU9Im9mZiIgbWF4bGVuZ3RoPSIyMCIgcGxhY2Vob2xkZXI9IuaQnOe0oiIgLz4KICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0icSIgdmFsdWU9InNpdGU6YmxvZy43MjB1aS5jb20iPgogICAgICAgICAgICAgICAgICAgIDwvZm9ybT4tLT4KCiAgICAgICAgICAgICAgICA8L2xpPgogICAgICAgICAgICA8L3VsPgogICAgICAgIDwvbmF2PgogICAgPC9kaXY+CjwvaGVhZGVyPgoKCjxkaXYgaWQ9ImNvbnRhaW5lciI+CiAgICA8ZGl2IGlkPSJtYWluIj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8xIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7ljovlips8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8yIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7lraTni6w8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8zIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7kuKrkuro8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy80IiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7mtYvor5UxPC9hPgogICAgICAgICAgICAgICAgPC9oMT4KICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJhcnRpY2xlLXRpbWUiPgogICAgICAgICAgICAgICAgICAgIOWPkeihqOS6jgogICAgICAgICAgICAgICAgICAgIDx0aW1lIGRhdGV0aW1lPSIyMDIwLTExLTE3VDE0OjMwOjAwLjAwMFoiIGl0ZW1wcm9wPSJkYXRlUHVibGlzaGVkIj4yMDIwLTExLTE3PC90aW1lPgoKICAgICAgICAgICAgICAgICAgICAgIHwKCiAgICAgICAgICAgICAgICAgICAgICDlt6XlhbfmioDlt6cKCgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOi/kOe7tAoKICAgICAgICAgICAgICAgIDwvcD4KPCEtLSAgICAgICAgICAgICAgICA6OmFmdGVyLS0+CiAgICAgICAgICAgIDwvaGVhZGVyPgoKICAgICAgICAgICAgPHNlY3Rpb24gY2xhc3M9InBvc3QiIGl0ZW1zY29wZT0iIiBpdGVtcHJvcD0iYmxvZ1Bvc3QiPgoKICAgICAgICAgICAgICAgIDxhIGhyZWY9Ii8yMDIwL3dzbDJfdXNlLyIgdGl0bGU9IldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufIiBpdGVtcHJvcD0idXJsIj4KCiAgICAgICAgICAgICAgICA8IS0tPGgxIGl0ZW1wcm9wPSJuYW1lIj5XU0wy77ya5oiR5Zyo5Y6f55Sf55qEV2luMTDnjqnovaxMaW51eOezu+e7nzwvaDE+LS0+CgoKICAgICAgICAgICAgICAgICAgICAgICA8cCBpdGVtcHJvcD0iZGVzY3JpcHRpb24iPuS7iuWkqe+8jOaIkei3n+Wkp+WutuWIhuS6q+S4gOS4quWlveeOqeeahOS4nOilv++8mldTTCAy77yIV2luZG93cyBTdWJzeXN0ZW0gZm9yIExpbnV4IDLvvInjgIJXU0wgMiDlvojmnInmhI/mgJ3vvIzlroPmmK/ln7rkuo5IeXBlci1WIOWKn+iDveeahOWtkOmbhuaPkOS+m+S6huKAnOecn+ato+eahCBMaW51eCDlhoXmoLjigJ3jgILmgI7kuYjnkIbop6Pov5nlj6Xor53lkaLvvJ/lpKflrrborr7mg7PvvIzmiJHku6zlubPml7bnmoTnoJTlj5Hlip7lhaznjq/looPpnIDopoFXaW5kb3dz77yM6ICM5byA5Y+R546v5aKDPC9wPgoKCiAgICAgICAgICAgICAgICA8IS0tPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+LS0+CiAgICAgICAgICAgICAgPC9hPgogICAgICAgICAgICA8L3NlY3Rpb24+CiAgICAgICAgPC9kaXY+CiAgICAgICAgCiAgICAgICAgPG5hdiBpZD0icGFnZS1uYXYiIGNsYXNzPSJjbGVhcmZpeCI+CgogICAgICAgICAgICA8c3BhbiBjbGFzcz0icGFnZS1udW1iZXIgY3VycmVudCI+MTwvc3Bhbj4KICAgICAgICAgICAgPGEgY2xhc3M9InBhZ2UtbnVtYmVyIiBocmVmPSI/cGFnZT0xIj4yPC9hPgogICAgICAgICAgICA8YSBjbGFzcz0icGFnZS1udW1iZXIiIGhyZWY9Ii9wYWdlLzMvIj4zPC9hPgogICAgICAgICAgICA8c3BhbiBjbGFzcz0ic3BhY2UiPuKApjwvc3Bhbj4KICAgICAgICAgICAgPGEgY2xhc3M9InBhZ2UtbnVtYmVyIiBocmVmPSIvcGFnZS8xNi8iPjE2PC9hPgogICAgICAgIDwvbmF2PgogICAgPC9kaXY+CiAgICA8ZGl2IGNsYXNzPSJvcGVuYXNpZGUiIHN0eWxlPSJ0b3A6IDI2MHB4OyI+CiAgICAgICAgPGEgY2xhc3M9Im5hdmJ1dHRvbiIgaHJlZj0iIyIgdGl0bGU9IuaYvuekuuS+p+i+ueagjyI+PC9hPgogICAgPC9kaXY+CiAgICA8ZGl2IGlkPSJhc2lkZXBhcnQiPgogICAgICAgIDxhc2lkZSBpZD0icHJvZmlsZSI+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImlubmVyIj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJhc2UtaW5mbyBwcm9maWxlLWJsb2NrIj4KICAgICAgICAgICAgICAgICAgICA8aW1nIGlkPSJhdmF0YXIiIHNyYz0iL21lZGlhL2hlaS5qcGciIHN0eWxlPSJ3aWR0aDogMTgwcHg7IGhlaWdodDogMTgwcHgiPgogICAgICAgICAgICAgICAgICAgIDxoMiBpZD0ibmFtZSI+5Y+25paw5a6dPC9oMj4KICAgICAgICAgICAgICAgICAgICA8aDMgaWQ9InRpdGxlIj48cCBzdHlsZT0iY29sb3I6IzdlYmFkZjtmb250LXNpemU6MTRweCI+5ZCO56uv5pS75Z+O54uuPC9wPjxwIHN0eWxlPSJjb2xvcjojN2ViYWRmO2ZvbnQtc2l6ZToxNHB4Ij7lvq7kv6HlhazkvJflj7fjgIzmnI3liqHnq6/mgJ3nu7TjgI08L3A+PC9oMz4KCiAgICAgICAgICAgICAgICAgICAgPGhyIHN0eWxlPSJtYXJnaW4tdG9wOiAyZW07bWFyZ2luLWJvdHRvbTogMmVtO3doaXRlLXNwYWNlOiBub3JtYWw7aGVpZ2h0OiAxMXB4O292ZXJmbG93OiB2aXNpYmxlO2JvcmRlci1zdHlsZTogbm9uZSBub25lIG5vbmUgc29saWQ7Ym9yZGVyLWxlZnQtd2lkdGg6IDMwcHg7Ym9yZGVyLWxlZnQtY29sb3I6IHJnYigyNiwgMTE1LCAxODYpO2NvbG9yOiByZ2IoMTM2LCAxMzYsIDEzNik7Zm9udC1zaXplOiAxNHB4O2xldHRlci1zcGFjaW5nOiAxLjVweDt0ZXh0LWFsaWduOiBqdXN0aWZ5O21heC13aWR0aDogMTAwJSAhaW1wb3J0YW50O2JveC1zaXppbmc6IGJvcmRlci1ib3ggIWltcG9ydGFudDt3b3JkLXdyYXA6IGJyZWFrLXdvcmQgIWltcG9ydGFudDtiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMzgsIDE4OSwgMjA3KTsiPgogICAgICAgICAgICAgICAgICAgIDxpbWcgaWQ9ImF2YXRhciIgc3JjPSJodHRwOi8vaW1hZ2UuY2hlbnlvbmdqdW4udmlwL3dlaXhpbi5qcGciIGFsdD0i5b6u5L+h5YWs5LyX5Y+3IiBzdHlsZT0id2lkdGg6MjAwcHg7Ij4KICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yIHByb2ZpbGUtYmxvY2siPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWNvbi1pdGVtIj7pgq7ku7bvvJo8YSBocmVmPSJtYWlsdG86bGlhbmdnem9uZUAxNjMuY29tIj5saWFuZ2d6b25lQDE2My5jb208L2E+PC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPGJyPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWNvbi1pdGVtIj7lvq7kv6HvvJo8YSBocmVmPSIjIyMjIj5MaWFuZ0d6b25lPC9hPgoKICAgICAgICAgICAgICAgIDwvc3Bhbj48L2Rpdj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImxpbmtzLW9mLWF1dGhvciI+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vbGlhbmdnem9uZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJHaXRIdWIiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPkdpdEh1YjwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHBzOi8vd3d3Lnl1cXVlLmNvbS9zZXJ2ZXJfbWluZC9hbnN3ZXIiIHRhcmdldD0iX2JsYW5rIiB0aXRsZT0i6K+t6ZuAIj48aSBjbGFzcz0iZmEgZmEtZncgZmEtZ2xvYmUiPjwvaT7or63pm4A8L2E+CiAgICAgICAgICAgICAgICAgICAgICA8L3NwYW4+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwczovL215Lm9zY2hpbmEubmV0L3UvMzc4OTU3NyIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJHaXRIdWIiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPuW8gOa6kOS4reWbvTwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly93ZWliby5jb20vbGlhbmdnb3puZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSLlvq7ljZoiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPuW+ruWNmjwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHBzOi8vanVlamluLmltL3VzZXIvNTdmOTlhMzMwZTNkZDkwMDU3YmI5Nzk3IiB0YXJnZXQ9Il9ibGFuayIgdGl0bGU9IuaOmOmHkSI+PGkgY2xhc3M9ImZhIGZhLWZ3IGZhLWdsb2JlIj48L2k+5o6Y6YeRPC9hPgogICAgICAgICAgICAgICAgICAgICAgPC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWF1dGhvci1pdGVtIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iaHR0cHM6Ly93d3cuemhpaHUuY29tL3Blb3BsZS9saWFuZ2d6b25lL2FjdGl2aXRpZXMiIHRhcmdldD0iX2JsYW5rIiB0aXRsZT0i55+l5LmOIj48aSBjbGFzcz0iZmEgZmEtZncgZmEtZ2xvYmUiPjwvaT7nn6XkuY48L2E+CiAgICAgICAgICAgICAgICAgICAgICA8L3NwYW4+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwOi8vd3d3LmppYW5zaHUuY29tL3UvNjM2MzVlNzQ3OTllIiB0YXJnZXQ9Il9ibGFuayIgdGl0bGU9IueugOS5piI+PGkgY2xhc3M9ImZhIGZhLWZ3IGZhLWdsb2JlIj48L2k+566A5LmmPC9hPgogICAgICAgICAgICAgICAgICAgICAgPC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWF1dGhvci1pdGVtIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iaHR0cHM6Ly9zZWdtZW50ZmF1bHQuY29tL3UvbGlhbmdnem9uZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJTZWdtZW50RmF1bHQiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPlNlZ21lbnRGYXVsdDwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2FzaWRlPgogICAgPC9kaXY+CjwvZGl2PgoKPC9ib2R5Pgo8L2h0bWw+lGF1Yi4=', '2021-03-29 15:20:47.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_page..GET.b7adfe8768a84c4f71e99582b0c473a7.d41d8cd98f00b204e9800998ecf8427e.zh-hans.Asia/Shanghai', 'gASVSzAAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1Nb24sIDI5IE1hciAyMDIxIDE0OjUzOjExIEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAttYXgtYWdlPTkwMJSGlHWMEV9jbG9zYWJsZV9vYmplY3RzlF2UjA5faGFuZGxlcl9jbGFzc5ROjAdjb29raWVzlIwMaHR0cC5jb29raWVzlIwMU2ltcGxlQ29va2lllJOUKYGUjAZjbG9zZWSUiYwOX3JlYXNvbl9waHJhc2WUTowIX2NoYXJzZXSUTowKX2NvbnRhaW5lcpRdlELXLgAAPCFET0NUWVBFIGh0bWw+Cgo8aHRtbCBsYW5nPSJlbiI+CjxoZWFkPgogICAgPG1ldGEgY2hhcnNldD0iVVRGLTgiPgogICAgPHRpdGxlPlRzbGxk5Liq5Lq65Y2a5a6iPC90aXRsZT4KICAgIDxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MSwgbWF4aW11bS1zY2FsZT0zLCBtaW5pbXVtLXNjYWxlPTEiPgogICAgPGxpbmsgcmVsPSJzdHlsZXNoZWV0IiBocmVmPSIvc3RhdGljL2hlYWRlci5jc3MiPgogICAgPGxpbmsgcmVsPSJpY29uIiBocmVmPSIvbWVkaWEvZmF2aWNvbi5pY28iPgogICAgCiAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIGhyZWY9Ii9zdGF0aWMvY29udGFpbmVyLmNzcyI+Cgo8IS0tICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iL3N0YXRpYy9sYXl1aS9jc3MvbGF5dWkuY3NzIj4tLT4KPCEtLSAgICA8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIvc3RhdGljL2xheXVpL2xheXVpLmpzIj48L3NjcmlwdD4tLT4KPC9oZWFkPgo8Ym9keT4KCgo8aGVhZGVyPgogICAgPGRpdj4KICAgICAgICA8ZGl2IGlkPSJpbWdsb2dvIj4KICAgICAgICAgICAgPGEgaHJlZj0iLyI+PGltZyBzcmM9Ii9tZWRpYS9oZWkuanBnIiBhbHQ9IuWPtuaWsOWuneeahOWNmuWuoiIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+PC9hPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgaWQ9InRleHRsb2dvIj4KICAgICAgICAgICAgPGgxIGNsYXNzPSJzaXRlLW5hbWUiPgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLyIgdGl0bGU9IuWPtuaWsOWuneeahOWNmuWuoiI+5Y+25paw5a6d55qE5Y2a5a6iPC9hPgogICAgICAgICAgICA8L2gxPgogICAgICAgICAgICA8aDIgY2xhc3M9ImJsb2ctbW90dG8iPgogICAgICAgICAgICAgICAg5Yu+5YuS5bKA5pyq5p2l55qE6L2u5buT57q/77yM6K6i5LiL5YuH5b6A55u05YmN55qE5YeG5YiZ44CCCiAgICAgICAgICAgICAgICA8YnI+CiAgICAgICAgICAgICAgICDlvq7lsI/nmoTmoqbmg7PvvIzlhajpg6jngrnnh4PjgIIKICAgICAgICAgICAgICAgIDxicj4KICAgICAgICAgICAgICAgIOeUqOi/meS7veWFieiKkuWIuuegtOm7keaal++8jOeyieeijuS6hueahOWjgeWekuWPpuS4gOi+ue+8jOaIkeeci+ingeS6huWxnuS6juiHquW3seeahOWkqeepuuOAggogICAgICAgICAgICA8L2gyPgogICAgICAgIDwvZGl2PgogICAgICAgIDxkaXYgY2xhc3M9Im5hdmJhciI+CiAgICAgICAgICAgIDxhIGNsYXNzPSJuYXZidXR0b24gbmF2bW9iaWxlIiBocmVmPSIjIiB0aXRsZT0i6I+c5Y2VIj48L2E+CiAgICAgICAgPC9kaXY+CiAgICAgICAgPG5hdiBjbGFzcz0iYW5pbWF0ZWQiPgogICAgICAgICAgICA8dWw+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii8iIHRhcmdldD0iX2JsYW5rIj7kuLvpobU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iL2Jsb2cvIiB0YXJnZXQ9Il9ibGFuayI+5paH56ug5b2S5qGjPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Imh0dHBzOi8vd3d3Lnl1cXVlLmNvbS9zZXJ2ZXJfbWluZC9hbnN3ZXIiIHRhcmdldD0iX2JsYW5rIj7nrZTnlpHlkajmiqU8L2E+PC9saT4KCiAgICAgICAgICAgICAgICA8bGk+PGEgaHJlZj0iaHR0cHM6Ly93d3cueXVxdWUuY29tL3NlcnZlcl9taW5kL2Fuc3dlci9zZXJ2ZXJncm91cCIgdGFyZ2V0PSJfYmxhbmsiPuWQjuerr+ekvue+pDwvYT48L2xpPgoKICAgICAgICAgICAgICAgIDxsaT48YSBocmVmPSJodHRwczovL3d3dy55dXF1ZS5jb20vc2VydmVyX21pbmQvYW5zd2VyL2Jvb2tzIiB0YXJnZXQ9Il9ibGFuayI+5Lmm57GN5o6o6I2QPC9hPjwvbGk+CgogICAgICAgICAgICAgICAgPGxpPgoKICAgICAgICAgICAgICAgICAgICA8IS0tPGZvcm0gY2xhc3M9InNlYXJjaCIgYWN0aW9uPSIvL2dvb2dsZS5jb20vc2VhcmNoIiBtZXRob2Q9ImdldCIgYWNjZXB0LWNoYXJzZXQ9InV0Zi04Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPGxhYmVsPlNlYXJjaDwvbGFiZWw+CiAgICAgICAgICAgICAgICAgICAgICAgIDxpbnB1dCB0eXBlPSJ0ZXh0IiBpZD0ic2VhcmNoIiBuYW1lPSJxIiBhdXRvY29tcGxldGU9Im9mZiIgbWF4bGVuZ3RoPSIyMCIgcGxhY2Vob2xkZXI9IuaQnOe0oiIgLz4KICAgICAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9ImhpZGRlbiIgbmFtZT0icSIgdmFsdWU9InNpdGU6YmxvZy43MjB1aS5jb20iPgogICAgICAgICAgICAgICAgICAgIDwvZm9ybT4tLT4KCiAgICAgICAgICAgICAgICA8L2xpPgogICAgICAgICAgICA8L3VsPgogICAgICAgIDwvbmF2PgogICAgPC9kaXY+CjwvaGVhZGVyPgoKCjxkaXYgaWQ9ImNvbnRhaW5lciI+CiAgICA8ZGl2IGlkPSJtYWluIj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8xIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7ljovlips8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8yIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7lraTni6w8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy8zIiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7kuKrkuro8L2E+CiAgICAgICAgICAgICAgICA8L2gxPgogICAgICAgICAgICAgICAgPHAgY2xhc3M9ImFydGljbGUtdGltZSI+CiAgICAgICAgICAgICAgICAgICAg5Y+R6KGo5LqOCiAgICAgICAgICAgICAgICAgICAgPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+CgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOW3peWFt+aKgOW3pwoKCiAgICAgICAgICAgICAgICAgICAgICB8CgogICAgICAgICAgICAgICAgICAgICAg6L+Q57u0CgogICAgICAgICAgICAgICAgPC9wPgo8IS0tICAgICAgICAgICAgICAgIDo6YWZ0ZXItLT4KICAgICAgICAgICAgPC9oZWFkZXI+CgogICAgICAgICAgICA8c2VjdGlvbiBjbGFzcz0icG9zdCIgaXRlbXNjb3BlPSIiIGl0ZW1wcm9wPSJibG9nUG9zdCI+CgogICAgICAgICAgICAgICAgPGEgaHJlZj0iLzIwMjAvd3NsMl91c2UvIiB0aXRsZT0iV1NMMu+8muaIkeWcqOWOn+eUn+eahFdpbjEw546p6L2sTGludXjns7vnu58iIGl0ZW1wcm9wPSJ1cmwiPgoKICAgICAgICAgICAgICAgIDwhLS08aDEgaXRlbXByb3A9Im5hbWUiPldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufPC9oMT4tLT4KCgogICAgICAgICAgICAgICAgICAgICAgIDxwIGl0ZW1wcm9wPSJkZXNjcmlwdGlvbiI+5LuK5aSp77yM5oiR6Lef5aSn5a625YiG5Lqr5LiA5Liq5aW9546p55qE5Lic6KW/77yaV1NMIDLvvIhXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXggMu+8ieOAgldTTCAyIOW+iOacieaEj+aAne+8jOWug+aYr+WfuuS6jkh5cGVyLVYg5Yqf6IO955qE5a2Q6ZuG5o+Q5L6b5LqG4oCc55yf5q2j55qEIExpbnV4IOWGheaguOKAneOAguaAjuS5iOeQhuino+i/meWPpeivneWRou+8n+Wkp+WutuiuvuaDs++8jOaIkeS7rOW5s+aXtueahOeglOWPkeWKnuWFrOeOr+Wig+mcgOimgVdpbmRvd3PvvIzogIzlvIDlj5Hnjq/looM8L3A+CgoKICAgICAgICAgICAgICAgIDwhLS08dGltZSBkYXRldGltZT0iMjAyMC0xMS0xN1QxNDozMDowMC4wMDBaIiBpdGVtcHJvcD0iZGF0ZVB1Ymxpc2hlZCI+MjAyMC0xMS0xNzwvdGltZT4tLT4KICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgIDwvc2VjdGlvbj4KICAgICAgICA8L2Rpdj4KICAgICAgICAKICAgICAgICA8ZGl2IGlkPSJhcnRpY2xlLWluZGV4Ij4KICAgICAgICAgICAgPGhlYWRlciBjbGFzcz0iYXJ0aWNsZS1pbmZvIGNsZWFyZml4Ij4KPCEtLSAgICAgICAgICAgICAgICA6OmJlZm9yZS0tPgogICAgICAgICAgICAgICAgPGgxIGl0ZW1wcm9wPSJuYW1lIj4KICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSIvYmxvZy80IiB0aXRsZT0iIiBpdGVtcHJvcD0idXJsIj7mtYvor5UxPC9hPgogICAgICAgICAgICAgICAgPC9oMT4KICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJhcnRpY2xlLXRpbWUiPgogICAgICAgICAgICAgICAgICAgIOWPkeihqOS6jgogICAgICAgICAgICAgICAgICAgIDx0aW1lIGRhdGV0aW1lPSIyMDIwLTExLTE3VDE0OjMwOjAwLjAwMFoiIGl0ZW1wcm9wPSJkYXRlUHVibGlzaGVkIj4yMDIwLTExLTE3PC90aW1lPgoKICAgICAgICAgICAgICAgICAgICAgIHwKCiAgICAgICAgICAgICAgICAgICAgICDlt6XlhbfmioDlt6cKCgogICAgICAgICAgICAgICAgICAgICAgfAoKICAgICAgICAgICAgICAgICAgICAgIOi/kOe7tAoKICAgICAgICAgICAgICAgIDwvcD4KPCEtLSAgICAgICAgICAgICAgICA6OmFmdGVyLS0+CiAgICAgICAgICAgIDwvaGVhZGVyPgoKICAgICAgICAgICAgPHNlY3Rpb24gY2xhc3M9InBvc3QiIGl0ZW1zY29wZT0iIiBpdGVtcHJvcD0iYmxvZ1Bvc3QiPgoKICAgICAgICAgICAgICAgIDxhIGhyZWY9Ii8yMDIwL3dzbDJfdXNlLyIgdGl0bGU9IldTTDLvvJrmiJHlnKjljp/nlJ/nmoRXaW4xMOeOqei9rExpbnV457O757ufIiBpdGVtcHJvcD0idXJsIj4KCiAgICAgICAgICAgICAgICA8IS0tPGgxIGl0ZW1wcm9wPSJuYW1lIj5XU0wy77ya5oiR5Zyo5Y6f55Sf55qEV2luMTDnjqnovaxMaW51eOezu+e7nzwvaDE+LS0+CgoKICAgICAgICAgICAgICAgICAgICAgICA8cCBpdGVtcHJvcD0iZGVzY3JpcHRpb24iPuS7iuWkqe+8jOaIkei3n+Wkp+WutuWIhuS6q+S4gOS4quWlveeOqeeahOS4nOilv++8mldTTCAy77yIV2luZG93cyBTdWJzeXN0ZW0gZm9yIExpbnV4IDLvvInjgIJXU0wgMiDlvojmnInmhI/mgJ3vvIzlroPmmK/ln7rkuo5IeXBlci1WIOWKn+iDveeahOWtkOmbhuaPkOS+m+S6huKAnOecn+ato+eahCBMaW51eCDlhoXmoLjigJ3jgILmgI7kuYjnkIbop6Pov5nlj6Xor53lkaLvvJ/lpKflrrborr7mg7PvvIzmiJHku6zlubPml7bnmoTnoJTlj5Hlip7lhaznjq/looPpnIDopoFXaW5kb3dz77yM6ICM5byA5Y+R546v5aKDPC9wPgoKCiAgICAgICAgICAgICAgICA8IS0tPHRpbWUgZGF0ZXRpbWU9IjIwMjAtMTEtMTdUMTQ6MzA6MDAuMDAwWiIgaXRlbXByb3A9ImRhdGVQdWJsaXNoZWQiPjIwMjAtMTEtMTc8L3RpbWU+LS0+CiAgICAgICAgICAgICAgPC9hPgogICAgICAgICAgICA8L3NlY3Rpb24+CiAgICAgICAgPC9kaXY+CiAgICAgICAgCiAgICAgICAgPG5hdiBpZD0icGFnZS1uYXYiIGNsYXNzPSJjbGVhcmZpeCI+CgogICAgICAgICAgICA8c3BhbiBjbGFzcz0icGFnZS1udW1iZXIgY3VycmVudCI+MTwvc3Bhbj4KICAgICAgICAgICAgPGEgY2xhc3M9InBhZ2UtbnVtYmVyIiBocmVmPSI/cGFnZT0xIj4yPC9hPgogICAgICAgICAgICA8YSBjbGFzcz0icGFnZS1udW1iZXIiIGhyZWY9Ii9wYWdlLzMvIj4zPC9hPgogICAgICAgICAgICA8c3BhbiBjbGFzcz0ic3BhY2UiPuKApjwvc3Bhbj4KICAgICAgICAgICAgPGEgY2xhc3M9InBhZ2UtbnVtYmVyIiBocmVmPSIvcGFnZS8xNi8iPjE2PC9hPgogICAgICAgIDwvbmF2PgogICAgPC9kaXY+CiAgICA8ZGl2IGNsYXNzPSJvcGVuYXNpZGUiIHN0eWxlPSJ0b3A6IDI2MHB4OyI+CiAgICAgICAgPGEgY2xhc3M9Im5hdmJ1dHRvbiIgaHJlZj0iIyIgdGl0bGU9IuaYvuekuuS+p+i+ueagjyI+PC9hPgogICAgPC9kaXY+CiAgICA8ZGl2IGlkPSJhc2lkZXBhcnQiPgogICAgICAgIDxhc2lkZSBpZD0icHJvZmlsZSI+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImlubmVyIj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJhc2UtaW5mbyBwcm9maWxlLWJsb2NrIj4KICAgICAgICAgICAgICAgICAgICA8aW1nIGlkPSJhdmF0YXIiIHNyYz0iL21lZGlhL2hlaS5qcGciIHN0eWxlPSJ3aWR0aDogMTgwcHg7IGhlaWdodDogMTgwcHgiPgogICAgICAgICAgICAgICAgICAgIDxoMiBpZD0ibmFtZSI+5Y+25paw5a6dPC9oMj4KICAgICAgICAgICAgICAgICAgICA8aDMgaWQ9InRpdGxlIj48cCBzdHlsZT0iY29sb3I6IzdlYmFkZjtmb250LXNpemU6MTRweCI+5ZCO56uv5pS75Z+O54uuPC9wPjxwIHN0eWxlPSJjb2xvcjojN2ViYWRmO2ZvbnQtc2l6ZToxNHB4Ij7lvq7kv6HlhazkvJflj7fjgIzmnI3liqHnq6/mgJ3nu7TjgI08L3A+PC9oMz4KCiAgICAgICAgICAgICAgICAgICAgPGhyIHN0eWxlPSJtYXJnaW4tdG9wOiAyZW07bWFyZ2luLWJvdHRvbTogMmVtO3doaXRlLXNwYWNlOiBub3JtYWw7aGVpZ2h0OiAxMXB4O292ZXJmbG93OiB2aXNpYmxlO2JvcmRlci1zdHlsZTogbm9uZSBub25lIG5vbmUgc29saWQ7Ym9yZGVyLWxlZnQtd2lkdGg6IDMwcHg7Ym9yZGVyLWxlZnQtY29sb3I6IHJnYigyNiwgMTE1LCAxODYpO2NvbG9yOiByZ2IoMTM2LCAxMzYsIDEzNik7Zm9udC1zaXplOiAxNHB4O2xldHRlci1zcGFjaW5nOiAxLjVweDt0ZXh0LWFsaWduOiBqdXN0aWZ5O21heC13aWR0aDogMTAwJSAhaW1wb3J0YW50O2JveC1zaXppbmc6IGJvcmRlci1ib3ggIWltcG9ydGFudDt3b3JkLXdyYXA6IGJyZWFrLXdvcmQgIWltcG9ydGFudDtiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMzgsIDE4OSwgMjA3KTsiPgogICAgICAgICAgICAgICAgICAgIDxpbWcgaWQ9ImF2YXRhciIgc3JjPSJodHRwOi8vaW1hZ2UuY2hlbnlvbmdqdW4udmlwL3dlaXhpbi5qcGciIGFsdD0i5b6u5L+h5YWs5LyX5Y+3IiBzdHlsZT0id2lkdGg6MjAwcHg7Ij4KICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yIHByb2ZpbGUtYmxvY2siPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWNvbi1pdGVtIj7pgq7ku7bvvJo8YSBocmVmPSJtYWlsdG86bGlhbmdnem9uZUAxNjMuY29tIj5saWFuZ2d6b25lQDE2My5jb208L2E+PC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPGJyPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWNvbi1pdGVtIj7lvq7kv6HvvJo8YSBocmVmPSIjIyMjIj5MaWFuZ0d6b25lPC9hPgoKICAgICAgICAgICAgICAgIDwvc3Bhbj48L2Rpdj4KICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImxpbmtzLW9mLWF1dGhvciI+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vbGlhbmdnem9uZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJHaXRIdWIiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPkdpdEh1YjwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHBzOi8vd3d3Lnl1cXVlLmNvbS9zZXJ2ZXJfbWluZC9hbnN3ZXIiIHRhcmdldD0iX2JsYW5rIiB0aXRsZT0i6K+t6ZuAIj48aSBjbGFzcz0iZmEgZmEtZncgZmEtZ2xvYmUiPjwvaT7or63pm4A8L2E+CiAgICAgICAgICAgICAgICAgICAgICA8L3NwYW4+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwczovL215Lm9zY2hpbmEubmV0L3UvMzc4OTU3NyIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJHaXRIdWIiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPuW8gOa6kOS4reWbvTwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly93ZWliby5jb20vbGlhbmdnb3puZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSLlvq7ljZoiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPuW+ruWNmjwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICAgIDxzcGFuIGNsYXNzPSJsaW5rcy1vZi1hdXRob3ItaXRlbSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9Imh0dHBzOi8vanVlamluLmltL3VzZXIvNTdmOTlhMzMwZTNkZDkwMDU3YmI5Nzk3IiB0YXJnZXQ9Il9ibGFuayIgdGl0bGU9IuaOmOmHkSI+PGkgY2xhc3M9ImZhIGZhLWZ3IGZhLWdsb2JlIj48L2k+5o6Y6YeRPC9hPgogICAgICAgICAgICAgICAgICAgICAgPC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWF1dGhvci1pdGVtIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iaHR0cHM6Ly93d3cuemhpaHUuY29tL3Blb3BsZS9saWFuZ2d6b25lL2FjdGl2aXRpZXMiIHRhcmdldD0iX2JsYW5rIiB0aXRsZT0i55+l5LmOIj48aSBjbGFzcz0iZmEgZmEtZncgZmEtZ2xvYmUiPjwvaT7nn6XkuY48L2E+CiAgICAgICAgICAgICAgICAgICAgICA8L3NwYW4+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0ibGlua3Mtb2YtYXV0aG9yLWl0ZW0iPgogICAgICAgICAgICAgICAgICAgICAgICA8YSBocmVmPSJodHRwOi8vd3d3LmppYW5zaHUuY29tL3UvNjM2MzVlNzQ3OTllIiB0YXJnZXQ9Il9ibGFuayIgdGl0bGU9IueugOS5piI+PGkgY2xhc3M9ImZhIGZhLWZ3IGZhLWdsb2JlIj48L2k+566A5LmmPC9hPgogICAgICAgICAgICAgICAgICAgICAgPC9zcGFuPgogICAgICAgICAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImxpbmtzLW9mLWF1dGhvci1pdGVtIj4KICAgICAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iaHR0cHM6Ly9zZWdtZW50ZmF1bHQuY29tL3UvbGlhbmdnem9uZSIgdGFyZ2V0PSJfYmxhbmsiIHRpdGxlPSJTZWdtZW50RmF1bHQiPjxpIGNsYXNzPSJmYSBmYS1mdyBmYS1nbG9iZSI+PC9pPlNlZ21lbnRGYXVsdDwvYT4KICAgICAgICAgICAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICA8L2Rpdj4KICAgICAgICA8L2FzaWRlPgogICAgPC9kaXY+CjwvZGl2PgoKPC9ib2R5Pgo8L2h0bWw+lGF1Yi4=', '2021-03-29 14:53:11.000000');

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('5', '1');

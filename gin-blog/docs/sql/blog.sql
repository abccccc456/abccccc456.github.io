/*
Navicat MySQl Data Transfer

Source Database		: blog

Target Server Type	: MYSQL
Target Server Version	: 50639
File Encoding		: 65001

Date: 2019-02-20 10:15:50
 */

SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT 'tag_id',
  `title` varchar(100) DEFAULT '' COMMENT 'title',
  `desc` varchar(255) DEFAULT '' COMMENT 'desc',
  `content` text COMMENT 'content',
  `cover_image_url` varchar(255) DEFAULT '' COMMENT 'cover_image_url',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT 'created_on',
  `created_by` varchar(100) DEFAULT '' COMMENT 'created_by',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT 'modified_on',
  `modified_by` varchar(255) DEFAULT '' COMMENT 'modified_by',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT 'deleted_on',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT 'state',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='blog_article';


DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE `blog_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT 'username',
  `password` varchar(50) DEFAULT '' COMMENT 'password',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `blog_auth` (`id`, `username`, `password`) VALUES ('1', 'test', 'test1234');

DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT 'tag_name',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT 'created_on',
  `created_by` varchar(100) DEFAULT '' COMMENT 'created_by',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT 'modified_on',
  `modified_by` varchar(100) DEFAULT '' COMMENT 'modified_by',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT 'deleted_on',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT 'state 0 stop 1 start',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='blog_tag';


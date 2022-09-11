-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 21, 2017 at 08:58 AM
-- Server version: 5.5.50-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samakalika_live`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_article` (IN `content_id` MEDIUMINT(8) UNSIGNED, IN `ecenic_id` MEDIUMINT(8) UNSIGNED, IN `section_id` SMALLINT(6) UNSIGNED, IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6) UNSIGNED, IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6) UNSIGNED, IN `grant_parent_section_name` VARCHAR(50) CHARSET utf8, IN `linked_to_columnist` TINYINT(1), IN `publish_start_date` DATETIME, IN `publish_end_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `article_page_content_html` MEDIUMTEXT CHARSET utf8, IN `home_page_image_path` VARCHAR(255) CHARSET utf8, IN `home_page_image_title` VARCHAR(255) CHARSET utf8, IN `home_page_image_alt` VARCHAR(255) CHARSET utf8, IN `section_page_image_path` VARCHAR(255) CHARSET utf8, IN `section_page_image_title` VARCHAR(255) CHARSET utf8, IN `section_page_image_alt` VARCHAR(255) CHARSET utf8, IN `article_page_image_path` VARCHAR(255) CHARSET utf8, IN `article_page_image_title` VARCHAR(255) CHARSET utf8, IN `article_page_image_alt` VARCHAR(255) CHARSET utf8, IN `column_name` VARCHAR(100) CHARSET utf8, IN `hits` MEDIUMTEXT, IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` BOOLEAN, IN `allow_pagination` BOOLEAN, IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `author_image_path` VARCHAR(255) CHARSET utf8, IN `author_image_title` VARCHAR(255) CHARSET utf8, IN `author_image_alt` VARCHAR(255) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` BOOLEAN, IN `no_follow` BOOLEAN, IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `section_promotion` BOOLEAN, IN `status` CHAR(1))  NO SQL
INSERT INTO article (
		content_id,
		ecenic_id,
        section_id,
        section_name,
        parent_section_id,
        parent_section_name,
		grant_section_id,
		grant_parent_section_name,
		linked_to_columnist,
		publish_start_date,
        publish_end_date,
		last_updated_on,
		title,
		url,
		summary_html,
		article_page_content_html,
		home_page_image_path,
		home_page_image_title,
		home_page_image_alt,
		section_page_image_path,
		section_page_image_title,
		section_page_image_alt,
		article_page_image_path,
		article_page_image_title,
		article_page_image_alt,
		column_name,
		hits,
		tags,
		allow_comments,
		allow_pagination,
		agency_name,
		author_name,
		author_image_path,
		author_image_title,
		author_image_alt,
		country_name,
		state_name,
		city_name,
		no_indexed,
		no_follow,
		canonical_url,
		meta_Title,
		meta_description,
		section_promotion,
		status	
    ) VALUES (
        content_id,
		ecenic_id,
        section_id,
        section_name,
        parent_section_id,
        parent_section_name,
		grant_section_id,
		grant_parent_section_name,
		linked_to_columnist,
		publish_start_date,
        publish_end_date,
		last_updated_on,
		title,
		url,
		summary_html,
		article_page_content_html,
		home_page_image_path,
		home_page_image_title,
		home_page_image_alt,
		section_page_image_path,
		section_page_image_title,
		section_page_image_alt,
		article_page_image_path,
		article_page_image_title,
		article_page_image_alt,
		column_name,
		hits,
		tags,
		allow_comments,
		allow_pagination,
		agency_name,
		author_name,
		author_image_path,
		author_image_title,
		author_image_alt,
		country_name,
		state_name,
		city_name,
		no_indexed,
		no_follow,
		canonical_url,
		meta_Title,
		meta_description,
		section_promotion,
		status	
     )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_article_related_content` (IN `content_id` MEDIUMINT UNSIGNED, IN `contenttype` TINYINT(1), IN `related_articletitle` VARCHAR(255) CHARSET utf8, IN `related_articleurl` VARCHAR(255) CHARSET utf8, IN `display_order` TINYINT(4))  NO SQL
INSERT INTO relatedcontent
            (content_id,
            contenttype,
            related_articletitle,
            related_articleurl,
            display_order
            ) 
    VALUES (content_id,
            contenttype,
            related_articletitle,
            related_articleurl,
            display_order
            )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_gallery` (IN `content_id` MEDIUMINT(9) UNSIGNED, IN `ecenic_id` MEDIUMINT(9) UNSIGNED, IN `section_id` SMALLINT(6), IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `first_image_path` VARCHAR(255) CHARSET utf8, IN `first_image_title` VARCHAR(255) CHARSET utf8, IN `first_image_alt` VARCHAR(255) CHARSET utf8, IN `hits` MEDIUMINT(9), IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` TINYINT(1), IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` TINYINT(1), IN `no_follow` TINYINT(1), IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `status` CHAR(1))  NO SQL
INSERT INTO gallery (
		`content_id`,
		`ecenic_id`,
		`section_id`,
		`section_name`,
		`parent_section_id`,
		`parent_section_name`,
		`grant_section_id`,
		`grant_parent_section_name`,
		`publish_start_date`,
		`last_updated_on`,
		`title`,
		`url`,
		`summary_html`,
		`first_image_path`,
		`first_image_title`,
		`first_image_alt`,
		`hits`,
		`tags`,
		`allow_comments`,
		`agency_name`,
		author_name,
		`country_name`,
		`state_name`,
		`city_name`,
		`no_indexed`,
		`no_follow`,
		`canonical_url`,
		`meta_Title`,
		`meta_description`,
		`status`
    ) VALUES (
		content_id,
		ecenic_id,
        section_id,
        section_name,
        parent_section_id,
        parent_section_name,
		grant_section_id,
		grant_parent_section_name,
		publish_start_date,
		last_updated_on,
		title,
		url,
		summary_html,
		first_image_path,
		first_image_title,
		first_image_alt,
		hits,
		tags,
		allow_comments,
		agency_name,
		author_name,
		country_name,
		state_name,
		city_name,
		no_indexed,
		no_follow,
		canonical_url,
		meta_Title,
		meta_description,
		status
    )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_gallery_related_images` (IN `content_id` MEDIUMINT(9) UNSIGNED, IN `gallery_image_path` VARCHAR(255) CHARSET utf8, IN `gallery_image_title` VARCHAR(255) CHARSET utf8, IN `gallery_image_alt` VARCHAR(255) CHARSET utf8, IN `display_order` TINYINT(4))  NO SQL
INSERT INTO gallery_related_images(`content_id`,
                                   `gallery_image_path`,
                                   `gallery_image_title`,
                                   `gallery_image_alt`,
                                   `display_order`
                                  )
        VALUES (content_id,
        gallery_image_path,
        gallery_image_title,
        gallery_image_alt,
        display_order
       )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_resources` (IN `ecenic_id` MEDIUMINT(9) UNSIGNED, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `resource_url` VARCHAR(255) CHARSET utf8, IN `article_id` MEDIUMINT(9) UNSIGNED, IN `image_path` VARCHAR(255) CHARSET utf8, IN `image_caption` VARCHAR(255) CHARSET utf8, IN `image_alt` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `status` CHAR(1) CHARSET utf8, IN `content_id` MEDIUMINT(9) UNSIGNED)  NO SQL
BEGIN

INSERT resources (
    				  content_id,	
    				  ecenic_id,
                      title,
                      url,
                      resource_url,
                      article_id,
                      image_path,
    				  image_caption,
    				  image_alt,
                      publish_start_date,
    				  last_updated_on,
                      status
                      ) VALUES (
                      content_id,
    				  ecenic_id,
                      title,
                      url,
                      resource_url,
                      article_id,
                      image_path,
    				  image_caption,
    				  image_alt,
                      publish_start_date,
    				  last_updated_on,
                      status
                      );
                      
                                      
UPDATE article SET link_to_resource = 1 WHERE content_id = article_id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_short_content_details` (IN `content_id` MEDIUMINT(9) UNSIGNED, IN `title` VARCHAR(255) CHARSET utf8, IN `tags` VARCHAR(255) CHARSET utf8, IN `summary` TEXT CHARSET utf8, IN `bodytext` MEDIUMTEXT CHARSET utf8, IN `section_id` SMALLINT(6) UNSIGNED, IN `type` TINYINT(1))  NO SQL
BEGIN


if(type = 1) THEN

INSERT INTO short_article_details (`content_id`,`title`,`tags`,`summary`,`bodytext`,`section_id`) VALUES(content_id ,title, tags, summary, bodytext, section_id);

END IF;

if(type = 3) THEN

INSERT INTO short_gallery_details (`content_id`,`title`,`tags`,`summary`,`bodytext`,`section_id`) VALUES(content_id ,title, tags, summary, bodytext, section_id);

END IF;


if(type = 4) THEN

INSERT INTO short_video_details (`content_id`,`title`,`tags`,`summary`,`bodytext`,`section_id`) VALUES(content_id ,title, tags, summary, bodytext, section_id);

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_audio` (IN `contentid` MEDIUMINT(9) UNSIGNED, IN `ecenic_id` MEDIUMINT(9) UNSIGNED, IN `section_id` SMALLINT(6), IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `audio_path` TEXT, IN `audio_image_path` VARCHAR(255) CHARSET utf8, IN `audio_image_title` VARCHAR(255) CHARSET utf8, IN `audio_image_alt` VARCHAR(255) CHARSET utf8, IN `hits` MEDIUMINT(9), IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` TINYINT(1), IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` TINYINT(1), IN `no_follow` TINYINT(1), IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `status` CHAR(1))  NO SQL
BEGIN





DECLARE exist_content_id MEDIUMINT(9);

SELECT `content_id` INTO exist_content_id FROM `audio` WHERE `content_id` = contentid;

IF(exist_content_id != '') THEN

UPDATE audio SET
    `section_id` = section_id,
    `section_name` = section_name,
    `parent_section_id` = parent_section_id,
    `parent_section_name` = parent_section_name,
    `grant_section_id` = grant_section_id,
    `grant_parent_section_name` = grant_parent_section_name,
    `publish_start_date` = publish_start_date,
    `last_updated_on` = last_updated_on,
    `title` = title,
    `url` = url,
    `summary_html` = summary_html,
	`audio_path` = audio_path,
	`audio_image_path` = audio_image_path,
	`audio_image_title` = audio_image_title,
	`audio_image_alt` = audio_image_alt, 
     `tags` = tags,
     `allow_comments` = allow_comments,
     `agency_name` = agency_name,
	  `author_name` = author_name,
      `country_name` = country_name,
    `state_name` = state_name,
     `city_name` = city_name,
     `no_indexed` = no_indexed,
    `no_indexed` = no_indexed,
    `no_follow` = no_follow,
     `canonical_url` = canonical_url,
     `meta_Title` = meta_Title,
     `meta_description` = meta_description,
	 `status`	= status
      WHERE `content_id` = contentid;

ELSE 

		
	INSERT INTO audio (
			`content_id`,
			`ecenic_id`,
			`section_id`,
			`section_name`,
			`parent_section_id`,
			`parent_section_name`,
			`grant_section_id`,
			`grant_parent_section_name`,
			`publish_start_date`,
			`last_updated_on`,
			`title`,
			`url`,
			`summary_html`,
			`audio_path`,
			`audio_image_path`,
			`audio_image_title`,
			`audio_image_alt`,
			`hits`,
			`tags`,
			`allow_comments`,
			`agency_name`,
			`author_name`,
			`country_name`,
			`state_name`,
			`city_name`,
			`no_indexed`,
			`no_follow`,
			`canonical_url`,
			`meta_Title`,
			`meta_description`,
			`status`
		) VALUES (
			contentid,
			ecenic_id,
			section_id,
			section_name,
			parent_section_id,
			parent_section_name,
			grant_section_id,
			grant_parent_section_name,
			publish_start_date,
			last_updated_on,
			title,
			url,
			summary_html,
			audio_path,
			audio_image_path,
			audio_image_title,
			audio_image_alt,
			hits,
			tags,
			allow_comments,
			agency_name,
			author_name,
			country_name,
			state_name,
			city_name,
			no_indexed,
			no_follow,
			canonical_url,
			meta_Title,
			meta_description,
			status
		);
		
END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_video` (IN `contentid` MEDIUMINT(9) UNSIGNED, IN `ecenic_id` MEDIUMINT(9) UNSIGNED, IN `section_id` SMALLINT(6), IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `video_script` TEXT, IN `video_site` VARCHAR(255), IN `video_image_path` VARCHAR(255) CHARSET utf8, IN `video_image_title` VARCHAR(255) CHARSET utf8, IN `video_image_alt` VARCHAR(255) CHARSET utf8, IN `hits` MEDIUMINT(9), IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` TINYINT(1), IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` TINYINT(1), IN `no_follow` TINYINT(1), IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `status` CHAR(1))  NO SQL
BEGIN



DECLARE exist_content_id MEDIUMINT(9);

SELECT `content_id` INTO exist_content_id FROM `video` WHERE `content_id` = contentid;

IF(exist_content_id != '') THEN

UPDATE video SET
    `section_id` = section_id,
    `section_name` = section_name,
    `parent_section_id` = parent_section_id,
    `parent_section_name` = parent_section_name,
    `grant_section_id` = grant_section_id,
    `grant_parent_section_name` = grant_parent_section_name,
    `publish_start_date` = publish_start_date,
    `last_updated_on` = last_updated_on,
    `title` = title,
    `url` = url,
    `summary_html` = summary_html,
    `video_script` = video_script,
	`video_site` = video_site,
	`video_image_path` = video_image_path,
	`video_image_title` = video_image_title,
	`video_image_alt` = video_image_alt, 
     `tags` = tags,
     `allow_comments` = allow_comments,
     `agency_name` = agency_name,
	  `author_name` = author_name,
      `country_name` = country_name,
    `state_name` = state_name,
     `city_name` = city_name,
     `no_indexed` = no_indexed,
    `no_indexed` = no_indexed,
    `no_follow` = no_follow,
     `canonical_url` = canonical_url,
     `meta_Title` = meta_Title,
     `meta_description` = meta_description,
	 `status`	= status
      WHERE `content_id` = contentid;

ELSE 

		
	INSERT INTO video (
			`content_id`,
			`ecenic_id`,
			`section_id`,
			`section_name`,
			`parent_section_id`,
			`parent_section_name`,
			`grant_section_id`,
			`grant_parent_section_name`,
			`publish_start_date`,
			`last_updated_on`,
			`title`,
			`url`,
			`summary_html`,
			`video_script`,
			`video_site`,
			`video_image_path`,
			`video_image_title`,
			`video_image_alt`,
			`hits`,
			`tags`,
			`allow_comments`,
			`agency_name`,
			`author_name`,
			`country_name`,
			`state_name`,
			`city_name`,
			`no_indexed`,
			`no_follow`,
			`canonical_url`,
			`meta_Title`,
			`meta_description`,
			`status`
		) VALUES (
			contentid,
			ecenic_id,
			section_id,
			section_name,
			parent_section_id,
			parent_section_name,
			grant_section_id,
			grant_parent_section_name,
			publish_start_date,
			last_updated_on,
			title,
			url,
			summary_html,
			video_script,
			video_site,
			video_image_path,
			video_image_title,
			video_image_alt,
			hits,
			tags,
			allow_comments,
			agency_name,
			author_name,
			country_name,
			state_name,
			city_name,
			no_indexed,
			no_follow,
			canonical_url,
			meta_Title,
			meta_description,
			status
		);
	
END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_video` (IN `content_id` INT(11), IN `section_id` INT(11), IN `section_name` VARCHAR(50) CHARSET utf8, IN `section_name_html` VARCHAR(255) CHARSET utf8, IN `parent_section_id` INT(11), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_name_html` VARCHAR(255) CHARSET utf8, IN `grant_section_id` INT(11), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `grant_parent_section_name_html` VARCHAR(255) CHARSET utf8, IN `linked_to_columnist` BOOLEAN, IN `publish_on` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url_title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_plain_text` TEXT CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `description` TEXT CHARSET utf8, IN `video_script` TEXT CHARSET utf8, IN `video_image_path` VARCHAR(255) CHARSET utf8, IN `video_image_title` VARCHAR(255) CHARSET utf8, IN `video_image_alt` VARCHAR(255) CHARSET utf8, IN `video_image_height` VARCHAR(4) CHARSET utf8, IN `video_image_width` VARCHAR(4) CHARSET utf8, IN `emailed` INT(11), IN `hits` INT(11), IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_social_button` BOOLEAN, IN `allow_comments` BOOLEAN, IN `agency_name` VARCHAR(100) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `author_image_path` VARCHAR(100) CHARSET utf8, IN `author_image_title` VARCHAR(255) CHARSET utf8, IN `author_image_alt` VARCHAR(255) CHARSET utf8, IN `author_image_height` VARCHAR(4) CHARSET utf8, IN `author_image_width` VARCHAR(4) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `addto_opengraphtags` BOOLEAN, IN `addto_twittercards` BOOLEAN, IN `addto_schemeorggplus` BOOLEAN, IN `no_indexed` BOOLEAN, IN `no_follow` BOOLEAN, IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8)  NO SQL
INSERT INTO video (
    `content_id`,
    `section_id`,
    `section_name`,
    `section_name_html`,
    `parent_section_id`,
    `parent_section_name`,
    `parent_section_name_html`,
    `grant_section_id`,
    `grant_parent_section_name`,
    `grant_parent_section_name_html`,
    `linked_to_columnist`,
    `publish_on`,
    `last_updated_on`,
    `title`,
    `url_title`,
    `url`,
    `summary_plain_text`,
    `summary_html`,
    `description`,
    `video_script`,
    `video_image_path`,
    `video_image_title`,
    `video_image_alt`,
    `video_image_height`,
    `video_image_width`,
     `emailed`,
     `hits`,
     `tags`,
     `allow_social_button`,
     `allow_comments`,
     `agency_name`,
     `author_name`,
     `author_image_path`,
    `author_image_title`,
    `author_image_alt`,
    `author_image_height`,
    `author_image_width`,
     `country_name`,
    `state_name`,
     `city_name`,
     `addto_opengraphtags`,
     `addto_twittercards`,
     `addto_schemeorggplus`,
    `no_indexed`,
    `no_follow`,
     `canonical_url`,
     `meta_Title`,
     `meta_description`
    ) VALUES (
        content_id,
        section_id,
        section_name,
        section_name_html,
        parent_section_id,
        parent_section_name,
    parent_section_name_html,
    grant_section_id,
    grant_parent_section_name,
    grant_parent_section_name_html,
            linked_to_columnist,
    publish_on,
    last_updated_on,
    title,
    url_title,
    url,
    summary_plain_text,
    summary_html,
    description,
        video_script,
    video_image_path,
    video_image_title,
    video_image_alt,
    video_image_height,
    video_image_width,
    emailed,
    hits,
    tags,
    allow_social_button,
    allow_comments,
    agency_name,
    author_name,
         author_image_path,
    author_image_title,
    author_image_alt,
    author_image_height,
    author_image_width,
    country_name,
    state_name,
    city_name,
    addto_opengraphtags,
    addto_twittercards,
    addto_schemeorggplus,
    no_indexed,
    no_follow,
    canonical_url,
    meta_Title,
    meta_description
        )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_livecontents` (IN `contentid` MEDIUMINT(8) UNSIGNED, IN `type` TINYINT(1))  NO SQL
BEGIN 

if(type = 1) THEN

SELECT content_id FROM article WHERE content_id = contentid;

END IF;

if(type = 3) THEN

SELECT content_id FROM gallery WHERE content_id = contentid;

END IF;


if(type = 4) THEN

SELECT content_id FROM video WHERE content_id = contentid;

END IF;

if(type = 6) THEN

SELECT content_id FROM resources WHERE content_id = contentid;

END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_widgetinstancecontentlive` (IN `contentid` MEDIUMINT UNSIGNED, IN `contenttype` TINYINT(1), OUT `count_content` MEDIUMINT(9) UNSIGNED)  NO SQL
BEGIN


SET count_content = 0;


SET count_content = count_content + (SELECT count(content_id) FROM widgetinstancecontent_live WHERE `content_id` = contentid AND content_type_id = contenttype);


SET count_content = count_content + (SELECT count(content_id) FROM sectionwidgetarticle WHERE `content_id` = contentid AND content_type = contenttype);

IF(contenttype = 1) THEN

	SET count_content = count_content + (SELECT count(content_id) FROM breakingnewsmaster WHERE `Content_ID` = contentid);
                                     
END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `content_hit_datatable` (IN `order_condition` VARCHAR(50) CHARSET utf8, IN `from_date` VARCHAR(255) CHARSET utf8, IN `to_date` VARCHAR(255) CHARSET utf8, IN `search_text` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = '';

IF(search_text != '') THEN

set @strWhere = CONCAT(@strWhere, " AND (t1.title LIKE 
'%",search_text,"%')"  );

END IF;

IF(from_date != '') THEN

set @strWhere = CONCAT(@strWhere," AND (date(t1.created_on) >= '",from_date,"')");

END IF;

IF(to_date != '') THEN

set @strWhere = CONCAT(@strWhere," AND (date(t1.created_on)<=  '",to_date,"')");


END IF;

 
SET @query = CONCAT("select t1.content_id, t1.content_type, t1.section_id, t1.title, t1.hits, t1.emailed, t1.commented, t1.created_on FROM content_hit_history AS t1  WHERE t1.content_id != '' ",@strWhere,order_condition);



PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_article_related_content` (IN `contentid` MEDIUMINT UNSIGNED)  NO SQL
DELETE 
FROM relatedcontent
WHERE content_id = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_askprabhu_qnlist` (IN `id` MEDIUMINT)  NO SQL
Delete from askprabhu where Question_id=id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_breaking_news_live` (IN `news_id` MEDIUMINT)  NO SQL
BEGIN
IF(news_id != '') THEN

delete from `breakingnewsmaster` WHERE `breakingnews_id` = news_id;

ELSE
delete from `breakingnewsmaster`;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_gallery_related_images` (IN `contentid` INT(11))  NO SQL
DELETE FROM gallery_related_images WHERE content_id = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_livecontents` (IN `contentid` MEDIUMINT(9) UNSIGNED, IN `type` INT(1))  NO SQL
BEGIN



IF(type = 1) THEN

DELETE FROM relatedcontent WHERE content_id = contentid;
DELETE FROM article_section_mapping WHERE content_id = contentid;
DELETE FROM article WHERE content_id = contentid;

ELSEIF(type = 3) THEN

DELETE FROM gallery_section_mapping WHERE content_id = contentid;
DELETE FROM gallery_related_images WHERE content_id = contentid;
DELETE FROM gallery WHERE content_id = contentid;

ELSEIF(type = 4) THEN

DELETE FROM video_section_mapping WHERE content_id = contentid;
DELETE FROM video WHERE content_id = contentid;

ELSEIF(type = 5) THEN

DELETE FROM audio_section_mapping WHERE content_id = contentid;
DELETE FROM audio WHERE content_id = contentid;


ELSEIF(type = 6) THEN

DELETE FROM resources WHERE content_id = contentid;

END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_poll` ()  NO SQL
delete from `pollmaster`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_section_mapping` (IN `contentid` MEDIUMINT(11) UNSIGNED, IN `type` TINYINT(1))  NO SQL
BEGIN

IF(type = 1) THEN

DELETE FROM article_section_mapping WHERE content_id = contentid;

ELSEIF(type = 3) THEN

DELETE FROM gallery_section_mapping WHERE content_id = contentid;

ELSEIF(type = 4) THEN

DELETE FROM video_section_mapping WHERE content_id = contentid;

ELSEIF(type = 5) THEN

DELETE FROM audio_section_mapping WHERE content_id = contentid;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_section_widget_articles` (IN `sectionID` SMALLINT, IN `widgettype` TINYINT)  NO SQL
DELETE FROM `sectionwidgetarticle` 
WHERE `section_id` = sectionID AND `widget_type`=widgettype$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_articledetails` (IN `contentid` TEXT, IN `is_home` VARCHAR(1) CHARSET utf8)  NO SQL
    DETERMINISTIC
BEGIN

IF(is_home='y')THEN
set @select_string = " CASE WHEN home_page_image_path ='' THEN article_page_image_path ELSE home_page_image_path
  END AS ImagePhysicalPath, CASE WHEN home_page_image_path ='' THEN `article_page_image_title` ELSE `home_page_image_title`
  END AS ImageCaption, CASE WHEN home_page_image_path ='' THEN `article_page_image_alt` ELSE `home_page_image_alt`
  END AS ImageAlt,";
ELSE
set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path
  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`
  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`
  END AS ImageAlt, ";
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_name`, `last_updated_on`,`publish_start_date`, `title`, `url`, `summary_html`, ", @select_string ," `author_name`, `author_image_path`, `author_image_title`, `author_image_alt` , `column_name` FROM `article` WHERE `status`='P' AND `content_id` IN( ",contentid," ) AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_article_per_page` (IN `contentid` LONGTEXT, IN `is_home` VARCHAR(1) CHARSET utf8, IN `start_limit` INT, IN `end_limit` INT, IN `body_text` VARCHAR(100) CHARSET utf8)  NO SQL
    DETERMINISTIC
BEGIN

set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ");

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;

IF(is_home='y')THEN
set @select_string = " CASE WHEN home_page_image_path ='' THEN article_page_image_path ELSE home_page_image_path
  END AS ImagePhysicalPath, CASE WHEN home_page_image_path ='' THEN `article_page_image_title` ELSE `home_page_image_title`
  END AS ImageCaption, CASE WHEN home_page_image_path ='' THEN `article_page_image_alt` ELSE `home_page_image_alt`
  END AS ImageAlt ";
ELSE
set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path
  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`
  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`
  END AS ImageAlt ";
END IF;

IF(body_text != '') THEN
set @select_string = CONCAT(@select_string, " , ar.article_page_content_html ");
END IF;

SET @query = CONCAT("SELECT ar.`content_id`,  ar.`author_name`, ar.`section_name`,  ar.`author_image_path`, ar.`author_image_title`, ar.`author_image_alt`, ar.publish_start_date, ar.`last_updated_on`, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ,"  FROM `article` as ar WHERE ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_article_xml` (IN `section_Id` INT, IN `page_Type` TINYINT)  NO SQL
BEGIN
IF(section_Id != '' && page_Type != '') THEN

SELECT 
`id`, 
`menuid`, 
`pagetype`, 
`hasTemplate`, 
`templatexml`, 
`workspace_version_id`, 
IF((`common_header` = 1 || `published_templatexml` =''), (SELECT `published_templatexml` FROM  page_master 
where `menuid` = 10000 AND `pagetype` = 2), `published_templatexml`) as `published_templatexml` ,
`templateid`,
`Header_Adscript`, 
IF((`published_templatexml` =''), 1 , `common_header`) as `common_header`,
`common_rightpanel`, 
`common_footer`, 
`use_parent_section_template`
FROM  page_master 
where `menuid` = section_Id AND `pagetype` = page_Type;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_audiodetails` (IN `contentid` TEXT)  NO SQL
    DETERMINISTIC
BEGIN

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `last_updated_on`, `publish_start_date`, `title`, `url`, `summary_html`, `audio_image_path` AS ImagePhysicalPath, `audio_image_title` AS ImageCaption, `audio_image_alt` AS ImageAlt FROM `audio` WHERE `status`='P' AND `content_id` IN( ",contentid," )");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_audio_per_page` (IN `contentid` LONGTEXT, IN `is_home` VARCHAR(1) CHARSET utf8, IN `start_limit` INT, IN `end_limit` INT)  NO SQL
    DETERMINISTIC
BEGIN


set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_image_path`, `audio_image_title`, `audio_image_alt` FROM `audio` WHERE ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_authorimagedetails_from_live` (IN `contentid` MEDIUMINT)  NO SQL
    DETERMINISTIC
BEGIN



select author_name,author_image_path, 	author_image_title,author_image_alt from article where content_id =contentid;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_authorname_by_id` (IN `authorid` MEDIUMINT(9) UNSIGNED)  NO SQL
SELECT AuthorName FROM `authormaster` WHERE `Status` = 1 AND `Author_id` = authorid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_author_content_auto` (IN `Author_name` VARCHAR(100) CHARSET utf8, IN `section_id` SMALLINT(6))  NO SQL
BEGIN

set @strWhere = '';

IF(Author_name != '') THEN

set @strWhere = CONCAT(@strWhere, " AND author_name = '",Author_name,"'");

END IF;

IF(section_id != '') THEN

set @strWhere = CONCAT(@strWhere, " AND section_id = '",section_id,"' ");

END IF;

IF(section_id = '' && Author_name = '') THEN

set @strWhere = CONCAT(@strWhere, " AND section_name='Columns' AND author_name !='' ");

END IF;

set @strWhere = CONCAT(@strWhere, " ORDER BY last_updated_on DESC ");


SET @query = CONCAT("SELECT content_id  FROM `article` WHERE IF( `publish_end_date` != '0000-00-00 00:00:00' , `publish_end_date` >= now(), 1) AND `publish_start_date` <= now() ", @strWhere);



PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_author_content_auto_page` (IN `Author_name` VARCHAR(100) CHARSET utf8, IN `start_num` INT(11), IN `len` INT(9), IN `section_id` SMALLINT(6))  NO SQL
BEGIN

set @strWhere = '';

IF(Author_name != '') THEN

set @strWhere = CONCAT(@strWhere, " AND author_name = '",Author_name,"'");

END IF;

IF(section_id != '') THEN

set @strWhere = CONCAT(@strWhere, " AND section_id = '",section_id,"' ");

END IF;

IF(section_id = '' && Author_name = '') THEN

set @strWhere = CONCAT(@strWhere, " AND section_name='Columns' AND author_name !='' ");

END IF;

set @strWhere = CONCAT(@strWhere, " ORDER BY last_updated_on DESC LIMIT ",start_num,",",len);

SET @query = CONCAT("SELECT content_id  FROM `article` WHERE IF( `publish_end_date` != '0000-00-00 00:00:00' , `publish_end_date` >= now(), 1) AND `publish_start_date` <= now()", @strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_clone_mapping_details_live` (IN `post_clone_instance_id` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

SELECT `WidgetInstancelive_id`, `WidgetInstance_id`, `Pagesection_id`, `Page_type`, `Page_version_id`, `Container_ID`, `Widget_id`, `WidgetDisplayOrder`, `CustomTitle`, `AdvertisementScript`, `Background_Color`, `Maximum_Articles`, `WidgetSection_ID`, `RenderingMode`, `Numberofcontents`, `Hideseperatorline`, `isSummaryRequired`, `publish_start_date`, `publish_end_date`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`, `cloned_instance_reference_id` FROM `widgetinstance_live` 
WHERE `cloned_instance_reference_id` IN( post_clone_instance_id ) AND `status` = 1 ;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_column_list_auto_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `status_value` CHAR(1) CHARSET utf8, IN `content_type` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN

DECLARE sectn_name TEXT CHARACTER SET UTF8;

set sectn_name := (SELECT `Sectionname` FROM `sectionmaster` WHERE `Section_id` = sectionid); 

set @strWhere = '';

set @strWhere = CONCAT(@strWhere," AND (case WHEN ar.`publish_start_date` !='0000-00-00 00:00:00' THEN Now() > ar.`publish_start_date` ELSE FALSE END) ");

IF(sectionid != '' && sectn_name = 'Opinions') THEN

set @strWhere = CONCAT(@strWhere," AND  ar.`section_id` = '",sectionid,"' ");
 
ELSEIF(sectionid != ''  && sectn_name != 'Opinions') THEN

set @strWhere = CONCAT(@strWhere," AND  ar.`section_id` = '",sectionid,"' OR ar.`parent_section_id` = '",sectionid,"' ");

END IF;
 
IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;
 
SET @query = CONCAT("SELECT ar.`content_id` FROM  `article` as ar  WHERE ar.status =  'P' ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_containers` (IN `container_status` INT, IN `container_id` INT)  NO SQL
BEGIN
IF(container_status != '') THEN

SELECT `containerid`,
`containername`, 
`containerhtml`, 
`container_imagepath`, 
`container_design`, 
`container_values`
FROM `container_master` WHERE status = container_status;

ELSEIF(container_id != '') THEN

SELECT `containerid`,
`containername`, 
`containerhtml`, 
`container_imagepath`, 
`container_design`, 
`container_values`
FROM `container_master` WHERE `containerid` = container_id;

ELSE

SELECT `containerid`,
`containername`, 
`containerhtml`, 
`container_imagepath`, 
`container_design`, 
`container_values`, 
`status` 
FROM `container_master`;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_contentdetails_from_live` (IN `contentid` TEXT, IN `contenttypeid` TINYINT(1), IN `is_home` VARCHAR(1) CHARSET utf8)  NO SQL
    DETERMINISTIC
BEGIN


set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

IF(contenttypeid=1) THEN
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ");

IF(is_home='y')THEN
set @select_string = " CASE WHEN home_page_image_path ='' THEN article_page_image_path ELSE home_page_image_path
  END AS ImagePhysicalPath, CASE WHEN home_page_image_path ='' THEN `article_page_image_title` ELSE `home_page_image_title`
  END AS ImageCaption, CASE WHEN home_page_image_path ='' THEN `article_page_image_alt` ELSE `home_page_image_alt`
  END AS ImageAlt,";
ELSE
set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path
  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`
  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`
  END AS ImageAlt, ";
END IF;
SET @query = CONCAT("SELECT  ar.`content_id`, ar.`section_id`, ar.`section_name`, ar.`parent_section_id`,ar.`parent_section_name`, ar.`linked_to_columnist`, ar.`last_updated_on`, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ," ar.`section_promotion`, ar. `author_name`,ar. `author_image_path`,ar. `author_image_title`, ar.`author_image_alt`, ar.`status`FROM `article` as ar WHERE ",@strWhere);
ELSEIF(contenttypeid=3 ) THEN

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`,`last_updated_on`, `title`, `url`, `summary_html`, `first_image_path`, `first_image_title`, `first_image_alt` FROM gallery WHERE ",@strWhere);

ELSEIF(contenttypeid=4 ) THEN

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `video_image_path`, `video_image_title`, `video_image_alt` FROM `video` WHERE ",@strWhere);
ELSEIF(contenttypeid=5 ) THEN

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_image_path`, `audio_image_title`, `audio_image_alt` FROM `audio` WHERE ",@strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_contentdetails_from_live_per_page` (IN `contentid` LONGTEXT, IN `contenttypeid` TINYINT(1), IN `is_home` VARCHAR(1) CHARSET utf8, IN `start_limit` INT, IN `end_limit` INT)  NO SQL
    DETERMINISTIC
BEGIN


set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

IF(contenttypeid=1) THEN
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ");

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;

IF(is_home='y')THEN
set @select_string = " CASE WHEN home_page_image_path ='' THEN article_page_image_path ELSE home_page_image_path
  END AS ImagePhysicalPath, CASE WHEN home_page_image_path ='' THEN `article_page_image_title` ELSE `home_page_image_title`
  END AS ImageCaption, CASE WHEN home_page_image_path ='' THEN `article_page_image_alt` ELSE `home_page_image_alt`
  END AS ImageAlt,";
ELSE
set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path
  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`
  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`
  END AS ImageAlt, ";
END IF;
SET @query = CONCAT("SELECT ar.`article_page_content_html`, ar.`content_id`, ar.`section_id`, ar.`section_name`, ar.`parent_section_id`,ar.`parent_section_name`, ar.`linked_to_columnist`, ar.`last_updated_on`, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ," ar.`section_promotion`, ar. `author_name`,ar. `author_image_path`,ar. `author_image_title`, ar.`author_image_alt`, ar.`status`FROM `article` as ar WHERE ",@strWhere);


ELSEIF(contenttypeid=3 ) THEN

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`,`last_updated_on`, `title`, `url`, `summary_html`, `first_image_path`, `first_image_title`, `first_image_alt` FROM gallery WHERE ",@strWhere);

ELSEIF(contenttypeid=4 ) THEN

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `video_image_path`, `video_image_title`, `video_image_alt` FROM `video` WHERE ",@strWhere);

ELSEIF(contenttypeid=5 ) THEN

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_image_path`, `audio_image_title`, `audio_image_alt` FROM `audio` WHERE ",@strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_content_by_commented_count` (IN `time_var` INT, IN `limitvalue` INT(10))  NO SQL
BEGIN
SET @query = CONCAT("select `content_id`, `content_type`, `section_id`, `title`, `hits`, `emailed`, `commented` from content_hit_history where content_type ='1' AND comment_updated_on > DATE_SUB(NOW(), INTERVAL ",time_var," WEEK) GROUP BY content_id ORDER BY COUNT(content_id) DESC LIMIT ", limitvalue); PREPARE stmt FROM @query; EXECUTE stmt; DEALLOCATE PREPARE stmt; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_content_by_hit_count` (IN `time_var` INT, IN `limitvalue` INT(10))  NO SQL
BEGIN

SET @query = CONCAT("select Contentid as content_id, content_type from hit_count_history where content_type ='1' AND Accessedon > DATE_SUB(NOW(), INTERVAL ",time_var," SECOND) GROUP BY Contentid ORDER BY COUNT(Contentid) DESC LIMIT ", limitvalue);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_content_hit_history` (IN `type` TINYINT(1), IN `sectionID` VARCHAR(10) CHARSET utf8, IN `cntnt_id` VARCHAR(10) CHARSET utf8, IN `from_date` VARCHAR(100) CHARSET utf8, IN `to_date` VARCHAR(100) CHARSET utf8)  NO SQL
BEGIN

set @date = '';
set @filter_date = '';

IF(type != '' && sectionID = '' && cntnt_id = '') THEN 

IF(from_date != '') THEN
set @date = CONCAT(@date, " WHERE date(published_on) >= '",from_date,"' ");
END IF;

IF(to_date != '') THEN
set @date = CONCAT(@date, " and date(published_on) <= '",to_date,"' ");
END IF;

IF(from_date != '') THEN
set @filter_date = CONCAT(@filter_date, " AND date(t1.published_on) >= '",from_date,"' ");
END IF;

IF(to_date != '') THEN
set @filter_date = CONCAT(@filter_date, " and date(t1.published_on) <= '",to_date,"' ");
END IF;


SET @query = CONCAT('select t1.content_id, t1.section_id, t1.content_type, t1.hits
from content_hit_history t1
inner join
(
  select content_id, section_id,  max(hits) max_count
  from content_hit_history ',@date,' 
  group by section_id
) t2
  on t1.section_id = t2.section_id
  and t1.hits = t2.max_count and t1.content_type = ',type,' ',@filter_date,' GROUP BY t1.section_id HAVING max(t1.hits)');

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

              
ELSEIF(type != '' && sectionID != '' && cntnt_id != '') THEN 

SELECT `content_id`, `content_type`, `section_id`, `title`, `hits` FROM `content_hit_history` WHERE `content_id` = cntnt_id AND `content_type`= type AND `section_id` = sectionID;
  
ELSE

select t1.content_id, t1.section_id, t1.content_type, t1.hits
from content_hit_history t1
inner join
(
  select content_id, section_id,  max(hits) max_count
  from content_hit_history
  group by section_id
) t2
  on t1.section_id = t2.section_id
  and t1.hits = t2.max_count;
  
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_content_type` (IN `content_type_name` VARCHAR(100) CHARSET utf8)  NO SQL
BEGIN


IF(content_type_name != '') THEN
select `contenttype_id`, `ContentTypeName` from `contenttypemaster` where `ContentTypeName` LIKE CONCAT('%', content_type_name, '%');

ELSE

select `contenttype_id`, `ContentTypeName` from `contenttypemaster`;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_content_with_check` (IN `contentids` MEDIUMTEXT CHARSET utf8, IN `content_type` TINYINT(1), IN `order_condition` VARCHAR(255))  NO SQL
BEGIN



SET contentids = replace(contentids,",","','");
SET contentids = CONCAT("'",contentids,"'");

IF(content_type = 1) THEN

	SET @exequery = CONCAT("SELECT content_id,ecenic_id,section_id,section_name,parent_section_id, parent_section_name,grant_section_id,grant_parent_section_name,linked_to_columnist,publish_start_date,publish_end_date,last_updated_on,title,url,summary_html,article_page_content_html,home_page_image_path,home_page_image_title,home_page_image_alt,section_page_image_path,section_page_image_title,section_page_image_alt,article_page_image_path,article_page_image_title,article_page_image_alt,column_name,hits,tags,allow_comments,allow_pagination,agency_name,author_name,author_image_path,author_image_title,author_image_alt,country_name,state_name,city_name,no_indexed,no_follow,canonical_url,meta_Title,meta_description,section_promotion,link_to_resource,status FROM article WHERE content_id IN (",contentids,") ", order_condition);
							   
	PREPARE stmt FROM @exequery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
ELSEIF(content_type = 3) THEN

	SET @exequery = CONCAT("SELECT content_id,ecenic_id,section_id,section_name,parent_section_id,parent_section_name,grant_section_id,grant_parent_section_name,publish_start_date,last_updated_on,title,url,summary_html,first_image_path,first_image_title,first_image_alt,hits,tags,allow_comments,agency_name,author_name,country_name,state_name,city_name,no_indexed,no_follow,canonical_url,meta_Title,meta_description,status FROM gallery WHERE content_id IN (",contentids,") ", order_condition);
							   
	PREPARE stmt FROM @exequery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

ELSEIF(content_type = 4) THEN

	SET @exequery = CONCAT("SELECT content_id,ecenic_id,section_id,section_name,parent_section_id,parent_section_name,grant_section_id,grant_parent_section_name,publish_start_date,last_updated_on,title,url,summary_html,video_script,video_site,video_image_path,video_image_title,video_image_alt,hits,tags,allow_comments,agency_name,author_name,country_name,state_name,city_name,no_indexed,no_follow,canonical_url,meta_Title,meta_description,status FROM video WHERE content_id IN (",contentids,") ", order_condition);
							   
	PREPARE stmt FROM @exequery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

ELSEIF(content_type = 5) THEN

	SET @exequery = CONCAT("SELECT content_id,ecenic_id,section_id,section_name,parent_section_id,parent_section_name,grant_section_id,grant_parent_section_name,publish_start_date,last_updated_on,title,url,summary_html,audio_path,audio_image_path,audio_image_title,audio_image_alt,hits,tags,allow_comments,agency_name,author_name,country_name,state_name,city_name,no_indexed,no_follow,canonical_url,meta_Title,meta_description,status FROM audio WHERE content_id IN (",contentids,") ", order_condition);
							   
	PREPARE stmt FROM @exequery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

ELSEIF(content_type = 6) THEN

	SET @exequery = CONCAT("SELECT content_id,ecenic_id,title,url,resource_url,article_id,image_path,image_caption,image_alt,publish_start_date,last_updated_on,status FROM resources WHERE content_id IN (",contentids,") ", order_condition);
							   
	PREPARE stmt FROM @exequery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
END IF;



END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_gallerydetails` (IN `contentid` TEXT)  NO SQL
    DETERMINISTIC
BEGIN


SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `last_updated_on`,`publish_start_date`, `title`, `url`, `summary_html`, `first_image_path` AS ImagePhysicalPath, `first_image_title` AS ImageCaption, `first_image_alt` AS ImageAlt FROM gallery WHERE  `status`='P' AND `content_id` IN( ",contentid," )");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_gallery_images_by_id` (IN `gallery_id` MEDIUMINT UNSIGNED)  NO SQL
SELECT PrimaryId, content_id, gallery_image_path, gallery_image_title, gallery_image_alt, display_order FROM gallery_related_images WHERE content_id = gallery_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_gallery_per_page` (IN `contentid` LONGTEXT, IN `is_home` VARCHAR(1) CHARSET utf8, IN `start_limit` INT, IN `end_limit` INT)  NO SQL
    DETERMINISTIC
BEGIN

set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`,`last_updated_on`, `title`, `url`, `summary_html`, `first_image_path`, `first_image_title`, `first_image_alt` FROM gallery WHERE ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_hit_for_content` (IN `contentid` MEDIUMINT(8), IN `contenttype` TINYINT(1))  NO SQL
BEGIN


IF(contentid != '') THEN
SELECT `content_id`, `content_type`, `section_id`, `title`, `hits`, `emailed`, `created_on` FROM `content_hit_history` WHERE `content_id`=contentid AND `content_type`=contenttype;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_main_menu` (IN `get_id` SMALLINT)  NO SQL
BEGIN

if(get_id != '') THEN

SELECT `Section_id`,`MenuVisibility`,`SectionnameInHTML`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `URLSectionStructure` FROM (`sectionmaster`) where `Status` = 1 and `MenuVisibility`=1 and `ParentSectionID` = get_id ORDER BY `DisplayOrder` ASC;

ELSEIF(get_id = '') THEN

SELECT `Section_id`, `MenuVisibility`,`Sectionname`, `SectionnameInHTML`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `URLSectionStructure` FROM `sectionmaster` WHERE `Status` =  1 and `MenuVisibility`=1 AND `ParentSectionID` is NULL ORDER BY `DisplayOrder` ASC;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pagemaster_live_version_data` (IN `section_id` SMALLINT, IN `type` TINYINT)  NO SQL
SELECT `id`, `menuid`, `pagetype`, `Published_Version_Id` FROM `page_master` WHERE `menuid` = section_id AND `pagetype` = type$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pagemaster_using_sectionid` (IN `section_Id` INT, IN `page_Type` TINYINT)  NO SQL
BEGIN
IF(section_Id != '' && page_Type != '') THEN

SELECT 
`id`, 
`menuid`, 
`pagetype`, 
`hasTemplate`, 
`templatexml`, 
`workspace_version_id`, 
`published_templatexml`,
`templateid`,
`Header_Adscript`, 
`common_header`, 
`common_rightpanel`, 
`common_footer`, 
`locked_user_id`, 
`locked_status`, 
`Published_Version_Id`, 
`Is_Template_Committed`, 
`Createdby`, 
`Createdon`, 
`Modifiedby`, 
`Modifiedon`,
`use_parent_section_template`
FROM  page_master 
where `menuid` = section_Id AND `pagetype` = page_Type;

ELSEIF(section_Id != '') THEN
SELECT 
`id`, 
`menuid`, 
`pagetype`, 
`hasTemplate`, 
`templatexml`, 
`workspace_version_id`, 
`published_templatexml`, 
`templateid`,
`Header_Adscript`, 
`common_header`, 
`common_rightpanel`, 
`common_footer`, 
`locked_user_id`, 
`locked_status`, 
`Published_Version_Id`, 
`Is_Template_Committed`, 
`Createdby`, 
`Createdon`, 
`Modifiedby`, 
`Modifiedon`,
`use_parent_section_template`
FROM  page_master 
where `menuid` = section_Id;


ELSE

SELECT 
`id`, 
`menuid`, 
`pagetype`, 
`hasTemplate`, 
`templatexml`, 
`workspace_version_id`, 
`published_templatexml`,
`templateid`,
`Header_Adscript`, 
`common_header`, 
`common_rightpanel`, 
`common_footer`, 
`locked_user_id`, 
`locked_status`, 
`Published_Version_Id`, 
`Is_Template_Committed`, 
`Createdby`, 
`Createdon`, 
`Modifiedby`, 
`Modifiedon`,
`use_parent_section_template`
FROM  page_master;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pagetemplates` (IN `page_status` INT, IN `template_Id` INT)  NO SQL
BEGIN

IF (template_Id != '' && page_status != '') THEN

Select 
`templateid`, 
`templatename`,
`template_values`, 
`template_imagepath`, 
`template_design` 
from template_master 
where `templateid` = template_Id AND status = page_status;

ELSEIF(page_status != '') THEN

Select 
`templateid`, 
`templatename`,
`template_values`, 
`template_imagepath`, 
`template_design` 
from template_master 
where status = page_status;

ELSE

Select 
`templateid`, 
`templatename`,
`template_values`, 
`template_imagepath`, 
`template_design`,
`status` 
from template_master;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_parentsectiondetails_by_id` (IN `sectionid` SMALLINT)  NO SQL
SELECT s1.`Section_id`, s1.`Sectionname`,s1.`ParentSectionID`, s2.Sectionname as ParentSectionName FROM 

`sectionmaster` as s1 LEFT JOIN  `sectionmaster` as s2 ON s2.Section_id = s1.ParentSectionID where s1.`Section_id` = sectionid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_parent_sectionname` (IN `sectionID` MEDIUMINT)  NO SQL
select `Sectionname`,`ParentSectionID`,`IsSubSection`, `IsSeperateWebsite`, `URLSectionStructure`, `URLSectionName` from `sectionmaster` where `Section_id` IN (select `ParentSectionID` from `sectionmaster` where `Section_id`=sectionID)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_related_article_by_contentid` (IN `contentid` MEDIUMINT)  NO SQL
BEGIN

SELECT `content_id`, `contenttype`, `related_articletitle`, `related_articleurl`, `display_order` FROM `relatedcontent` WHERE  `content_id`= contentid order by `display_order` ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_RightSide_Galleries` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `selectedsectionid` MEDIUMINT)  NO SQL
Begin
IF(selectedsectionid!='')THEN
set @strWhere = CONCAT(" parent_section_id ='",selectedsectionid,"'");
END IF;



set @strWhere = CONCAT(@strWhere,order_condition);
SET @query = CONCAT("select content_id from gallery  where ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Rightside_Otherstories_Articlepage` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `content_id` MEDIUMINT)  NO SQL
Begin

IF(content_id!='')THEN
set @strWhere = CONCAT(" AND cm.content_id !=  '",content_id,"' AND s.section_id='",sectionid,"'");
END IF;

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_end_date` !='0000-00-00 00:00:00' THEN Now() BETWEEN `publish_start_date` AND `publish_end_date` ELSE  TRUE  END) ");

set @strWhere = CONCAT(@strWhere,order_condition);


set @select_string = "CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`  END AS ImageAlt,";


SET @query = CONCAT("select cm.`content_id`, cm.`section_id` AS Section_id, cm.`section_name`, cm.`parent_section_id`,cm.`parent_section_name`, cm.`linked_to_columnist`, cm.`last_updated_on`, cm.`title`, cm.`url`, cm.`summary_html`, ", @select_string ," cm.`section_promotion`, cm. `author_name`,cm. `author_image_path`,cm. `author_image_title`, cm.`author_image_alt`, cm.`status` ,s.`URLSectionStructure` as URLStructure  FROM `article` as cm LEFT JOIN `sectionmaster` As s ON s.Section_id = cm.Section_id   WHERE cm.section_promotion = 1 ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_RightSide_OtherStories_Contents_Type1` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `selectedsectionid` MEDIUMINT, IN `parentsection_id` MEDIUMINT)  NO SQL
Begin
set @strWhere =  '';

IF(selectedsectionid!='' && parentsection_id = '')THEN
set @strWhere = CONCAT("  WHERE s.Section_id=  '",selectedsectionid,"' ");
END IF;

IF(selectedsectionid!='' && parentsection_id != '')THEN
set @strWhere = CONCAT("  WHERE s.Section_id=  '",selectedsectionid,"' AND s.ParentSectionID ='",parentsection_id,"'");
END IF;

set @strWhere = CONCAT(@strWhere," AND cm.section_promotion = 1  ");

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_end_date` !='0000-00-00 00:00:00' THEN Now() BETWEEN `publish_start_date` AND `publish_end_date` ELSE  TRUE  END) ");

set @strWhere = CONCAT(@strWhere,order_condition);


set @select_string = "CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`  END AS ImageAlt,";


SET @query = CONCAT("select cm.`content_id`, cm.`section_id` AS Section_id, cm.`section_name`, cm.`parent_section_id`,cm.`parent_section_name`, cm.`linked_to_columnist`, cm.`last_updated_on`, cm.`title`, cm.`url`, cm.`summary_html`, ", @select_string ," cm.`section_promotion`, cm. `author_name`,cm. `author_image_path`,cm. `author_image_title`, cm.`author_image_alt`, cm.`status` ,s.`URLSectionStructure` as URLStructure  FROM `article` as cm LEFT JOIN `sectionmaster` As s ON s.Section_id = cm.Section_id  ",@strWhere); 

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_RightSide_OtherStories_Contents_Type2` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT)  NO SQL
Begin

set @strWhere =  '';

IF(sectionid!='')THEN
set @strWhere = CONCAT(" AND s.section_id=  '",sectionid,"' ");
END IF;

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_end_date` !='0000-00-00 00:00:00' THEN Now() BETWEEN `publish_start_date` AND `publish_end_date` ELSE  TRUE  END) ");

set @strWhere = CONCAT(@strWhere,order_condition);


set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`  END AS ImageAlt,";


SET @query = CONCAT("select cm.`content_id`, cm.`section_id` AS Section_id, cm.`section_name`, cm.`parent_section_id`,cm.`parent_section_name`, cm.`linked_to_columnist`, cm.`last_updated_on`, cm.`title`, cm.`url`, cm.`summary_html`, ", @select_string ," cm.`section_promotion`, cm. `author_name`,cm. `author_image_path`,cm. `author_image_title`, cm.`author_image_alt`, cm.`status` ,s.`URLSectionStructure` as URLStructure  FROM `article` as cm LEFT JOIN `sectionmaster` As s ON s.Section_id = cm.Section_id  WHERE cm.section_promotion = 1  ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_RightSide_OtherStories_Contents_Type3` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `parentsectionid` MEDIUMINT)  NO SQL
Begin


IF(sectionid!='')THEN
set @strWhere = CONCAT(" Section_id=  '",sectionid,"' AND parent_section_id ='",parentsectionid,"' ");
END IF;



set @strWhere = CONCAT(@strWhere,order_condition);
SET @query = CONCAT("select content_type_id from article where ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_RightSide_Videos` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `selectedsectionid` MEDIUMINT)  NO SQL
Begin
IF(selectedsectionid!='')THEN
set @strWhere = CONCAT(" parent_section_id ='",selectedsectionid,"'");
END IF;



set @strWhere = CONCAT(@strWhere,order_condition);
SET @query = CONCAT("select content_id from video  where ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_rss_section_articles` (IN `section_id` SMALLINT, IN `contenttype` TINYINT(1), IN `order_condition` VARCHAR(255))  NO SQL
BEGIN


IF(order_condition != '') THEN
set @strWhere = CONCAT(order_condition);
END IF;

IF(contenttype=1)THEN
IF(section_id!='')THEN
set @strWhere = CONCAT(" (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) AND section_id =  '",section_id,"' ", @strWhere);
END IF;
SET @query = CONCAT("SELECT `content_id`, `summary_html`, `article_page_content_html` as `articlestory`, `article_page_image_path`,`article_page_image_title`, `title`, `url`, `tags`, `agency_name`, `author_name`, `last_updated_on`  FROM `article` WHERE " ,@strWhere);
ELSEIF(contenttype=3)THEN
IF(section_id!='')THEN
set @strWhere = CONCAT(" ga.section_id =  '",section_id,"' ", @strWhere);
END IF;
SET @query = CONCAT("SELECT ga.`content_id`, ga.`last_updated_on`, ga.`title`, ga.`url`, ga.`summary_html`, ga.`first_image_path`, ga.`first_image_title`, ga.`first_image_alt`,ga.`tags`,ga.`agency_name` FROM gallery as ga WHERE " ,@strWhere);
ELSEIF(contenttype=4)THEN
IF(section_id!='')THEN
set @strWhere = CONCAT(" section_id =  '",section_id,"' ", @strWhere);
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `video_script`,  `video_image_path`, `video_image_title`, `tags`,`agency_name` FROM `video` WHERE " ,@strWhere);
ELSEIF(contenttype=5)THEN
IF(section_id!='')THEN
set @strWhere = CONCAT(" section_id =  '",section_id,"' ", @strWhere);
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_path`,  `audio_image_path`, `audio_image_title`, `tags`,`agency_name` FROM `audio` WHERE " ,@strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_rss_section_list` (IN `get_id` MEDIUMINT)  NO SQL
BEGIN

if(get_id != '') THEN

SELECT `Section_id`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `RSSFeedAllowed` FROM (`sectionmaster`) where `Status` = '1' and `ParentSectionID` = get_id AND `RSSFeedAllowed` = '1' AND `Sectionname`!="Rss"  AND `Sectionname`!="Home" ORDER BY `DisplayOrder` ASC;

ELSEIF(get_id = '') THEN

SELECT `Section_id`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `RSSFeedAllowed` FROM `sectionmaster` WHERE `Status` =  '1' AND `ParentSectionID` is NULL AND `RSSFeedAllowed` = '1' AND `Sectionname`!="Rss" AND `Sectionname`!="Home"  ORDER BY `DisplayOrder` ASC;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section` (IN `get_id` SMALLINT(6))  NO SQL
BEGIN if(get_id != '') THEN SELECT `Section_id`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`,`URLSectionStructure` FROM (`sectionmaster`) where `Status` = 1 AND `section_allowed_for_hosting` = 1 and `ParentSectionID` = get_id AND `ExternalLinkURL` = '' ORDER BY `DisplayOrder` ASC; ELSEIF(get_id = '') THEN SELECT `Section_id`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`,`URLSectionStructure` FROM `sectionmaster` WHERE `Status` = 1 AND `section_allowed_for_hosting` = 1 AND `ParentSectionID` IS NULL AND `ExternalLinkURL` = '' ORDER BY `DisplayOrder` ASC; END IF; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sectionid_by_article` (IN `contentid` MEDIUMINT)  NO SQL
SELECT `content_id`, `Section_id` as Section_id FROM `article`  WHERE `content_id` = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sectionid_by_name` (IN `sec_name` VARCHAR(50) CHARSET utf8)  NO SQL
BEGIN

IF(LOWER(sec_name) = 'home' || sec_name = 'முகப்பு' ) THEN
	SET @strWhere = CONCAT(" LOWER(`Sectionname`) LIKE 'home' OR  `Sectionname` LIKE 'முகப்பு'");
ELSE
    SET @strWhere = CONCAT(" `Sectionname`= '",sec_name,"'");
END IF;

SET @query = CONCAT("SELECT `Section_id`, `IsSubSection`, `IsSeperateWebsite`, `ParentSectionID`,  `DisplayOrder`, `Section_landing`, `URLSectionStructure`, `URLSectionName`, `MenuVisibility`, `Sectionname`,`SectionnameInHTML` FROM `sectionmaster` WHERE ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sectionid_with_names` (IN `subsec_name` VARCHAR(255) CHARSET utf8, IN `parentsec_name` VARCHAR(255) CHARSET utf8, IN `specialsec_name` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

IF(specialsec_name != '') THEN

SELECT `Section_id`, `Sectionname`,`ParentSectionID`, `IsSubSection`, `IsSeperateWebsite`,`AuthorID`,`DisplayOrder`,`SectionnameInHTML`,`URLSectionStructure` FROM `sectionmaster`
WHERE `URLSectionName`= subsec_name AND `ParentSectionID` = 
    (SELECT `Section_id` FROM `sectionmaster` WHERE `URLSectionName`= parentsec_name AND `ParentSectionID` = 
     (SELECT `Section_id` FROM `sectionmaster` WHERE `URLSectionName`= specialsec_name AND Status = 1 limit 1) AND Status = 1
    limit 1) AND Status = 1;

ELSEIF(parentsec_name != '') THEN

SELECT `Section_id`, `Sectionname`,`ParentSectionID`, `IsSubSection`, `IsSeperateWebsite`,`AuthorID`,`DisplayOrder`,`SectionnameInHTML`,`URLSectionStructure` FROM `sectionmaster`
WHERE `URLSectionName`= subsec_name AND `ParentSectionID` = 
    (SELECT `Section_id` FROM `sectionmaster` WHERE `URLSectionName`= parentsec_name and `IsSubSection`= 0 AND Status = 1 limit 1) AND Status = 1;

ELSEIF(subsec_name != '') THEN

SELECT `Section_id`, `Sectionname`,`ParentSectionID`, `IsSubSection`, `IsSeperateWebsite`,`AuthorID`,`DisplayOrder`,`SectionnameInHTML`,`URLSectionStructure` FROM `sectionmaster`
WHERE `URLSectionName`= subsec_name AND `ParentSectionID` is NULL AND Status = 1;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sectionname_by_id` (IN `sectionid` SMALLINT)  NO SQL
SELECT `Sectionname` FROM (`sectionmaster`) where `Section_id` = sectionid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_article_for_common_widgets` (IN `sectionid` INT(9), IN `widgettype` CHAR CHARSET utf8)  NO SQL
BEGIN
select * from `sectionwidgetarticle` where `section_id` = sectionid AND  `widget_type` = widgettype order by DisplayOrder asc;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_by_id` (IN `sectionid` SMALLINT)  NO SQL
SELECT `Section_id`, `Sectionname`,`ParentSectionID`,

`IsSubSection`, `IsSeperateWebsite`,`AuthorID`,	`DisplayOrder`,`SectionnameInHTML`,`URLSectionStructure`  FROM 

(`sectionmaster`) where `Section_id` = sectionid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_by_urlname` (IN `sec_name` VARCHAR(50) CHARSET utf8)  NO SQL
SELECT `Section_id`, `IsSubSection`, `IsSeperateWebsite`, `ParentSectionID`,  `DisplayOrder`, `Section_landing`, `URLSectionStructure`, `URLSectionName`, `MenuVisibility`, `Sectionname`,`SectionnameInHTML` FROM `sectionmaster`
WHERE `URLSectionName`= sec_name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_details` (IN `sectionid` MEDIUMINT)  NO SQL
SELECT *  FROM 

(`sectionmaster`) where `Section_id` = sectionid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_mapping` (IN `contentid` MEDIUMINT UNSIGNED, IN `contenttype` TINYINT UNSIGNED)  NO SQL
BEGIN



IF(contenttype = 1) THEN

SELECT content_id, section_id FROM article_section_mapping WHERE content_id = contentid;

ELSEIF(contenttype = 3) THEN

SELECT content_id, section_id FROM gallery_section_mapping WHERE content_id = contentid;

ELSEIF(contenttype = 4) THEN

SELECT content_id, section_id FROM video_section_mapping WHERE content_id = contentid;

ELSEIF(contenttype = 5) THEN

SELECT content_id, section_id FROM audio_section_mapping WHERE content_id = contentid;

END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_menudisplay` (IN `get_id` SMALLINT)  NO SQL
BEGIN



if(get_id != '') THEN

SELECT `Section_id`,`MenuVisibility`,`SectionnameInHTML`, `Sectionname`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `URLSectionStructure` FROM (`sectionmaster`) where `Status` = 1 and `ParentSectionID` = get_id ORDER BY `DisplayOrder` ASC;

ELSEIF(get_id = '') THEN

SELECT `Section_id`, `MenuVisibility`,`Sectionname`, `SectionnameInHTML`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `URLSectionStructure` FROM `sectionmaster` WHERE `Status` =  1 AND `ParentSectionID` is NULL ORDER BY `DisplayOrder` ASC;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_section_top_story` (IN `contentid` VARCHAR(10) CHARSET utf8, IN `content_typeid` TINYINT(4), IN `sectionID` VARCHAR(10) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = '';

IF(content_typeid = '3')THEN
IF(contentid!='')THEN
set @strWhere = CONCAT("ga.content_id= ",contentid," ");

set @query = CONCAT("SELECT ga.`content_id`, ga.`ecenic_id`, ga.`section_id`, ga.`section_name`, ga.`parent_section_id`, ga.`parent_section_name`, ga.`grant_section_id`, ga.`grant_parent_section_name`, ga.`publish_start_date`, ga.`last_updated_on`, ga.`title`, ga.`url`, ga.`summary_html`, ga.`first_image_path`, ga.`first_image_title`, ga.`first_image_alt`,  gr.`gallery_image_title`, gr.`gallery_image_path`, gr.`gallery_image_alt` FROM `gallery` as ga JOIN `gallery_related_images` as gr  ON ga.content_id = gr.content_id LEFT JOIN `gallery_section_mapping` as gsp ON ga.content_id = gsp.content_id WHERE ",@strWhere," ORDER by gr.`display_order` Asc");

ELSE

IF(sectionID !='' && sectionID != 0)THEN
set @strWhere = CONCAT(" WHERE gsp.section_id= ",sectionID," ");
END IF;

set @query = CONCAT("SELECT ga.`content_id`, ga.`section_id`, ga.`section_name`, ga.`title`, ga.`url`, ga.`summary_html` FROM `gallery` as ga LEFT JOIN `gallery_section_mapping` as gsp ON ga.content_id = gsp.content_id ",@strWhere,"  ORDER by ga.`publish_start_date` Desc limit 1");

END IF;

ELSEIF(content_typeid = '4')THEN

IF(contentid!='') THEN
set @strWhere = CONCAT(" v.content_id= ",contentid," ");

set @strWhere = CONCAT(@strWhere, " Order by v.publish_start_date  DESC Limit 1 ");

set @query = CONCAT("SELECT v.`content_id`, v.`section_id`, v.`section_name`, v.`parent_section_id`, v.`parent_section_name`, v.`grant_section_id`, v.`grant_parent_section_name`, v.`publish_start_date`, v.`last_updated_on`, v.`title`, v.`url`, v.`summary_html` as summaryHTML, v.`video_script` as VideoScript, v.`video_site`, v.`video_image_path`, v.`video_image_title`, v.`video_image_alt` FROM `video` as v LEFT JOIN video_section_mapping as vsp ON v.content_id = vsp.content_id WHERE ", @strWhere);

ELSE

IF(sectionID !='' && sectionID != 0)THEN
set @strWhere = CONCAT(" WHERE vsp.section_id= ",sectionID," ");
END IF;

set @strWhere = CONCAT(@strWhere, " Order by v.last_updated_on  DESC Limit 1 ");

set @query = CONCAT("SELECT v.`content_id`, v.`section_id`, v.`section_name`, v.`parent_section_id`, v.`parent_section_name`, v.`grant_section_id`, v.`grant_parent_section_name`, v.`publish_start_date`, v.`last_updated_on`, v.`title`, v.`url`, v.`summary_html` as summaryHTML, v.`video_script` as VideoScript, v.`video_site`, v.`video_image_path`, v.`video_image_title`, v.`video_image_alt` FROM `video` as v LEFT JOIN video_section_mapping as vsp ON v.content_id = vsp.content_id ", @strWhere);

END IF;

END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_shared_email_details` (IN `contentType` TINYINT, IN `contentID` MEDIUMINT, IN `order_condition` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

SET @query = CONCAT("SELECT `shared_email_id`, `content_id`, `content_type`, `name`, `from_email`, `to_email`, `message` FROM `shared_email_details` WHERE  `content_id` = ",contentID," AND `content_type` = ",contentType," " ,order_condition);



PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Stories_For_Author` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `AuthorName` VARCHAR(100))  NO SQL
Begin
IF(AuthorName!='')THEN
set @strWhere = CONCAT(" status = 'P' AND author_name= '", AuthorName,"'");
END IF;



set @strWhere = CONCAT(@strWhere,order_condition);
SET @query = CONCAT("select  content_id,section_id from article  where ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_videodetails` (IN `contentid` TEXT)  NO SQL
    DETERMINISTIC
BEGIN

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `last_updated_on`,`publish_start_date`, `title`, `url`, `summary_html`, `video_image_path` AS ImagePhysicalPath, `video_image_title` AS ImageCaption, `video_image_alt` AS ImageAlt FROM `video` WHERE `status`='P' AND `content_id` IN( ",contentid," )");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_video_per_page` (IN `contentid` LONGTEXT, IN `is_home` VARCHAR(1) CHARSET utf8, IN `start_limit` INT, IN `end_limit` INT)  NO SQL
    DETERMINISTIC
BEGIN

set @strWhere = CONCAT(" `status`='P' AND `content_id` IN( ",contentid," )");

IF(end_limit != '' && end_limit != 0) THEN
set @strWhere = CONCAT(@strWhere, "   ORDER BY FIELD(content_id, ",contentid,")   LIMIT ",start_limit,",",end_limit," ");
END IF;
SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `last_updated_on`, `title`, `url`, `summary_html`, `video_image_path`, `video_image_title`, `video_image_alt` FROM `video` WHERE ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_WidgetInstancearticles_rendering` (IN `widget_instance_id` INT(11), IN `main_section_id` MEDIUMINT(9), IN `limitvalue` VARCHAR(4) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = '';

IF(limitvalue != '') THEN
set @strWhere = CONCAT(@strWhere, " limit ",limitvalue,"  ");
END IF;

IF(main_section_id!='' && main_section_id!='0')THEN
SET @query = CONCAT("select content_id,customimage_id,content_type_id,custom_image_path,custom_image_title,custom_image_alt,custom_image_height,custom_image_width
, CustomTitle,CustomSummary FROM `widgetinstancecontent_live` WHERE `WidgetInstanceMainSection_id` = ",main_section_id," 

and `WidgetInstance_id` = ",widget_instance_id," and Status = 1 and widgetInstanceRelated_ID = 0  

group by content_id order by DisplayOrder Asc ", @strWhere);

ELSE
SET @query = CONCAT("select content_id,customimage_id,content_type_id,custom_image_path,custom_image_title,custom_image_alt,custom_image_height,custom_image_width
, CustomTitle,CustomSummary FROM `widgetinstancecontent_live` WHERE `WidgetInstanceMainSection_id` = 0 

and `WidgetInstance_id` = ",widget_instance_id," and Status = 1 and widgetInstanceRelated_ID = 0  

group by content_id order by DisplayOrder Asc ", @strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_widgetInstanceArticles_rendering_page` (IN `widget_instance_id` INT(11), IN `main_section_id` MEDIUMINT(9), IN `start_num` INT(11), IN `len` INT(9))  NO SQL
BEGIN

IF(main_section_id!='' && main_section_id!='0')THEN
select content_id,customimage_id,content_type_id,custom_image_path,custom_image_title,custom_image_alt,custom_image_height,custom_image_width
, CustomTitle,CustomSummary FROM `widgetinstancecontent_live` WHERE `WidgetInstanceMainSection_id` = main_section_id 

and `WidgetInstance_id` = widget_instance_id and Status = 1 and widgetInstanceRelated_ID = 0  

group by content_id order by DisplayOrder LIMIT start_num,len ;

ELSE
select content_id,customimage_id,content_type_id,custom_image_path,custom_image_title,custom_image_alt,custom_image_height,custom_image_width
, CustomTitle,CustomSummary FROM `widgetinstancecontent_live` WHERE `WidgetInstanceMainSection_id` = 0 

and `WidgetInstance_id` = widget_instance_id and Status = 1 and widgetInstanceRelated_ID = 0  

group by content_id order by DisplayOrder LIMIT start_num,len ;
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_WidgetInstanceRelatedarticles_rendering` (IN `widget_instance_id` INT, IN `widget_instance_main_section_id` INT, IN `widget_instance_sub_section_id` INT, IN `content_id` INT)  NO SQL
BEGIN

   
if(widget_instance_sub_section_id = '') THEN
    
select * FROM `widgetinstancecontent_live` WHERE  `WidgetInstance_id` = widget_instance_id and Status = 1 and `widgetInstanceRelated_ID` = content_id AND `WidgetInstanceMainSection_id` = 0 GROUP BY WidgetInstanceContent_ID order by 'DisplayOrder' desc;

ELSE 

select * FROM `widgetinstancecontent_live` WHERE `WidgetInstance_id` = widget_instance_id and Status = 1 and `widgetInstanceRelated_ID` = content_id AND `WidgetInstanceMainSection_id` = 0 AND `WidgetInstanceSubSection_id` IS NULL  GROUP BY WidgetInstanceContent_ID  order by 'DisplayOrder' desc;



END IF;
 

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_widget_byname` (IN `widget_name` VARCHAR(100) CHARSET utf8)  NO SQL
SELECT `widgetId`, `widgetName` FROM `widget_master` WHERE `widgetName`=widget_name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_widget_instance` (IN `Pagesectionid` MEDIUMINT, IN `Pagetype` VARCHAR(50) CHARSET utf8, IN `ContainerID` VARCHAR(50) CHARSET utf8, IN `WidgetDisplay_Order` INT, IN `instanceID` INT)  NO SQL
BEGIN

IF(instanceID ='') THEN

SELECT `WidgetInstance_id`, 
`Pagesection_id`, 
Page_version_id,
`Page_type`, 
`Container_ID`, 
`Widget_id`, 
`WidgetDisplayOrder`, 
`CustomTitle`, 
`WidgetSection_ID`, 
`AdvertisementScript`, 
`Background_Color`, 
`Maximum_Articles`, 
`RenderingMode`, 
`Hideseperatorline`,
`isSummaryRequired`,
`Createdby`, 
`Createdon`, 
`Modifiedby`, 
`Modifiedon`, 
`status`,
`publish_start_date`,
`publish_end_date`

FROM `widgetinstance_live` 

WHERE `Pagesection_id`   = Pagesectionid AND 
   `Page_type`    = Pagetype   AND 
      `Container_ID`   = ContainerID AND      
      `WidgetDisplayOrder`  = WidgetDisplay_Order AND
      `status`    = '1'
;

ELSEIF(instanceID != '') THEN

SELECT `WidgetInstance_id`, 
`Pagesection_id`, 
Page_version_id,
`Page_type`, 
`Container_ID`, 
`Widget_id`, 
`WidgetDisplayOrder`, 
`CustomTitle`, 
`WidgetSection_ID`, 
`AdvertisementScript`, 
`Background_Color`, 
`Maximum_Articles`, 
`RenderingMode`, 
`Hideseperatorline`,
`isSummaryRequired`,
`Createdby`, 
`Createdon`, 
`Modifiedby`, 
`Modifiedon`, 
`status`,
`publish_start_date`,
`publish_end_date` 

FROM `widgetinstance_live` 

WHERE `WidgetInstance_id`   = instanceID 
;
END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_widget_instance_other_stories` (IN `Pagesectionid` MEDIUMINT, IN `Pagetype` VARCHAR(50) CHARSET utf8, IN `WidgetDisplay_Order` INT, IN `section_id` INT, IN `viewmode` VARCHAR(50) CHARSET utf8, IN `widgetID` MEDIUMINT, IN `version_id` INT)  NO SQL
BEGIN

IF(section_id != 0 || section_id != '') THEN

SELECT `WidgetInstance_id`, `Pagesection_id`, `Page_type`, `Container_ID`, `Widget_id`, `WidgetDisplayOrder`, `CustomTitle`, `WidgetSection_ID`, `AdvertisementScript`, `Background_Color`, `Maximum_Articles`, `RenderingMode`, `Hideseperatorline`, `isSummaryRequired`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status` FROM `widgetinstance_live` WHERE `Pagesection_id` = Pagesectionid AND `Page_type` = Pagetype  AND `status` = '1' AND `Widget_id`= widgetID AND `WidgetSection_ID`= section_id AND `Page_version_id`= version_id ORDER BY Createdon DESC;

ELSE

SELECT `WidgetInstance_id`, `Pagesection_id`, `Page_type`, `Container_ID`, `Widget_id`, `WidgetDisplayOrder`, `CustomTitle`, `WidgetSection_ID`, `AdvertisementScript`, `Background_Color`, `Maximum_Articles`, `RenderingMode`, `Hideseperatorline`, `isSummaryRequired`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status` FROM `widgetinstance_live` WHERE `Pagesection_id` = Pagesectionid AND `Page_type` = Pagetype  AND `status` = '1' AND `Widget_id`= widgetID AND `Page_version_id`= version_id ORDER BY Createdon DESC;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_widget_mainsection_config_rendering` (IN `MainInstanceid` INT, IN `Instance_id` INT)  NO SQL
BEGIN

IF(MainInstanceid != '' && Instance_id != '') THEN

SET @strWhere = CONCAT(" wm.`WidgetInstanceMainSection_id` 	= ",MainInstanceid," AND wm.`WidgetInstance_id` = ",Instance_id,"	
ORDER BY wm.`DisplayOrder` ");

ELSEIF(MainInstanceid != '') THEN

SET @strWhere = CONCAT(" wm.`WidgetInstanceMainSection_id` = ",MainInstanceid," ORDER BY wm.`DisplayOrder` ");

ELSEIF(Instance_id != '') THEN

SET @strWhere = CONCAT(" wm.`WidgetInstance_id` = ",Instance_id," and wm.`status` = 1 ORDER BY wm.`DisplayOrder`");

END IF;

SET @query = CONCAT("SELECT wm.`WidgetInstanceMainSection_id`, wm.`WidgetInstance_id`, wm.`CustomTitle`, wm.`Section_ID`,wm.`Section_Content_Type`, wm.`DisplayOrder`, sm.`URLSectionStructure` FROM `widgetinstancemainsectionconfig_live` as wm join `sectionmaster` as sm on wm.`Section_ID` = sm.`Section_id` WHERE ", @strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_xmlpage_details` (IN `pageid` SMALLINT)  NO SQL
SELECT `menuid`, `pagetype`, `hasTemplate`, `templatexml`, `workspace_version_id`, `published_templatexml`, `templateid`, `Header_Adscript`, `common_header`, `common_rightpanel`, `common_footer`, `locked_user_id`, `locked_status`, `Published_Version_Id`, `Is_Template_Committed` FROM `page_master` WHERE id = pageid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_askprabhu_qnlist` (IN `name` VARCHAR(50) CHARSET utf8, IN `question` TEXT CHARSET utf8, IN `answerhtml` TEXT CHARSET utf8, IN `answertext` TEXT CHARSET utf8, IN `place` VARCHAR(50), IN `email` VARCHAR(50) CHARSET utf8, IN `status` CHAR(1), IN `posted` DATETIME, IN `modified` DATETIME, IN `insert_id` INT, IN `modifiedBY` INT)  NO SQL
BEGIN

DECLARE questionID INT;

SET questionID := (Select `Question_id` from `askprabhu` where `Question_id`= insert_id);

IF(questionID IS NOT NULL) THEN

Update `askprabhu` SET `AnswerInPlainText` = answertext, `AnswerInHTML` = answerhtml ,`Status` = status,`Modifiedon`= modified,`Modifiedby`= modifiedBY WHERE `Question_id`=insert_id;

ELSE

INSERT INTO askprabhu  SET `UserName`=name,`Questiontext`=question ,`AnswerInHTML` = answerhtml, `AnswerInPlainText` = answertext, `Place`=Place ,`EmailID`=email,`Status`=status,`SubmittedOn`=posted,`Modifiedon`=modified, `Question_id` = insert_id;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_poll` (IN `poll_question` VARCHAR(255) CHARSET utf8, IN `Content_ID` MEDIUMINT(9), IN `created_by` SMALLINT, IN `created_on` DATETIME, IN `imagepath` VARCHAR(255) CHARSET utf8, IN `imageTitle` VARCHAR(255) CHARSET utf8, IN `Modified_by` SMALLINT, IN `Modified_on` DATETIME, IN `option_number` MEDIUMINT, IN `text_1` VARCHAR(50) CHARSET utf8, IN `text_2` VARCHAR(50) CHARSET utf8, IN `text_3` VARCHAR(50) CHARSET utf8, IN `text_4` VARCHAR(50) CHARSET utf8, IN `text_5` VARCHAR(50) CHARSET utf8, IN `get_status` TINYINT(1), IN `imageID` MEDIUMINT, IN `img_alt` VARCHAR(255) CHARSET utf8, IN `insertid` SMALLINT)  NO SQL
insert into `pollmaster` set 
`PollQuestion`= poll_question,
`Content_ID` = Content_ID,
`Createdby` = created_by,
`Createdon` = created_on,
`image_path` = imagepath,
`image_title` = imageTitle,
`Modifiedby` = Modified_by,
`Modifiedon` = Modified_on,
`NumberOfOptions`= option_number,
`OptionText1` = text_1,
`OptionText2` = text_2,
`OptionText3` = text_3,
`OptionText4` = text_4,
`OptionText5` = text_5,
`Status` = get_status,
`image_id` = imageID,
`image_alt` = img_alt,
`Poll_id` =  insertid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_poll_result` (IN `option1` MEDIUMINT, IN `option2` MEDIUMINT, IN `option3` MEDIUMINT, IN `option4` MEDIUMINT, IN `option5` MEDIUMINT, IN `get_poll_id` MEDIUMINT, IN `get_ip` VARCHAR(50) CHARSET utf8)  NO SQL
INSERT INTO `pollresultdata`(`textvalue1`, `textvalue2`, `textvalue3`, `textvalue4`, `textvalue5`,`poll_id`) VALUES (option1, option2, option3, option4, option5, get_poll_id)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_published_article` (IN `insert_text` MEDIUMTEXT CHARSET utf8)  NO SQL
BEGIN

DECLARE exequery MEDIUMTEXT CHARACTER SET UTF8 DEFAULT NULL;
SET @exequery = replace(insert_text, ",my ", "','");
SET @exequery = replace(@exequery, "(my", "('");
SET @exequery = replace(@exequery, ")my", "')");



SET @exequery_2 = CONCAT("INSERT INTO `widgetinstancecontent_live`(`WidgetInstanceContent_ID`, `widgetInstanceRelated_ID`, `WidgetInstance_id`, `WidgetInstanceMainSection_id`, `WidgetInstanceSubSection_ID`, `Page_version_id`, `content_id`, `CustomTitle`, `CustomSummary`, `content_type_id`, `custom_image_path`, `custom_image_title`, `custom_image_alt`, `custom_image_height`, `custom_image_width`, `customimage_id`, `Image`, `Imagename`, `DisplayOrder`, `Publishedby`, `publishedon`, `UnPublishedby`, `Unpublishedon`, `Status`) VALUES ",@exequery);

PREPARE stmt FROM @exequery_2;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
 

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_published_instances` (IN `insert_text` MEDIUMTEXT CHARSET utf8)  NO SQL
BEGIN

DECLARE exequery MEDIUMTEXT CHARACTER SET UTF8 DEFAULT NULL;
SET @exequery = replace(insert_text, ",my ", "','");
SET @exequery = replace(@exequery, "(my", "('");
SET @exequery = replace(@exequery, ")my", "')");



SET @exequery_2 = CONCAT("INSERT INTO `widgetinstance_live`(`WidgetInstance_id`, `Pagesection_id`, `Page_type`, `Page_version_id`, `Container_ID`, `Widget_id`, `WidgetDisplayOrder`, `CustomTitle`, `AdvertisementScript`, `Background_Color`, `Maximum_Articles`, `WidgetSection_ID`, `RenderingMode`, `Numberofcontents`, `Hideseperatorline`, `isSummaryRequired`, `publish_start_date`, `publish_end_date`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`, `cloned_instance_reference_id`) VALUES ",@exequery);

PREPARE stmt FROM @exequery_2;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
 

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_published_mainConfig` (IN `insert_text` MEDIUMTEXT CHARSET utf8)  NO SQL
BEGIN

DECLARE exequery MEDIUMTEXT CHARACTER SET UTF8 DEFAULT NULL;
SET @exequery = replace(insert_text, ",my ", "','");
SET @exequery = replace(@exequery, "(my", "('");
SET @exequery = replace(@exequery, ")my", "')");

SET @exequery_2 = CONCAT("INSERT INTO `widgetinstancemainsectionconfig_live`(`WidgetInstanceMainSection_id`, `WidgetInstance_id`, `Page_version_id`, `CustomTitle`, `Section_ID`, `Section_Content_Type`, `DisplayOrder`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`) VALUES ",@exequery);

PREPARE stmt FROM @exequery_2;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_section_mapping` (IN `contentid` MEDIUMINT(11) UNSIGNED, IN `section_id` SMALLINT(6), IN `type` TINYINT(1))  NO SQL
BEGIN




IF(type = 1) THEN


INSERT INTO `article_section_mapping` (`content_id`, `section_id`) VALUES (contentid, section_id);

ELSEIF(type = 3) THEN


INSERT INTO `gallery_section_mapping` (`content_id`, `section_id`) VALUES (contentid, section_id);

ELSEIF(type = 4) THEN


INSERT INTO `video_section_mapping` (`content_id`, `section_id`) VALUES (contentid, section_id);

ELSEIF(type = 5) THEN


INSERT INTO `audio_section_mapping` (`content_id`, `section_id`) VALUES (contentid, section_id);

END IF;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_section_page` (IN `section_id` MEDIUMINT, IN `section_landing_no` TINYINT, IN `user_id` SMALLINT, IN `pageid1` MEDIUMINT, IN `pageid2` MEDIUMINT)  NO SQL
BEGIN

IF(section_landing_no = 1) THEN

INSERT INTO 
`page_master`(`id`, `menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (pageid1, section_id, '1', '0', user_id);


ELSEIF(section_landing_no = 2) THEN

INSERT INTO 
`page_master`(`id`, `menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (pageid1, section_id, '1', '0', user_id);

INSERT INTO 
`page_master`(`id`, `menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (pageid2, section_id, '2', '0', user_id);


END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_settings` (IN `scroll_speed` MEDIUMINT)  NO SQL
BEGIN

DECLARE total_count int;

SET total_count := (SELECT count(`settings_id`) FROM `settings`);

IF(total_count = 0 OR total_count IS NULL) THEN
INSERT INTO `settings`(`breakingNews_scrollSpeed`) VALUES (scroll_speed);

ELSE

UPDATE `settings` SET `breakingNews_scrollSpeed`= scroll_speed;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_share_email_details` (IN `content_id` MEDIUMINT, IN `content_type` TINYINT(1), IN `name` VARCHAR(255) CHARSET utf8, IN `from_email` VARCHAR(255) CHARSET utf8, IN `to_email` VARCHAR(255) CHARSET utf8, IN `message` TEXT)  NO SQL
INSERT INTO shared_email_details (
    `content_id`,
    `content_type`,
    `name`,
    `from_email`,
    `to_email`,
    `message`
    ) values (
        content_id,
        content_type,
        name,
        from_email,
        to_email,
        message
     )$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `list_out_published_cloned_children` (IN `parent_clone_id` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

SELECT
	count(wm.widgetId) As TotalCount,    
	"" AS cloned_from,
    wm.widgetName,
	REPLACE(wm.widgetfilePath, "admin/widgets/", "") AS widgetfilePath,
	wi.WidgetInstance_id,	
	
	(SELECT 
	CONCAT(wi2.RenderingMode,",",
	wi2.Maximum_Articles,",",
	wi2.publish_start_date,",",	
	wi2.publish_end_date,",",	
	wi2.status,",",
	CONCAT(REPLACE(wi2.Container_ID, "container-", ""),'-',wi2.WidgetDisplayOrder)
	) FROM `widgetinstance_live` wi2 WHERE wi2.WidgetInstance_id = wi.cloned_instance_reference_id LIMIT 0,1) AS Cloned_config,
    
	wi.Pagesection_id,
	CASE 
		WHEN wi.Pagesection_id = '10000' && wi.Page_type ='1' THEN 'Common Templates'
		WHEN wi.Pagesection_id = '10000' && wi.Page_type ='2' THEN 'Common Article Page'
		WHEN wi.Pagesection_id = '10001' && wi.Page_type ='1' THEN 'Clone widgets Templates'
		ELSE sm.Sectionname
	END AS Sectionname,
    IF(wi.Page_type ='1', 'Section Page','Article Page') as Page_type,	
    'From Live' AS PageVersionName
    
    FROM `widgetinstance_live` wi
    LEFT JOIN  `sectionmaster` sm 
    	ON sm.Section_id = wi.Pagesection_id
	LEFT JOIN `widget_master` wm
		ON wm.widgetId = wi.Widget_id
    WHERE  wi.status = 1 AND FIND_IN_SET(wi.cloned_instance_reference_id ,parent_clone_id) GROUP BY wi.cloned_instance_reference_id ORDER BY wm.widgetName ASC;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `other_stories_contents` (IN `contentID` LONGTEXT CHARSET utf8, IN `section_id` MEDIUMINT, IN `data_limit` MEDIUMINT, IN `data_offset` MEDIUMINT, IN `is_home` VARCHAR(1) CHARSET utf8, IN `contenttypeid` MEDIUMINT, IN `rendrng_mode` INT)  NO SQL
BEGIN



IF(contenttypeid=1) THEN

IF(section_id != '') THEN
set @strWhere = CONCAT(" AND asp.`section_id` =  '",section_id,"'");
END IF;


IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND asp.`content_id` NOT IN(",contentID,")");


END IF;

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_end_date` !='0000-00-00 00:00:00' THEN Now() BETWEEN `publish_start_date` AND `publish_end_date` ELSE  ((case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END))  END)  ");

set @strWhere = CONCAT(@strWhere,"ORDER BY ar.last_updated_on DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere," LIMIT ",data_limit,",",data_offset," ");
END IF;

IF(is_home='y')THEN
set @select_string = " CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_path` ELSE ar.`home_page_image_path`
  END AS ImagePhysicalPath, CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`home_page_image_title`
  END AS ImageCaption, CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_alt` ELSE ar.`home_page_image_alt`END AS ImageAlt,";
ELSE
set @select_string = " CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_path` ELSE ar.`section_page_image_path`
  END AS ImagePhysicalPath, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`section_page_image_title`
  END AS ImageCaption, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_alt` ELSE ar.`section_page_image_alt`
  END AS ImageAlt, ";
END IF;
SET @query = CONCAT("SELECT ar.`content_id`, ar.`section_id`, ar.`section_name`, ar.`parent_section_id`,ar.`parent_section_name`, ar.`linked_to_columnist`, ar.`last_updated_on`, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ," ar.`section_promotion`, ar. `author_name`,ar. `author_image_path`,ar. `author_image_title`, ar.`author_image_alt`, ar.`status` FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.`content_id`=asp.`content_id` WHERE ar.`status`='P' ",@strWhere);

ELSEIF(contenttypeid=3 ) THEN

IF(section_id != '') THEN
set @strWhere = CONCAT(" AND gsp.`section_id` =  '",section_id,"' ");
END IF;





IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND gsp.`content_id` NOT IN(",contentID,")");


END IF;

set @strWhere = CONCAT(@strWhere,"ORDER BY  gy.last_updated_on DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere,"  LIMIT ",data_limit,",",data_offset," ");
END IF;

SET @query = CONCAT("SELECT gy.`content_id`,  gy.`section_id`,  gy.`section_name`,  gy.`parent_section_id`,  gy.`parent_section_name`, gy.`last_updated_on`,  gy.`title`,  gy.`url`,  gy.`summary_html`,  gy.`first_image_path`,  gy.`first_image_title` ,  gy.`first_image_alt` FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as gy  ON gy.`content_id`=gsp.`content_id`  WHERE gy.`status`='P' ",@strWhere);

ELSE

IF(section_id != '') THEN
set @strWhere = CONCAT(" AND  vsp.`section_id` =  '",section_id,"' ");
END IF;




IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND vsp.`content_id` NOT IN(",contentID,")");


END IF;

set @strWhere = CONCAT(@strWhere,"ORDER BY vd.last_updated_on DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere,"  LIMIT ",data_limit,",",data_offset," ");
END IF;

SET @query = CONCAT("SELECT vd.`content_id`, vd.`section_id`, vd.`section_name`, vd.`parent_section_id`, vd.`parent_section_name`, vd.`last_updated_on`, vd.`title`, vd.`url`, vd.`summary_html`, vd.`video_image_path`, vd.`video_image_title`, vd.`video_image_alt` FROM `video_section_mapping` as vsp LEFT JOIN `video` as vd ON vd.`content_id`=vsp.`content_id` WHERE vd.`status`='P' ",@strWhere);

END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `other_stories_contents_article` (IN `contentID` LONGTEXT CHARSET utf8, IN `section_id` MEDIUMINT, IN `data_limit` MEDIUMINT, IN `data_offset` MEDIUMINT, IN `is_home` VARCHAR(1) CHARSET utf8)  NO SQL
BEGIN


IF(section_id != '') THEN
set @strWhere = CONCAT(" AND asp.`section_id` =  '",section_id,"'");
END IF;

IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND asp.`content_id` NOT IN(",contentID,")");
END IF;

set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_end_date` !='0000-00-00 00:00:00' THEN Now() BETWEEN `publish_start_date` AND `publish_end_date` ELSE  ((case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END))  END)  ");

set @strWhere = CONCAT(@strWhere,"ORDER BY ar.publish_start_date DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere," LIMIT ",data_limit,",",data_offset," ");
END IF;

IF(is_home='y')THEN
set @select_string = " CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_path` ELSE ar.`home_page_image_path`
  END AS ImagePhysicalPath, CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`home_page_image_title`
  END AS ImageCaption, CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_alt` ELSE ar.`home_page_image_alt`END AS ImageAlt ";
ELSE
set @select_string = " CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_path` ELSE ar.`section_page_image_path`
  END AS ImagePhysicalPath, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`section_page_image_title`
  END AS ImageCaption, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_alt` ELSE ar.`section_page_image_alt`
  END AS ImageAlt ";
END IF;
SET @query = CONCAT("SELECT ar.`content_id`, ar.publish_start_date, ar.article_page_content_html, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ," FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.`content_id`=asp.`content_id` WHERE ar.`status`='P' ",@strWhere);



PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `other_stories_contents_audio` (IN `contentID` LONGTEXT CHARSET utf8, IN `section_id` MEDIUMINT, IN `data_limit` MEDIUMINT, IN `data_offset` MEDIUMINT)  NO SQL
BEGIN

set @strWhere = '';

IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND adsp.`content_id` NOT IN(",contentID,")");
END IF;

set @strWhere = CONCAT(@strWhere,"ORDER BY ad.publish_start_date DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere," LIMIT ",data_limit,",",data_offset," ");
END IF;

SET @query = CONCAT("SELECT ad.`content_id`,  ad.`publish_start_date`, ad.`title`, ad.`url`, ad.`summary_html`, ad.`audio_image_path` AS ImagePhysicalPath, ad.`audio_image_title` AS ImageCaption, ad.`audio_image_alt` AS ImageAlt FROM `audio_section_mapping` as adsp LEFT JOIN `audio` as ad ON ad.content_id = adsp.content_id  WHERE ad.`status` = 'P' ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `other_stories_contents_gallery` (IN `contentID` LONGTEXT CHARSET utf8, IN `section_id` MEDIUMINT, IN `data_limit` MEDIUMINT, IN `data_offset` MEDIUMINT)  NO SQL
BEGIN

IF(section_id != '') THEN
set @strWhere = CONCAT(" AND gsp.`section_id` =  '",section_id,"' ");
END IF;

IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND gsp.`content_id` NOT IN(",contentID,")");
END IF;

set @strWhere = CONCAT(@strWhere,"ORDER BY  gy.publish_start_date DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere,"  LIMIT ",data_limit,",",data_offset," ");
END IF;

SET @query = CONCAT("SELECT gy.`content_id`, gy.publish_start_date, gy.`title`,  gy.`url`,   gy.`first_image_path`,  gy.`first_image_title` ,  gy.`first_image_alt` FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as gy  ON gy.`content_id`=gsp.`content_id`  WHERE gy.`status`='P' ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `other_stories_contents_video` (IN `contentID` LONGTEXT CHARSET utf8, IN `section_id` MEDIUMINT, IN `data_limit` MEDIUMINT, IN `data_offset` MEDIUMINT)  NO SQL
BEGIN

IF(section_id != '') THEN
set @strWhere = CONCAT(" AND  vsp.`section_id` =  '",section_id,"' ");
END IF;

IF(contentID != '') THEN
set @strWhere = CONCAT(@strWhere," AND vsp.`content_id` NOT IN(",contentID,")");
END IF;

set @strWhere = CONCAT(@strWhere,"ORDER BY vd.publish_start_date DESC ");

IF(data_offset != "") THEN
set @strWhere = CONCAT(@strWhere,"  LIMIT ",data_limit,",",data_offset," ");
END IF;

SET @query = CONCAT("SELECT vd.`content_id`, vd.publish_start_date, vd.`title`, vd.`url`, vd.`video_image_path`, vd.`video_image_title`, vd.`video_image_alt` FROM `video_section_mapping` as vsp LEFT JOIN `video` as vd ON vd.`content_id`=vsp.`content_id` WHERE vd.`status`='P' ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `publish_breaking_news` (IN `news_title` VARCHAR(500) CHARSET utf8, IN `cntnt_id` MEDIUMINT(255), IN `display_order` TINYINT, IN `news_id` MEDIUMINT)  NO SQL
insert into `breakingnewsmaster` set 
`Title`= news_title,
`Content_ID` = cntnt_id,
`Displayorder` = display_order,
`breakingnews_id` = news_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `publish_commonwidget_articles` (IN `contentId` MEDIUMINT, IN `custom_title` VARCHAR(255) CHARSET utf8, IN `custom_summary` TEXT CHARSET utf8, IN `display_order` SMALLINT, IN `sectionID` SMALLINT, IN `widgetType` TINYINT(1), IN `img_path` VARCHAR(255) CHARSET utf8, IN `img_alt` VARCHAR(255) CHARSET utf8, IN `del_count` INT, IN `img_caption` VARCHAR(255) CHARSET utf8, IN `contenttype` TINYINT(1))  NO SQL
BEGIN

DECLARE disp_order int;
DECLARE article_order int;

IF(del_count = 0) THEN
DELETE FROM `sectionwidgetarticle` 
WHERE `section_id` = sectionID AND `widget_type`=widgettype;
END IF;

SET disp_order := (SELECT COUNT(DisplayOrder) FROM sectionwidgetarticle WHERE `widget_type`=widgetType AND `section_id`=sectionID);

IF(disp_order IS NULL) THEN
SET disp_order := 0;

END IF;

SET article_order := disp_order+1;

INSERT INTO `sectionwidgetarticle` ( `content_id`, `CustomTitle`, `CustomSummary`,  `section_id`,`widget_type`, `DisplayOrder`, `image_path`, `image_alt`, `image_caption`, `content_type`) VALUES ( contentId, custom_title, custom_summary, sectionID, widgetType, article_order, img_path, img_alt, img_caption, contenttype);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `publish_individual_instance_articles` (IN `publishing_instance_articles` MEDIUMTEXT CHARSET utf8, IN `widget_instance_id` INT, IN `version_id` INT)  NO SQL
BEGIN

DELETE FROM `widgetinstancecontent_live` 
    WHERE 
    	`WidgetInstance_id` = widget_instance_id 
    AND `Page_version_id` 	= version_id;

IF(publishing_instance_articles != '') THEN    

    CALL insert_published_article(publishing_instance_articles);    
    
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `publish_only_advertisements` (IN `version_id` INT, IN `header_adv_script` TEXT CHARSET utf8, IN `publishing_widget_instances` MEDIUMTEXT CHARSET utf8, IN `publishing_adv_mainConfig` MEDIUMTEXT CHARSET utf8, IN `published_page_section_id` SMALLINT, IN `published_page_section_type` TINYINT(1))  NO SQL
BEGIN

UPDATE `page_master` SET 
	`workspace_version_id`	= version_id,
	`Header_Adscript`		= header_adv_script
WHERE `menuid`= published_page_section_id AND `pagetype`= published_page_section_type;

IF(version_id != '') THEN

DELETE FROM `widgetinstancemainsectionconfig_live` 
WHERE `WidgetInstanceMainSection_live_id` IN
(SELECT * FROM(SELECT 
	wmsc.`WidgetInstanceMainSection_live_id`
	FROM `widgetinstance_live` wi  
    RIGHT JOIN `widgetinstancemainsectionconfig_live` wmsc 
    	ON wmsc.WidgetInstance_id = wi.WidgetInstance_id
     	WHERE wi.`Page_version_id`= version_id AND wi.status = 1 AND wi.Widget_id = 5 )tblTmp);
        

DELETE FROM `widgetinstance_live` 
WHERE `WidgetInstancelive_id` IN
(SELECT * FROM (SELECT 
	wi.`WidgetInstancelive_id`
	FROM `widgetinstance_live` wi 
	WHERE wi.`Page_version_id`= version_id AND wi.status = 1  AND wi.Widget_id = 5 )tblTmp);

END IF;

IF(publishing_widget_instances != '') THEN

 CALL insert_published_instances(publishing_widget_instances);
END IF;

IF(publishing_adv_mainConfig != '') THEN

 CALL insert_published_mainConfig(publishing_adv_mainConfig);
END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `remodal_content_details_live` (IN `contentid` MEDIUMINT, IN `contenttypeid` TINYINT(1))  NO SQL
BEGIN

IF(contenttypeid=1) THEN

SELECT `content_id`, `section_id`, `section_name`, `section_name_html`, `parent_section_id`, `parent_section_name`, `parent_section_name_html`, `grant_section_id`, `grant_parent_section_name`, `grant_parent_section_name_html`, `linked_to_columnist`, `publish_on`, `last_updated_on`, `title`, `url_title`, `url`, `summary_plain_text`, `summary_html`, `article_page_content_html`, `home_page_image_path`, `home_page_image_title`, `home_page_image_alt`, `home_page_image_height`, `home_page_image_width`, `article_page_image_path`, `article_page_image_title`, `article_page_image_alt`, `article_page_image_height`, `article_page_image_width`, `topic_name`, `emailed`, `hits`, `tags`, `allow_social_button`, `allow_comments`, `agency_name`, `addto_opengraphtags`, `addto_twittercards`, `addto_schemeorggplus`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `image_available` FROM `article` WHERE content_id =contentid;


elseIF(contenttypeid=3) THEN

SELECT ga.`content_id`, ga.`section_id`, ga.`section_name`, ga.`section_name_html`, ga.`parent_section_id`, ga.`parent_section_name`, ga.`parent_section_name_html`, ga.`grant_section_id`, ga.`grant_parent_section_name`, ga.`grant_parent_section_name_html`, ga.`linked_to_columnist`, ga.`publish_on`, ga.`last_updated_on`, ga.`title`, ga.`url_title`, ga.`summary_plain_text`, ga.`summary_html`, ga.`first_image_path`, ga.`first_image_title`, ga.`first_image_alt`, ga.`first_image_height`, ga.`first_image_width`, ga.`emailed`, ga.`hits`, ga.`tags`, ga.`allow_social_button`, ga.`allow_comments`, ga.`agency_name`, ga.`author_name`, ga.`addto_opengraphtags`, ga.`addto_twittercards`, ga.`addto_schemeorggplus`, ga.`no_indexed`, ga.`no_follow`, ga.`canonical_url`, ga.`meta_Title`, ga.`meta_description`, gr.* FROM `gallery` as ga JOIN `gallery_related_images` as gr  ON ga.content_id=gr.content_id WHERE ga.content_id =contentid ORDER by gr.`display_order` Desc;

elseIF(contenttypeid=4 ) THEN

SELECT `content_id`, `section_id`, `section_name`, `section_name_html`, `parent_section_id`, `parent_section_name`, `parent_section_name_html`, `grant_section_id`, `grant_parent_section_name`, `grant_parent_section_name_html`, `linked_to_columnist`, `publish_on`, `last_updated_on`, `title`, `url_title`, `url`, `summary_plain_text`, `summary_html`, `description`, `video_script`, `video_image_path`, `video_image_title`, `video_image_alt`, `video_image_height`, `video_image_width`, `emailed`, `hits`, `tags`, `allow_social_button`, `allow_comments`, `agency_name`,`addto_opengraphtags`, `addto_twittercards`, `addto_schemeorggplus`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description` FROM `video` WHERE  content_id = contentid;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_article` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `is_home` VARCHAR(1) CHARSET utf8)  NO SQL
BEGIN


IF(is_home='y')THEN
set @select_string = " CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_path` ELSE ar.`home_page_image_path`
  END AS `ImagePhysicalPath`, CASE WHEN ar.`home_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`home_page_image_title`
  END AS ImageCaption, CASE WHEN ar.home_page_image_path ='' THEN ar.`article_page_image_alt` ELSE ar.`home_page_image_alt`
  END AS ImageAlt,";
ELSE
set @select_string = " CASE WHEN ar.`section_page_image_path`='' THEN ar.`article_page_image_path` ELSE ar.`section_page_image_path`
  END AS ImagePhysicalPath, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_title` ELSE ar.`section_page_image_title`
  END AS ImageCaption, CASE WHEN ar.`section_page_image_path` ='' THEN ar.`article_page_image_alt` ELSE ar.`section_page_image_alt`
  END AS ImageAlt, ";
END IF;

set @strWhere = " ar.status = 'P' AND (case WHEN ar.`publish_start_date` !='0000-00-00 00:00:00' THEN Now() > ar.`publish_start_date` ELSE FALSE END) ";
 
IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND ( asp.`section_id` IN ( SELECT Section_id FROM `sectionmaster` WHERE IF(`ParentSectionID` !='0', `ParentSectionID`, `Section_id`) = ",sectionid," OR `Section_id` = ",sectionid," ) )  ");

END IF;

set @strWhere = CONCAT(@strWhere, "GROUP BY ar.content_id ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;
 
SET @query = CONCAT("SELECT ar.`content_id`, ar.`section_id`, ar.`section_name`, ar.`last_updated_on`, ar.`publish_start_date`, ar.`title`, ar.`url`, ar.`summary_html`, ", @select_string ,"  ar.`author_name`, ar.`author_image_path`, ar.`author_image_title`, ar.`author_image_alt` , ar.`column_name` FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.content_id = asp.content_id  WHERE ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_article_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN

SET @strWhere = '';

set @strWhere = CONCAT(@strWhere, " AND (case WHEN ar.`publish_start_date` !='0000-00-00 00:00:00' THEN Now() > ar.`publish_start_date` ELSE FALSE END) ");
 
IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  asp.`section_id` = '",sectionid,"' OR ar.`parent_section_id` = '",sectionid,"' ");

END IF;
 
set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;

SET @query = CONCAT("SELECT ar.`content_id` FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.content_id = asp.content_id  WHERE ar.status = 'P' ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_audio` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT)  NO SQL
BEGIN

SET @strWhere = " ad.`status` = 'P' ";

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere, " AND ( adsp.`section_id` IN ( SELECT Section_id FROM `sectionmaster` WHERE IF(`ParentSectionID` !='0', `ParentSectionID`, `Section_id`) = ",sectionid," OR `Section_id` = ",sectionid," ) )  ");

END IF;

set @strWhere = CONCAT(@strWhere, "GROUP BY ad.`content_id` ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

SET @query = CONCAT("SELECT ad.`content_id`, ad.`section_id`,ad.`section_name`, ad.`last_updated_on`, ad.`publish_start_date`, ad.`title`, ad.`url`, ad.`summary_html`, ad.`audio_image_path` AS ImagePhysicalPath, ad.`audio_image_title` AS ImageCaption, ad.`audio_image_alt` AS ImageAlt FROM `audio_section_mapping` as adsp LEFT JOIN `audio` as ad ON ad.content_id = adsp.content_id  WHERE  ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_audio_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN

SET @strWhere = '';

IF(sectionid != '') THEN
set @strWhere = CONCAT(@strWhere," AND  adsp.`section_id` = '",sectionid,"' OR ad.`parent_section_id` = '",sectionid,"' ");
END IF;


set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;

SET @query = CONCAT("SELECT ad.`content_id` FROM `audio_section_mapping` as adsp LEFT JOIN `audio` as ad ON ad.content_id = adsp.content_id  WHERE ad.status = 'P'  ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_content` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `status_value` CHAR(1) CHARSET utf8, IN `content_type` MEDIUMINT)  NO SQL
BEGIN


IF(content_type ='1') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" ar.status = '",status_value,"'");
END IF;

 set @strWhere = CONCAT(@strWhere," AND (case WHEN ar.`publish_start_date` !='0000-00-00 00:00:00' THEN Now() > ar.`publish_start_date` ELSE FALSE END) ");
 
IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  asp.`section_id` = '",sectionid,"' OR ar.`parent_section_id` = '",sectionid,"' ");

END IF;
 
END IF;


IF(content_type ='3') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" g.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  gsp.`section_id` = '",sectionid,"' OR g.`parent_section_id` = '",sectionid,"' ");

END IF;

END IF;

IF(content_type ='4') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" v.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  vsp.`section_id` = '",sectionid,"' OR v.`parent_section_id` = '",sectionid,"' ");

END IF;

END IF;

IF(content_type ='5') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" ad.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  adsp.`section_id` = '",sectionid,"' OR ad.`parent_section_id` = '",sectionid,"' ");

END IF;


END IF;


set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");


IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(content_type ='1') THEN 
 
SET @query = CONCAT("SELECT ar.`content_id` FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.content_id = asp.content_id  WHERE ",@strWhere);

ELSEIF(content_type ='3') THEN

SET @query = CONCAT("SELECT g.`content_id` FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as g ON g.content_id = gsp.content_id  WHERE  ",@strWhere);

ELSEIF(content_type ='4') THEN

SET @query = CONCAT("SELECT v.`content_id` FROM `video_section_mapping` as vsp LEFT JOIN `video` as v ON v.content_id = vsp.content_id  WHERE  ",@strWhere);

ELSEIF(content_type ='5') THEN

SET @query = CONCAT("SELECT ad.`content_id` FROM `audio_section_mapping` as adsp LEFT JOIN `audio` as ad ON ad.content_id = adsp.content_id  WHERE  ",@strWhere);

END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_content_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `status_value` CHAR(1) CHARSET utf8, IN `content_type` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN


IF(content_type ='1') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" ar.status = '",status_value,"'");
END IF;

 set @strWhere = CONCAT(@strWhere," AND (case WHEN ar.`publish_start_date` !='0000-00-00 00:00:00' THEN Now() > ar.`publish_start_date` ELSE FALSE END) ");
 
IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  asp.`section_id` = '",sectionid,"' OR ar.`parent_section_id` = '",sectionid,"' ");

END IF;
 
END IF;


IF(content_type ='3') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" g.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  gsp.`section_id` = '",sectionid,"' OR g.`parent_section_id` = '",sectionid,"' ");

END IF;

END IF;

IF(content_type ='4') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" v.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  vsp.`section_id` = '",sectionid,"' OR v.`parent_section_id` = '",sectionid,"' ");

END IF;

END IF;

IF(content_type ='5') THEN 

IF(status_value != '') THEN
set @strWhere = CONCAT(" ad.status = '",status_value,"'");
END IF;

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere," AND  adsp.`section_id` = '",sectionid,"' OR ad.`parent_section_id` = '",sectionid,"' ");

END IF;


END IF;


set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");



IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;

IF(content_type ='1') THEN 
 
SET @query = CONCAT("SELECT ar.`content_id` FROM `article_section_mapping` as asp LEFT JOIN `article` as ar ON ar.content_id = asp.content_id  WHERE ",@strWhere);

ELSEIF(content_type ='3') THEN

SET @query = CONCAT("SELECT g.`content_id` FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as g ON g.content_id = gsp.content_id  WHERE  ",@strWhere);

ELSEIF(content_type ='4') THEN

SET @query = CONCAT("SELECT v.`content_id` FROM `video_section_mapping` as vsp LEFT JOIN `video` as v ON v.content_id = vsp.content_id  WHERE  ",@strWhere);

ELSEIF(content_type ='5') THEN

SET @query = CONCAT("SELECT ad.`content_id` FROM `audio_section_mapping` as adsp LEFT JOIN `audio` as ad ON ad.content_id = adsp.content_id  WHERE  ",@strWhere);

END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_gallery` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT)  NO SQL
BEGIN
set @strWhere = "  g.`status` = 'P' ";

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere, "  AND ( gsp.`section_id` IN ( SELECT Section_id FROM `sectionmaster` WHERE IF(`ParentSectionID` !='0', `ParentSectionID`, `Section_id`) = ",sectionid," OR `Section_id` = ",sectionid," ) )  ");

END IF;


set @strWhere = CONCAT( @strWhere, " GROUP BY g.`content_id`  ");



IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;


SET @query = CONCAT("SELECT g.`content_id`, g.`section_id`, g.`section_name`, g.`last_updated_on`,g.`publish_start_date`, g.`title`, g.`url`, g.`summary_html`, g.`first_image_path` AS ImagePhysicalPath, g.`first_image_title` AS ImageCaption, g.`first_image_alt` AS ImageAlt FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as g ON g.content_id = gsp.content_id  WHERE  ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_gallery_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN

SET @strWhere = '';

IF(sectionid != '') THEN
set @strWhere = CONCAT(@strWhere," AND  gsp.`section_id` = '",sectionid,"' OR g.`parent_section_id` = '",sectionid,"' ");
END IF;

set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;

SET @query = CONCAT("SELECT g.`content_id` FROM `gallery_section_mapping` as gsp LEFT JOIN `gallery` as g ON g.content_id = gsp.content_id  WHERE  g.status = 'P' ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_video` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT)  NO SQL
BEGIN


SET @strWhere = " v.`status` = 'P' ";

IF(sectionid != '') THEN

set @strWhere = CONCAT(@strWhere, "  AND ( vsp.`section_id` IN ( SELECT Section_id FROM `sectionmaster` WHERE IF(`ParentSectionID` !='0', `ParentSectionID`, `Section_id`) = ",sectionid," OR `Section_id` = ",sectionid," ) )  ");

END IF;

set @strWhere = CONCAT(@strWhere, "GROUP BY v.`content_id` ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

SET @query = CONCAT("SELECT v.`content_id`, v.`section_id`, v.`section_name`, v.`last_updated_on`,v.`publish_start_date`, v.`title`, v.`url`, v.`summary_html`, v.`video_image_path` AS ImagePhysicalPath, v.`video_image_title` AS ImageCaption, v.`video_image_alt` AS ImageAlt FROM `video_section_mapping` as vsp LEFT JOIN `video` as v ON v.content_id = vsp.content_id  WHERE  ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `required_widget_auto_video_totalcount` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `sectionid` MEDIUMINT, IN `start_limt` INT, IN `length` INT)  NO SQL
BEGIN

SET @strWhere = '';

IF(sectionid != '') THEN
set @strWhere = CONCAT(@strWhere," AND  vsp.`section_id` = '",sectionid,"' OR v.`parent_section_id` = '",sectionid,"' ");
END IF;


set @strWhere = CONCAT(@strWhere, "GROUP BY content_id ");

IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;

IF(length != '' && length != 0) THEN
set @strWhere = CONCAT(@strWhere, "  LIMIT ",start_limt,",",length,"");
END IF;

SET @query = CONCAT("SELECT v.`content_id` FROM `video_section_mapping` as vsp LEFT JOIN `video` as v ON v.content_id = vsp.content_id  WHERE  v.status = 'P' ",@strWhere);

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `search_result` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `from_date` DATE, IN `to_date` DATE, IN `search_text` VARCHAR(255) CHARSET utf8, IN `search_by` VARCHAR(255) CHARSET utf8, IN `section_id` SMALLINT(6), IN `content_type` TINYINT(1), IN `search_type` VARCHAR(50) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = '';
IF(section_id!='')THEN   
set @strWhere = CONCAT(@strWhere,"`section_id` = ",section_id," ");
set @strWhere = CONCAT(@strWhere," AND `status` = 'P' ");
ELSE
set @strWhere = CONCAT("`status` = 'P' ");
END IF;

IF(from_date != '0000-00-00' && to_date != '0000-00-00')THEN
set @strWhere = CONCAT(@strWhere,"AND (date(last_updated_on) BETWEEN '",from_date,"' AND  '",to_date,"' ) ");

ELSE
IF(from_date != '0000-00-00') THEN
set @strWhere = CONCAT(@strWhere,"AND date(last_updated_on) >= '",from_date,"'");
END IF;
IF(to_date != '0000-00-00') THEN
set @strWhere = CONCAT(@strWhere,"AND date(last_updated_on) <=  '",to_date,"'");
END IF;
END IF;

IF(search_by="section" && search_text != '') THEN
set @strWhere = CONCAT(@strWhere,"AND `content_id` NOT IN( ",search_text," )" );
END IF;

IF(search_by!="section" && search_text != '') THEN

IF(search_type = 2)THEN

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (tags LIKE '%",search_text,"%' OR title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' OR article_page_content_html LIKE '%",search_text,"%')");
ELSE
set @strWhere = CONCAT(@strWhere," AND (tags LIKE '%",search_text,"%' OR title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%')");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' OR article_page_content_html LIKE '%",search_text,"%' OR tags LIKE '%",search_text,"%')");
ELSE
set @strWhere = CONCAT(@strWhere," AND (title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' )");
END IF;
END IF;

ELSEIF(search_type = 3)THEN

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (tags NOT LIKE '",search_text,"' OR title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' OR article_page_content_html NOT LIKE '",search_text,"') ");
ELSE
set @strWhere = CONCAT(@strWhere," AND (tags NOT LIKE '",search_text,"' OR title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"') ");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere,"AND ( title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' OR tags NOT LIKE '",search_text,"' OR article_page_content_html NOT LIKE '",search_text,"' ) ");
ELSE
set @strWhere = CONCAT(@strWhere,"AND ( title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' ) ");
END IF;
END IF;

ELSE

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND  (tags REGEXP ('",search_text,"') OR title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') OR article_page_content_html REGEXP ('",search_text,"') ) ");
ELSE
set @strWhere = CONCAT(@strWhere," AND  (tags REGEXP ('",search_text,"') OR title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') )");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND  (title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') OR article_page_content_html REGEXP ('",search_text,"') OR tags REGEXP ('",search_text,"') ) ");
ELSE
set @strWhere = CONCAT(@strWhere,"AND ( title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') )");
END IF;
END IF;

END IF;

END IF;


IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere, order_condition);
END IF;

IF(content_type=1) THEN
set @tablename = "`article`";
set @select_string = " CASE WHEN section_page_image_path='' THEN article_page_image_path ELSE section_page_image_path
  END AS ImagePhysicalPath, CASE WHEN section_page_image_path ='' THEN `article_page_image_title` ELSE `section_page_image_title`
  END AS ImageCaption, CASE WHEN section_page_image_path ='' THEN `article_page_image_alt` ELSE `section_page_image_alt`
  END AS ImageAlt, ";
ELSEIF(content_type=3 ) THEN
set @tablename = "`gallery`";
set @select_string = " `first_image_path` as ImagePhysicalPath, `first_image_title` as ImageCaption, `first_image_alt` as ImageAlt, ";
ELSEIF(content_type=4 ) THEN
set @tablename = "`video`";
set @select_string = " `video_image_path` as ImagePhysicalPath, `video_image_title` as ImageCaption, `video_image_alt` as ImageAlt,  ";
ELSEIF(content_type=5 ) THEN
set @tablename = "`audio`";
set @select_string = " `audio_image_path` as ImagePhysicalPath, `audio_image_title` as ImageCaption, `audio_image_alt` as ImageAlt,   ";
END IF;


SET @query = CONCAT("SELECT `content_id`,`title`,`url`, `summary_html`, ", @select_string ," `last_updated_on`, `publish_start_date` FROM ",@tablename," WHERE ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `search_result_count` (IN `order_condition` VARCHAR(255) CHARSET utf8, IN `from_date` DATE, IN `to_date` DATE, IN `search_text` VARCHAR(255) CHARSET utf8, IN `search_by` VARCHAR(255) CHARSET utf8, IN `section_id` SMALLINT(6), IN `content_type` TINYINT(1), IN `search_type` VARCHAR(50) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = '';
IF(section_id!='')THEN   
set @strWhere = CONCAT(@strWhere,"`section_id` = ",section_id," ");
set @strWhere = CONCAT(@strWhere," AND `status` = 'P' ");
ELSE
set @strWhere = CONCAT("`status` = 'P' ");
END IF;

IF(from_date != '0000-00-00' && to_date != '0000-00-00')THEN
set @strWhere = CONCAT(@strWhere,"AND (date(last_updated_on) BETWEEN '",from_date,"' AND  '",to_date,"' ) ");

ELSE
IF(from_date != '0000-00-00') THEN
set @strWhere = CONCAT(@strWhere,"AND date(last_updated_on) >= '",from_date,"'");
END IF;
IF(to_date != '0000-00-00') THEN
set @strWhere = CONCAT(@strWhere,"AND date(last_updated_on) <=  '",to_date,"'");
END IF;
END IF;

IF(search_by="section" && search_text != '') THEN
set @strWhere = CONCAT(@strWhere,"AND `content_id` NOT IN( ",search_text," )" );
END IF;

IF(search_by!="section" && search_text != '') THEN

IF(search_type = 2)THEN

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (tags LIKE '%",search_text,"%' OR title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' OR article_page_content_html LIKE '%",search_text,"%')");
ELSE
set @strWhere = CONCAT(@strWhere," AND (tags LIKE '%",search_text,"%' OR title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%')");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' OR article_page_content_html LIKE '%",search_text,"%' OR tags LIKE '%",search_text,"%')");
ELSE
set @strWhere = CONCAT(@strWhere," AND (title LIKE '%",search_text,"%' OR summary_html LIKE '%",search_text,"%' )");
END IF;
END IF;

ELSEIF(search_type = 3)THEN

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND (tags NOT LIKE '",search_text,"' OR title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' OR article_page_content_html NOT LIKE '",search_text,"') ");
ELSE
set @strWhere = CONCAT(@strWhere," AND (tags NOT LIKE '",search_text,"' OR title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"') ");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere,"AND ( title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' OR tags NOT LIKE '",search_text,"' OR article_page_content_html NOT LIKE '",search_text,"' ) ");
ELSE
set @strWhere = CONCAT(@strWhere,"AND ( title NOT LIKE '",search_text,"' OR summary_html NOT LIKE '",search_text,"' ) ");
END IF;
END IF;

ELSE

IF(search_by = 'Tag') THEN
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND  (tags REGEXP ('",search_text,"') OR title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') OR article_page_content_html REGEXP ('",search_text,"') ) ");
ELSE
set @strWhere = CONCAT(@strWhere," AND  (tags REGEXP ('",search_text,"') OR title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') )");
END IF;
ELSE
IF(content_type=1) THEN
set @strWhere = CONCAT(@strWhere," AND  (title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') OR article_page_content_html REGEXP ('",search_text,"') OR tags REGEXP ('",search_text,"') ) ");
ELSE
set @strWhere = CONCAT(@strWhere,"AND ( title REGEXP ('",search_text,"') OR summary_html REGEXP ('",search_text,"') )");
END IF;
END IF;

END IF;

END IF;


IF(order_condition != '') THEN
set @strWhere = CONCAT(@strWhere, order_condition);
END IF;

IF(content_type=1) THEN
set @tablename = "`article`";

ELSEIF(content_type=3 ) THEN
set @tablename = "`gallery`";

ELSEIF(content_type=4 ) THEN
set @tablename = "`video`";

ELSEIF(content_type=5 ) THEN
set @tablename = "`audio`";

END IF;


SET @query = CONCAT("SELECT `content_id` FROM ",@tablename," WHERE ",@strWhere);


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sectionland_update` (IN `parent_id` INT, IN `section_land` INT)  NO SQL
UPDATE `sectionmaster` SET `Section_landing`=section_land WHERE `Section_id`=parent_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `section_insert` (IN `txtSectionName` VARCHAR(50) CHARSET utf8, IN `chkSubSection` TINYINT(1), IN `ddSectionName` SMALLINT(9), IN `ddColumnist` SMALLINT(6), IN `optHighLight` TINYINT(1), IN `optRss` TINYINT(1), IN `txtExternalLink` VARCHAR(255) CHARSET utf8, IN `ddDisplayOrder` TINYINT(4), IN `sectionimage_path` VARCHAR(255), IN `optStatus` TINYINT(1), IN `txtMetaTitle` VARCHAR(255) CHARSET utf8, IN `txtMetaDesc` VARCHAR(255) CHARSET utf8, IN `txtMetaKeyword` VARCHAR(600) CHARSET utf8, IN `chkCrawlerNoIndex` TINYINT(1), IN `chkCrawlerNoFollow` TINYINT(1), IN `txtCanonicalUrl` VARCHAR(255) CHARSET utf8, IN `Createdby` SMALLINT(6), IN `Createdon` DATETIME, IN `Modifiedby` SMALLINT(6), IN `Modifiedon` DATETIME, IN `seperate_section` TINYINT(1), IN `visibility` TINYINT(1), IN `section_land` TINYINT(4), IN `htmlsectionname` VARCHAR(255) CHARSET utf8, IN `orders` TINYINT(1), IN `displayoption` CHAR(1) CHARSET utf8, IN `url_structure` VARCHAR(255) CHARSET utf8, IN `author_image_path` VARCHAR(255) CHARSET utf8, IN `author_biography` TEXT CHARSET utf8, IN `url_section_name` VARCHAR(255) CHARSET utf8, IN `sectionid` SMALLINT, IN `section_allowed_hosting` TINYINT)  NO SQL
BEGIN

IF(chkSubSection=1 && displayoption="C")THEN

UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder >= ddDisplayOrder AND ParentSectionID= ddSectionName;
INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`=ddSectionName ,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


ELSEIF(chkSubSection=0 && displayoption="C")THEN
UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder >= ddDisplayOrder AND ParentSectionID is NULL;
INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`=ddSectionName ,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


ELSEIF(chkSubSection=1 && displayoption="R")THEN
UPDATE sectionmaster SET DisplayOrder= orders+1 WHERE DisplayOrder = ddDisplayOrder AND ParentSectionID= ddSectionName;
INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`=ddSectionName ,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


ELSEIF(displayoption="R" && chkSubSection=0)THEN
UPDATE sectionmaster SET DisplayOrder= orders+1 WHERE DisplayOrder = ddDisplayOrder AND ParentSectionID is NULL;
INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`=ddSectionName ,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


ELSEIF(ddSectionName =0 || ddSectionName ='')THEN
INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`= NULL,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


ELSE

INSERT INTO `sectionmaster` SET `Section_id`=sectionid ,`Sectionname`=txtSectionName ,`IsSubSection`=chkSubSection ,`ParentSectionID`=ddSectionName ,`AuthorID`=ddColumnist ,`Highlight`=optHighLight ,`RSSFeedAllowed`=optRss ,`ExternalLinkURL`=txtExternalLink ,`DisplayOrder`=ddDisplayOrder, `BGImage_path`=sectionimage_path ,`Status`=optStatus ,`MetaTitle`=txtMetaTitle ,`MetaDescription`=txtMetaDesc ,`MetaKeyword`=txtMetaKeyword ,`Noindexed`=chkCrawlerNoIndex ,`Nofollow`=chkCrawlerNoFollow ,`Canonicalurl`=txtCanonicalUrl ,`Createdby`=Createdby ,`Createdon`=Createdon ,`Modifiedby`=Modifiedby ,`Modifiedon`=Modifiedon, `IsSeperateWebsite`=seperate_section,`MenuVisibility`=visibility,`Section_landing`=section_land,`SectionnameInHTML`=htmlsectionname, `URLSectionStructure`=url_structure, `AuthorImgPath`=author_image_path, `AuthorBiography`=author_biography, `URLSectionName` = url_section_name, `section_allowed_for_hosting`=section_allowed_hosting;


END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `section_update` (IN `txtSectionId` SMALLINT(6), IN `txtSectionName` VARCHAR(50) CHARSET utf8, IN `chkSubSection` TINYINT(1), IN `ddSectionName` SMALLINT(6), IN `ddColumnist` SMALLINT(6), IN `optHighLight` TINYINT(1), IN `optRss` CHAR(1) CHARSET utf8, IN `txtExternalLink` VARCHAR(255) CHARSET utf8, IN `ddDisplayOrder` TINYINT(4), IN `sectionimage_path` VARCHAR(255) CHARSET utf8, IN `optStatus` TINYINT(1), IN `txtMetaTitle` VARCHAR(255) CHARSET utf8, IN `txtMetaDesc` VARCHAR(255) CHARSET utf8, IN `txtMetaKeyword` VARCHAR(600) CHARSET utf8, IN `chkCrawlerNoIndex` TINYINT(1), IN `chkCrawlerNoFollow` TINYINT(1), IN `txtCanonicalUrl` VARCHAR(255) CHARSET utf8, IN `Modifiedby` SMALLINT(9), IN `Modifiedon` DATETIME, IN `seperate_section` TINYINT(1), IN `visibility` TINYINT, IN `section_land` TINYINT, IN `htmlsectionname` VARCHAR(255) CHARSET utf8, IN `orders` TINYINT, IN `displayoption` CHAR(10) CHARSET utf8, IN `image_remove` CHAR(1) CHARSET utf8, IN `order_do` INT, IN `url_structure` VARCHAR(255) CHARSET utf8, IN `author_image_path` VARCHAR(255) CHARSET utf8, IN `author_biography` TEXT CHARSET utf8, IN `url_section_name` VARCHAR(255) CHARSET utf8, IN `section_allowed_hosting` TINYINT)  NO SQL
BEGIN

IF(chkSubSection=1 && displayoption="C")THEN
UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder >= ddDisplayOrder AND ParentSectionID= ddSectionName;
set @strImage = CONCAT("Sectionname = '",txtSectionName,"'");
set @strImage = CONCAT(@strImage," ,IsSubSection ='",chkSubSection,"'");

IF(ddSectionName!='') THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID ='",ddSectionName,"'");
END IF;

set @strImage = CONCAT(@strImage," ,Highlight ='",optHighLight,"'");
set @strImage = CONCAT(@strImage," ,RSSFeedAllowed ='",optRss,"'");

set @strImage = CONCAT(@strImage," ,ExternalLinkURL ='",txtExternalLink,"'");
set @strImage = CONCAT(@strImage," ,DisplayOrder ='",ddDisplayOrder,"'");
set @strImage = CONCAT(@strImage," ,Status ='",optStatus,"'");
set @strImage = CONCAT(@strImage," ,MetaTitle ='",txtMetaTitle,"'");
set @strImage = CONCAT(@strImage," ,MetaDescription ='",txtMetaDesc,"'");
set @strImage = CONCAT(@strImage," ,MetaKeyword ='",txtMetaKeyword,"'");
set @strImage = CONCAT(@strImage," ,Noindexed ='",chkCrawlerNoIndex,"'");
set @strImage = CONCAT(@strImage," ,Nofollow ='",chkCrawlerNoFollow,"'");
set @strImage = CONCAT(@strImage," ,Canonicalurl ='",txtCanonicalUrl,"'");
set @strImage = CONCAT(@strImage," ,Modifiedby ='",Modifiedby,"'");
set @strImage = CONCAT(@strImage," ,Modifiedon ='",Modifiedon,"'");
set @strImage = CONCAT(@strImage," ,IsSeperateWebsite ='",seperate_section,"'");
set @strImage = CONCAT(@strImage," ,MenuVisibility ='",visibility,"'");
set @strImage = CONCAT(@strImage," ,Section_landing ='",section_land,"'");
set @strImage = CONCAT(@strImage," ,SectionnameInHTML ='",htmlsectionname,"'");
set @strImage = CONCAT(@strImage," ,URLSectionStructure ='",url_structure,"'");
set @strImage = CONCAT(@strImage," ,AuthorImgPath ='",author_image_path,"'");
set @strImage = CONCAT(@strImage," ,AuthorBiography ='",author_biography,"'");
set @strImage = CONCAT(@strImage," ,URLSectionName ='",url_section_name,"'");
set @strImage = CONCAT(@strImage," ,section_allowed_for_hosting ='",section_allowed_hosting,"'");

IF(sectionimage_path != "" or image_remove="Y" ) THEN
set @strImage = CONCAT(@strImage," ,BGImage_path ='",sectionimage_path,"'");




END IF;

IF(ddColumnist!= "")THEN
set @strImage = CONCAT(@strImage," ,AuthorID = ", ddColumnist ," ");
ELSE
set @strImage = CONCAT(@strImage," ,AuthorID = " ,'NULL');

END IF;
SET @query = CONCAT("UPDATE  sectionmaster SET ",@strImage,"  WHERE Section_id ='",txtSectionId,"'");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

ELSEIF(chkSubSection=0 && displayoption="C")THEN
UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder >= ddDisplayOrder AND ParentSectionID is NULL;
set @strImage = CONCAT(" Sectionname = '",txtSectionName,"'");
set @strImage = CONCAT(@strImage," ,IsSubSection ='",chkSubSection,"'");

IF(ddSectionName!='') THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID ='",ddSectionName,"'");
END IF;


set @strImage = CONCAT(@strImage," ,Highlight ='",optHighLight,"'");
set @strImage = CONCAT(@strImage," ,RSSFeedAllowed ='",optRss,"'");

set @strImage = CONCAT(@strImage," ,ExternalLinkURL ='",txtExternalLink,"'");
set @strImage = CONCAT(@strImage," ,DisplayOrder ='",ddDisplayOrder,"'");
set @strImage = CONCAT(@strImage," ,Status ='",optStatus,"'");
set @strImage = CONCAT(@strImage," ,MetaTitle ='",txtMetaTitle,"'");
set @strImage = CONCAT(@strImage," ,MetaDescription ='",txtMetaDesc,"'");
set @strImage = CONCAT(@strImage," ,MetaKeyword ='",txtMetaKeyword,"'");



set @strImage = CONCAT(@strImage," ,Noindexed ='",chkCrawlerNoIndex,"'");
set @strImage = CONCAT(@strImage," ,Nofollow ='",chkCrawlerNoFollow,"'");
set @strImage = CONCAT(@strImage," ,Canonicalurl ='",txtCanonicalUrl,"'");
set @strImage = CONCAT(@strImage," ,Modifiedby ='",Modifiedby,"'");
set @strImage = CONCAT(@strImage," ,Modifiedon ='",Modifiedon,"'");
set @strImage = CONCAT(@strImage," ,IsSeperateWebsite ='",seperate_section,"'");

set @strImage = CONCAT(@strImage," ,MenuVisibility ='",visibility,"'");
set @strImage = CONCAT(@strImage," ,Section_landing ='",section_land,"'");
set @strImage = CONCAT(@strImage," ,SectionnameInHTML ='",htmlsectionname,"'");
set @strImage = CONCAT(@strImage," ,URLSectionStructure ='",url_structure,"'");
set @strImage = CONCAT(@strImage," ,AuthorImgPath ='",author_image_path,"'");
set @strImage = CONCAT(@strImage," ,AuthorBiography ='",author_biography,"'");
set @strImage = CONCAT(@strImage," ,URLSectionName ='",url_section_name,"'");
set @strImage = CONCAT(@strImage," ,section_allowed_for_hosting ='",section_allowed_hosting,"'");

IF(sectionimage_path != "" or image_remove="Y" ) THEN
set @strImage = CONCAT(@strImage," ,BGImage_path ='",sectionimage_path,"'");




END IF;

IF(ddColumnist!= "")THEN
set @strImage = CONCAT(@strImage," ,AuthorID = ", ddColumnist ," ");
ELSE
set @strImage = CONCAT(@strImage," ,AuthorID = " ,'NULL');

END IF;
SET @query = CONCAT("UPDATE  sectionmaster SET ",@strImage,"  WHERE Section_id ='",txtSectionId,"'");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

ELSEIF(chkSubSection=1 && displayoption="R")THEN
UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder > ddDisplayOrder AND ParentSectionID= ddSectionName;

set @strImage = CONCAT(" Sectionname = '",txtSectionName,"'");
set @strImage = CONCAT(@strImage," ,IsSubSection ='",chkSubSection,"'");
IF(ddSectionName!='') THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID ='",ddSectionName,"'");
END IF;


set @strImage = CONCAT(@strImage," ,Highlight ='",optHighLight,"'");
set @strImage = CONCAT(@strImage," ,RSSFeedAllowed ='",optRss,"'");

set @strImage = CONCAT(@strImage," ,ExternalLinkURL ='",txtExternalLink,"'");
set @strImage = CONCAT(@strImage," ,DisplayOrder ='",ddDisplayOrder+1,"'");
set @strImage = CONCAT(@strImage," ,Status ='",optStatus,"'");
set @strImage = CONCAT(@strImage," ,MetaTitle ='",txtMetaTitle,"'");
set @strImage = CONCAT(@strImage," ,MetaDescription ='",txtMetaDesc,"'");
set @strImage = CONCAT(@strImage," ,MetaKeyword ='",txtMetaKeyword,"'");



set @strImage = CONCAT(@strImage," ,Noindexed ='",chkCrawlerNoIndex,"'");
set @strImage = CONCAT(@strImage," ,Nofollow ='",chkCrawlerNoFollow,"'");
set @strImage = CONCAT(@strImage," ,Canonicalurl ='",txtCanonicalUrl,"'");
set @strImage = CONCAT(@strImage," ,Modifiedby ='",Modifiedby,"'");
set @strImage = CONCAT(@strImage," ,Modifiedon ='",Modifiedon,"'");
set @strImage = CONCAT(@strImage," ,IsSeperateWebsite ='",seperate_section,"'");


set @strImage = CONCAT(@strImage," ,MenuVisibility ='",visibility,"'");
set @strImage = CONCAT(@strImage," ,Section_landing ='",section_land,"'");
set @strImage = CONCAT(@strImage," ,SectionnameInHTML ='",htmlsectionname,"'");
set @strImage = CONCAT(@strImage," ,URLSectionStructure ='",url_structure,"'");
set @strImage = CONCAT(@strImage," ,AuthorImgPath ='",author_image_path,"'");
set @strImage = CONCAT(@strImage," ,AuthorBiography ='",author_biography,"'");
set @strImage = CONCAT(@strImage," ,URLSectionName ='",url_section_name,"'");
set @strImage = CONCAT(@strImage," ,section_allowed_for_hosting ='",section_allowed_hosting,"'");

IF(sectionimage_path != "" or image_remove="Y" ) THEN
set @strImage = CONCAT(@strImage," ,BGImage_path ='",sectionimage_path,"'");




END IF;

IF(ddColumnist!= "")THEN
set @strImage = CONCAT(@strImage," ,AuthorID = ", ddColumnist ," ");
ELSE
set @strImage = CONCAT(@strImage," ,AuthorID = " ,'NULL');

END IF;
SET @query = CONCAT("UPDATE  sectionmaster SET ",@strImage,"  WHERE Section_id ='",txtSectionId,"'");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;




ELSEIF(displayoption="R" && chkSubSection=0)THEN
UPDATE sectionmaster SET DisplayOrder= DisplayOrder+1 WHERE DisplayOrder > ddDisplayOrder AND ParentSectionID is NULL;


set @strImage = CONCAT(" Sectionname = '",txtSectionName,"'");
set @strImage = CONCAT(@strImage," ,IsSubSection ='",chkSubSection,"'");

IF(ddSectionName!='') THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID ='",ddSectionName,"'");
END IF;


set @strImage = CONCAT(@strImage," ,Highlight ='",optHighLight,"'");
set @strImage = CONCAT(@strImage," ,RSSFeedAllowed ='",optRss,"'");

set @strImage = CONCAT(@strImage," ,ExternalLinkURL ='",txtExternalLink,"'");
set @strImage = CONCAT(@strImage," ,DisplayOrder ='",ddDisplayOrder+1,"'");
set @strImage = CONCAT(@strImage," ,Status ='",optStatus,"'");
set @strImage = CONCAT(@strImage," ,MetaTitle ='",txtMetaTitle,"'");
set @strImage = CONCAT(@strImage," ,MetaDescription ='",txtMetaDesc,"'");
set @strImage = CONCAT(@strImage," ,MetaKeyword ='",txtMetaKeyword,"'");



set @strImage = CONCAT(@strImage," ,Noindexed ='",chkCrawlerNoIndex,"'");
set @strImage = CONCAT(@strImage," ,Nofollow ='",chkCrawlerNoFollow,"'");
set @strImage = CONCAT(@strImage," ,Canonicalurl ='",txtCanonicalUrl,"'");
set @strImage = CONCAT(@strImage," ,Modifiedby ='",Modifiedby,"'");
set @strImage = CONCAT(@strImage," ,Modifiedon ='",Modifiedon,"'");
set @strImage = CONCAT(@strImage," ,IsSeperateWebsite ='",seperate_section,"'");
set @strImage = CONCAT(@strImage," ,MenuVisibility ='",visibility,"'");
set @strImage = CONCAT(@strImage," ,Section_landing ='",section_land,"'");
set @strImage = CONCAT(@strImage," ,SectionnameInHTML ='",htmlsectionname,"'");
set @strImage = CONCAT(@strImage," ,URLSectionStructure ='",url_structure,"'");
set @strImage = CONCAT(@strImage," ,AuthorImgPath ='",author_image_path,"'");
set @strImage = CONCAT(@strImage," ,AuthorBiography ='",author_biography,"'");
set @strImage = CONCAT(@strImage," ,URLSectionName ='",url_section_name,"'");
set @strImage = CONCAT(@strImage," ,section_allowed_for_hosting ='",section_allowed_hosting,"'");

IF(sectionimage_path != "" or image_remove="Y" ) THEN
set @strImage = CONCAT(@strImage," ,BGImage_path ='",sectionimage_path,"'");




END IF;

IF(ddColumnist!= "")THEN
set @strImage = CONCAT(@strImage," ,AuthorID = ", ddColumnist ," ");
ELSE
set @strImage = CONCAT(@strImage," ,AuthorID = " ,'NULL');

END IF;
SET @query = CONCAT("UPDATE  sectionmaster SET ",@strImage,"  WHERE Section_id ='",txtSectionId,"'");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


ELSE

set @strImage = CONCAT(" Sectionname = '",txtSectionName,"'");
set @strImage = CONCAT(@strImage," ,IsSubSection ='",chkSubSection,"'");





IF(ddSectionName IS NULL) THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID = NULL");
ELSEIF(ddSectionName!='' && ddSectionName IS NOT NULL) THEN
set @strImage = CONCAT(@strImage," ,ParentSectionID ='",ddSectionName,"'");
END IF;


set @strImage = CONCAT(@strImage," ,Highlight ='",optHighLight,"'");
set @strImage = CONCAT(@strImage," ,RSSFeedAllowed ='",optRss,"'");

set @strImage = CONCAT(@strImage," ,ExternalLinkURL ='",txtExternalLink,"'");
set @strImage = CONCAT(@strImage," ,DisplayOrder ='",ddDisplayOrder,"'");
set @strImage = CONCAT(@strImage," ,Status ='",optStatus,"'");
set @strImage = CONCAT(@strImage," ,MetaTitle ='",txtMetaTitle,"'");
set @strImage = CONCAT(@strImage," ,MetaDescription ='",txtMetaDesc,"'");
set @strImage = CONCAT(@strImage," ,MetaKeyword ='",txtMetaKeyword,"'");



set @strImage = CONCAT(@strImage," ,Noindexed ='",chkCrawlerNoIndex,"'");
set @strImage = CONCAT(@strImage," ,Nofollow ='",chkCrawlerNoFollow,"'");
set @strImage = CONCAT(@strImage," ,Canonicalurl ='",txtCanonicalUrl,"'");
set @strImage = CONCAT(@strImage," ,Modifiedby ='",Modifiedby,"'");
set @strImage = CONCAT(@strImage," ,Modifiedon ='",Modifiedon,"'");
set @strImage = CONCAT(@strImage," ,IsSeperateWebsite ='",seperate_section,"'");
set @strImage = CONCAT(@strImage," ,MenuVisibility ='",visibility,"'");
set @strImage = CONCAT(@strImage," ,Section_landing ='",section_land,"'");
set @strImage = CONCAT(@strImage," ,SectionnameInHTML ='",htmlsectionname,"'");
set @strImage = CONCAT(@strImage," ,URLSectionStructure ='",url_structure,"'");
set @strImage = CONCAT(@strImage," ,AuthorImgPath ='",author_image_path,"'");
set @strImage = CONCAT(@strImage," ,AuthorBiography ='",author_biography,"'");
set @strImage = CONCAT(@strImage," ,URLSectionName ='",url_section_name,"'");
set @strImage = CONCAT(@strImage," ,section_allowed_for_hosting ='",section_allowed_hosting,"'");

IF(sectionimage_path != "" or image_remove="Y" ) THEN
set @strImage = CONCAT(@strImage," ,BGImage_path ='",sectionimage_path,"'");






END IF;

IF(ddColumnist!= "")THEN
set @strImage = CONCAT(@strImage," ,AuthorID = ", ddColumnist ," ");
ELSE
set @strImage = CONCAT(@strImage," ,AuthorID = " ,'NULL');

END IF;
SET @query = CONCAT("UPDATE  sectionmaster SET ",@strImage,"  WHERE Section_id ='",txtSectionId,"'");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `section_urlstructure_cursor` (IN `post_section_id` SMALLINT, IN `post_url_structure` VARCHAR(255) CHARSET utf8, IN `user_id` SMALLINT)  NO SQL
BEGIN

DECLARE cursor_sub_section_id 	 SMALLINT;
DECLARE cursor_subURLSectionName VARCHAR(255) CHARACTER SET UTF8;
DECLARE subsect_changed_url_structure VARCHAR(255) CHARACTER SET UTF8;

DECLARE cursor_sub_sub_section_id 	 SMALLINT;
DECLARE cursor_sub_subURLSectionName VARCHAR(255) CHARACTER SET UTF8;
DECLARE sub_subsect_changed_url_structure VARCHAR(255) CHARACTER SET UTF8;

DECLARE done INT DEFAULT FALSE;

DECLARE change_url_structure_to VARCHAR(255) CHARACTER SET UTF8;


DECLARE updateSectionUrlStructure CURSOR FOR SELECT Section_id, URLSectionName FROM `sectionmaster` 
WHERE  ParentSectionID = post_section_id;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  SET change_url_structure_to = post_url_structure;
  OPEN updateSectionUrlStructure;
  	the_loop: LOOP
  	
    	   
           FETCH updateSectionUrlStructure INTO cursor_sub_section_id, cursor_subURLSectionName;  			
              
            IF done THEN          	            
              LEAVE the_loop;            
            END IF;
			SET subsect_changed_url_structure = CONCAT(change_url_structure_to, "/", cursor_subURLSectionName);
            UPDATE `sectionmaster` SET `Modifiedby`= user_id, `Modifiedon`= Now(), `URLSectionStructure` = subsect_changed_url_structure WHERE `Section_id` = cursor_sub_section_id;
			
			BEGIN
					DECLARE sub_sub_done INT DEFAULT FALSE;
					DECLARE updateSubSubSectionUrlStructure CURSOR FOR SELECT Section_id, URLSectionName FROM `sectionmaster` 
WHERE  ParentSectionID = cursor_sub_section_id;
					
				  DECLARE CONTINUE HANDLER FOR NOT FOUND SET sub_sub_done = TRUE;
				  OPEN updateSubSubSectionUrlStructure;
				  sub_sub_loop: LOOP
					  FETCH updateSubSubSectionUrlStructure INTO cursor_sub_sub_section_id, cursor_sub_subURLSectionName;  			
							  
						 IF sub_sub_done THEN          	            
						  LEAVE sub_sub_loop;            
						 END IF;
						 
						SET sub_subsect_changed_url_structure = CONCAT(subsect_changed_url_structure, "/", cursor_sub_subURLSectionName);
						UPDATE `sectionmaster` SET `Modifiedby`= user_id, `Modifiedon`= Now(), `URLSectionStructure` = sub_subsect_changed_url_structure WHERE `Section_id` = cursor_sub_sub_section_id;
				  
				  END LOOP sub_sub_loop;
				 
				  CLOSE updateSubSubSectionUrlStructure;        
			END;

	END LOOP the_loop;
 
  CLOSE updateSectionUrlStructure;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_active_poll_data` ()  NO SQL
select p.Poll_id, p.PollQuestion, p.image_id, p.image_path, p.image_title, p.image_alt, p.NumberOfOptions, p.OptionText1, p.OptionText2, p.OptionText3, p.OptionText4, p.OptionText5, p.Content_ID, p.Status, p.Createdby, p.Createdon, p.Modifiedby, p.Modifiedon, art.title as article_title, art.url as article_url from pollmaster  AS p LEFT JOIN article as art ON art.content_id = p.Content_ID where p.Status = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_breakingnews` ()  NO SQL
SELECT `Title`, `Content_ID` FROM `breakingnewsmaster` ORDER BY `Displayorder` ASC$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_poll_result` (IN `get_poll_id` MEDIUMINT)  NO SQL
SELECT  `poll_result_ID`, `poll_id`, `textvalue1`, `textvalue2`, `textvalue3`, `textvalue4`, `textvalue5` FROM `pollresultdata` WHERE `poll_id` = get_poll_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_section_next_article` (IN `contentid` MEDIUMINT(8), IN `sectionid` SMALLINT(6), IN `content_type` TINYINT(4), IN `order_condition` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

IF(contentid != '') THEN
set @strWhere = CONCAT("status='P' AND section_id =",sectionid," ");
set @strWhere = CONCAT(@strWhere," AND content_id > '",contentid,"'");

IF(order_condition != '') THEN
IF(content_type = '1') THEN
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END)", order_condition);
ELSE
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;
END IF;

IF(content_type = '1') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id , article_page_image_path FROM `article`  WHERE ",@strWhere);
ELSEIF(content_type = '3') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id  FROM `gallery` WHERE ",@strWhere);
ELSEIF(content_type = '4') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id ,video_image_path FROM `video` WHERE ",@strWhere);
ELSEIF(content_type = '5') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id ,audio_image_path FROM `audio` WHERE ",@strWhere);
END IF;
END IF;


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_section_previous_article` (IN `contentid` MEDIUMINT(8), IN `sectionid` SMALLINT(6), IN `content_type` TINYINT(4), IN `order_condition` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN


IF(contentid != '') THEN
set @strWhere = CONCAT("status='P' AND section_id= ",sectionid," ");
set @strWhere = CONCAT(@strWhere," AND content_id < '",contentid,"'");


IF(order_condition != '') THEN
IF(content_type = '1') THEN
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END)", order_condition);
ELSE
set @strWhere = CONCAT(@strWhere,order_condition);
END IF;
END IF;

IF(content_type = '1') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id , article_page_image_path FROM `article`  WHERE ",@strWhere);
ELSEIF(content_type = '3') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id FROM `gallery` WHERE ",@strWhere);
ELSEIF(content_type = '4') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id ,video_image_path FROM `video` WHERE ",@strWhere);
ELSEIF(content_type = '5') THEN
SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id ,audio_image_path FROM `audio` WHERE ",@strWhere);
END IF;
END IF;


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_section_recent_article` (IN `contentid` MEDIUMINT(8), IN `sectionid` SMALLINT(6), IN `content_type` TINYINT(4))  NO SQL
BEGIN

DECLARE max_id MEDIUMINT;

IF(contentid != '') THEN

IF(content_type = '1') THEN
set @strWhere = CONCAT("status = 'P' AND section_id= ",sectionid,"");

SET max_id := (SELECT max(`content_id`) FROM `article` where section_id= sectionid AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END));

IF(max_id!="NULL")THEN
IF(max_id = contentid)THEN
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ORDER BY content_id DESC LIMIT 1,1");
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id = ",max_id," ");
END IF;
ELSE
set @strWhere = CONCAT(@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END) ORDER BY content_id DESC LIMIT 1,1");
END IF;

SET @query = CONCAT("SELECT title ,url, content_id , section_id	, section_name, parent_section_id , article_page_image_path, summary_html FROM `article`  WHERE ",@strWhere);

ELSEIF(content_type = '3') THEN
set @strWhere = CONCAT("status='P' AND section_id= ",sectionid," ");

SET max_id := (SELECT max(`content_id`) FROM `gallery` where section_id= sectionid);
IF(max_id!="NULL")THEN
IF(max_id = contentid)THEN
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id = ",max_id,"");
END IF;
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
END IF;

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`,`title`, `url`, `summary_html`, `first_image_path`, `first_image_title`, `first_image_alt` FROM `gallery`WHERE ",@strWhere);
ELSEIF(content_type = '4') THEN
set @strWhere = CONCAT("status='P' AND section_id= ",sectionid," ");

SET max_id := (SELECT max(`content_id`) FROM `video` where section_id= sectionid);
IF(max_id!="NULL")THEN
IF(max_id = contentid)THEN
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id = ",max_id,"");
END IF;
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
END IF;

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`,`title`, `url`, `summary_html`, `video_image_path`, `video_image_title`, `video_image_alt` FROM `video`WHERE ",@strWhere);
ELSEIF(content_type = '5') THEN
set @strWhere = CONCAT("status='P' AND section_id= ",sectionid," ");

SET max_id := (SELECT max(`content_id`) FROM `audio` where section_id= sectionid);
IF(max_id!="NULL")THEN
IF(max_id = contentid)THEN
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id = ",max_id,"");
END IF;
ELSE
set @strWhere = CONCAT(@strWhere," AND content_id ORDER BY content_id DESC LIMIT 1,1");
END IF;

SET @query = CONCAT("SELECT `content_id`, `section_id`, `section_name`,`title`, `url`, `summary_html`, `audio_image_path`, `audio_image_title`, `audio_image_alt` FROM `audio` WHERE ",@strWhere);
END IF;
END IF;


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_section_widget_article_count` (IN `type` TINYINT, IN `sectionID` SMALLINT)  NO SQL
SELECT `content_id` FROM `sectionwidgetarticle` WHERE `widget_type` = type AND `section_id` = sectionID$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_setting` ()  NO SQL
SELECT `settings_id`, `breakingNews_scrollSpeed`, `articlecountfortotherstories`, `facebook_url`, `twitter_url`, `google_plus_url`, `rss_url`, `Daysintervalformostreadnow`, `timeintervalformostreadarticle`, `articlecountformostreadnow`, `subsection_otherstories_count_perpage`, `subsection_otherstories_autoCount`, `sitelogo`, `favouriteicon`, `send_email`, `email_to` , `magazine_list_count_perpage`,`slider_count` FROM `settings`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `settings_insert` (IN `scrollspeed` MEDIUMINT(9), IN `otherstories` TINYINT(4), IN `mostread` TINYINT(3), IN `subsec_count` TINYINT(4), IN `mostread_days` TINYINT(4), IN `mostread_time` TIME, IN `facebook` VARCHAR(255) CHARSET utf8, IN `twitter` VARCHAR(255) CHARSET utf8, IN `googleplus` VARCHAR(255) CHARSET utf8, IN `rssfeed` VARCHAR(255) CHARSET utf8, IN `logo` VARCHAR(255) CHARSET utf8, IN `fav_icon` VARCHAR(255) CHARSET utf8, IN `count_perpage` TINYINT(4), IN `sendemail` TINYINT(1), IN `emailto` VARCHAR(255) CHARSET utf8, IN `magazine` TINYINT, IN `slidecount` TINYINT(2))  NO SQL
INSERT INTO `settings` SET 
`breakingNews_scrollSpeed`=scrollspeed,
`articlecountfortotherstories`=otherstories,
`articlecountformostreadnow`=mostread,
`subsection_otherstories_autoCount`=subsec_count,
`Daysintervalformostreadnow`= mostread_days,
`timeintervalformostreadarticle`=mostread_time,
`facebook_url`=facebook,
`twitter_url`=twitter,
`google_plus_url`=googleplus,
`rss_url`=rssfeed,
`sitelogo`=logo,
`favouriteicon`=fav_icon,
`subsection_otherstories_count_perpage` =  count_perpage,
`send_email` = sendemail,
`email_to` = emailto,
`magazine_list_count_perpage` = magazine,
`slider_count` = slidecount$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `settings_update` (IN `scrollspeed` MEDIUMINT(9), IN `otherstories` TINYINT(4), IN `mostread` TINYINT(3), IN `subsec_count` TINYINT(4), IN `mostread_days` TINYINT(4), IN `mostread_time` TIME, IN `facebook` VARCHAR(255) CHARSET utf8, IN `twitter` VARCHAR(255) CHARSET utf8, IN `googleplus` VARCHAR(255) CHARSET utf8, IN `rssfeed` VARCHAR(255) CHARSET utf8, IN `logo` VARCHAR(255) CHARSET utf8, IN `fav_icon` VARCHAR(255) CHARSET utf8, IN `count_perpage` TINYINT(4), IN `sendemail` TINYINT(1), IN `emailto` VARCHAR(255), IN `magazine` TINYINT, IN `slidecount` TINYINT(2))  NO SQL
UPDATE `settings` SET 
`breakingNews_scrollSpeed`=scrollspeed,
`articlecountfortotherstories`=otherstories,
`articlecountformostreadnow`= mostread,
`subsection_otherstories_autoCount`=subsec_count,
`Daysintervalformostreadnow`= mostread_days,
`timeintervalformostreadarticle`= mostread_time,
`facebook_url`=facebook,
`twitter_url`=twitter,
`google_plus_url`=googleplus,
`rss_url`=rssfeed,
`sitelogo`=logo,
`favouriteicon`=fav_icon,
`subsection_otherstories_count_perpage` =  count_perpage,
`send_email` = sendemail,
`email_to` = emailto,
`magazine_list_count_perpage` = magazine,
`slider_count` = slidecount$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_article` (IN `contentid` MEDIUMINT(8) UNSIGNED, IN `section_id` SMALLINT(6) UNSIGNED, IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6) UNSIGNED, IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6) UNSIGNED, IN `grant_parent_section_name` VARCHAR(50) CHARSET utf8, IN `linked_to_columnist` TINYINT(1), IN `publish_start_date` DATETIME, IN `publish_end_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `article_page_content_html` MEDIUMTEXT CHARSET utf8, IN `home_page_image_path` VARCHAR(255) CHARSET utf8, IN `home_page_image_title` VARCHAR(255) CHARSET utf8, IN `home_page_image_alt` VARCHAR(255) CHARSET utf8, IN `section_page_image_path` VARCHAR(255) CHARSET utf8, IN `section_page_image_title` VARCHAR(255) CHARSET utf8, IN `section_page_image_alt` VARCHAR(255) CHARSET utf8, IN `article_page_image_path` VARCHAR(255) CHARSET utf8, IN `article_page_image_title` VARCHAR(255) CHARSET utf8, IN `article_page_image_alt` VARCHAR(255) CHARSET utf8, IN `column_name` VARCHAR(100) CHARSET utf8, IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` BOOLEAN, IN `allow_pagination` BOOLEAN, IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `author_image_path` VARCHAR(255) CHARSET utf8, IN `author_image_title` VARCHAR(255) CHARSET utf8, IN `author_image_alt` VARCHAR(255) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` BOOLEAN, IN `no_follow` BOOLEAN, IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `section_promotion` BOOLEAN, IN `status` CHAR(1))  NO SQL
UPDATE article SET 

    `section_id` = section_id,
    `section_name` = section_name,
    `parent_section_id` = parent_section_id,
    `parent_section_name` = parent_section_name,
    `grant_section_id` = grant_section_id,
    `grant_parent_section_name` = grant_parent_section_name,
    `linked_to_columnist` = linked_to_columnist,
    `publish_start_date` = publish_start_date,
    `publish_end_date` =publish_end_date,
    `last_updated_on` = last_updated_on,
    `title` = title,
    `url` = url,
    `summary_html` = summary_html,
    `article_page_content_html` = article_page_content_html,
    `home_page_image_path` = home_page_image_path,
    `home_page_image_title` = home_page_image_title,
    `home_page_image_alt` = home_page_image_alt,
    `section_page_image_path` = section_page_image_path,
    `section_page_image_title` = section_page_image_title,
    `section_page_image_alt` = section_page_image_alt,
    `article_page_image_path` = article_page_image_path,
    `article_page_image_title` = article_page_image_title,
    `article_page_image_alt` = article_page_image_alt,
     `column_name` = column_name,
     `tags` = tags,
     `allow_comments` = allow_comments,
	 `allow_pagination` = allow_pagination,
     `agency_name` = agency_name,
     `author_name` = author_name,
     `author_image_path` = author_image_path,
     `author_image_title` = author_image_title,
     `author_image_alt` = author_image_alt,
     `country_name` = country_name,
    `state_name` = state_name,
     `city_name` = city_name,
    `no_indexed` = no_indexed,
    `no_follow` = no_follow,
     `canonical_url` = canonical_url,
     `meta_Title` = meta_Title,
     `meta_description` = meta_description,
      `section_promotion` = section_promotion,
	  `status`			= status
      WHERE `content_id` = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_article_author` (IN `img_path` VARCHAR(255) CHARSET utf8, IN `img_alt` VARCHAR(255) CHARSET utf8, IN `name` VARCHAR(100) CHARSET utf8, IN `prev_name` VARCHAR(100) CHARSET utf8)  NO SQL
UPDATE `article` SET 
`author_image_path` = img_path, 
`author_image_title` = img_alt,
`author_image_alt`  = img_alt,
`author_name` =  name

WHERE `author_name` =  prev_name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_article_topic` (IN `old_topic` VARCHAR(255) CHARSET utf8, IN `new_topic` VARCHAR(255) CHARSET utf8)  NO SQL
UPDATE 

article SET column_name= new_topic WHERE column_name = old_topic$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_author_image` (IN `authorName` VARCHAR(255), IN `image_path` VARCHAR(255), IN `alt_tag` VARCHAR(255), IN `img_height` VARCHAR(4), IN `img_width` VARCHAR(4))  NO SQL
UPDATE article SET 
    
     `author_image_path` = image_path,
     `author_image_title`= alt_tag,
     `author_image_alt`= alt_tag,
     `author_image_height`= img_height,
     `author_image_width`= img_width
     
      WHERE `author_name` = authorName or `section_name` = authorName$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_gallery` (IN `contentid` MEDIUMINT(9) UNSIGNED, IN `section_id` SMALLINT(6), IN `section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_id` SMALLINT(6), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `grant_section_id` SMALLINT(6), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `first_image_path` VARCHAR(255) CHARSET utf8, IN `first_image_title` VARCHAR(255) CHARSET utf8, IN `first_image_alt` VARCHAR(255) CHARSET utf8, IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_comments` TINYINT(1), IN `agency_name` VARCHAR(50) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `no_indexed` TINYINT(1), IN `no_follow` TINYINT(1), IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8, IN `status` CHAR(1))  NO SQL
UPDATE gallery SET
		`section_id` = section_id,
		`section_name` = section_name,
		`parent_section_id` = parent_section_id,
		`parent_section_name` = parent_section_name,
		`grant_section_id` = grant_section_id,
		`grant_parent_section_name` = grant_parent_section_name,
		`publish_start_date` = publish_start_date,
		`last_updated_on` = last_updated_on,
		`title` = title,
		`url` = url,
		`summary_html` = summary_html,
		`first_image_path` = first_image_path,
		`first_image_title` = first_image_title,
		`first_image_alt` = first_image_alt,
		 `hits` = hits,
		 `tags` = tags,
		 `allow_comments` = allow_comments,
		 `agency_name` = agency_name,
		  `author_name` = author_name,
		  `country_name` = country_name,
		`state_name` = state_name,
		 `city_name` = city_name,
		 `no_indexed` = no_indexed,
		`no_indexed` = no_indexed,
		`no_follow` = no_follow,
		 `canonical_url` = canonical_url,
		 `meta_Title` = meta_Title,
		 `meta_description` = meta_description,
		 `status`	= status
		  WHERE `content_id` = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_most_hits_and_emailed` (IN `type` CHAR(1) CHARSET utf8, IN `contenttype` TINYINT(1), IN `contentid` MEDIUMINT(8), IN `contenttitle` VARCHAR(255) CHARSET utf8, IN `sectionid` SMALLINT(6), IN `publish_on` DATETIME)  NO SQL
BEGIN

IF(type="H") THEN
set @field = CONCAT("`Hits` = (`Hits`+1) ,`hits_updated_on`= now() ");

ELSEIF(type="E") THEN

set @field = CONCAT("`emailed` = (`emailed`+1) ,`email_updated_on`= now() ");

ELSEIF(type="C") THEN

set @field = CONCAT("`commented` = (`commented`+1) ,`comment_updated_on`= now() ");


END IF;
IF (SELECT COUNT(*) FROM `content_hit_history` WHERE content_id = contentid and content_type = contenttype > 0)THEN
set @field = CONCAT(@field, ', `title` = "',contenttitle,'" ');
SET @query = CONCAT("update `content_hit_history` SET ",@field," WHERE `content_id`= '",contentid,"' AND `content_type`= '",contenttype,"' ");
ELSE
set @field = CONCAT(@field, ', `created_on`= now(), `title` = "',contenttitle,'", `content_id`= "',contentid,'", `content_type`= "',contenttype,'" , `section_id`= "',sectionid,'" , `published_on`= "',publish_on,'" ');
SET @query = CONCAT("Insert into `content_hit_history` SET ",@field," ");
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pagemaster` (IN `pageid` INT, IN `hasTemplate` INT, IN `templatexml` LONGTEXT CHARSET utf8, IN `templateid` INT, IN `publish_xml` LONGTEXT CHARSET utf8, IN `header` TINYINT(1), IN `rightpanel` TINYINT(1), IN `footer` TINYINT(1), IN `commit_status` TINYINT(1), IN `version_id` INT, IN `page_section_id` SMALLINT, IN `page_type` TINYINT, IN `header_adscript` TEXT CHARSET utf8, IN `publishing_widget_instances` MEDIUMTEXT CHARSET utf8, IN `publishing_mainConfig` MEDIUMTEXT CHARSET utf8, IN `publishing_instance_articles` MEDIUMTEXT CHARSET utf8, IN `post_use_parent_section_template` TINYINT(1))  NO SQL
    COMMENT 'This procedure will update page_master table'
BEGIN

DECLARE old_version_id INT;



IF(publish_xml = "publish") THEN


SELECT `Published_Version_Id` INTO old_version_id FROM `page_master` WHERE `menuid` = page_section_id AND `pagetype` = page_type;


UPDATE `page_master` SET 
`hasTemplate` 			= hasTemplate,
`published_templatexml` = templatexml,
`templateid` 			= templateid ,
`Header_Adscript` 		= header_adscript ,
`common_header` 		= header,
`common_rightpanel` 	= rightpanel,
`common_footer` 		= footer,
`workspace_version_id` 	= version_id,
`Published_Version_Id` 	= version_id,
`Is_Template_Committed` = commit_status,
`use_parent_section_template` = post_use_parent_section_template


WHERE `menuid` = page_section_id AND `pagetype` = page_type;



	
    DELETE FROM `widgetinstancecontent_live` 
    	WHERE `Page_version_id` = old_version_id;
    
	
	DELETE FROM `widgetinstancemainsectionconfig_live` 
    	WHERE `Page_version_id` = old_version_id;

	
    DELETE FROM `widgetinstance_live` 
    	WHERE `Page_version_id` = old_version_id;

	
    
    IF(publishing_widget_instances != '') THEN    
    CALL insert_published_instances(publishing_widget_instances);
    END IF;
    
    
    IF(publishing_mainConfig != '') THEN    
    CALL insert_published_mainConfig(publishing_mainConfig);
    END IF;

	IF(publishing_instance_articles != '') THEN    
    CALL insert_published_article(publishing_instance_articles);
    END IF;
	





END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pagemaster_header_script` (IN `pageid` INT, IN `script_text` TEXT CHARSET utf8)  NO SQL
BEGIN
    UPDATE `page_master` 
    SET `Header_Adscript`= script_text 
    WHERE `id` = pageid
    ;  
   
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_poll_result` (IN `option1` MEDIUMINT, IN `option2` MEDIUMINT, IN `option3` MEDIUMINT, IN `option4` MEDIUMINT, IN `option5` MEDIUMINT, IN `get_poll_id` MEDIUMINT, IN `get_ip` VARCHAR(50) CHARSET utf8)  NO SQL
BEGIN
set @strImage = CONCAT("poll_id = '",get_poll_id,"'");


IF(option1 != "") THEN
set @strImage = CONCAT(@strImage, ",textvalue1 = '",option1,"'");
END IF;

IF(option2 != "") THEN
set @strImage = CONCAT(@strImage, ",textvalue2 = '",option2,"'");
END IF;

IF(option3 != "") THEN
set @strImage = CONCAT(@strImage, ",textvalue3 = '",option3,"'");
END IF;

IF(option4 != "") THEN
set @strImage = CONCAT(@strImage, ",textvalue4 = '",option4,"'");
END IF;

IF(option5 != "") THEN
set @strImage = CONCAT(@strImage, ",textvalue5 = '",option5,"'");
END IF;

SET @query = CONCAT("update pollresultdata SET ",@strImage," WHERE Poll_id = '",get_poll_id,"' ");

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_resources` (IN `title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `resource_url` VARCHAR(255) CHARSET utf8, IN `article_id` MEDIUMINT(9) UNSIGNED, IN `image_path` VARCHAR(255) CHARSET utf8, IN `image_caption` VARCHAR(255) CHARSET utf8, IN `image_alt` VARCHAR(255) CHARSET utf8, IN `publish_start_date` DATETIME, IN `last_updated_on` DATETIME, IN `status` CHAR(1) CHARSET utf8, IN `contentid` MEDIUMINT(9) UNSIGNED)  NO SQL
BEGIN

UPDATE resources SET
                      title =title,
                      url =url,
                      resource_url =resource_url,
                      article_id =article_id,
                      image_path = image_path,
                      image_caption = image_caption,
                      image_alt = image_alt,
                      publish_start_date = publish_start_date,
                      last_updated_on = last_updated_on,
                      status = status
                WHERE content_id = contentid;
                
                                                      
UPDATE article SET link_to_resource = 1 WHERE content_id = article_id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_section_page` (IN `section_id` MEDIUMINT, IN `pagestatus` VARCHAR(10), IN `user_id` SMALLINT, IN `landing_no` TINYINT, IN `pageids` VARCHAR(20))  NO SQL
BEGIN 
IF (pagestatus='update')THEN
UPDATE `page_master` Set `page_status`= '2', `Modifiedby`= user_id where `menuid`= section_id and `pagetype` = '2'; 
ELSEIF(pagestatus ='create' && landing_no = 1) THEN
INSERT INTO 
`page_master`(`id`,`menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (pageids,section_id, '2', '0', user_id);
ELSEIF(pagestatus ='create' && landing_no = 0) THEN
SET @id1 = SUBSTRING_INDEX(SUBSTRING_INDEX(pageids,',',1),',',-1); 
SET @id2 = SUBSTRING_INDEX(SUBSTRING_INDEX(pageids,',',1+1),',',-1); 
INSERT INTO 
`page_master`(`id`,`menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (@id1,section_id, '1', '0', user_id);
INSERT INTO 
`page_master`(`id`,`menuid`, `pagetype`,`hasTemplate`, `Createdby`) 

VALUES (@id2, section_id, '2', '0', user_id);
ELSE
UPDATE `page_master` Set `page_status`= '1', `Modifiedby`= user_id where `menuid`= section_id and `pagetype` = '2'; 
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_settings` (IN `scroll_speed` MEDIUMINT)  NO SQL
UPDATE `settings` SET `breakingNews_scrollSpeed`= scroll_speed$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_short_content_details` (IN `contentid` MEDIUMINT(9) UNSIGNED, IN `title` VARCHAR(255) CHARSET utf8, IN `tags` VARCHAR(255) CHARSET utf8, IN `summary` TEXT CHARSET utf8, IN `bodytext` MEDIUMTEXT CHARSET utf8, IN `section_id` SMALLINT(9), IN `type` TINYINT(1))  NO SQL
BEGIN


IF(type = 1) THEN

UPDATE short_article_details SET `title` = title,`tags` = tags,`summary` = summary,`bodytext` = bodytext,`section_id` = section_id WHERE content_id = contentid;

END IF;

IF(type = 3) THEN

UPDATE short_gallery_details SET `title` = title,`tags` = tags,`summary` = summary,`bodytext` = bodytext,`section_id` = section_id WHERE content_id = contentid;

END IF;

IF(type = 4) THEN

UPDATE short_video_details SET `title` = title,`tags` = tags,`summary` = summary,`bodytext` = bodytext,`section_id` = section_id WHERE content_id = contentid;

END IF;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_trending_hits` (IN `content_id` INT, IN `contenttype` TINYINT(1), IN `Accessed_on` DATETIME, IN `Accessed_from` VARCHAR(100))  NO SQL
BEGIN

DELETE FROM `hit_count_history` WHERE `id` NOT IN ( SELECT * FROM (SELECT `id` FROM `hit_count_history` order by `id` DESC Limit 0, 1000) as hit_history);

INSERT INTO hit_count_history (
    Contentid,
    content_type,
    Accessedon, 
    Accessedfrom
    )
VALUES(
   content_id,
   contenttype,
   Accessed_on,
   Accessed_from
    );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_video` (IN `contentid` INT(11), IN `section_id` INT(11), IN `section_name` VARCHAR(50) CHARSET utf8, IN `section_name_html` VARCHAR(255) CHARSET utf8, IN `parent_section_id` INT(11), IN `parent_section_name` VARCHAR(50) CHARSET utf8, IN `parent_section_name_html` VARCHAR(255) CHARSET utf8, IN `grant_section_id` INT(11), IN `grant_parent_section_name` VARCHAR(255) CHARSET utf8, IN `grant_parent_section_name_html` VARCHAR(255) CHARSET utf8, IN `linked_to_columnist` BOOLEAN, IN `publish_on` DATETIME, IN `last_updated_on` DATETIME, IN `title` VARCHAR(255) CHARSET utf8, IN `url_title` VARCHAR(255) CHARSET utf8, IN `url` VARCHAR(255) CHARSET utf8, IN `summary_plain_text` TEXT CHARSET utf8, IN `summary_html` TEXT CHARSET utf8, IN `description` TEXT CHARSET utf8, IN `video_script` TEXT CHARSET utf8, IN `video_image_path` VARCHAR(255) CHARSET utf8, IN `video_image_title` VARCHAR(255) CHARSET utf8, IN `video_image_alt` VARCHAR(255) CHARSET utf8, IN `video_image_height` VARCHAR(4) CHARSET utf8, IN `video_image_width` VARCHAR(4) CHARSET utf8, IN `emailed` INT(11), IN `hits` INT(11), IN `tags` VARCHAR(255) CHARSET utf8, IN `allow_social_button` BOOLEAN, IN `allow_comments` BOOLEAN, IN `agency_name` VARCHAR(100) CHARSET utf8, IN `author_name` VARCHAR(100) CHARSET utf8, IN `author_image_path` VARCHAR(100) CHARSET utf8, IN `author_image_title` VARCHAR(255) CHARSET utf8, IN `author_image_alt` VARCHAR(255) CHARSET utf8, IN `author_image_height` VARCHAR(4) CHARSET utf8, IN `author_image_width` VARCHAR(4) CHARSET utf8, IN `country_name` VARCHAR(100) CHARSET utf8, IN `state_name` VARCHAR(100) CHARSET utf8, IN `city_name` VARCHAR(100) CHARSET utf8, IN `addto_opengraphtags` BOOLEAN, IN `addto_twittercards` BOOLEAN, IN `addto_schemeorggplus` BOOLEAN, IN `no_indexed` BOOLEAN, IN `no_follow` BOOLEAN, IN `canonical_url` VARCHAR(255) CHARSET utf8, IN `meta_Title` VARCHAR(255) CHARSET utf8, IN `meta_description` VARCHAR(255) CHARSET utf8)  NO SQL
UPDATE video SET 
    `section_id` = section_id,
    `section_name` = section_name,
    `section_name_html` = section_name_html,
    `parent_section_id` = parent_section_id,
    `parent_section_name` = parent_section_name,
    `parent_section_name_html` = parent_section_name_html,
    `grant_section_id` = grant_section_id,
    `grant_parent_section_name` = grant_parent_section_name,
    `grant_parent_section_name_html` = 			grant_parent_section_name_html,
         `linked_to_columnist` = linked_to_columnist,
    `publish_on` = publish_on,
    `last_updated_on` = last_updated_on,
    `title` = title,
    `url_title` = url_title,
    `url` = url,
    `summary_plain_text` = summary_plain_text,
    `summary_html` = summary_html,
    `description` = description,
    `video_script` = video_script,
    `video_image_path` = video_image_path,
    `video_image_title` = video_image_title,
    `video_image_alt` = video_image_alt,
    `video_image_height` = video_image_height,
    `video_image_width` = video_image_width,
     `emailed` = emailed,
     `hits` = hits,
     `tags` = tags,
     `allow_social_button` = allow_social_button,
     `allow_comments` = allow_comments,
     `agency_name` = agency_name,
     `author_name` = author_name,
        `author_image_path` = author_image_path,
     `author_image_title` = author_image_title,
     `author_image_alt` = author_image_alt,
     `author_image_height` = author_image_height,
     `author_image_width` = author_image_width,
     `country_name` = country_name,
    `state_name` = state_name,
     `city_name` = city_name,
     `addto_opengraphtags` = addto_opengraphtags,
     `addto_twittercards` = addto_twittercards,
     `addto_schemeorggplus` = addto_schemeorggplus,
    `no_indexed` = no_indexed,
    `no_follow` = no_follow,
     `canonical_url` = canonical_url,
     `meta_Title` = meta_Title,
     `meta_description` = meta_description
      WHERE `content_id` = contentid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `widget_article_content_by_ecenic_id` (IN `contentid` MEDIUMINT(8), IN `content_typeid` TINYINT(4), IN `ecenic` TINYINT(1), IN `urlstring` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

IF(ecenic=1)THEN
set @strWhere = CONCAT("ecenic_id =",contentid," ");
ELSE
set @strWhere = CONCAT("content_id =",contentid," ");
END IF;
IF(urlstring!='')THEN
set @strWhere = CONCAT(@strWhere," AND `url` LIKE '",urlstring,"' ");
END IF;

IF(content_typeid= '1')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `linked_to_columnist`, `publish_start_date`, `publish_end_date`, `last_updated_on`, `title`, `url`, `summary_html`, `article_page_content_html`, `home_page_image_path`, `home_page_image_title`, `home_page_image_alt`, `section_page_image_path`, `section_page_image_title`, `section_page_image_alt`, `article_page_image_path`, `article_page_image_title`, `article_page_image_alt`, `column_name`, `hits`, `tags`, `allow_comments`, `allow_pagination`, `agency_name`, `author_name`, `author_image_path`, `author_image_title`, `author_image_alt`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `section_promotion`, `status` FROM article WHERE ",@strWhere);
ELSEIF(content_typeid= '3')THEN

IF(ecenic=1)THEN
set @strWhere = CONCAT("ga.`ecenic_id` =",contentid," ");
ELSE
set @strWhere = CONCAT("ga.`content_id` =",contentid," ");
END IF;
SET @query = CONCAT("SELECT ga.`content_id`, ga.`ecenic_id`, ga.`section_id`, ga.`section_name`, ga.`parent_section_id`, ga.`parent_section_name`, ga.`grant_section_id`, ga.`grant_parent_section_name`, ga.`publish_start_date`, ga.`last_updated_on`, ga.`title`, ga.`url`, ga.`summary_html`, ga.`first_image_path`, ga.`first_image_title`, ga.`first_image_alt`, ga.`hits`, ga.`tags`, ga.`allow_comments`, ga.`agency_name`, ga.`country_name`, ga.`state_name`, ga.`city_name`, ga.`no_indexed`, ga.`no_follow`, ga.`canonical_url`, ga.`meta_Title`, ga.`meta_description`, ga.`status`, gr.`gallery_image_title`, gr.`gallery_image_path`, gr.`gallery_image_alt` FROM gallery as ga JOIN gallery_related_images as gr  ON ga.content_id = gr.content_id WHERE ",@strWhere," ORDER by gr.`display_order` Desc");
ELSEIF(content_typeid= '4')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `video_script`, `video_site`, `video_image_path`, `video_image_title`, `video_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status` FROM video WHERE ",@strWhere);
ELSEIF(content_typeid= '5')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_path`, `audio_image_path`, `audio_image_title`, `audio_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status` FROM audio WHERE ",@strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `widget_article_content_by_id` (IN `contentid` MEDIUMINT(8), IN `content_typeid` TINYINT(4), IN `urlstring` VARCHAR(255) CHARSET utf8)  NO SQL
BEGIN

set @strWhere = CONCAT("content_id =",contentid," ");
IF(urlstring!='')THEN
set @strWhere = CONCAT(@strWhere," AND `url` LIKE '",urlstring,"' ");
END IF;
IF(content_typeid= '1')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `linked_to_columnist`, `publish_start_date`, `publish_end_date`, `last_updated_on`, `title`, `url`, `summary_html`, `article_page_content_html`, `home_page_image_path`, `home_page_image_title`, `home_page_image_alt`, `section_page_image_path`, `section_page_image_title`, `section_page_image_alt`, `article_page_image_path`, `article_page_image_title`, `article_page_image_alt`, `column_name`, `hits`, `tags`, `allow_comments`,`allow_pagination`, `agency_name`, `author_name`, `author_image_path`, `author_image_title`, `author_image_alt`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `section_promotion`, `status` FROM `article` WHERE ",@strWhere," AND (case WHEN `publish_start_date` !='0000-00-00 00:00:00' THEN Now() > `publish_start_date` ELSE FALSE END)");
ELSEIF(content_typeid= '3')THEN
set @GallerystrWhere = "";
IF(urlstring!='')THEN
set @GallerystrWhere = CONCAT(@GallerystrWhere," AND ga.`url` LIKE '",urlstring,"' ");
END IF;
SET @query = CONCAT("SELECT ga.`content_id`, ga.`ecenic_id`, ga.`section_id`, ga.`section_name`, ga.`parent_section_id`, ga.`parent_section_name`, ga.`grant_section_id`, ga.`grant_parent_section_name`, ga.`publish_start_date`, ga.`last_updated_on`, ga.`title`, ga.`url`, ga.`summary_html`, ga.`first_image_path`, ga.`first_image_title`, ga.`first_image_alt`, ga.`hits`, ga.`tags`, ga.`allow_comments`, ga.`agency_name`, ga.`country_name`, ga.`state_name`, ga.`city_name`, ga.`no_indexed`, ga.`no_follow`, ga.`canonical_url`, ga.`meta_Title`, ga.`meta_description`, ga.`status`, gr.`gallery_image_title`, gr.`gallery_image_path`, gr.`gallery_image_alt` FROM `gallery` as ga JOIN `gallery_related_images` as gr  ON ga.content_id = gr.content_id WHERE ga.content_id = ",contentid," ",@GallerystrWhere," ORDER by gr.`display_order` Asc");
ELSEIF(content_typeid= '4')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `video_script`, `video_site`, `video_image_path`, `video_image_title`, `video_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status` FROM `video` WHERE ",@strWhere);
ELSEIF(content_typeid= '5')THEN
SET @query = CONCAT("SELECT `content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `audio_path`, `audio_image_path`, `audio_image_title`, `audio_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status` FROM `audio` WHERE ",@strWhere);
END IF;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `ecenic_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `section_id` smallint(6) DEFAULT NULL,
  `section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parent_section_id` smallint(6) DEFAULT NULL,
  `parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grant_section_id` smallint(6) DEFAULT NULL,
  `grant_parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `linked_to_columnist` tinyint(1) NOT NULL,
  `publish_start_date` datetime NOT NULL,
  `publish_end_date` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary_html` text CHARACTER SET utf8,
  `article_page_content_html` mediumtext CHARACTER SET utf8 NOT NULL,
  `home_page_image_path` varchar(255) NOT NULL,
  `home_page_image_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `home_page_image_alt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `section_page_image_path` varchar(255) NOT NULL,
  `section_page_image_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `section_page_image_alt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `article_page_image_path` varchar(255) NOT NULL,
  `article_page_image_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `article_page_image_alt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `column_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hits` mediumtext,
  `tags` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `allow_pagination` tinyint(1) DEFAULT '0' COMMENT '1- allow, 0 - not allow',
  `agency_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `author_image_path` varchar(255) NOT NULL,
  `author_image_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `author_image_alt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country_name` varchar(100) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `no_indexed` tinyint(1) NOT NULL,
  `no_follow` tinyint(1) NOT NULL,
  `canonical_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `section_promotion` tinyint(1) NOT NULL,
  `link_to_resource` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - unlinked, 1 - linked',
  `status` char(1) NOT NULL COMMENT 'P - Published, U - Unpublished'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `linked_to_columnist`, `publish_start_date`, `publish_end_date`, `last_updated_on`, `title`, `url`, `summary_html`, `article_page_content_html`, `home_page_image_path`, `home_page_image_title`, `home_page_image_alt`, `section_page_image_path`, `section_page_image_title`, `section_page_image_alt`, `article_page_image_path`, `article_page_image_title`, `article_page_image_alt`, `column_name`, `hits`, `tags`, `allow_comments`, `allow_pagination`, `agency_name`, `author_name`, `author_image_path`, `author_image_title`, `author_image_alt`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `section_promotion`, `link_to_resource`, `status`) VALUES
(1, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-12 09:34:00', '0000-00-00 00:00:00', '2017-01-12 15:59:00', '<p>ബന്ധുനിയമന വിവാദം: അഡീ. ചീഫ് സെക്രട്ടറി</p>', 'keralam/2017/jan/12/ബന്ധുനിയമന-വിവാദം-അഡീ-ചീഫ്-സെക്രട്ടറി-1.html', '<p>തിരുവനന്തപുരം∙ ബന്ധുനിയമന വിവാദത്തിൽ പ്രതിചേർക്കപ്പെട്ട വ്യവസായ വകുപ്പ് അഡീഷനൽ ചീഫ് സെക്രട്ടറി പോൾ ആന്റണി ചീഫ് സെക്രട്ടറി എസ്.എം. വിജയാനന്ദിന് രാജിക്കത്ത് കൈമാറി. ഇ.പി</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം∙ ബന്ധുനിയമന വിവാദത്തിൽ പ്രതിചേർക്കപ്പെട്ട വ്യവസായ വകുപ്പ് അഡീഷനൽ ചീഫ് സെക്രട്ടറി പോൾ ആന്റണി ചീഫ് സെക്രട്ടറി എസ്.എം. വിജയാനന്ദിന് രാജിക്കത്ത് കൈമാറി. ഇ.പി. ജയരാജൻ ഉൾപ്പെട്ട ബന്ധുനിയമന വിവാദത്തിൽ പോൾ ആന്റണി മൂന്നാം പ്രതിയായിരുന്നു. ഇതേത്തുടർന്നാണ് അദ്ദേഹം രാജിസന്നദ്ധത അറിയിച്ചത്. സ്ഥാനത്തു തുടരാൻ താൽപ്പര്യമില്ലെന്ന് കാട്ടി കഴിഞ്ഞ ദിവസമാണു പോൾ ആന്റണി ചീഫ് സെക്രട്ടറിക്കു കത്തു നൽകിയത്. അതേസമയം, അന്തിമതീരുമാനം സർക്കാരാണ് എടുക്കേണ്ടതെന്ന് ചീഫ് സെക്രട്ടറി അറിയിച്ചു.</p>\n\n<p>പ്രതിയായതിനാൽ വ്യവസായ സെക്രട്ടറി സ്ഥാനത്തു തുടരുന്നതു ധാർമികമായി ശരിയല്ലെന്നും താൻ തുടരണമോയെന്നു സർക്കാരാണു വ്യക്തമാക്കേണ്ടതെന്നുമാണ് പോൾ ആന്റണി കത്തിൽ ആവശ്യപ്പെട്ടിരിക്കുന്നത്.&nbsp;കത്ത് ചീഫ് സെക്രട്ടറി,</p>\n\n<p>&nbsp;</p>\n\n<p>വ്യവസായ മന്ത്രി എ.സി. മൊയ്തീനു കൈമാറുകയായിരുന്നു. മന്ത്രി ഇക്കാര്യത്തിൽ മുഖ്യമന്ത്രി പിണറായി വിജയനുമായി ചേർന്നു തീരുമാനമെടുക്കുമെന്നാണു പ്രതീക്ഷിക്കപ്പെടുന്നത്.&nbsp;</p>\n\n<p>&nbsp;</p>', '', '', '', '', '', '', '2017/1/12/original/nat63.jpg', 'nat63', 'nat63', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ബന്ധുനിയമന വിവാദം: അഡീ. ചീഫ് സെക്രട്ടറി പോൾ ആന്റണി രാജിക്കത്ത് കൈമാറി', '', 0, 0, 'P'),
(2, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-12 09:37:00', '0000-00-00 00:00:00', '2017-01-12 16:45:00', '<p>സ്വാശ്രയ കോളജുകൾക്കു കടിഞ്ഞാൺ; പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതി</p>', 'keralam/2017/jan/12/സ്വാശ്രയകോളജുകൾക്കു-കടിഞ്ഞാൺപ്രവർത്തനം-പരിശോധിക്കാൻഉന്നതതല-സമിതി-2.html', '<p>തിരുവനന്തപുരം/കൊച്ചി ∙ തൃശൂർ പാമ്പാടി നെഹ്റു എൻജിനീയറിങ് കോളജ് സംഭവത്തിന്റെ പശ്ചാത്തലത്തിൽ സ്വാശ്രയ കോളജുകളുടെ പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതിയെ നിയോഗിക്കാൻ മന്ത്രിസഭ തീരുമാനിച്ചു. സമിതിയുടെ ഏകോ</p>', '<p>തിരുവനന്തപുരം/കൊച്ചി ∙ തൃശൂർ പാമ്പാടി നെഹ്റു എൻജിനീയറിങ് കോളജ് സംഭവത്തിന്റെ പശ്ചാത്തലത്തിൽ സ്വാശ്രയ കോളജുകളുടെ പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതിയെ നിയോഗിക്കാൻ മന്ത്രിസഭ തീരുമാനിച്ചു. സമിതിയുടെ ഏകോപനം വിദ്യാഭ്യാസ മന്ത്രി സി.രവീന്ദ്രനാഥിനായിരിക്കും. പാമ്പാടി നെഹ്&zwnj;റു കോളജിൽ മരിച്ച ജിഷ്ണു പ്രണോയിയുടെ കുടുംബത്തിനു 10 ലക്ഷം രൂപ ധനസഹായം നൽകാനും മന്ത്രിസഭ തീരുമാനിച്ചിട്ടുണ്ട്.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">സാങ്കേതിക സർവകലാശാലയ്ക്കു കീഴിലുള്ള വിദ്യാർഥികളുടെ പരാതികൾക്കു പരിഹാരം കാണുന്നതിന് ഓംബു&zwj;ഡ്സ്മാനെ നിയമിക്കാൻ സർവകലാശാലയും തീരുമാനമെടുത്തു. സാങ്കേതിക സർവകലാശാലയ്ക്കു കീഴിലുള്ള എല്ലാ എൻജിനീയറിങ് കോളജുകളിലും പ്രത്യേക പരിശോധന നടത്താനും തീരുമാനിച്ചിട്ടുണ്ട്. അഫിലിയേഷനുള്ള പരിശോധനയുടെ മാതൃകയിലായിരിക്കും ഇത്.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">ഇതേസമയം, കേരള സ്വാശ്രയ എൻജിനീയറിങ് കോളജ് മാനേജ്മെന്റ് അസോസിയേഷനു കീഴിലുള്ള 120 കോളജുകൾ ഇന്ന് അടച്ചിടും. വിദ്യാർഥി സംഘടനകളുടെ നേതൃത്വത്തിൽ സ്വാശ്രയ എൻജിനീയറിങ് കോളജ് മാനേജ്മെന്റ് അസോസിയേഷന്റെ കൊച്ചിയിലെ ഓഫിസും തൃശൂർ ജില്ലയിലെ പാമ്പാടി നെഹ്റു എൻജിനീയറിങ് കോളജും അടിച്ചുതകർത്ത സംഭവത്തിൽ പ്രതിഷേധിച്ചാണിത്. അസോസിയേഷന്റെ നിയന്ത്രണത്തിലുള്ള എംബിഎ, എംസിഎ കോളജുകളും അടച്ചിടും. സംസ്ഥാനത്തെ 158 എൻജിനീയറിങ് കോളജുകളിൽ 120 എണ്ണവും അസോസിയേഷനു കീഴിലാണ്.</p>', '', '', '', '', '', '', '2017/1/12/original/nat11.jpg', 'nat11', 'nat11', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സ്വാശ്രയ കോളജുകൾക്കു കടിഞ്ഞാൺ; പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതി', '', 0, 0, 'P'),
(3, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-12 09:39:00', '0000-00-00 00:00:00', '2017-01-12 16:03:00', '<p>കെ.എം. ഫിലിപ് അന്തരിച്ചു</p>', 'keralam/2017/jan/12/കെ-എം-ഫിലിപ്-അന്തരിച്ചു-3.html', '<p>ചെന്നൈ∙ ആഗോള വൈഎംസിഎ പ്രസ്&zwnj;ഥാനത്തിന്റെ ഏഷ്യയിൽ നിന്നുള്ള ആദ്യ സാരഥിയും മുംബൈ വൈഎംസിഎയുടെ മുൻ പ്രസിഡന്റും മലയാള മനോരമയുടെ മുൻ ഡയറക്&zwnj;ടറുമായ പദ്&zwnj;മശ്രീ കെ.എം.ഫിലിപ് (പീലിക്കുട്ടി&ndash;104) അന്തരിച്ചു. ചെന്നൈ ക</p>', '<p style="text-align: justify;">ചെന്നൈ∙ ആഗോള വൈഎംസിഎ പ്രസ്&zwnj;ഥാനത്തിന്റെ ഏഷ്യയിൽ നിന്നുള്ള ആദ്യ സാരഥിയും മുംബൈ വൈഎംസിഎയുടെ മുൻ പ്രസിഡന്റും മലയാള മനോരമയുടെ മുൻ ഡയറക്&zwnj;ടറുമായ പദ്&zwnj;മശ്രീ കെ.എം.ഫിലിപ് (പീലിക്കുട്ടി&ndash;104) അന്തരിച്ചു. ചെന്നൈ കോളജ് ലെയിൻ ഫ്ലാറ്റ് നാല് എയിലെ വസതിയിൽ ഇന്നു 10.30നു നടക്കുന്ന ശുശ്രൂഷകൾക്കു ശേഷം സംസ്കാരം 11.30നു കിൽപോക് സെമിത്തേരിയിൽ.</p>\n\n<p style="text-align: justify;">മലയാള മനോരമ പത്രാധിപരായിരുന്ന കെ.സി.മാമ്മൻ മാപ്പിള&ndash;സാറാ ദമ്പതികളുടെ ആറാമത്തെ പുത്രനായി 1912 മേയ് രണ്ടിനു കോട്ടയത്താണു കെ.എം.ഫിലിപ്പിന്റെ ജനനം. ഇത്യോപ്യയുടെ പ്രധാനമന്ത്രിയായിരുന്ന എൻഡൽചോ മക്കൊനന്റെ പിൻഗാമിയായാണ് അദ്ദേഹം 1974ൽ വൈഎംസിഎകളുടെ ആഗോള പ്രസിഡന്റാകുന്നത്. ഇന്ത്യൻ വൈഎംസിഎ ദേശീയ കൗൺസിൽ പ്രസിഡന്റായും പ്രവർത്തിച്ചിട്ടുണ്ട്. വൈഎംസിഎയുടെ ഒട്ടേറെ കേന്ദ്രങ്ങൾ സ്&zwnj;ഥാപിക്കുന്നതിനു മുൻകൈ എടുത്ത അദ്ദേഹം അവിടെയൊക്കെ വൈഎംസിഎ വകയായി ചെറുകിട വ്യവസായങ്ങൾ ആരംഭിക്കുകയും ചെയ്തു.</p>\n\n<p style="text-align: justify;">ജനീവ ആസ്&zwnj;ഥാനമായ ലോക സഭാ കൗൺസിലിന്റെ കീഴിലുള്ള ഇഡിസിഎസ് (ലോക വികസന ബാങ്ക്) ഡയറക്&zwnj;ടർ, കർണാടകയിലെ എംഎം പ്ലാന്റേഷൻ കമ്പനികളുടെ ഡയറക്&zwnj;ടർ എന്നീ നിലകളിലും പ്രവർത്തിച്ചു. ബോംബെ ചേംബർ ഓഫ് കൊമേഴ്&zwnj;സ്, ബോംബെ ടീ ഡീലേഴ്&zwnj;സ് അസോസിയേഷൻ തുടങ്ങിയവയുടെ എക്&zwnj;സിക്യൂട്ടീവ് കമ്മിറ്റികളിൽ അംഗമായിരുന്നു.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">ജീവകാരുണ്യ പ്രവർത്തനത്തിൽ സജീവമായിരുന്നു. വൈഎംസിഎയുടെ ദേശീയ കായികരംഗത്തിന് അദ്ദേഹത്തിന്റെ നിർലോഭമായ സഹകരണവും പങ്കാളിത്തവും ഉണർവേകി. മുംബൈ ദാദർ സെന്റ് മേരീസ് ഓർത്തഡോക്സ് കത്തീഡ്രൽ സ്ഥാപിക്കുന്നതിൽ പ്രധാന പങ്കുവഹിച്ചു.</p>', '', '', '', '', '', '', '2017/1/12/original/nat010.jpg', 'nat10', 'nat10', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കെ.എം. ഫിലിപ് അന്തരിച്ചു', '', 0, 0, 'P'),
(4, NULL, 14, 'Home', NULL, '', NULL, '', 0, '2017-01-12 11:50:00', '0000-00-00 00:00:00', '2017-01-12 15:58:00', '<p>രഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...</p>', 'home/2017/jan/12/രഞ്ജീവി--150-ബാലകൃഷ്ണ--100-കേരളത്തിൽ-തിയറ്റർ-കാലി-തെലുങ്കിൽ-ഉൽസവമേളം-4.html', '<p>ഹൈദരാബാദ് ∙ കേരളത്തിലെ സിനിമാപ്രേമികൾ പുതിയ റിലീസുകളില്ലാതെ വിഷമിക്കുകയാണെങ്കിൽ തെലുങ്കു സിനിമയ്ക്ക്...</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം / ന്യൂഡൽഹി ∙ ഹൈക്കമാന്&zwj;ഡിന്റെ അനുനയ ശ്രമങ്ങള്&zwj;ക്കൊടുവില്&zwj; കര്&zwj;ശന നിലപാട് മയപ്പെടുത്തി ഉമ്മന്&zwj; ചാണ്ടി. സംഘടനാ പ്രശ്നങ്ങളില്&zwj; തുറന്ന ചര്&zwj;ച്ചയ്ക്ക് തയാറാണെന്ന് ഫോണില്&zwj; ബന്ധപ്പെട്ട എഐസിസി ജനറല്&zwj; സെക്രട്ടറി മുകുള്&zwj; വാസ്നിക്കിനോട് അദ്ദേഹം വ്യക്തമാക്കി.</p>\n\n<p>അതേസമയം, കേരളത്തിൽ മാത്രമായി സംഘടനാ തിരഞ്ഞെടുപ്പ് നടത്തുന്നതിന് എഐസിസിക്ക് തടസമില്ലെന്ന് കെപിസിസി വൈസ് പ്രസിഡന്റ് എം.എം.ഹസൻ വ്യക്തമാക്കി. സംഘടനാ തിരഞ്ഞെടുപ്പിനെ എതിർക്കുന്ന നേതാക്കളാണ് മറിച്ചുപറയുന്നത്. ഉമ്മൻ ചാണ്ടി കോൺഗ്രസ് നേതൃയോഗങ്ങളിൽ പങ്കെടുക്കുന്നതു സംബന്ധിച്ച് പാർട്ടി നേതൃത്വമാണ് തീരുമാനമെടുക്കേണ്ടത്.</p>\n\n<p>14ന് ചേരുന്ന രാഷ്ട്രീയകാര്യസമിതി യോഗത്തിൽ അദ്ദേഹം പങ്കെടുക്കില്ലെന്ന് ഉറപ്പുപറയാനാവില്ലെന്നും ഹസൻ തിരുവനന്തപുരത്ത് പറഞ്ഞു.</p>', '', '', '', '', '', '', '2017/1/12/original/nat9.jpg', 'nat9', 'nat9', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'രഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...', '', 0, 0, 'P'),
(5, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-12 12:35:00', '0000-00-00 00:00:00', '2017-01-12 16:27:00', '<p>രാജിക്കത്ത് ലഭിച്ചിട്ടില്ല, പോൾ ആന്റണി തുടരും: വ്യവസായമന്ത്രി മൊയ്തീൻ...</p>', 'keralam/2017/jan/12/രാജിക്കത്ത്-ലഭിച്ചിട്ടില്ല-പോൾ-ആന്റണി-തുടരും-വ്യവസായമന്ത്രി-മൊയ്തീൻ-5.html', '<p>തൻെറ ചെറുപ്പകാലവും ജീവിതവുമെല്ലാം തന്മയത്വത്തോടെ അഭിനയിക്കാൻ കഴിയുന്ന നടിയാണ് ഐശ്വര്യയെന്നും ഈ ലോകത്തിൽ വെച്ച് താൻ കണ്ടിട്ടുള്ളതിൽ വെച്ച് ഏറ്റവും സുന്ദരിയായ സ്ത്രീയാണ് ഐശ്വര്യയെന്നും ജയലളിത അന്നു പറഞ്</p>', '<p>തൻെറ ജീവിതം എന്നെങ്കിലും സിനിമയാക്കുകയാണെങ്കിൽ ആ വേഷം ഐശ്വര്യ റായ് ചെയ്യണമെന്നു ജയലളിത പറഞ്ഞിരുന്നതായി ചാനൽ അവതാരികയായ സിമി ഗെർവാൾ. അന്തരിച്ച മുൻ തമിഴ്നാട് മുഖ്യമന്ത്രിയുമായി താൻ നടത്തിയ അഭിമുഖത്തിൽ അമ്മ ഇക്കാര്യം തുറന്നു പറഞ്ഞിരുന്നുവെന്നാണ് സിമിയുടെ വാദം. ബോളിവുഡിലെയും ദക്ഷിണേന്ത്യയിലെയും പ്രമുഖ.</p>\n\n<p>തമിഴ്നാടിൻെറ അമ്മയുമായി നടത്തിയ ചാറ്റ്ഷോ പുറത്തുവിട്ടിട്ടില്ലെന്നു വെളുപ്പെടുത്തിയ സിമി പറയുന്നതിങ്ങനെ &zwnj;ജയലളിത ഏറെ ഇഷ്ടപ്പെടുന്ന ഒരു നടിയാണ് ഐശ്വര്യയെന്നും. എന്നെങ്കിലും ജീവിതകഥ സിനിമയാവുകയാണെങ്കിൽ അമ്മയുടെ വേഷം ഐശ്വര്യയെക്കൊണ്ട് ചെയ്യിക്കണം എന്നായിരുന്നു അമ്മയുടെ ആഗ്രഹം.</p>\n\n<p>തൻെറ ചെറുപ്പകാലവും ജീവിതവുമെല്ലാം തന്മയത്വത്തോടെ അഭിനയിക്കാൻ കഴിയുന്ന നടിയാണ് ഐശ്വര്യയെന്നും ഈ ലോകത്തിൽ വെച്ച് താൻ കണ്ടിട്ടുള്ളതിൽ വെച്ച് ഏറ്റവും സുന്ദരിയായ സ്ത്രീയാണ് ഐശ്വര്യയെന്നും ജയലളിത അന്നു പറഞ്ഞിരുന്നു.</p>', '', '', '', '', '', '', '2017/1/12/original/nat8.jpg', 'nat8', 'nat8', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'രാജിക്കത്ത് ലഭിച്ചിട്ടില്ല, പോൾ ആന്റണി തുടരും: വ്യവസായമന്ത്രി മൊയ്തീൻ...', '', 0, 0, 'P'),
(6, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-12 12:40:00', '0000-00-00 00:00:00', '2017-01-12 15:19:00', '<p>ചിരഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...</p>', 'keralam/2017/jan/12/ചിരഞ്ജീവി--150-ബാലകൃഷ്ണ--100-കേരളത്തിൽ-തിയറ്റർ-കാലി-തെലുങ്കിൽ-ഉൽസവമേളം-6.html', '<p>ഹൈദരാബാദ് ∙ കേരളത്തിലെ സിനിമാപ്രേമികൾ പുതിയ റിലീസുകളില്ലാതെ വിഷമിക്കുകയാണെങ്കിൽ തെലുങ്കു സിനിമയ്ക്ക്...</p>', '<p>ഹൈദരാബാദ് ∙ കേരളത്തിലെ സിനിമാപ്രേമികൾ പുതിയ റിലീസുകളില്ലാതെ വിഷമിക്കുകയാണെങ്കിൽ തെലുങ്കു സിനിമയ്ക്ക്...</p>\n\n<p>സോഷ്യലിസ്റ്റ് നേതാവ് ജയപ്രകാശ് നാരായണന്റെ പേരിൽ ആരംഭിച്ചതാണ് പെൻഷൻ പദ്ധതി. അടിയന്തരാവസ്ഥ കാലത്ത് ജയപ്രകാശ് നാരായണന്റെ നേതൃത്വത്തിൽ നടന്ന &lsquo;സമ്പൂർണക്രാന്തി&rsquo; മുന്നേറ്റത്തിൽ പങ്കെടുത്ത് ജയിൽവാസം അനുഭവിച്ചവർക്കാണ് പെൻഷൻ. 1975ൽ ലാലുവിനെയും നിതീഷിനെയും അറസ്റ്റ് ചെയ്ത് ജയിലിൽ അടച്ചിരുന്നു. 2015ൽ നിയമഭേദഗതി വരുത്തിയതോടെയാണ് ലാലുവിനും പെൻഷന് അർഹതയായത്.</p>\n\n<p>ഒരു മാസം മുതൽ ആറുമാസം വരെ ശിക്ഷ അനുഭവിച്ചവർക്ക് 5000 രൂപയും ആറുമാസത്തിലേറെ ജയിലിൽ കഴിഞ്ഞവർക്ക് പതിനായിരം രൂപയുമാണ് പെൻഷൻ. നിതീഷ് പെൻഷന് അർഹനാണെങ്കിലും അദ്ദേഹം ആനുകൂല്യം കൈപ്പറ്റുന്നില്ലെന്ന് സർക്കാർ വൃത്തങ്ങൾ അറിയിച്ചു.</p>', '', '', '', '', '', '', '2017/1/12/original/nat7.jpg', 'nat7', 'nat7', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ചിരഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...', '', 0, 0, 'P'),
(7, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 12:51:00', '0000-00-00 00:00:00', '2017-01-16 18:41:00', '<p>നാവികസേനയ്ക്ക് ഇനി കൂടുതൽ കരുത്ത്; ഐഎൻഎസ് ഖന്തേരി</p>', 'deseeyam-national/2017/jan/12/നാവികസേനയ്ക്ക്-ഇനി-കൂടുതൽ-കരുത്ത്-ഐഎൻഎസ്-ഖന്തേരി-നീറ്റിലിറക്കി-7.html', '<p>മുംബൈ ∙ ഇന്ത്യൻ നാവികസേനയുടെ കരുത്തു വർധിപ്പിക്കാൻ ഫ്രാൻസിന്റെ സഹായത്തോടെ നിർമിച്ച രണ്ടാം സ്കോർപീൻ ക്ലാസ്</p>', '<p style="text-align: justify;">മുംബൈ ∙ ഇന്ത്യൻ നാവികസേനയുടെ കരുത്തു വർധിപ്പിക്കാൻ ഫ്രാൻസിന്റെ സഹായത്തോടെ നിർമിച്ച രണ്ടാം സ്കോർപീൻ ക്ലാസ് അന്തർവാഹിനി ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കി. ഇന്ത്യൻ നാവികസേനക്കായി മുംബൈയിലെ മസഗോൺ കപ്പൽനിർമാണ ശാലയിലാണ് അന്തർവാഹിനി നിർമ്മിച്ചത്&zwnj;. 2015 ൽ ഒന്നാം സ്കോർപീൻ നീറ്റിലിറക്കിയിരുന്നു.</p>\n\n<p>2017 ഡിസംബർവരെ വിവിധ പരീക്ഷണങ്ങൾക്കായി മുങ്ങിക്കപ്പലിനെ ഉപയോഗിക്കും. ഇതിനുശേഷമാകും കപ്പൽ നാവികസേനയുടെ ഭാഗമാവുക. പ്രതിരോധ സഹമന്ത്രി ഡോ. സുഭാഷ് ഭാംമ്രെ, മുതിർന്ന നാവികസേനാ ഉദ്യോഗസ്ഥർ എന്നിവർ ചേർന്നാണ് ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കിയത്.</p>', '', '', '', '', '', '', '2017/1/12/original/nat1.jpg', 'nat1', 'nat1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'നാവികസേനയ്ക്ക് ഇനി കൂടുതൽ കരുത്ത്; ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കി...', '', 0, 0, 'P'),
(8, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 12:54:00', '0000-00-00 00:00:00', '2017-01-12 14:41:00', '<p>ജയലളിതയുടെ ആഗ്രഹം ആഷ് സഫലമാക്കുമോ?</p>', 'deseeyam-national/2017/jan/12/ജയലളിതയുടെ-ആഗ്രഹം-ആഷ്-സഫലമാക്കുമോ-8.html', '<p>തൻെറ ജീവിതം എന്നെങ്കിലും സിനിമയാക്കുകയാണെങ്കിൽ ആ വേഷം ഐശ്വര്യ റായ് ചെയ്യണമെന്നു ജയലളിത പറഞ്ഞിരുന്നതായി ചാനൽ അവതാരികയായ സിമി ഗെർവാൾ. അന്തരിച്ച മുൻ തമിഴ്നാട് മുഖ്യമന്ത്രിയുമായി താൻ നടത്തിയ അഭിമുഖത്തിൽ അ</p>', '<p>തൻെറ ജീവിതം എന്നെങ്കിലും സിനിമയാക്കുകയാണെങ്കിൽ ആ വേഷം ഐശ്വര്യ റായ് ചെയ്യണമെന്നു ജയലളിത പറഞ്ഞിരുന്നതായി ചാനൽ അവതാരികയായ സിമി ഗെർവാൾ. അന്തരിച്ച മുൻ തമിഴ്നാട് മുഖ്യമന്ത്രിയുമായി താൻ നടത്തിയ അഭിമുഖത്തിൽ അമ്മ ഇക്കാര്യം തുറന്നു പറഞ്ഞിരുന്നുവെന്നാണ് സിമിയുടെ വാദം. ബോളിവുഡിലെയും ദക്ഷിണേന്ത്യയിലെയും പ്രമുഖ</p>', '', '', '', '', '', '', '2017/1/12/original/nat2.jpg', 'nat2', 'nat2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ജയലളിതയുടെ ആഗ്രഹം ആഷ് സഫലമാക്കുമോ?', '', 0, 0, 'P'),
(9, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 12:56:00', '0000-00-00 00:00:00', '2017-01-16 12:04:00', '<p>കേരളം 115 വര്&zwj;ഷത്തെ രൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക്&nbsp;ജലസം ഭരണി കൾ വറ്റുന്നു</p>', 'deseeyam-national/2017/jan/12/കേരളം-115-വര-രൂക്ഷമായ-വള-ജലസം-ഭരണി-കൾ-വറ്റുന്നു-9.html', '<p>തിരുവനന്തപുരം ∙ മകരക്കുളിര് മാറും മുൻപ് നാട് വരണ്ട് ഉണങ്ങിത്തുടങ്ങിയതോടെ കേരളം 115 വര്&zwj;ഷത്തെ അതിരൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക്. ജലസംഭരണികൾ അതിവേഗം വറ്റുകയാണ്....</p>', '<p>തിരുവനന്തപുരം ∙ മകരക്കുളിര് മാറും മുൻപ് നാട് വരണ്ട് ഉണങ്ങിത്തുടങ്ങിയതോടെ കേരളം 115 വര്&zwj;ഷത്തെ അതിരൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക്. ജലസംഭരണികൾ അതിവേഗം വറ്റുകയാണ്. തെക്കും വടക്കും മധ്യമേഖലയിലും മലയോരത്തും സമാനമായ കാഴ്ചയാണ്. നമ്മുടെ പ്രധാന ജലസ്രോതസുകളിലൂടെയും ജലസംഭരണികളിലൂടെയും യാത്രചെയ്ത മനോരമ ന്യൂസ് സംഘങ്ങൾ കണ്ടതു വരാനിരിക്കുന്ന വിപത്തിന്റെ വ്യക്തമായ സൂചനകളാണ്.</p>', '2017/1/12/original/Urjit-Patel-3.jpg', 'article', '', '2017/1/12/original/Urjit-Patel-3.jpg', 'article', '', '2017/1/12/original/Urjit-Patel-3.jpg', 'article', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കേരളം 115 വര്‍ഷത്തെ രൂക്ഷമായ വരള്‍ച്ചയിലേക്ക്; ജലസംഭരണികൾ വറ്റുന്നു', '', 0, 0, 'P'),
(10, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 12:58:00', '0000-00-00 00:00:00', '2017-01-17 14:46:00', '<p>കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച് യുവമോർച്ച പ്രതിഷേധം</p>', 'deseeyam-national/2017/jan/12/കമലിന്-പിന്തുണ-അറിയിച്ച-വേദിയിൽ-ചാണകവെള്ളം-ഒഴിച്ച്-യുവമോർച്ച-പ്രതിഷേധം-10.html', '<p>കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച് യുവമോർച്ച പ്രതിഷേധം</p>', '<p style="text-align: justify;">കൊടുങ്ങല്ലൂർ ∙ ചലച്ചിത്ര അക്കാദമി ചെയർമാനും സംവിധായകനുമായ കമലിനെതിരെയുള്ള ബിജെപി നീക്കത്തിനെതിരെ കൊടുങ്ങല്ലൂരില്&zwj; ജനകീയ കൂട്ടായ്മ നടന്ന വേദിയിൽ യുവമോർച്ചയുടെ പ്രതിഷേധം. വേദിയിലും കമലിന്റെ ചിത്രം അടങ്ങിയ ബോർഡുകളിലും പ്രവര്&zwj;ത്തകര്&zwj; ചാണകവെള്ളം ഒഴിച്ചു. കൊടുങ്ങല്ലൂര്&zwj; കൂട്ടായ്മയുടെ നേതൃത്വത്തില്&zwj; പ്രതിരോധസംഗമം വര്&zwj;ഗീയകൂട്ടായ്മയാണെന്ന് ആരോപിച്ചാണ് യുവമോര്&zwj;ച്ചയുടെ പ്രതിഷേധം. കമലിനെതിരായ പ്രതിഷേധങ്ങള്&zwj; തുടരുമെന്നും യുവമോര്&zwj;ച്ച അറിയിച്ചു.</p>\n\n<p style="text-align: justify;">കമലിനെതിരെ നടക്കുന്ന സംഘപരിവാർ ഭീഷണിയിൽ പ്രതിഷേധിച്ചാണ് ഇന്നലെ കൊടുങ്ങല്ലൂർ കൂട്ടായ്മ പ്രതിരോധ സംഗമം സംഘടിപ്പിച്ചത്. സിനിമ&ndash;രാഷ്ട്രീയ&ndash;സാംസ്കാരിക രംഗത്തെ നിരവധി പേർ പരിപാടിയിൽ പങ്കെടുത്തു. സിനിമ മേഖലയിൽ നിന്നു സംവിധായകൻ ലാൽ ജോസ്, തിരക്കഥാകൃത്ത് ഉണ്ണി. ആർ, സംഗീത സംവിധായകൻ ബിജിബാൽ, ആഷിക് അബു, റിമ കല്ലിങ്കൽ തുടങ്ങിയവർ പങ്കെടുത്തു. സിപിഎം നേതാവ് എം.എ. ബേബി, സിപിഐ നേതാവ് ബിനോയ് വിശ്വം, കോൺഗ്രസ് നേതാവ് വി.ടി. ബൽറാം എന്നിവരും പരിപാടിയിൽ പങ്കെടുത്തു.</p>', '', '', '', '', '', '', '2017/1/12/original/nat3.jpg', 'nat3', 'nat3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച് യുവമോർച്ച പ്രതിഷേധം', '', 0, 0, 'P'),
(11, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 13:00:00', '0000-00-00 00:00:00', '2017-01-12 16:28:00', '<p>ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണം മോദി സർക്കാർ തടവിലാക്കി: മന്ത്രി ഐസക്</p>', 'deseeyam-national/2017/jan/12/ഇന്ത്യയിലെ-സാധാരണക്കാരുടെ-പണം-മോദി-സർക്കാർ-തടവിലാക്കി-മന്ത്രി-ഐസക്-11.html', '<p>ബാങ്കുകളുടെ പണമെല്ലാം കോര്&zwj;പ്പറേറ്റ് കള്ളപ്പണക്കാര്&zwj; വാരിക്കോരി കൊണ്ടുപോയി. റിസര്&zwj;വ്വ് ബാങ്കിന്&zwj;റെ 2016 ലെ അസറ്റ് ക്വാളിറ്റി റിവ്യൂ പ്രകാരം 8.5 ലക്ഷം കോടി രൂപ കിട്ടാക്കടമാണ്. ഇതില്&zwj; 7 ലക്ഷം കോടി രൂപ ഇ</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം∙ ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണമെല്ലാം മോദി സര്&zwj;ക്കാര്&zwj; രണ്ടു മാസമായി ബാങ്ക് അറകളില്&zwj; തടവിലാക്കിയിരിക്കുകയാണെന്നു ധനമന്ത്രി ഡോ. തോമസ് ഐസക്. സമൂഹമാധ്യമമായ ഫെയ്സ്ബുക്കിലെഴുതിയ കുറിപ്പിലാണ് തോമസ് ഐസക് ഇക്കാര്യം വിശദീകരിച്ചത്. നിയോലിബറല്&zwj; പരീക്ഷണത്തിന് ഇന്ത്യന്&zwj; ജനതയെ മോദി ഗിനിയാ പന്നികളാക്കിയെന്നും തോമസ് ഐസക് കുറ്റപ്പെടുത്തി.</p>\n\n<p style="text-align: justify;">ബാങ്കുകളുടെ പണമെല്ലാം കോര്&zwj;പ്പറേറ്റ് കള്ളപ്പണക്കാര്&zwj; വാരിക്കോരി കൊണ്ടുപോയി. റിസര്&zwj;വ്വ് ബാങ്കിന്&zwj;റെ 2016 ലെ അസറ്റ് ക്വാളിറ്റി റിവ്യൂ പ്രകാരം 8.5 ലക്ഷം കോടി രൂപ കിട്ടാക്കടമാണ്. ഇതില്&zwj; 7 ലക്ഷം കോടി രൂപ ഇന്ത്യയിലെ 10 പ്രമുഖ കുത്തക കുടുംബങ്ങളുടേതാണത്രേ. 2014-15 ല്&zwj; 1.12 ലക്ഷം കോടി രൂപ എഴുതിത്തള്ളിയശേഷമുള്ള സ്ഥിതിയാണിത് ഇതെന്ന് ഓര്&zwj;ക്കുക. അതേ സമയം ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണമെല്ലാം മോഡി സര്&zwj;ക്കാര്&zwj; രണ്ടു മാസമായി ബാങ്ക് അറകളില്&zwj; തടവിലാക്കിയിരിക്കുകയാണ്.</p>', '', '', '', '', '', '', '2017/1/12/original/nat5.jpg', 'nat5', 'nat5', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണം മോദി സർക്കാർ തടവിലാക്കി: മന്ത്രി ഐസക്', '', 0, 0, 'P'),
(12, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-12 13:15:00', '0000-00-00 00:00:00', '2017-01-12 15:09:00', '<p>അടിയന്തരാവസ്ഥ കാലത്തെ ജയിൽവാസം: ലാലുവിന് 10000 രൂപ പ്രതിമാസ പെൻഷൻ</p>', 'deseeyam-national/2017/jan/12/അടിയന്തരാവസ്ഥ-കാലത്തെ-ജയിൽവാസം-ലാലുവിന്-10000-രൂപ-പ്രതിമാസ-പെൻഷൻ-12.html', '<p>സോഷ്യലിസ്റ്റ് നേതാവ് ജയപ്രകാശ് നാരായണന്റെ പേരിൽ ആരംഭിച്ചതാണ് പെൻഷൻ പദ്ധതി.</p>', '<p>പട്ന ∙ ബിഹാർ മുൻ മുഖ്യമന്ത്രി ലാലുപ്രസാദ് യാദവിന് 10,000 രൂപയുടെ മാസ പെൻഷൻ നൽകാൻ ബിഹാർ സർക്കാർ തീരുമാനം. 1975ലെ അടിയന്തരാവസ്ഥ കാലഘട്ടത്തിൽ ജയിൽവാസം അനുഭവിച്ചവർക്കുള്ള പെൻഷനാണ് ലാലുവിന് നൽകുക. &lsquo;ജെപി സേനാനി സമ്മാൻ&rsquo; എന്ന പേരിൽ മുഖ്യമന്ത്രി നിതീഷ് കുമാർ 2009ൽ നടപ്പാക്കിയ പദ്ധതിയുടെ കീഴിൽ ആണ് ലാലുവിന് പെൻഷൻ നൽകുക.</p>\n\n<p style="text-align: justify;">സോഷ്യലിസ്റ്റ് നേതാവ് ജയപ്രകാശ് നാരായണന്റെ പേരിൽ ആരംഭിച്ചതാണ് പെൻഷൻ പദ്ധതി. അടിയന്തരാവസ്ഥ കാലത്ത് ജയപ്രകാശ് നാരായണന്റെ നേതൃത്വത്തിൽ നടന്ന &lsquo;സമ്പൂർണക്രാന്തി&rsquo; മുന്നേറ്റത്തിൽ പങ്കെടുത്ത് ജയിൽവാസം അനുഭവിച്ചവർക്കാണ് പെൻഷൻ. 1975ൽ ലാലുവിനെയും നിതീഷിനെയും അറസ്റ്റ് ചെയ്ത് ജയിലിൽ അടച്ചിരുന്നു. 2015ൽ നിയമഭേദഗതി വരുത്തിയതോടെയാണ് ലാലുവിനും പെൻഷന് അർഹതയായത്.</p>', '', '', '', '', '', '', '2017/1/12/original/nat4.jpg', 'nat4', 'nat4', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'അടിയന്തരാവസ്ഥ കാലത്തെ ജയിൽവാസം: ലാലുവിന് 10000 രൂപ പ്രതിമാസ പെൻഷൻ', '', 0, 0, 'P'),
(13, NULL, 5, 'ധനകാര്യം', NULL, '', NULL, '', 0, '2017-01-12 16:20:00', '0000-00-00 00:00:00', '2017-01-13 08:23:00', '<p>മോശം ഭക്ഷണമാണെന്ന ബിഎസ്എഫ് ജവാന്റെ പരാതിയിൽ പ്രധാനമന്ത്</p>', 'dhanakaaryam-financial/2017/jan/12/മോശം-ഭക്ഷണമാണെന്ന-ബിഎസ്എഫ്-ജവാന്റെ-പരാതിയിൽ-പ്രധാനമന്ത്-13.html', '<p>ന്യൂഡൽഹി ∙ അതിർത്തി രക്ഷാസേനയിലെ (ബിഎസ്എഫ്) ജവാന്മാർക്കു മോശം ഭക്ഷണമാണു നൽകുന്നതെന്ന ജവാന്റെ വെളിപ്പെടുത്തലിൽ പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇടപെടുന്നു. ബിഎസ്എഫ് ജവാൻ തേജ് ബഹാദൂർ യാദവിന്റെ വെളിപ്പെടുത്തല</p>', '<p style="text-align: justify;">ന്യൂഡൽഹി ∙ അതിർത്തി രക്ഷാസേനയിലെ (ബിഎസ്എഫ്) ജവാന്മാർക്കു മോശം ഭക്ഷണമാണു നൽകുന്നതെന്ന ജവാന്റെ വെളിപ്പെടുത്തലിൽ പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇടപെടുന്നു. ബിഎസ്എഫ് ജവാൻ തേജ് ബഹാദൂർ യാദവിന്റെ വെളിപ്പെടുത്തലിന്റെ അടിസ്ഥാനത്തിൽ പ്രധാനമന്ത്രിയുടെ ഒാഫിസ് ആഭ്യന്തര മന്ത്രാലയത്തോട് റിപ്പോർട്ട് തേടി. തേജ് ബഹാദുർ പോസ്റ്റ് ചെയ്തിരിക്കുന്ന വിഡിയോ ആഭ്യന്തര മന്ത്രാലയം പരിശോധിക്കുകയാണ്. ഇതിനിടെയാണ് പ്രധാനമന്ത്രിയുടെ ഒാഫിസ് ഇടപെടുന്നുവെന്ന റിപ്പോർട്ടുകൾ.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">കഴിഞ്ഞ ദിവസം 29 ബറ്റാലിയനിലെ തേജ് ബഹാദുർ യാദവ് ഫെയ്സ്ബുക്കിൽ പോസ്റ്റു ചെയ്ത വിഡിയോയിലാണ് സൈനികർക്ക് മോശമായ ആഹാരമാണ് നൽകുന്നതെന്ന് ആരോപിച്ചത്. പല രാത്രികളിലും ഭക്ഷണം കഴിക്കാതെയാണ് കിടക്കാൻ പോകുന്നതെന്നും ഉയർന്ന ഉദ്യോഗസ്ഥർ ഭക്ഷണ സാധനങ്ങളടക്കമുള്ളവ മറിച്ചുവിൽക്കുകയാണെന്നും തേജ് ബഹാദുർ ആരോപിച്ചിരുന്നു. തേജ് ബഹാദൂറിന്റെ വിഡിയോക്ക് വലിയ പ്രതികരണമാണ് ഉണ്ടായത്. എന്നാൽ തേജ് ബഹാദുർ അച്ചടക്ക നടപടി നേരിടുന്നയാളെന്നായിരുന്നു സൈന്യത്തിന്റെ പ്രതികരണം.</p>', '', '', '', '', '', '', '2017/1/12/original/Tej-Bahadur-Yadav.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മോശം ഭക്ഷണമാണെന്ന ബിഎസ്എഫ് ജവാന്റെ പരാതിയിൽ പ്രധാനമന്ത്രി ഇടപെടുന്നു', '', 0, 0, 'P'),
(14, NULL, 5, 'ധനകാര്യം', NULL, '', NULL, '', 0, '2017-01-12 16:23:00', '0000-00-00 00:00:00', '2017-01-12 16:27:00', '<p>ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർ&zwnj;ധസൈനികർ കൊല്ലപ്പെട്ടു</p>', 'dhanakaaryam-financial/2017/jan/12/ഔറംഗബാദിൽ-സഹപ്രവർത്തകന്റെ-വെടിയേറ്റ്-നാല്-അർzwnjധസൈനികർ-കൊല്ലപ്പെട്ടു-14.html', '<p>പട്ന ∙ ബിഹാറിലെ ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർധസൈനികർ കൊല്ലപ്പെട്ടു. സെൻട്രൽ ഇൻഡസ്ട്രിയൽ സെക്യൂരിറ്റി ഫോഴ്സ് (സിഐഎസ്എഫ്) ജവാൻമാരാണ് കൊല്ലപ്പെട്ടത്. സഹപ്രവർത്തകനായ സൈനികൻ സർവീസ് തോക്ക് ഉപ</p>', '<p style="text-align: justify;">പട്ന ∙ ബിഹാറിലെ ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർധസൈനികർ കൊല്ലപ്പെട്ടു. സെൻട്രൽ ഇൻഡസ്ട്രിയൽ സെക്യൂരിറ്റി ഫോഴ്സ് (സിഐഎസ്എഫ്) ജവാൻമാരാണ് കൊല്ലപ്പെട്ടത്. സഹപ്രവർത്തകനായ സൈനികൻ സർവീസ് തോക്ക് ഉപയോഗിച്ച് വെടിയുതിർക്കുകയായിരുന്നു. ഔറംഗബാദ് തെർമൽ പവർ സ്റ്റേഷനിൽ കാവൽ ജോലിയിലുണ്ടായിരുന്ന ബൽവീർ സിങ് എന്ന ജവാനാണ് വെടിയുതിർത്തത്. ഇയാൾ ഉത്തർപ്രദേശ് സ്വദേശിയാണ്. ഇന്ന് ഉച്ചയ്ക്ക് 12.30നായിരുന്നു സംഭവം.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">കൊല്ലപ്പെട്ടതിൽ മൂന്നുപേർ ഹെഡ്കോൺസ്റ്റബിൾ റാങ്കിൽ ഉള്ള ജവാൻമാരും ഒരാൾ അസിസ്റ്റന്റ് സബ് ഇൻസ്പെക്ടറുമാണ്. അവധി അനുവദിക്കാത്തതിൽ അരിശം പൂണ്ടാണ് ബൽവീർ സിങ് സഹപ്രവർത്തകർക്കു നേരെ വെടിയുതിർത്തതെന്ന് പൊലീസ് സൂപ്രണ്ട് അറിയിച്ചു. ബൽവീറിനെ അറസ്റ്റ് ചെയ്തു. മൂന്നുപേർ സംഭവസ്ഥലത്തു വച്ചും ഒരാൾ ആശുപത്രിയിലുമാണ് മരിച്ചത്.</p>', '', '', '', '', '', '', '2017/1/12/original/cisf.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർ‌ധസൈനികർ കൊല്ലപ്പെട്ടു', '', 0, 0, 'P'),
(15, NULL, 5, 'ധനകാര്യം', NULL, '', NULL, '', 0, '2017-01-12 16:28:00', '0000-00-00 00:00:00', '2017-01-12 16:28:00', '<p>മല്യ മക്കളുടെ പേരിലേക്ക് നാലു കോടി ഡോളർ മാറ്റി</p>', 'dhanakaaryam-financial/2017/jan/12/മല്യ-മക്കളുടെ-പേരിലേക്ക്നാ-ലു-കോടി-ഡോളർ-മാറ്റി-15.html', '<p>ന്യൂഡൽഹി ∙ നാലു കോടി ഡോളർ തന്റെ മക്കളുടെ പേരിലേക്കു മാറ്റി എന്ന ബാങ്കുകളുടെ ആരോപണത്തെക്കുറിച്ചു മൂന്നാഴ്ചയ്ക്കകം പ്രതികരണം അറിയിക്കാൻ സുപ്രീംകോടതി വിജയ് മല്യയോട് ആവശ്യപ്പെട്ടു. വിജയ് മല്യ തന്റെ മക്കളു</p>', '<p>ന്യൂഡൽഹി ∙ നാലു കോടി ഡോളർ തന്റെ മക്കളുടെ പേരിലേക്കു മാറ്റി എന്ന ബാങ്കുകളുടെ ആരോപണത്തെക്കുറിച്ചു മൂന്നാഴ്ചയ്ക്കകം പ്രതികരണം അറിയിക്കാൻ സുപ്രീംകോടതി വിജയ് മല്യയോട് ആവശ്യപ്പെട്ടു. വിജയ് മല്യ തന്റെ മക്കളുടെ പേരിലേക്കു പണം മാറ്റിയതു നേരത്തേയുള്ള കർണാടക ഹൈക്കോടതി വിധിക്കെതിരാണെന്നു ബാങ്കുകളുടെ അഭിഭാഷകൻ ശ്യാംദിവാൻ വാദിച്ചു. എന്നാൽ ഇതു സംബന്ധിച്ചു മല്യയുടെ പ്രതികരണം അറിയിക്കാൻ സമയം വേണമെന്ന് അദ്ദേഹത്തിന്റെ അഭിഭാഷകൻ സി.എസ്. വൈദ്യനാഥൻ ആവശ്യപ്പെട്ടു. ഇതെത്തുടർന്നു സുപ്രീംകോടതി കേസ് ഫെബ്രുവരി രണ്ടിന് അവധിക്കു വച്ചു.</p>', '', '', '', '', '', '', '2017/1/12/original/Vijay-Mallya.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മല്യ മക്കളുടെ പേരിലേക്ക് നാലു കോടി ഡോളർ മാറ്റി', '', 0, 0, 'P'),
(16, NULL, 5, 'ധനകാര്യം', NULL, '', NULL, '', 0, '2017-01-12 16:30:00', '0000-00-00 00:00:00', '2017-01-17 13:56:00', '<p>മോദി അറിയണം കേരളമുണ്ടെന്ന്, 17ന് ട്രെയിനുകൾ തടയും: പി.സി.ജോർജ്</p>', 'dhanakaaryam-financial/2017/jan/12/മോദി-അറിയണം-കേരളമുണ്ടെന്ന്-17ന്-ട്രെയിനുകൾ-തടയും-പിസിജോർജ്-16.html', '<p>കോട്ടയം∙ നോട്ടു നിരോധനം ഏർപ്പെടുത്തി പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇന്ത്യയിലെ ജനങ്ങളെ അപമാനിക്കുകയാണെന്ന് പൂഞ്ഞാർ എംഎൽഎ പി.സി. ജോർജ്. കേന്ദ്രസർക്കാർ നടപടിയിൽ പ്രതിഷേധിച്ച് 17ന് എറണാകുളം നോർത്ത് റെയിൽവേ</p>', '<p style="text-align: justify;">കോട്ടയം∙ നോട്ടു നിരോധനം ഏർപ്പെടുത്തി പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇന്ത്യയിലെ ജനങ്ങളെ അപമാനിക്കുകയാണെന്ന് പൂഞ്ഞാർ എംഎൽഎ പി.സി. ജോർജ്. കേന്ദ്രസർക്കാർ നടപടിയിൽ പ്രതിഷേധിച്ച് 17ന് എറണാകുളം നോർത്ത് റെയിൽവേ സ്റ്റേഷനിൽ &lsquo;കറൻസി ആന്ദോളൻ&rsquo; എന്ന പേരിൽ സമരം സംഘടിപ്പിച്ച് ട്രെയിൻ തടയുമെന്ന് പി.സി. ജോർജ് അറിയിച്ചു.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">കേരളത്തിൽ എന്തുസമരം നടന്നാലും മോദി അറിയില്ല. കേരളം എന്ന സംസ്ഥാനം ഉണ്ടെന്നു മോദി അറിയണം. അതുകൊണ്ടാണ് ട്രെയിനുകൾ തടയാൻ തീരുമാനിച്ചത്. 500, 1000 നോട്ടുകൾ നിരോധിച്ചു കഴിഞ്ഞപ്പോള്&zwj; ബിജെപി ഭരിക്കുന്ന സംസ്ഥാനങ്ങളിൽ കറൻസി പ്രശ്നമില്ല. കേരളത്തിൽ മാത്രമേ പ്രശ്നം ഉള്ളൂ. മോദി കേരളത്തോടു വൈരാഗ്യം തീർക്കുകയാണ്. മോദിയുടെ നടപടിയോടു പ്രതിഷേധമുള്ള എല്ലാവരെയും സമരത്തിലേക്കു ക്ഷണിക്കുന്നുവെന്നും പി.സി. ജോർജ് അറിയിച്ചു.</p>', '', '', '', '', '', '', '2017/1/12/original/pc-george.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മോദി അറിയണം കേരളമുണ്ടെന്ന്, 17ന് ട്രെയിനുകൾ തടയും: പി.സി.ജോർജ്', '', 0, 0, 'P'),
(17, NULL, 5, 'ധനകാര്യം', NULL, '', NULL, '', 0, '2017-01-12 16:34:00', '0000-00-00 00:00:00', '2017-01-12 16:34:00', '<p>കേരളംവര്&zwj;ഷത്തെ രൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക് ജലസംഭരണികൾ വറ്റുന്നു</p>', 'dhanakaaryam-financial/2017/jan/12/കേരളംവര്zwjഷത്തെ-രൂക്ഷമായ-വരള്zwjച്ചയിലേക്ക്-ജലസംഭരണികൾ-വറ്റുന്നു-17.html', '<p>തിരുവനന്തപുരം ∙ മകരക്കുളിര് മാറും മുൻപ് നാട് വരണ്ട് ഉണങ്ങിത്തുടങ്ങിയതോടെ കേരളം 115 വര്&zwj;ഷത്തെ അതിരൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക്. ജലസംഭരണികൾ അതിവേഗം വറ്റുകയാണ്. തെക്കും വടക്കും മധ്യമേഖലയിലും മലയോരത്തും സമാനമ</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം ∙ മകരക്കുളിര് മാറും മുൻപ് നാട് വരണ്ട് ഉണങ്ങിത്തുടങ്ങിയതോടെ കേരളം 115 വര്&zwj;ഷത്തെ അതിരൂക്ഷമായ വരള്&zwj;ച്ചയിലേക്ക്. ജലസംഭരണികൾ അതിവേഗം വറ്റുകയാണ്. തെക്കും വടക്കും മധ്യമേഖലയിലും മലയോരത്തും സമാനമായ കാഴ്ചയാണ്. നമ്മുടെ പ്രധാന ജലസ്രോതസുകളിലൂടെയും ജലസംഭരണികളിലൂടെയും യാത്രചെയ്ത മനോരമ ന്യൂസ് സംഘങ്ങൾ കണ്ടതു വരാനിരിക്കുന്ന വിപത്തിന്റെ വ്യക്തമായ സൂചനകളാണ്.</p>\n\n<p>&nbsp;</p>\n\n<p>115 വർഷത്തിനിടയ്ക്ക് കേരളം കണ്ട രൂക്ഷമായ വരൾച്ചയാണിതെന്ന് സംസ്ഥാന ദുരന്തനിവാരണസേന മെമ്പർ സെക്രട്ടറി ശേഖർ എൽ. കുര്യാക്കോസ് അറിയിച്ചു. 2012ലെ വരൾച്ച നൂറുവർഷത്തെ കാഠിന്യമേറിയതെന്നു വിലയിരുത്തിയാലും ഇതാണ് ഏറ്റവും രൂക്ഷം. ഇത്തരം കാലാവസ്ഥാ വ്യതിയാനം വളരെ ചുരുക്കമായേ ഉണ്ടാകൂ. ഒക്ടോബറിൽത്തന്നെ ഇക്കാര്യം വ്യക്തമായിരുന്നു. അടുത്ത ഏതാനും മാസങ്ങൾ സംസ്ഥാനത്തിനു കഠിനമായിരിക്കും. ഇത്തരമൊരു പ്രതിസന്ധിയെ നമ്മൾ അഭിമുഖീകരിച്ചിട്ടില്ല, അദ്ദേഹം വ്യക്തമാക്കി.&nbsp;</p>', '', '', '', '', '', '', '2017/1/12/original/drought.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കേരളംവര്‍ഷത്തെ രൂക്ഷമായ വരള്‍ച്ചയിലേക്ക് ജലസംഭരണികൾ വറ്റുന്നു', '', 0, 0, 'P'),
(18, NULL, 6, 'ചലച്ചിത്രം', NULL, '', NULL, '', 0, '2017-01-12 16:43:00', '0000-00-00 00:00:00', '2017-01-12 16:48:00', '<p>എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്&zwj;ക്കാന്&zwj; ദിലീപ് ശ്രമിക്കുന്ന&zwj;ു</p>', 'chalachithram-film/2017/jan/12/എക്സിബിറ്റേഴ്സ്-ഫെഡറേഷനെ-തകര്zwjക്കാന്zwj-ദിലീപ്-ശ്രമിക്കുന്നzwjു-ലിബര്zwjട്ടി-ബഷീര്zwj-18.html', '<p>ദിലീപ് കേരളത്തിലെ പല തിയറ്റർ ഉടമകളെയും വിളിച്ചു പുതിയ സംഘടനയെ കുറിച്ചു സംസാരിച്ചതിന്റെ തെളിവുണ്ടെന്നും ലിബര്&zwj;ട്ടി ബഷീർ കൂട്ടിച്ചേർത്തു.</p>', '<p>തലശേരി ∙ കേരള ഫിലിം എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്&zwj;ക്കാന്&zwj; ശ്രമിക്കുന്നതു നടന്&zwj; ദിലീപ് ആണെന്ന് ലിബര്&zwj;ട്ടി ബഷീര്&zwj;. തിയറ്ററുകളുടെ പുതിയ സംഘടനയുണ്ടാക്കാനുള്ള ശ്രമമാണ് ഇപ്പോൾ നടക്കുന്നത്. മലയാള സിനിമ റിലീസ് ചെയ്യാന്&zwj; മുഖ്യമന്ത്രിയുമായി ധാരണയിലെത്തിയിരുന്നു. എന്നാല്&zwj; മറുഭാഷാ ചിത്രം പുറത്തിറക്കാനായിരുന്നു നിര്&zwj;മാതാക്കളുടെ തിടുക്കമെന്നും ലിബര്&zwj;ട്ടി ബഷീര്&zwj; തലശേരിയില്&zwj; പറഞ്ഞു. ഭൈരവ റീലീസ് ചെയ്ത ഫെഡറേഷനിലുള്ള 12 തിയറ്ററുകള്&zwj;ക്കെതിരെ നടപടിയുണ്ടാകുമെന്നും ലിബര്&zwj;ട്ടി ബഷീര്&zwj; അറിയിച്ചു.</p>\n\n<p style="text-align: justify;">കേരളത്തിലെ സിനിമാപ്രതിസന്ധി സർക്കാർ ഇടപെട്ട് പരിഹരിക്കണം. മലയാള ചിത്രം പ്രദർശിപ്പിക്കാതെ അന്യഭാഷാ ചിത്രം പ്രദർശിപ്പിക്കുന്നതിനെ കുറിച്ച് സിദ്ദിഖ്, ഇന്നസെന്റ്, അടൂർ ഗോപാലകൃഷ്ണൻ, ലെനിൻ രാജേന്ദ്രൻ തുടങ്ങിയവർ മറുപടി പറയണം. കോർപ്പറേറ്റുകളുടെ പിടിയിലാണ് ഇന്ന് മലയാള സിനിമ. ഇപ്പോഴത്തെ പ്രതിസന്ധിക്കു പുറകിൽ സൂപ്പർ സ്റ്റാറുകൾക്ക് പങ്കുണ്ട്. ദിലീപ് കേരളത്തിലെ പല തിയറ്റർ ഉടമകളെയും വിളിച്ചു പുതിയ സംഘടനയെ കുറിച്ചു സംസാരിച്ചതിന്റെ തെളിവുണ്ടെന്നും ലിബര്&zwj;ട്ടി ബഷീർ കൂട്ടിച്ചേർത്തു.</p>', '', '', '', '', '', '', '2017/1/12/original/ent1.jpg', 'ent1', 'ent1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്‍ക്കാന്‍ ദിലീപ് ശ്രമിക്കുന്ന‍ു: ലിബര്‍ട്ടി ബഷീര്‍', '', 0, 0, 'P'),
(19, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 16:45:00', '0000-00-00 00:00:00', '2017-01-12 16:46:00', '<p>സഞ്&zwnj;ജുവിനെ വിരട്ടി, അച്ഛനെ പരിസരത്തു കണ്ടുപോവരുതെന്ന്!! ഇത്ര ധൈര്യം ആര്&zwj;ക്കെന്നല്ലേ!!</p>', 'kaayikam-sports/2017/jan/12/സഞ്zwnjജുവിനെ-വിരട്ടി-അച്ഛനെ-പരിസരത്തു-കണ്ടുപോവരുതെന്ന്-ഇത്ര-ധൈര്യം-ആര്zwjക്കെന്നല്ലേ-19.html', '<p>തിരുവനന്തപുരം: കേരള ക്രിക്കറ്റ് ടീമിന്റെ മുന്&zwj; ക്യാപ്റ്റന്&zwj; സഞ്ജു വി സാംസണിന് കെസിഎയുടെ താക്കീത്. മോശം പെരുമാറ്റത്തിന്റെ പേരിലാണ് ദേശീയ താരം കൂടിയായ സഞ്ജുവിനെ കെസിഎ ഞെട്ടിച്ചത്.</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം: കേരള ക്രിക്കറ്റ് ടീമിന്റെ മുന്&zwj; ക്യാപ്റ്റന്&zwj; സഞ്ജു വി സാംസണിന് കെസിഎയുടെ താക്കീത്. മോശം പെരുമാറ്റത്തിന്റെ പേരിലാണ് ദേശീയ താരം കൂടിയായ സഞ്ജുവിനെ കെസിഎ ഞെട്ടിച്ചത്.</p>\n\n<p style="text-align: justify;">സഞ്ജുവിന്റെ അച്ഛന്&zwj; സാംസണ്&zwj; വിശ്വനാഥിനെതിരേയും കേരള ക്രിക്കറ്റ് അസോസിയേഷന്&zwj; നടപടിയെടുത്തിട്ടുണ്ട്.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">തെറ്റ് ഇനി ആവര്&zwj;ത്തിക്കില്ലെന്നു സഞ്ജു കെസിഎയ്ക്ക് കത്ത് നല്&zwj;കിയിരുന്നു. ഇതേത്തുടര്&zwj;ന്നാണ് താക്കീത് നല്&zwj;കി വിട്ടയച്ചത്. എന്നാല്&zwj; ഇനി സഞ്ജു തങ്ങളുടെ കര്&zwj;ശന നിരീക്ഷണത്തിലായിരിക്കുമെന്നും തെറ്റ് ആവര്&zwj;ത്തിച്ചാല്&zwj; കൂടുതല്&zwj; കടുത്ത നടപടികള്&zwj; സ്വീകരിക്കുമെന്നും കെസിഎ വ്യക്തമാക്കി.</p>', '', '', '', '', '', '', '2017/1/12/original/sanju-samson-2.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സഞ്‌ജുവിനെ വിരട്ടി, അച്ഛനെ പരിസരത്തു കണ്ടുപോവരുതെന്ന്!! ഇത്ര ധൈര്യം ആര്‍ക്കെന്നല്ലേ!!', '', 0, 0, 'P'),
(20, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 16:49:00', '0000-00-00 00:00:00', '2017-01-12 16:49:00', '<p>മുംബൈയില്&zwj; സച്ചിനെക്കൂടാതെ മറ്റൊരു ക്രിക്കറ്റ് ദൈവമോ? ആരാണത്!!!</p>', 'kaayikam-sports/2017/jan/12/മുംബൈയില്zwj-സച്ചിനെക്കൂടാതെ-മറ്റൊരു-ക്രിക്കറ്റ്-ദൈവമോ-ആരാണത്-20.html', '<p>മുംബൈ: ഇന്ത്യന്&zwj; ക്രിക്കറ്റിലെ ദൈവമെന്ന വിശേഷണം ആരാധകര്&zwj; നല്&zwj;കിയത് ഒരേയൊരു താരത്തിനാണ്. ബാറ്റിങ് വിസ്മയമായ സച്ചിന്&zwj; ടെണ്ടുക്കറാണ് ആ ആരാധനാപാത്രം. എന്നാല്&zwj; സച്ചിനെപ്പോലെ ദൈവതുല്യമായി ആരാധിക്കുന്ന ഒരു ത</p>', '<p>മുംബൈ: ഇന്ത്യന്&zwj; ക്രിക്കറ്റിലെ ദൈവമെന്ന വിശേഷണം ആരാധകര്&zwj; നല്&zwj;കിയത് ഒരേയൊരു താരത്തിനാണ്. ബാറ്റിങ് വിസ്മയമായ സച്ചിന്&zwj; ടെണ്ടുക്കറാണ് ആ ആരാധനാപാത്രം. എന്നാല്&zwj; സച്ചിനെപ്പോലെ ദൈവതുല്യമായി ആരാധിക്കുന്ന ഒരു താരം കൂടി ഇന്ത്യക്കുണ്ട്.</p>\n\n<p style="text-align: justify;">ഇന്ത്യക്ക് ലോകകപ്പുള്&zwj;പ്പെടെയുള്ള നേട്ടങ്ങള്&zwj; സമ്മാനിച്ച് അടുത്തിടെ സ്ഥാനമൊഴിഞ്ഞ ക്യാപ്റ്റന്&zwj; മഹേന്ദ്രസിങ് ധോണി.ഇംഗ്ലണ്ടിനെതിരായ സന്നാഹമല്&zwj;സരത്തില്&zwj; കളിക്കാന്&zwj; മുംബൈയിലെത്തിയപ്പോഴാണ് ധോണിക്ക് ദൈവതുല്യമായ ആരാധന ലഭിച്ചത്.</p>\n\n<p style="text-align: justify;">ഇത്തരമൊരു ആരാധന സച്ചിനു മാത്രമേ മുമ്പ് ലഭിച്ചിട്ടുള്ളൂ. 2013 ജനുവരിയില്&zwj; നടന്ന രഞ്ജി ട്രോഫി മല്&zwj;സരത്തിനിടെയാണ് സച്ചിന്&zwj; സെഞ്ച്വറി നേടിയപ്പോള്&zwj; കാണികളിലൊരാള്&zwj; ഗ്രൗണ്ടിലെത്തി അദ്ദേഹത്തിന്റെ കാല്&zwj; തൊട്ടു വന്ദിച്ചത്.</p>', '', '', '', '', '', '', '2017/1/12/original/sachin.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മുംബൈയില്‍ സച്ചിനെക്കൂടാതെ മറ്റൊരു ക്രിക്കറ്റ് ദൈവമോ? ആരാണത്!!!', '', 0, 0, 'P'),
(21, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 16:53:00', '0000-00-00 00:00:00', '2017-01-13 08:31:00', '<p>മാഞ്ചസ്റ്റര്&zwj; യുനൈറ്റഡിന് ജയം, ഫൈനലിനരികെ, പക്ഷേ ഇങ്ങനെ ജയിച്ചാല്&zwj;</p>', 'kaayikam-sports/2017/jan/12/മാഞ്ചസ്റ്റര്zwj-യുനൈറ്റഡിന്-ജയം-ഫൈനലിനരികെ-പക്ഷേ-ഇങ്ങനെ-ജയിച്ചാല്zwj-21.html', '<p>ലണ്ടന്&zwj;: ഹൊസെ മൗറിഞ്ഞോക്ക് കീഴില്&zwj; മാഞ്ചസ്റ്റര്&zwj; യുനൈറ്റഡ് നേടുന്ന ആദ്യ കിരീടം ഇ എഫ്് എല്&zwj; കപ്പ് ആകുമോ ! ഇ എഫ്&nbsp;</p>', '<p>ലണ്ടന്&zwj;: ഹൊസെ മൗറിഞ്ഞോക്ക് കീഴില്&zwj; മാഞ്ചസ്റ്റര്&zwj; യുനൈറ്റഡ് നേടുന്ന ആദ്യ കിരീടം ഇ എഫ്് എല്&zwj; കപ്പ് ആകുമോ ! ഇ എഫ് എല്&zwj; കപ്പില്&zwj; മാഞ്ചസ്റ്റര്&zwj; ഫൈനലിനരികെ. സെമിഫൈനലിന്റെ ആദ്യ പാദത്തില്&zwj; യുനൈറ്റഡ് എതിരില്ലാത്ത രണ്ട് ഗോളുകള്&zwj;ക്ക് ഹള്&zwj; സിറ്റിയെ കീഴടക്കി. രണ്ടാം പകുതിയില്&zwj; യുവാന്&zwj; മാറ്റയും ഫെലെയ്&zwnj;നിയുമാണ് ഗോളുകള്&zwj; നേടിയത്.</p>\n\n<p style="text-align: justify;">മൗറിഞ്ഞോ തന്റെ ഫസ്റ്റ് ഇലവനെ തന്നെയാണ് കളത്തിലിറക്കിയത്. എന്നിട്ടും ആദ്യപകുതിയില്&zwj; ഹള്&zwj; സിറ്റിയുടെ പ്രതിരോധ വലയം ഭേദിക്കുവാന്&zwj; സാധിച്ചില്ല. ആദ്യ പകുതിയില്&zwj; രണ്ട് തവണ മാത്രമാണ് ഗോളിലേക്ക് ലക്ഷ്യംവെക്കാന്&zwj; സാധിച്ചത്. മാറ്റയുടെ ഷോട്ട് ഗോളി എല്&zwj;ഡിന്&zwj; തടഞ്ഞപ്പോള്&zwj; പോള്&zwj; പോഗ്ബയുടെ ലോംഗ് റേഞ്ച് ശ്രമം ബാറിന് മുകളിലൂടെ പറന്നു.</p>', '', '', '', '', '', '', '2017/1/12/original/manchesterunited-2.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മാഞ്ചസ്റ്റര്‍ യുനൈറ്റഡിന് ജയം, ഫൈനലിനരികെ, പക്ഷേ ഇങ്ങനെ ജയിച്ചാല്‍ മതിയോ', '', 0, 0, 'P'),
(22, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 16:55:00', '0000-00-00 00:00:00', '2017-01-16 18:47:00', '<p>ധോണിയും യുവിയും റായുഡുവും അടിച്ചുപറത്തി</p>', 'kaayikam-sports/2017/jan/12/ധോണിയുംയുവിയുംറായുഡുവുംഅടിച്ചുപറത്തിപക്ഷേക്യാപ്റ്റന്zwjധോണിക്ക്തോല്zwjവിയോടെ-22.html', '<p>മുംബൈ: ഇന്ത്യ കണ്ട ഏറ്റവും മികച്ച ക്യാപ്റ്റന്മാരിലൊരാളായ എം എസ് ധോണിക്ക് തോല്&zwj;വിയോടെ വിട. ധോണി അവസാനമായി ഇന്ത്യയെ നയിച്ച കളി</p>', '<p style="text-align: justify;">മുംബൈ: ഇന്ത്യ കണ്ട ഏറ്റവും മികച്ച ക്യാപ്റ്റന്മാരിലൊരാളായ എം എസ് ധോണിക്ക് തോല്&zwj;വിയോടെ വിട. ധോണി അവസാനമായി ഇന്ത്യയെ നയിച്ച കളി, പരിശീലനത്സരമായിട്ടുപോലും സ്റ്റാര്&zwj; സ്&zwnj;പോര്ട്&zwnj;സ് ലൈവ് കാണിച്ചിരുന്നു. കളി കാണാനായി ആയിരങ്ങള്&zwj; മുംബൈയിലെ ബ്രാബോണ്&zwj; സ്&zwnj;റ്റേഡിയത്തിലെത്തി. അവര്&zwj; ധോണി ധോണി എന്ന് ആര്&zwj;ത്തുവിളിച്ചു. പ്രതീക്ഷ തെറ്റിക്കാതെ ധോണി അടിച്ചുപറത്തുകയും ചെയ്തു.</p>', '', '', '', '', '', '', '2017/1/12/original/msdhoni.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ധോണിയും യുവിയും റായുഡുവും അടിച്ചുപറത്തി.. പക്ഷേ ക്യാപ്റ്റന്‍ ധോണിക്ക് തോല്‍വിയോടെ ഗുഡ് ബൈ, കഷ്ടം', '', 0, 0, 'P'),
(23, NULL, 6, 'ചലച്ചിത്രം', NULL, '', NULL, '', 0, '2017-01-12 16:57:00', '0000-00-00 00:00:00', '2017-01-17 14:45:00', '<p>ക്യാറ്റിൽ മിന്നും ജയം, പക്ഷേ നിലഞ്ജന്&zwj; ഐഐഎമ്മിലേക്കില്ല</p>', 'chalachithram-film/2017/jan/12/ക്യാറ്റിൽ-മിന്നും-ജയം-പക്ഷേ-നിലഞ്ജന്zwj-ഐഐഎമ്മിലേക്കില്ല-23.html', '', '<p style="text-align: justify;">ഇന്ത്യയിലെ ഏതൊരു മാനേജ്&zwnj;മെന്റ് വിദ്യാര്&zwj;ത്ഥിയുടെയും സ്വപ്ന സാക്ഷാത്ക്കാരമാണ് ഇന്ത്യന്&zwj; ഇന്&zwj;സ്റ്റിറ്റ്യൂട്ട് ഓഫ് മാനേജ്&zwnj;മെന്റുകളില്&zwj;(ഐഐഎം) പ്രവേശനം നേടുക എന്നത്. ഇതിനുള്ള പ്രവേശന പരീക്ഷയായ കോമണ്&zwj; അഡ്മിഷന്&zwj; ടെസ്റ്റ് എന്ന ക്യാറ്റ് പരീക്ഷയാകട്ടെ മിടുക്കരില്&zwj; മിടുക്കര്&zwj;ക്ക് മാത്രം ജയിച്ചു കയറാവുന്നതും. എന്നാല്&zwj; കഴിഞ്ഞ വര്&zwj;ഷം നടന്ന ക്യാറ്റ് പരീക്ഷയില്&zwj; 100 പേര്&zwj;സെന്റൈല്&zwj; നേടിയിട്ടും താന്&zwj; ഐഐഎമ്മിലേക്കില്ലേ എന്ന് പ്രഖ്യാപിച്ചിരിക്കുകയാണ് കോല്&zwj;ക്കത്ത സ്വദേശിയായ നിലഞ്ജന്&zwj; ദത്ത.</p>\n\n<p style="text-align: justify;">ജംഷെഡ്പൂരിലെ സേവ്യേഴ്&zwnj;സ് സ്&zwnj;കൂള്&zwj; ഓഫ് മാനേജ്&zwnj;മെന്റില്&zwj; നിന്ന് മാനേജ്&zwnj;മെന്റ് ബിരുദാനന്തര ബിരുദവും ഷിബ്പൂരിലെ ഇന്ത്യന്&zwj; ഇന്&zwj;സ്റ്റിറ്റ്യൂട്ട് ഓഫ് എന്&zwj;ജിനീയറിങ്ങ് സയന്&zwj;സ് ആന്&zwj;ഡ് ടെക്&zwnj;നോളജിയില്&zwj; നിന്ന് എഞ്ചിനീയറിങ്ങ് ബിരുദവും സ്വന്തമാക്കിയ നിലഞ്ജന്&zwj; കോച്ചിങ്ങൊന്നും ഇല്ലാതെയാണ് ക്യാറ്റില്&zwj; വിജയതിലകമണിഞ്ഞത്. ബുദ്ധിമുട്ടേറിയ ചോദ്യങ്ങള്&zwj;ക്ക് തല പുകച്ച് സമയം കളയാതെ ശ്രദ്ധാപൂര്&zwj;വം ചിന്തിച്ച് ആവശ്യമുള്ളയത്ര ചോദ്യങ്ങള്&zwj;ക്ക് മാത്രം ഉത്തരം നല്&zwj;കിയാല്&zwj; മതിയെന്നാണ് ക്യാറ്റില്&zwj; കപ്പടിക്കാന്&zwj; ആഗ്രഹിക്കുന്ന വിദ്യാര്&zwj;ത്ഥികള്&zwj;ക്കുള്ള നിലഞ്ജന്റെ ഉപദേശം. &nbsp;</p>', '', '', '', '', '', '', '2017/1/12/original/ent2.jpg', 'ent2', 'ent2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ക്യാറ്റിൽ മിന്നും ജയം, പക്ഷേ നിലഞ്ജന്‍ ഐഐഎമ്മിലേക്കില്ല', '', 0, 0, 'P'),
(24, NULL, 6, 'ചലച്ചിത്രം', NULL, '', NULL, '', 0, '2017-01-12 17:07:00', '0000-00-00 00:00:00', '2017-01-17 13:04:00', '<p>സമരത്തിനിടെ 203 തിയറ്ററുകളിൽ ഭൈരവ</p>', 'chalachithram-film/2017/jan/12/സമരത്തിനിടെ-203-തിയറ്ററുകളിൽ-ഭൈരവ-24.html', '<p>നിര്&zwj;മ്മാതാക്കള്&zwj;ക്ക് 60 ശതമാനവും തിയേറ്ററുകള്&zwj;ക്ക് 40 ശതമാനവും വിഹിതത്തിലാണ് ഭൈരവ റിലീസ്</p>', '<p>മലയാളചിത്രങ്ങളുടെ റിലീസ് പ്രതിസന്ധി നിലനിൽക്കുന്ന സാഹചര്യത്തിൽ വിജയ് ചിത്രം ഭൈരവ കേരളത്തിലെ തിയറ്ററുകളിൽ. സംസ്ഥാനത്തെ ഇരുന്നൂറോളം തിയറ്ററുകളിലാണ് ചിത്രം റിലീസിനെത്തുക. ബി, സി ക്ലാസ് തിയറ്റർ ഉടമകളുടെ സംഘടനയായ സിനി എക്സിബിറ്റേഴ്സ് അസോസിയേഷന്റെയും സർക്കാരിന്റെയും തിയറ്ററുകളിലും മൾട്ടിപ്ലെക്സുകളിലും ചിത്രമെത്തും. ലിബര്&zwj;ട്ടി ബഷീറിന്റെ നേതൃത്വത്തിലുള്ള ഫിലിം എക്സിബിറ്റേഴ്സ് ഫെഡറേഷന്റെ കീഴിലുള്ള തിയറ്ററുകളിലും ഭൈരവ റിലീസിനെത്തിയിട്ടുണ്ട്.</p>\n\n<p style="text-align: justify;">ഇന്ന് റിലീസ് ചെയ്യാനിരുന്ന മലയാള ചിത്രം കാംബോജി തിയറ്ററുകളുടെ ലഭ്യതക്കുറവിനെ തുടര്&zwj;ന്ന് മാറ്റിവെച്ചു. നിലവിലുള്ള തിയേറ്റര്&zwj; വിഹിതത്തില്&zwj; തന്നെയായിരിക്കും നാളെ മുതല്&zwj; ഭൈരവ റിലീസ് ചെയ്യുക. നിര്&zwj;മ്മാതാക്കള്&zwj;ക്ക് 60 ശതമാനവും തിയേറ്ററുകള്&zwj;ക്ക് 40 ശതമാനവും വിഹിതത്തിലാണ് ഭൈരവ റിലീസ് ചെയ്യുന്നതെന്ന് സംഘടനാ നേതാക്കള്&zwj; അറിയിച്ചു.</p>\n\n<p style="text-align: justify;">ഇന്ന് റിലീസ് ചെയ്യാനിരുന്ന മലയാള ചിത്രം കാംബോജി തിയറ്ററുകളുടെ ലഭ്യതക്കുറവിനെ തുടര്&zwj;ന്ന് മാറ്റിവെച്ചു. നിലവിലുള്ള തിയേറ്റര്&zwj; വിഹിതത്തില്&zwj; തന്നെയായിരിക്കും നാളെ മുതല്&zwj; ഭൈരവ റിലീസ് ചെയ്യുക. നിര്&zwj;മ്മാതാക്കള്&zwj;ക്ക് 60 ശതമാനവും തിയേറ്ററുകള്&zwj;ക്ക് 40 ശതമാനവും വിഹിതത്തിലാണ് ഭൈരവ റിലീസ് ചെയ്യുന്നതെന്ന് സംഘടനാ നേതാക്കള്&zwj; അറിയിച്ചു.</p>', '', '', '', '', '', '', '2017/1/12/original/ent3.jpg', 'ent3', 'ent3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സമരത്തിനിടെ 203 തിയറ്ററുകളിൽ ഭൈരവ', '', 0, 0, 'P'),
(25, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 17:08:00', '0000-00-00 00:00:00', '2017-01-16 11:22:00', '<p>ഫുട്&zwnj;ബോള്&zwj; പ്രേമികള്&zwj;ക്ക് സന്തോഷവാര്&zwj;ത്ത, വരാനിരിക്കുന്നത് 48ടീം</p>', 'kaayikam-sports/2017/jan/12/ഫുട്ബോള്-പ്രേമികള്ക്ക്-സന്തോഷവാര്ത്ത-വരാനിരിക്കുന്നത്-48ടീം-25.html', '<p>സൂറിച്ച്: ലോകകപ്പ് ഫുട്&zwnj;ബോളില്&zwj; ഭാവിയില്&zwj; കൂടുതല്&zwj; ടീമുകളുടെ പ്രകടനം ആരാധകര്&zwj;ക്ക് ആസ്വദിക്കാം. കൂടുതല്&zwj; രാജ്യങ്ങള്&zwj;ക്ക് അവസരം&nbsp;</p>', '<p>സൂറിച്ച്: ലോകകപ്പ് ഫുട്&zwnj;ബോളില്&zwj; ഭാവിയില്&zwj; കൂടുതല്&zwj; ടീമുകളുടെ പ്രകടനം ആരാധകര്&zwj;ക്ക് ആസ്വദിക്കാം. കൂടുതല്&zwj; രാജ്യങ്ങള്&zwj;ക്ക് അവസരം നല്&zwj;കുന്നതിനായി ലോകകപ്പിലെ ടീമുകളുടെ എണ്ണം വര്&zwj;ധിപ്പിക്കാന്&zwj; ഫിഫ തീരുമാനിച്ചു.</p>\n\n<p style="text-align: justify;">2026ലെ ലോകകപ്പ് മുതല്&zwj; 48 ടീമുകളെ ഉള്&zwj;പ്പെടുത്താന്&zwj; തീരുമാനിച്ചതായി ഫിഫ അറിയിച്ചു. പ്രസിഡന്റ് ജിയാനി ഇന്&zwj;ഫന്റിനോയാണ് 48 ടീമുകള്&zwj; ഉള്&zwj;പ്പെടുന്ന ലോകകപ്പിനെക്കുറിച്ചുള്ള നിര്&zwj;ദേശം മുന്നോട്ട് വച്ചത്. ഇത് ഫിഫ കൗണ്&zwj;സില്&zwj; അംഗീകരിക്കുകയായിരുന്നു. ബ്രസീലില്&zwj; നടന്ന കഴിഞ്ഞ ലോകകപ്പില്&zwj; 32 ടീമുകളാണ് ഉണ്ടായിരുന്നത്.</p>', '', '', '', '', '', '', '2017/1/12/original/fifa-world-cup-trophy.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഫുട്‌ബോള്‍ പ്രേമികള്‍ക്ക് സന്തോഷവാര്‍ത്ത, വരാനിരിക്കുന്നത് 48 ടീം ലോകകപ്പ്!! പ്രഖ്യാപനം ഫിഫയുടേത്', '', 0, 0, 'P'),
(26, NULL, 6, 'ചലച്ചിത്രം', NULL, '', NULL, '', 0, '2017-01-12 17:09:00', '0000-00-00 00:00:00', '2017-01-17 13:02:00', '<p>കമലിന്റെ ആമിയാകാൻ വിദ്യ ഇല്ല; കാരണം</p>', 'chalachithram-film/2017/jan/12/കമലിന്റെ-ആമിയാകാൻ-വിദ്യ-ഇല്ല-കാരണം-26.html', '<p>പല തവണനീണ്ടുപോയ പ്രോജക്ട് ആണ് ആമി. 2015 സെപ്റ്റംബറില്&zwj; ആരംഭിക്കും എന്നായിരുന്നു വാര്&zwj;ത്തകള്&zwj;.</p>', '<p>മാധവിക്കുട്ടിയായി വിദ്യ മലയാളത്തിലെത്തില്ല. മലയാളി ആരാധകർ ആകംക്ഷയോടെ കാത്തിരുന്ന കമലിന്റെ ആമി എന്ന സിനിമയിൽ അഭിനയിക്കാനില്ലെന്ന് വിദ്യാ ബാലൻ. കമലാദാസിന്റെ ജീവിത കഥ പറയുന്ന ആമി എന്ന കമല്&zwj; ചിത്രത്തില്&zwj; നിന്നുമാണ് വിദ്യാബാലന്&zwj; പിന്മാറിയതായി നടിയുടെ ഔദ്യോഗിക വക്താവ് അറിയിച്ചു.</p>\n\n<p style="text-align: justify;">വിദ്യയ്ക്കും കമലിനും ഇടയിലുള്ള അഭിപ്രായ വ്യത്യാസങ്ങളാണ് പിന്മാറ്റത്തിന് കാരണമായി ചുണ്ടിക്കാട്ടിയിരിക്കുന്നത്. ആദ്യം സിനിമയുടെ കഥ ഇഷ്ടമായെന്നും കരാർ ഒപ്പിട്ടെന്നും വ്യക്തമാക്കിയ വക്താവ് ഇപ്പോള്&zwj; പറയുന്നത് അവസാന തിരക്കഥ താരത്തിന് ഇഷ്ടമായില്ലെന്നും അതുകൊണ്ടാണ് നോ പറഞ്ഞതെന്നുമാണ്.</p>\n\n<p style="text-align: justify;">പല തവണനീണ്ടുപോയ പ്രോജക്ട് ആണ് ആമി. 2015 സെപ്റ്റംബറില്&zwj; ആരംഭിക്കും എന്നായിരുന്നു വാര്&zwj;ത്തകള്&zwj;. ചിത്രത്തിനായി കമൽ മുംബൈയിലെത്തുകയും സംഗീതം അടക്കമുള്ള കാര്യങ്ങൾ മുൻകൂട്ടി ചെയ്തതുമാണ്. ചിത്രത്തിനായി വിദ്യ മലയാളം പഠിക്കുന്നുവെന്നും വാർത്ത വന്നിരുന്നു. എന്നാൽ പെട്ടന്നാണ് നടി പിന്മാറിയെന്ന വാർത്ത വരുന്നത്.</p>', '', '', '', '', '', '', '2017/1/12/original/ent4.jpg', 'ent4', 'ent4', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കമലിന്റെ ആമിയാകാൻ വിദ്യ ഇല്ല; കാരണം', '', 0, 0, 'P'),
(27, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 17:10:00', '0000-00-00 00:00:00', '2017-01-16 11:42:00', '<p>ഫിഫ ബ്ലെസ്റ്റ് പ്ലെയര്&zwj; ക്രിസ്റ്റ്യാനോ, ബെസ്റ്റ് കോച്ച് ക്ലോഡിയോ റാനിയേരി</p>', 'kaayikam-sports/2017/jan/12/ഫിഫ-ബ്ലെസ്റ്റ-27.html', '<p>സൂറിച്: ഫിഫയുടെ പ്രഥമ ബെസ്റ്റ് ഫിഫ ഫുട്&zwnj;ബോള്&zwj; അവാര്&zwj;ഡ്&zwnj;സ് സ്വിറ്റ്&zwnj;സര്&zwj;ലന്&zwj;ഡിലെ ഫിഫ ആസ്ഥാനമായ സൂറിചില്&zwj; പ്രഖ്യാപിച്ചു.</p>', '<p style="text-align: justify;">സൂറിച്: ഫിഫയുടെ പ്രഥമ ബെസ്റ്റ് ഫിഫ ഫുട്&zwnj;ബോള്&zwj; അവാര്&zwj;ഡ്&zwnj;സ് സ്വിറ്റ്&zwnj;സര്&zwj;ലന്&zwj;ഡിലെ ഫിഫ ആസ്ഥാനമായ സൂറിചില്&zwj; പ്രഖ്യാപിച്ചു. റയല്&zwj;മാഡ്രിഡിന്റെ പോര്&zwj;ച്ചുഗല്&zwj; താരം ക്രിസ്റ്റിയാനോ റൊണാള്&zwj;ഡോയാണ് ബെസ്റ്റ് പ്ലെയര്&zwj;. ലെസ്റ്റര്&zwj; സിറ്റി കോച്ച് ക്ലോഡിയോ റാനിയേരി ബെസ്റ്റ് കോച്ചായും അമേരിക്കയുടെ കാര്&zwj;ലി ലോയ്ഡ് ബെസ്റ്റ് വനിതാ ഫുട്&zwnj;ബോളറായും തിരഞ്ഞെടുക്കപ്പെട്ടു. മികച്ച വനിതാ പരിശീലകക്കുള്ള ബെസ്റ്റ് പുരസ്&zwnj;കാരം ജര്&zwj;മനിയുടെ സില്&zwj;വിയ നീദിനാണ്. ബെസ്റ്റ് ഗോളിനുള്ള പുഷ്&zwnj;കാസ് അവാര്&zwj;ഡ് മലേഷ്യന്&zwj; ക്ലബ്ബ് പെനാംഗിന്റെ മുഹമ്മദ് ഫൈസ് സുബ്രിക്ക് ലഭിച്ചു. ഫാന്&zwj; അവാര്&zwj;ഡ് ലിവര്&zwj;പൂളിന്റെയും ബൊറൂസിയ ഡോട്മുണ്ടിന്റെയും ആരാധക വൃന്ദത്തിന്. ഫെയര്&zwj; പ്ലേ പുരസ്&zwnj;കാരം കൊളംബിയന്&zwj; ക്ലബ്ബ് അത്&zwnj;ലറ്റിക്കോ നാഷനല്&zwj; ക്ലബ്ബിനാണ്.</p>', '', '', '', '', '', '', '2017/1/12/original/cristianoronaldo.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഫിഫ ബ്ലെസ്റ്റ് പ്ലെയര്‍ ക്രിസ്റ്റ്യാനോ, ബെസ്റ്റ് കോച്ച് ക്ലോഡിയോ റാനിയേരി! ബെസ്റ്റ് ഗോള്‍ ആരുടേത്?', '', 0, 0, 'P'),
(28, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 17:13:00', '0000-00-00 00:00:00', '2017-01-16 18:45:00', '<p>സൗരവ് ഗാംഗുലിക്ക് വധഭീഷണി; സുരക്ഷ ശക്തമാക്കും</p>', 'kaayikam-sports/2017/jan/12/സൗരവ്ഗാംഗുലിക്ക്വധഭീഷണിസുരക്ഷ-ശക്തമാക്കും-28.html', '<p>കൊല്&zwj;ക്കത്ത: മുന്&zwj; ഇന്ത്യന്&zwj; ക്രിക്കറ്റ് ക്യാപ്റ്റന്&zwj; സൗരവ് ഗാംഗുലിക്ക് വധഭീഷണിയുമായി.</p>', '<p>കൊല്&zwj;ക്കത്ത: മുന്&zwj; ഇന്ത്യന്&zwj; ക്രിക്കറ്റ് ക്യാപ്റ്റന്&zwj; സൗരവ് ഗാംഗുലിക്ക് വധഭീഷണിയുമായി കത്ത്. ഈ മാസം അഞ്ചിനാണ് വധ ഭീഷണി ഉണ്ടായതെന്ന് ബംഗാള്&zwj; ക്രിക്കറ്റ് അസോസിയേഷന്&zwj; പ്രസിഡന്റുകൂടിയായ ഗാംഗുലി പറഞ്ഞു. സംഭവം കൊല്&zwj;ക്കത്ത പോലീസിനെ അറിയിച്ചിട്ടുണ്ടെങ്കിലും ഔദ്യോഗികമായി പരാതി നല്&zwj;കിയിട്ടില്ല.</p>\n\n<p style="text-align: justify;">പശ്ചിമ ബംഗാളിലെ മിഡ്&zwnj;നാപൂര്&zwj; ജില്ലയില്&zwj; വിദ്യാസാഗര്&zwj; സര്&zwj;വകലാശാലയും ജില്ലാ സ്&zwnj;പോര്&zwj;ട്&zwnj;സ് അസോസിയേഷനും ഒരു പരിപാടി സംഘടിപ്പിച്ചിട്ടുണ്ട്. ഈ പരിപാടിയില്&zwj; പങ്കെടുത്താല്&zwj; വധിക്കുമെന്നാണ് ഭീഷണി. ജനുവരി 19നാണ് പരിപാടി നടത്താന്&zwj; നിശ്ചയിച്ചിരിക്കുന്നത്. അതേസമയം, പരിപാടിയില്&zwj; പങ്കെടുക്കുമോ എന്ന കാര്യം ഗാംഗുലി സ്ഥിരീകരിച്ചിട്ടില്ല.</p>', '', '', '', '', '', '', '2017/1/12/original/sourav-ganguly.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സൗരവ് ഗാംഗുലിക്ക് വധഭീഷണി; സുരക്ഷ ശക്തമാക്കും', '', 0, 0, 'P'),
(29, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 17:20:00', '0000-00-00 00:00:00', '2017-01-16 18:44:00', '<p>ക്രിസ്റ്റിയാനോ ലോകഫുട്&zwnj;ബോളറാകുമെന്ന് ബാഴ്&zwnj;സ ഉറപ്പിച്ചു</p>', 'kaayikam-sports/2017/jan/12/ക്രിസ്റ്റിയാനോ-ലോകഫുട്zwnjബോളറാകുമെന്ന്-ബാഴ്zwnjസ-ഉറപ്പിച്ചു-മെസി-അവാര്zwjഡ്-29.html', '<p>ബാഴ്&zwnj;സലോണ: ഫിഫ ലോകഫുട്&zwnj;ബോളറെ പ്രഖ്യാപിക്കുന്ന സൂറിചിലെ ഫിഫ ദ</p>', '<p>ബാഴ്&zwnj;സലോണ: ഫിഫ ലോകഫുട്&zwnj;ബോളറെ പ്രഖ്യാപിക്കുന്ന സൂറിചിലെ ഫിഫ ദ ബെസ്റ്റ് അവാര്&zwj;ഡ് ചടങ്ങില്&zwj; പങ്കെടുക്കാന്&zwj; ബാഴ്&zwnj;സലോണ ക്ലബ്ബ് മാനേജ്&zwnj;മെന്റ് ലയണല്&zwj; മെസിയോട് പോകേണ്ടെന്ന് നിര്&zwj;ദേശിച്ചു. മെസി മാത്രമല്ല ബാഴ്&zwnj;സ കളിക്കാരാരും തന്നെ ഈ ചടങ്ങില്&zwj; പങ്കെടുക്കില്ല. ക്രിസ്റ്റിയാനോക്കും അന്റോയിന്&zwj; ഗ്രീസ്മാനുമൊപ്പം ലോകഫുട്&zwnj;ബോളര്&zwj; പട്ടത്തിന് മെസിയും മത്സരരംഗത്തുണ്ട്. എന്നാല്&zwj;, ഇത്തവണ ക്രിസ്റ്റ്യാനോ റൊണാള്&zwj;ഡോയെ മറികടക്കുവാന്&zwj; മെസിക്ക് സാധിക്കില്ലെന്ന് വ്യക്തമായ ബോധ്യം വന്നതോടെയാണ് ബാഴ്&zwnj;സലോണയുടെ കൂട്ടത്തോടെയുള്ള പിന്&zwj;മാറ്റം.</p>\n\n<p>കളിക്കാര്&zwj;ക്ക് സുപ്രധാന മത്സരത്തിന് മുമ്പ് വിശ്രമം അനിവാര്യമാണ്. ദീര്&zwj;ഘയാത്ര ചെയ്യുന്നത് തിരിച്ചടിയാകുമെന്ന് മുന്നില്&zwj; കണ്ടാണ് ബാഴ്&zwnj;സയുടെ പിന്&zwj;മാറ്റം. അവാര്&zwj;ഡ് ചടങ്ങിന് ക്ഷണിച്ചതില്&zwj; ബാഴ്&zwnj;സ മാനേജ്&zwnj;മെന്റ് ഫിഫ പ്രസിഡന്റ് ജിയാനി ഇന്&zwj;ഫാന്റിനോയെ നന്ദി അറിയിക്കുകയും ചെയ്തു.</p>', '', '', '', '', '', '', '2017/1/12/original/messiandteam.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ക്രിസ്റ്റിയാനോ ലോകഫുട്‌ബോളറാകുമെന്ന് ബാഴ്‌സ ഉറപ്പിച്ചു, മെസി അവാര്‍ഡ് ചടങ്ങിനില്ല !!!', '', 0, 0, 'P'),
(30, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-12 17:23:00', '0000-00-00 00:00:00', '2017-01-12 17:23:00', '<p>എനിക്കു തോന്നി ഞാനത് ചെയ്തു: അലൻസിയർ പറയുന്നു</p>', 'jeevitham-life/2017/jan/12/എനിക്കു-തോന്നി-ഞാനത്-ചെയ്തു-അലൻസിയർ-പറയുന്നു-30.html', '<p>അതും ഈ ബസിൽ തന്നെ പോകണം. അങ്കമാലീലെ പ്രധാനമന്ത്രിയാ എന്റെ അമ്മാവൻ എന്ന് പറഞ്ഞ പോലൊരെണ്ണമാണല്ലോ എന്ന് ചിന്തിക്കാനാണ്</p>', '<p style="text-align: justify;">കൈലി മുണ്ടുടുത്ത് കയ്യിൽ കിലുക്കാം പെട്ടി കളിപ്പാട്ടവും പിടിച്ച് കാസർകോട്ടെ ഒരു പ്രൈവറ്റ് ബസിലേക്ക് ഒരാൾ ഓടിക്കയറി ഇന്നലെ. കക്ഷിയ്ക്ക് അമേരിയ്ക്കയ്ക്ക് പോകണം. അതും ഈ ബസിൽ തന്നെ പോകണം. അങ്കമാലീലെ പ്രധാനമന്ത്രിയാ എന്റെ അമ്മാവൻ എന്ന് പറഞ്ഞ പോലൊരെണ്ണമാണല്ലോ എന്ന് ചിന്തിക്കാനാണ് വന്നതെങ്കിൽ തെറ്റി. ആശാന്&zwj; കിടിലനാണ്, ആ ആശാന്റെ ഒറ്റയാൾ പോരാട്ടത്തിന് സല്യൂട്ട് പറയുകയാണ് കേരളം. വളരെ സിമ്പിളായി കിടുക്കനായി എങ്ങനെ ചില വികലമായ ചിന്തകൾക്കു മറുപടി പറയാമെന്നാണ് ആശാൻ കാണിച്ചു തന്നത്...ആശാന്റെ പേര് അലൻസിയർ. മ്മടെ ആർട്ടിസ്റ്റ് ബേബി തന്നെ. ആശാൻ പുലിയാണെന്ന് പറയുമ്പോൾ ഒരു കാര്യം പ്രത്യേകം അറിയണം, &zwnj;ആശാൻ പണ്ടേ പുലിയാണെന്ന്. ഇതിലും വലിയ കോളിളക്കങ്ങൾ രാജ്യത്ത് നടന്നപ്പോഴും അദ്ദേഹം ഇങ്ങനെയുള്ള സമരങ്ങൾ നടത്തിയുണ്ടെന്ന്. അന്ന് അദ്ദേഹം സിനിമാ നടൻ അല്ലാത്തതുകൊണ്ട് ആരും അറിഞ്ഞില്ല എന്നു മാത്രം.</p>\n\n<p style="text-align: justify;">ബാബറി മസ്ജിദ് തകർത്ത സമയത്ത്, ഇന്ത്യയൊന്നാകെ ഒരു കരിമേഘം മൂടിയ പോലെയായിരുന്നു. എപ്പോൾ വേണമെങ്കിലും പൊട്ടി പെയ്ത് എല്ലാം തച്ചുടയ്ക്കാൻ ശക്തിയുള്ളൊരു കാർമേഘം. എവിടെയും നിരോധനാ&zwj;ജ്ഞ പ്രഖ്യാപിച്ച സമയം. അന്ന് സെക്രട്ടേറിയേറ്റിനു ചുറ്റും അള്ളാഹു അക്ബർ എന്നു വിളിച്ച് ഓടി നടന്നിട്ടുണ്ട് അലൻസിയർ. നിരോധനാജ്ഞയല്ലേ, ആളുകൾ കൂട്ടം കൂടി നിൽക്കാൻ പാടില്ലല്ലോ. അതുകൊണ്ട് അലൻസിയർ ഒറ്റയ്ക്കോടി. ശിവസേനയുെട പ്രതിഷേധത്തെ തുടർന്ന് ഗുലാം അലി എന്ന പാക് സംഗീത പ്രതിഭ ഇന്ത്യയിൽ പാടാനാകാതെ മടങ്ങിയപ്പോൾ അദ്ദേഹത്തെ തിരിച്ചു കൊണ്ടു വന്നു വേദിയൊരുക്കിയതിൽ അലൻസിയറും പങ്കാളിയായി.</p>', '', '', '', '', '', '', '2017/1/12/original/jee1.jpg', 'jee1', 'jee1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'എനിക്കു തോന്നി ഞാനത് ചെയ്തു: അലൻസിയർ പറയുന്നു', '', 0, 0, 'P'),
(31, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-12 17:55:00', '0000-00-00 00:00:00', '2017-01-17 14:44:00', '<p>എമിറേറ്റ്&zwnj;സിന് പറ്റിയ അക്കിടി, ധോണിക്കു പകരം സുശാന്ത്</p>', 'kaayikam-sports/2017/jan/12/എമിറേറ്റ്zwnjസിന്പ-റ്റിയ-അക്കിടി-ധോണിക്കു-പകരം-സുശാന്ത്സെ-വാഗ്വെറുതെവിടുമോ-31.html', '<p>ന്യൂഡല്&zwj;ഹി: കളിക്കളത്തില്&zwj; നിന്നു വിടവാങ്ങിയെങ്കിലും ഇന്ത്യയുടെ വെടിക്കെട്ട്</p>', '<p>ന്യൂഡല്&zwj;ഹി: കളിക്കളത്തില്&zwj; നിന്നു വിടവാങ്ങിയെങ്കിലും ഇന്ത്യയുടെ വെടിക്കെട്ട് ഓപണര്&zwj; വീരേന്ദര്&zwj; സെവാഗ് ഇപ്പോഴും വാര്&zwj;ത്തകളില്&zwj; നിറഞ്ഞുനില്&zwj;ക്കുകയാണ്.</p>\n\n<p style="text-align: justify;">ട്വിറ്റര്&zwj; ഉള്&zwj;പ്പെടെയുള്ള സോഷ്യല്&zwj; മീഡിയകളിലൂടെ സെവാഗ് സജീവമാണ്. പുതിയൊരു ട്രോളുമായി സെവാഗ് രംഗത്തെത്തിക്കഴിഞ്ഞു.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">എമിറേറ്റ്&zwnj;സ് 24/7നു പിഴവ് പറ്റിയതു പോലെ സെവാഗിനും ചെറിയൊരു അബദ്ധം പറ്റി. എമിറേറ്റ്&zwnj;സ് എയര്&zwj;ലൈന്&zwj;സാണ് ഇത്തരമൊരു പോസ്റ്റ് ട്വിറ്ററില്&zwj; ഇട്ടതെന്നു കരുതിയായിരുന്നു സെവാഗിന്റെ ട്രോള്&zwj;. തന്റെ സാമ്യമുള്ള ഒരാളുടെ ചിത്രം പോസ്റ്റ് ചെയ്ത സെവാഗ് ഇങ്ങനെ കമന്റിടുകയും ചെയ്തു. നിങ്ങള്&zwj;ക്കൊപ്പം അധികം വൈകാതെ ഞാന്&zwj; യാത്ര ചെയ്യും. ഞാനാണെന്നു കരുതി പകരം ഇയാളെ വിമാനത്തില്&zwj; കയറ്റില്ലെന്നു പ്രതീക്ഷിക്കുന്നു.</p>', '', '', '', '', '', '', '2017/1/12/original/sehwag.jpg', '', '', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'എമിറേറ്റ്‌സിന് പറ്റിയ അക്കിടി, ധോണിക്കു പകരം സുശാന്ത്, സെവാഗ് വെറുതെവിടുമോ', '', 0, 0, 'P'),
(32, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-12 17:59:00', '0000-00-00 00:00:00', '2017-01-17 13:00:00', '<p>രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്&zwnj;ലെസ് ആയി ദിഷാ പട്ടാണി</p>', 'jeevitham-life/2017/jan/12/രത്നാനിയുടെ-സെലിബ്രിറ്റി-കലണ്ടറിൽ-ടോപ്zwnjലെസ്-ആയി-ദിഷാ-പട്ടാണി-32.html', '<p>ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്. കലണ്ടർ നാളെ പുറത്തിറങ്ങും.</p>', '<p>ബോളിവുഡിൽ നിന്നും ഹോട്ട്-സെക്&zwnj;സി സെലിബ്രിറ്റി കലണ്ടര്&zwj;. പുതുവര്&zwj;ഷത്തില്&zwj; പ്രമുഖബോളിവുഡ് താരങ്ങളെ ഉൾപ്പെടുത്തി മുഖ ഫാഷന്&zwj; ഫോട്ടോഗ്രാഫറായ ദാബൂ രത്നാനി കലണ്ടര്&zwj; പുറത്തിറങ്ങുന്നത് പതിവാണ്. ഇത്തവണയും പതിവ് തെറ്റിക്കാതെ രത്നാനി എത്തുന്നു.</p>\n\n<p style="text-align: justify;">ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്. കലണ്ടർ നാളെ പുറത്തിറങ്ങും.</p>', '', '', '', '', '', '', '2017/1/12/original/we100.jpg', 'we10', 'we100', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്‌ലെസ് ആയി ദിഷാ പട്ടാണി', '', 0, 0, 'P');
INSERT INTO `article` (`content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `linked_to_columnist`, `publish_start_date`, `publish_end_date`, `last_updated_on`, `title`, `url`, `summary_html`, `article_page_content_html`, `home_page_image_path`, `home_page_image_title`, `home_page_image_alt`, `section_page_image_path`, `section_page_image_title`, `section_page_image_alt`, `article_page_image_path`, `article_page_image_title`, `article_page_image_alt`, `column_name`, `hits`, `tags`, `allow_comments`, `allow_pagination`, `agency_name`, `author_name`, `author_image_path`, `author_image_title`, `author_image_alt`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `section_promotion`, `link_to_resource`, `status`) VALUES
(33, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-12 18:07:00', '0000-00-00 00:00:00', '2017-01-12 18:07:00', '<p>ആരാണ് ഗോഡ്സെ; വിനയ് പറയുന്നു</p>', 'jeevitham-life/2017/jan/12/ആരാണ്-ഗോഡ്സെ-വിനയ്-പറയുന്നു-33.html', '<p>ആരെയും എൻഗേജ് ചെയ്യുന്ന എന്റർടെയ്ൻ ചെയ്യുന്ന ചിത്രം തന്നെയാണു ഗോ&zwj;ഡ്സേ</p>', '<p style="text-align: justify;">വെറും വയറ്റിൽ മദ്യപിച്ചു കൊണ്ടു ഒരു ദിനം തുടങ്ങുന്ന ആകാശവാണി അനൗൺസറെയാണു ഗോഡ്&zwj;സേയിൽ അവതരിപ്പിച്ചിരിക്കുന്നത്. എനിക്കു തീർത്തും അന്യമായൊരിടത്ത്, വേറൊരു കാലഘട്ടത്തിൽ, തൊണ്ണൂറുകളുടെ പകുതിയില്&zwj; നടക്കുന്ന കഥയാണ് ഗോഡ്സേയിലുള്ളത്. തീർത്തും അരാജകവാദിയായൊരാളുടെ കഥ. ഇതൊക്കെയാണെങ്കിലും നല്ല കലാബോധവും ആഴത്തിലുള്ള സാഹിത്യ ബോധവുമുള്ള നല്ല സ്വരവുമൊക്കെയുള്ളയാൾ. ഗാന്ധിസത്തോടു പരമ പുച്ഛമുള്ള അദ്ദേഹം ഗാന്ധിമാർഗം എന്ന പരിപാടി ആകാശവാണിയിൽ അവതരിപ്പിക്കുന്നതോടെ ആ പാതയിലേക്കു വഴിമാറുന്നു. ഷട്ടർ എന്ന ജോയ് മാത്യു സിനിമയിൽ ചെയ്ത സുരയാണ് ഇത്തരത്തിലുള്ള മുൻ അനുഭവം എന്നു വേണമെങ്കിൽ പറയാം.</p>\n\n<p style="text-align: justify;">&lt;b&gt;എല്ലാവരെയും എൻഗേജ് ചെയ്യിക്കുന്ന ചിത്രം&lt;/b&gt;</p>\n\n<p style="text-align: justify;">താരതമ്യേന പുതിയൊരു നടനാണു ഞാൻ. ജീവിതത്തിൽ അത്ര ഭയങ്കര അനുഭങ്ങളൊന്നുമില്ലാത്തയാൾ. അങ്ങനെയുള്ളൊരാൾക്കു കഥാപാത്രമായി മാറുവാൻ സംവിധായകന്റെ സഹായം കൂടിയേ തീരു. ഞാൻ ഇതുവരെ ചെയ്ത സിനിമകളിൽ വച്ച് ഏറ്റവും ബ്രില്യന്റ് ആയ സംവിധായകനാണു ഗോഡ്സേ ചെയ്തത്. ലോക സിനിമകളെ കാണുകയും വിശകലനും ചെയ്യുകയും സംവിധാന രീതികളെ പഠിക്കുകയും ചെയ്തൊരാളാണ്. സിനിമയെ പല തലങ്ങളിൽ നിന്നു നോക്കിക്കാണുന്നൊരാൾ. സിനിമയുടെ എല്ലാ കാര്യങ്ങളും അറിയുന്നൊരാളായിരിക്കണം സംവിധായകൻ എന്നു പറയില്ലേ. അതുതന്നെയാണു ഗോഡ്സേയുടെ സംവിധായകനും. ഒരു സിനിമയെ മുഴുവനായി കാണുന്നത് സംവിധായകനാണല്ലോ. ഞാൻ എന്തെങ്കിലും നന്നായി സിനിമയിൽ ചെയ്തിട്ടുണ്ടെങ്കിൽ അതിനു നല്ല കഴിവുള്ള സംവിധായകന്റെ കയ്യൊപ്പുണ്ട്. ഇവിടെയും അതുപോലെ തന്നെ.</p>', '', '', '', '', '', '', '2017/1/12/original/we2.jpg', 'we2', 'we2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ആരാണ് ഗോഡ്സെ; വിനയ് പറയുന്നു', '', 0, 0, 'P'),
(34, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-12 18:10:00', '0000-00-00 00:00:00', '2017-01-17 13:07:00', '<p>വിൽപ്പത്രം രജിസ്&zwnj;ട്രേഷൻ...അറിയേണ്ട കാര്യങ്ങൾ</p>', 'jeevitham-life/2017/jan/12/വിൽപ്പത്രം-രജിസ്zwnjട്രേഷൻഅറിയേണ്ട-കാര്യങ്ങൾ-34.html', '<p>കൃത്രിമമായി രേഖകളുണ്ടാക്കി തട്ടിപ്പുകൾ നടത്തുന്നതിനു തടയിടാ&zwj;ൻ റജിസ്ട്രേഷൻ സഹായിക്കും.</p>', '<p>കേന്ദ്ര റജിസ്ട്രേഷൻ നിയമപ്രകാരവും ട്രാ&zwj;ൻസ്ഫർ ഓഫ് പ്രോപ്പർട്ടി നിയമപ്രകാരവുമുള്ള വ്യക്തികളും സ്ഥാപനങ്ങൾക്കും തയാറാക്കുന്ന കൈമാറ്റ രേഖകൾ സംസ്ഥാന സർക്കാരുകൾ നിയോഗിച്ചിട്ടുള്ള റജിസ്ട്രാർമാരുടെ മുൻപിൽ ഹാജരാക്കിയാണ് റജിസ്ട്രേഷൻ നടത്തുന്നത്. റജിസ്ട്രാർ അനുവദിച്ചാ&zwj;ൽ സംസ്ഥാന സർക്കാർ തീരുമാനിച്ചിട്ടുള്ള ഫീസുകളും സ്റ്റാംപ് ചാർജുകളും നൽകി നിയമപ്രകാരം സൂക്ഷിച്ചിട്ടുള്ള റജിസ്റ്ററുകളിൽ രേഖപ്പെടുത്തി റജിസ്റ്റർ ചെയ്തു നൽകും. റജിസ്ട്രേഷൻ നടത്തുകമൂലം രേഖകൾക്കു നിയമസാധുത ലഭിക്കുന്നതു കൂടാതെ പൊതുജനങ്ങൾക്ക് അറിയിപ്പ് നൽകുന്നതിനും സാധിക്കുന്നു. കൃത്രിമമായി രേഖകളുണ്ടാക്കി തട്ടിപ്പുകൾ നടത്തുന്നതിനു തടയിടാ&zwj;ൻ റജിസ്ട്രേഷൻ സഹായിക്കും.</p>\n\n<p style="text-align: justify;">നിയമപരമായി തയാറാക്കിയിട്ടുള്ള വിൽപ്പത്രങ്ങൾ റജിസ്ട്രേഷൻ നടത്തേണ്ടുന്ന രേഖകളുടെ പട്ടികയിൽപ്പെടുത്തിയിട്ടുണ്ട്. ആരോഗ്യകരമായ മാനസിക നിലയുള്ള വ്യക്തികൾ തയാറാക്കി ഒപ്പുവച്ച വിൽപ്പത്രങ്ങൾക്ക് മാത്രമാണ് നിയമസാധുത. സ്വതന്ത്രരായ രണ്ടു വ്യക്തികൾ സാക്ഷ്യപ്പെടുത്തിയാൽ മാത്രമേ സ്വമേധയാ തയാറാക്കിയ വിൽപ്പത്രമാണെന്ന് ഉറപ്പു വരുത്താനാവൂ. വിൽപ്പത്രങ്ങളി&zwj;ൽ പറയുന്ന വസ്തു, ഓഹരി എന്നിവ കൈമാറ്റം ചെയ്യാൻ റജിസ്ട്രേഷൻ നിർബന്ധമാണെനിരിക്കെ ഇത്തരം ആസ്തികളുടെ ഭാഗംവയ്പ് നിർദേശങ്ങൾ ഉൾപ്പെടുത്തിയിട്ടുള്ള വി&zwj;ൽപ്പതങ്ങൾ റജിസ്റ്റർ ചെയ്യുന്നത് വിൽപ്പത്രങ്ങളിൽ പറഞ്ഞിട്ടുള്ള കാര്യങ്ങൾ പ്രശ്നങ്ങളില്ലാതെ നടപ്പാക്കാൻ ഉപകരിക്കും. ഒരിക്കൽ റജിസ്റ്റർ ചെയ്തിട്ടുണ്ട് എന്ന കാരണത്താൽ വിൽപ്പത്രമെഴുതിയ വ്യക്തിക്ക് ജീവിച്ചിരിക്കുന്ന കാലത്തോളം അവ മാറ്റിയെഴുതുന്നതിനുള്ള അവകാശം നഷ്ടപ്പെടുന്നില്ല.</p>', '', '', '', '', '', '', '2017/1/12/original/we3.jpg', 'we3', 'we3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'വിൽപ്പത്രം രജിസ്‌ട്രേഷൻ...അറിയേണ്ട കാര്യങ്ങൾ', '', 0, 0, 'P'),
(35, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-12 18:32:00', '0000-00-00 00:00:00', '2017-01-17 14:44:00', '<p>രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്&zwnj;ലെസ് ആയി ദിഷാ</p>', 'jeevitham-life/2017/jan/12/രത്നാനിയുടെ-സെലിബ്രിറ്റി-കലണ്ടറിൽ-ടോപ്zwnjലെസ്-ആയി-ദിഷാ-പട്ടാണി-35.html', '<p>ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്. കലണ്ടർ നാളെ പുറത്തിറങ്ങും.</p>', '<p style="text-align: justify;">ബോളിവുഡിൽ നിന്നും ഹോട്ട്-സെക്&zwnj;സി സെലിബ്രിറ്റി കലണ്ടര്&zwj;. പുതുവര്&zwj;ഷത്തില്&zwj; പ്രമുഖബോളിവുഡ് താരങ്ങളെ ഉൾപ്പെടുത്തി മുഖ ഫാഷന്&zwj; ഫോട്ടോഗ്രാഫറായ ദാബൂ രത്നാനി കലണ്ടര്&zwj; പുറത്തിറങ്ങുന്നത് പതിവാണ്. ഇത്തവണയും പതിവ് തെറ്റിക്കാതെ രത്നാനി എത്തുന്നു.</p>\n\n<p>ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്. കലണ്ടർ നാളെ പുറത്തിറങ്ങും.</p>', '', '', '', '', '', '', '2017/1/12/original/we01.jpg', 'we1', 'we1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്‌ലെസ് ആയി ദിഷാ പട്ടാണി', '', 0, 0, 'P'),
(36, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 10:25:00', '0000-00-00 00:00:00', '2017-01-17 13:06:00', '<p>പരീക്ഷണത്തിൽ ആശങ്ക; ഉത്തരകൊറിയയുടെ മിസൈലുകൾ നിരീക്ഷിക്കാൻ യുഎസ് റഡാർ</p>', 'jeevitham-life/2017/jan/13/പരീക്ഷണത്തിൽ-ആശങ്ക-ഉത്തരകൊറിയയുടെ-മിസൈലുകൾ-നിരീക്ഷിക്കാൻ-യുഎസ്-റഡാർ-36.html', '<p>ഉത്തര കൊറിയയുടെ മിസൈലുകൾ മറ്റു രാജ്യങ്ങൾക്കു ഭീഷണി ഉയർത്തുന്നതാണെങ്കിൽ...</p>', '<p>വാഷിങ്ടൺ ∙ ഉത്തര കൊറിയയുടെ ഭൂഖണ്ഡാന്തര ബാലിസ്റ്റിക് മിസൈലുകളുടെ പരീക്ഷണപ്പറക്കൽ നിരീക്ഷിക്കാൻ അത്യാധുനിക റഡാറുമായി യുഎസ് കപ്പൽ ഹവായിയിൽ നിന്നു യാത്രതിരിച്ചു. തീരത്തുനിന്നു 3218 കിലോമീറ്റർ വടക്കുപടിഞ്ഞാറായി സമുദ്രത്തിൽ തന്നെ സ്ഥാനമുറപ്പിച്ചു റഡാർ കപ്പൽ കൊറിയൻ മിസൈലുകളുടെ സഞ്ചാരം നിരീക്ഷിക്കും.</p>\n\n<p style="text-align: justify;">ഉത്തര കൊറിയയുടെ മിസൈലുകൾ മറ്റു രാജ്യങ്ങൾക്കു ഭീഷണി ഉയർത്തുന്നതാണെങ്കിൽ മാത്രമേ അതു തടയുകയുള്ളൂവെന്നും കേവലം പരീക്ഷണ വിക്ഷേപണങ്ങളാണെങ്കിൽ നിരീക്ഷിക്കുക മാത്രമേ ചെയ്യുകയുള്ളൂവെന്നും യുഎസ് പ്രതിരോധ സെക്രട്ടറി ആഷ്കാർട്ടർ അറിയിച്ചു. സീ ബെയ്സ്ഡ് എക്സ്&ndash;ബാൻഡ് റഡാർ (എസ്ബിഎക്സ്) എന്നറിയപ്പെടുന്ന ഈ റഡാർ ഏറ്റവും പുതിയതും സങ്കീർണമായ സാങ്കേതിക ക്രമീകരണങ്ങൾ ഉള്ളതുമാണ്.</p>', '', '', '', '', '', '', '2017/1/13/original/top1.jpg', 'top1', 'top1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'പരീക്ഷണത്തിൽ ആശങ്ക; ഉത്തരകൊറിയയുടെ മിസൈലുകൾ നിരീക്ഷിക്കാൻ യുഎസ് റഡാർ', '', 0, 0, 'P'),
(37, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 10:29:00', '0000-00-00 00:00:00', '2017-01-17 13:55:00', '<p>മോദിയോട് ചോദ്യങ്ങൾ ഉന്നയിച്ച രാഹുലിനോട് മറുചോദ്യങ്ങളുമായി സ്മൃതി ഇറാനി</p>', 'jeevitham-life/2017/jan/13/മോദിയോട്-ചോദ്യങ്ങൾ-ഉന്നയിച്ച-രാഹുലിനോട്-മറുചോദ്യങ്ങളുമായി-സ്മൃതി-ഇറാനി-37.html', '<p>ന്യൂഡൽഹി∙ നോട്ട് അസാധുവാക്കലുമായി ബന്ധപ്പെട്ട് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദിയോട് ചോദ്യങ്ങൾ</p>', '<p>ന്യൂഡൽഹി∙ നോട്ട് അസാധുവാക്കലുമായി ബന്ധപ്പെട്ട് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദിയോട് ചോദ്യങ്ങൾ ചോദിച്ച കോൺഗ്രസ് ഉപാധ്യക്ഷൻ രാഹുൽ ഗാന്ധിക്ക് മറുപടിയുമായി കേന്ദ്രമന്ത്രി സ്മൃതി ഇറാനി. തിരിച്ച് മൂന്നു ചോദ്യങ്ങളാണ് രാഹുലിനോട് സ്മൃതി ഇറാനി ചോദിച്ചത്. കോൺഗ്രസിന്റെ ജൻ വേദന കൺവെൻഷനിലെ രാഹുലിന്റെ പ്രസംഗത്തിന്റെ ഭാഗങ്ങൾ വീണ്ടും ട്വീറ്റ് ചെയ്താണ് ചോദ്യങ്ങളുമായി സ്മൃതി രംഗത്തെത്തിയത്.</p>\n\n<p style="text-align: justify;">ചരിത്രത്തിലാദ്യമായാണ് ഒരു പ്രധാനമന്ത്രി ഇത്രയും അധിക്ഷേപിക്കപ്പെടുന്നതെന്ന രാഹുലിന്റെ പ്രസംഗഭാഗം മുൻ പ്രധാനമന്ത്രി മൻമോഹൻ സിങ്ങിനെ ടാഗ് ചെയ്താണ് റീട്വീറ്റ് ചെയ്തിരിക്കുന്നത്. മൻമോഹൻ സിങ്ങിനൊരു നിരുപദ്രവകരമായ ട്വീറ്റെന്നാണ് ഇറാനിയുടെ സന്ദേശം. നോട്ട് അസാധുവാക്കൽ യോഗ്യമല്ലാത്ത പ്രവർത്തിയായിരുന്നുവെന്ന രാഹുലിന്റെ പ്രസ്താവനയ്ക്ക് കോൺഗ്രസിന്റെ കാലത്തെ അഴിമതികൾ അക്കമിട്ടുനിരത്തിയാണ് മറുപടി. ടുജി, കൽക്കരി അഴിമതി, കോമൺവെൽത്ത് ഗെയിംസ്, അഗസ്റ്റ വെസ്റ്റ് ലാൻഡ്.. തുടങ്ങിയവയാണോ നിങ്ങളുടെ കാര്യപ്രാപ്തിയുടെ തെളിവെന്ന് അവർ ചോദിക്കുന്നു.</p>', '', '', '', '', '', '', '2017/1/13/original/top2.jpg', 'top2', 'top2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'മോദിയോട് ചോദ്യങ്ങൾ ഉന്നയിച്ച രാഹുലിനോട് മറുചോദ്യങ്ങളുമായി സ്മൃതി ഇറാനി', '', 0, 0, 'P'),
(38, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 10:34:00', '0000-00-00 00:00:00', '2017-01-17 14:43:00', '<p>ജിഷ്ണുവിന്റെ മരണം: മാനേജ്മെന്റിന്റേത് കണ്ണിൽ പൊടിയിടാനുള്ള നീക്കമെന്ന് വിദ്യാർഥികൾ</p>', 'jeevitham-life/2017/jan/13/ജിഷ്ണുവിന്റെ-മരണം-മാനേജ്മെന്റിന്റേത്-കണ്ണിൽ-പൊടിയിടാനുള്ള-നീക്കമെന്ന്-38.html', '', '<p style="text-align: justify;">തൃശൂർ∙ പാമ്പാടി നെഹ്റു കോളജിലെ ആരോപണ വിധേയരായ അധ്യാപകരെ സസ്പെൻഡ് ചെയ്തെങ്കിലും പ്രതിഷേധം തുടരാൻ വിദ്യാർഥികളുടെ തീരുമാനം. വൈസ് പ്രിൻസിപ്പൽ അടക്കമുള്ളവർക്കെതിരായ മാനേജ്മെന്റ് നടപടി ജിഷ്ണുവിന്റെ മരണത്തിലുള്ള കുറ്റസമ്മതമാണെന്നും വിദ്യാർഥികൾ പറഞ്ഞു. അതേസമയം സംഭവത്തെക്കുറിച്ചുള്ള സാങ്കേതിക സർവകലാശാലയുടെ അന്വേഷണ റിപ്പോർട്ട് സമർപ്പിക്കുന്നത് വൈകും.</p>\n\n<p style="text-align: justify;">കോപ്പിയടിച്ചുവെന്ന് ആരോപിച്ചു ജിഷ്ണുവിനെ മാനസികവും ശാരീരികവുമായി പീഡിപ്പിച്ചുവെന്ന് ആരോപണമുയർന്ന വൈസ് പ്രിൻസിപ്പൽ, അധ്യാപകൻ, പിആർഒ എന്നിവരെയാണ് ഇന്നലെ സസ്പെൻഡ് ചെയ്തത്. ജിഷ്ണു മരിച്ച് ഏഴാം നാളിറക്കിയ വാർത്താക്കുറിപ്പിൽ ദുഖം രേഖപ്പെടുത്തിയ മാനേജ്മെന്റ് ക്ലാസ് പുനരാരംഭിക്കാൻ സഹകരിക്കണമെന്ന് അഭ്യർഥിക്കുകയും ചെയ്തിരുന്നു.</p>\n\n<p style="text-align: justify;">എന്നാൽ മാനേജ്മെന്റ് നടപടി കണ്ണിൽ പൊടിയിട്ട് പ്രതിഷേധം അവസാനിപ്പിക്കാനുള്ള തന്ത്രം മാത്രമാണെന്നാണ് വിദ്യാർഥികളുടെ നിലപാട്. മാനേജ്മെന്റ് നിയോഗിച്ച അന്വേഷണ കമ്മിഷന്റെ റിപ്പോർട്ടിനെ തുടർന്നാണ് ആരോപണവിധേയരെ സസ്പെൻഡ് ചെയ്യുന്നതെന്നാണ് കോളജ് അറിയിച്ചത്. ഇതിൽനിന്നു തന്നെ ഇവരുടെ പീഡനമാണ് ജിഷ്ണു ജീവനൊടുക്കാൻ കാരണമെന്നു വ്യക്തമാകുന്നതായും വിദ്യാർഥികൾ പറയുന്നു. ആ സാഹചര്യത്തിൽ ഇവരെ സ്ഥിരമായി പുറത്താക്കുകയും നിയമപരമായ നടപടി സ്വീകരിക്കുകയും ചെയ്യുംവരെ പ്രതിഷേധം തുടരാനാണ് തീരുമാനം.</p>', '', '', '', '', '', '', '2017/1/13/original/top3.jpg', 'top3', 'top3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ജിഷ്ണുവിന്റെ മരണം: മാനേജ്മെന്റിന്റേത് കണ്ണിൽ പൊടിയിടാനുള്ള നീക്കമെന്ന് വിദ്യാർഥികൾ', '', 0, 0, 'P'),
(39, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 10:37:00', '0000-00-00 00:00:00', '2017-01-17 12:53:00', '<p>ശത്രുരാജ്യങ്ങൾക്ക് മുന്നറിയിപ്പ്; ചൈനയ്ക്ക് അതിസങ്കീർണ നിരീക്ഷണക്കപ്പൽ</p>', 'jeevitham-life/2017/jan/13/ശത്രുരാജ്യങ്ങൾക്ക്-മുന്നറിയിപ്പ്-ചൈനയ്ക്ക്-അതിസങ്കീർണ-നിരീക്ഷണക്കപ്പൽ-39.html', '<p>കഴിഞ്ഞ വർഷം 18 കപ്പലുകൾ കൂടി നാവികസേനയുടെ ഉപയോഗത്തിനായി ലഭിച്ചിരുന്ന</p>', '<p style="text-align: justify;">ബെയ്ജിങ് ∙ ചൈന വികസിപ്പിച്ചെടുത്ത അത്യാധുനിക ഇലക്ട്രോണിക് നിരീക്ഷണക്കപ്പൽ നാവികസേനയ്ക്കു കൈമാറിയതായി വെളിപ്പെടുത്തൽ. യുഎസിനും റഷ്യയ്ക്കും മാത്രം നിർമിക്കാൻ കഴിയുന്ന അതിസങ്കീർണമായ സംവിധാനങ്ങളുള്ള കപ്പലാണിത്. ഇത്തരം വിവരങ്ങൾ സാധാരണ പുറത്തുവിടാറില്ലാത്ത ചൈന ഇത്തവണ അങ്ങനെ ചെയ്തത് ദക്ഷിണ ചൈനാക്കടലിലെ ദ്വീപുകളിൽ അവകാശമുന്നയിക്കുന്ന രാജ്യങ്ങൾക്കുള്ള മുന്നറിയിപ്പായാണെന്നു കരുതുന്നു.</p>\n\n<p style="text-align: justify;">ഏതു സമയത്തും ഏതു കാലാവസ്ഥയിലും ഒരേസമയം വ്യത്യസ്ത കേന്ദ്രങ്ങളെ നിരീക്ഷിച്ചുകൊണ്ടിരിക്കാൻ കഴിയുന്ന സംവിധാനങ്ങളുള്ള സിഎൻഎസ് കൈയാങ്ഷിങ് എന്ന ഈ കപ്പൽ ഇന്റലിജൻസ് വിവരശേഖരണത്തിനായുള്ളതാണ്. ഇതേ ആവശ്യത്തിനായി അഞ്ചു കപ്പലുകൾകൂടി നാവികസേനയ്ക്കുണ്ട്. ഈ കപ്പലുകളുടെ സവിശേഷതകളും പതിവില്ലാതെ ചൈന വെളിപ്പെടുത്തി. കഴിഞ്ഞ വർഷം 18 കപ്പലുകൾ കൂടി നാവികസേനയുടെ ഉപയോഗത്തിനായി ലഭിച്ചിരുന്നു.</p>\n\n<p style="text-align: justify;">ഇപ്പോൾ ഒരു വിമാനവാഹിനിക്കപ്പൽ മാത്രമുള്ളതിനാൽ രണ്ടാമതൊന്നു കൂടി നിർമിച്ചുവരികയുമാണ്. ദക്ഷിണ ചൈനാക്കടലിലും കിഴക്കൻ ചൈനാക്കടലിലും എത്തുന്ന യുഎസ്, ജപ്പാൻ കപ്പലുകളുടെ നീക്കം ചൈന അടുത്തകാലത്തായി സസൂക്ഷ്മം നിരീക്ഷിച്ചുവരികയാണ്. ദക്ഷിണ ചൈനാക്കടലിന്റെ ഭൂരിഭാഗവും തങ്ങളുടെ അധീനതയിലാണെന്നും ഇവിടത്തെ ദ്വീപുകൾ തങ്ങളുടേതാണെന്നുമുള്ള ചൈനയുടെ അവകാശവാദത്തെ ബ്രൂണെയ്, മലേഷ്യ, ഫിലിപ്പീൻസ്, തയ്&zwnj;വാൻ, വിയറ്റ്നാം എന്നീ രാജ്യങ്ങൾ എതിർക്കുന്നതാണ് ഇവിടെ സംഘർഷം മുറുകാൻ കാരണം. വൻതോതിൽ എണ്ണ, വാതക നിക്ഷേപമുള്ളതാണ് ഈ മേഖല.</p>', '', '', '', '', '', '', '2017/1/13/original/top4.jpg', 'top4', 'top4', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ശത്രുരാജ്യങ്ങൾക്ക് മുന്നറിയിപ്പ്; ചൈനയ്ക്ക് അതിസങ്കീർണ നിരീക്ഷണക്കപ്പൽ', '', 0, 0, 'P'),
(40, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 10:45:00', '0000-00-00 00:00:00', '2017-01-17 13:54:00', '<p>വിദ്യ പോയാലും ആമി വരും; കമൽ വെളിപ്പെടുത്തുന്നു</p>', 'jeevitham-life/2017/jan/13/വിദ്യ-പോയാലും-ആമി-വരും-കമൽ-വെളിപ്പെടുത്തുന്നു-40.html', '<p>ആരാകും വെള്ളിത്തിരയിൽ മാധവിക്കുട്ടിയാകുകയെന്ന ചോദ്യത്തിനു കമൽ നൽകിയ</p>', '<p>&lsquo;അൺപ്രഫഷനൽ ആൻഡ് അൺഎത്തിക്കൽ. ചിത്രീകരണം തുടങ്ങാനുള്ള എല്ലാ ഒരുക്കങ്ങളും പൂർത്തിയായ ശേഷം വ്യക്തമായ കാരണം പോലും പറയാതെ ചിത്രത്തിൽ നിന്നു പിൻമാറിയ വിദ്യാബാലന്റെ നടപടിയെക്കുറിച്ചു മറ്റെന്താണു പറയുക&rsquo; - ചോദ്യം സംവിധായകൻ കമലിന്റേതാണ്. നീർമാതളം പോലെ മലയാളി മനസ്സുകളിൽ പൂത്തുലഞ്ഞ എഴുത്തിന്റെ തമ്പുരാട്ടി; കമലാദാസെന്ന മാധവിക്കുട്ടിയെന്ന കമല സുരയ്യ.</p>\n\n<p style="text-align: justify;">മലയാളത്തിനൊപ്പം ആംഗലേയ ഭാഷയിലും വിസ്മയിപ്പിക്കുന്ന രചനകൾ സമ്മാനിച്ച എഴുത്തുകാരിയുടെ ജീവിതം ചലച്ചിത്രമാകുന്നുവെന്ന വാർത്ത പോയ വർഷത്തെ വലിയ വിശേഷങ്ങളിലൊന്നായിരുന്നു. ആരാകും വെള്ളിത്തിരയിൽ മാധവിക്കുട്ടിയാകുകയെന്ന ചോദ്യത്തിനു കമൽ നൽകിയ മറുപടിയും ആരാധകശ്രദ്ധനേടി. മാധവിക്കുട്ടിയാകാൻ കമൽ കണ്ടെത്തിയതു വിദ്യാ ബാലനെ.</p>\n\n<p style="text-align: justify;">മാധവിക്കുട്ടിയെ അവതരിപ്പിക്കാൻ ഏറ്റവും യോജിച്ച നടിയെന്നു ചലച്ചിത്ര പ്രേമികൾ വാഴ്ത്തുകയും ചെയ്തു. മാധവിക്കുട്ടിയുടെ വേഷത്തിൽ വിദ്യയുടെ ചിത്രങ്ങൾ തരംഗവുമായി. അതോടെ, &lsquo;ആമി&rsquo;ക്കു വേണ്ടി മലയാളത്തിന്റെ കാത്തിരിപ്പും തുടങ്ങി. കേരളത്തിൽ വേരുകളുള്ള ബോളിവുഡ് സൂപ്പർ താരം പക്ഷേ, ഷൂട്ടിങ് ആരംഭിക്കാനിരിക്കെ അപ്രതീക്ഷിതമായി പിൻമാറിയത് അഭ്യൂഹങ്ങൾ ബാക്കിയാക്കിയാണ്. കമലിനും വിദ്യയ്ക്കും ചിത്രത്തെക്കുറിച്ചു വ്യത്യസ്ത സമീപനമായതിനാലാണു പിൻമാറുന്നതെന്നാണു വിദ്യയുടെ വക്താവിന്റെ വിശദീകരണം. ആരാകും പുതിയ ആമി ? &lsquo;വിദ്യ പിൻമാറിയെങ്കിലും പ്രോജക്ട് മുന്നോട്ടു പോകും. ആരാകും മാധവിക്കുട്ടിയെ അവതരിപ്പിക്കുകയെന്നു തീരുമാനിച്ചിട്ടില്ല. നിർമാതാവുമായി ആലോചിച്ചു തീരുമാനിക്കും&rsquo;- കമൽ പറയുന്നു.</p>', '', '', '', '', '', '', '2017/1/13/original/top5.jpg', 'top5', 'top5', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'വിദ്യ പോയാലും ആമി വരും; കമൽ വെളിപ്പെടുത്തുന്നു', '', 0, 0, 'P'),
(41, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-13 11:13:00', '0000-00-00 00:00:00', '2017-01-17 13:52:00', '<p>പുലിമുരുകന്റെ ചെരുപ്പ് ബിജുവിന്റെ സൃഷ്ടി</p>', 'keralam/2017/jan/13/പുലിമുരുകന്റെ-ചെരുപ്പ്-ബിജുവിന്റെ-സൃഷ്ടി-41.html', '<p>അണിയറ പ്രവർത്തകർ നൽകിയ ഡിസൈനിൽ നിന്നു വ്യത്യസ്തമായിട്ടാണു ബിജു ചെരുപ്പ് തുന്നിയത്</p>', '<p>കൊച്ചി ∙ പുലിമുരുകനൊപ്പം ഹിറ്റായതാണു മോഹൻലാൽ അണിഞ്ഞിരുന്ന തോൽ&nbsp; ചെരുപ്പും. ചെരുപ്പ് കാലടി കാഞ്ഞൂർ പുതിയേടത്ത് ബിജുവാണു നിർമിച്ചതെന്ന് അധികം പേർക്കറിയില്ല. വളഞ്ഞമ്പലം രാമൻകുട്ടിയച്ചൻ റോഡിൽ സൂരജ് ഷൂമാർട്ടിലെ തൊഴിലാളിയാണു ബിജു. പടത്തിന്റെ കോസ്റ്റ്യൂമർ അരുൺ മനോഹർ വഴിയാണു ബിജുവിനു മോഹൻലാലിനു ചെരുപ്പ് നിർമിക്കാൻ അവസരം ലഭിച്ചത്. കടയുടമ സുരേന്ദ്രനെ ചെരുപ്പ് നിർമിച്ചു നൽകണമെന്ന ആവശ്യവുമായി അരുൺ സമീപിക്കുകയായിരുന്നു.</p>\n\n<p style="text-align: justify;">അണിയറ പ്രവർത്തകർ നൽകിയ ഡിസൈനിൽ നിന്നു വ്യത്യസ്തമായിട്ടാണു ബിജു ചെരുപ്പ് തുന്നിയത്. ഒരു ദിവസം മുഴുവനും മാറ്റിവച്ചാണു ചെരുപ്പുണ്ടാക്കിയത്. ഫോട്ടോ ഷൂട്ടിനായി തയാറാക്കിയ ചെരുപ്പുകൾ ഇഷ്ടപ്പെട്ടതോടെ മൂന്നു ജോടി ചെരുപ്പുകളാണു സിനിമയ്ക്കായി നിർമിച്ചു നൽകിയത്. 2500 രൂപ വീതം ചെരുപ്പിനു നൽകുകയും ചെയ്തു. ഇതിനു മുൻപു &lsquo;ചന്ദ്രേട്ടൻ എവിടെയാ&rsquo; എന്ന ചിത്രത്തിലേക്കു ദിലീപിനു ബിജു ചെരുപ്പ് നിർമിച്ചിരുന്നു. പറ്റുമെങ്കിൽ മോഹൻലാലിനെ ഒന്നു കാണണമെന്നും ചെരുപ്പ് താനാണ് ഉണ്ടാക്കിയതെന്നു പറയണമെന്നും ബിജുവിനാഗ്രഹമുണ്ട്.</p>', '', '', '', '', '', '', '2017/1/13/original/nat12.jpg', 'nat12', 'nat12', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'പുലിമുരുകന്റെ ചെരുപ്പ് ബിജുവിന്റെ സൃഷ്ടി', '', 0, 0, 'P'),
(42, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-13 11:43:00', '0000-00-00 00:00:00', '2017-01-17 13:53:00', '<p>സ്കൂൾ കലോത്സവം കുട്ടികളുടേതാവട്ടെ</p>', 'kaayikam-sports/2017/jan/13/സ്കൂൾ-കലോത്സവം-കുട്ടികളുടേതാവട്ടെ-42.html', '<p>ഇക്കുറിയുമുണ്ടായി, ഉപജില്ലകളിലും ജില്ലകളിലും അപശബ്ദങ്ങൾ ഏറെ.</p>', '<p style="text-align: justify;">കൗമാരപ്രതിഭകൾ കലയുടെ തിരുമുടിയണിഞ്ഞു കണ്ണൂരിൽ നിറഞ്ഞാടുന്ന രാപകലുകളാണു 16 മുതൽ 22 വരെ മലയാളദേശത്തെ കാത്തിരിക്കുന്നത്. ഏഷ്യയിലെ ഏറ്റവും വലിയ കലാമേളയെന്ന തിലകച്ചാർത്ത് പതിറ്റാണ്ടുകളായി അനുഗ്രഹിക്കുന്ന സംസ്ഥാന സ്കൂൾ കലോത്സവത്തെപ്പോലൊന്ന് ലോകത്തുതന്നെ ഉണ്ടാവില്ലെന്നു നിസ്സംശയം നമുക്കു പറയാം.</p>\n\n<p style="text-align: justify;">കലയുടെ ഇത്രയും വലിയൊരു ഉത്സവത്തിലേക്കു മത്സരത്തിന്റെ മാത്രം കച്ചമുറുക്കിക്കെട്ടി കുട്ടികളെ പറഞ്ഞയയ്ക്കുമ്പോൾ യഥാർഥ കല തോറ്റുപോകാതിരിക്കാനുള്ള ആത്മാർഥതയാണു കേരളം പ്രതീക്ഷിക്കുന്നത്. കലോത്സവത്തെ നേർവഴിക്കു നയിക്കാനായി, കഴിഞ്ഞ ദിവസങ്ങളിൽ മലയാള മനോരമയിലൂടെ അനുഗൃഹീത കലാകാരൻമാരും ഉദ്യോഗസ്ഥരും ചൂണ്ടിക്കാണിച്ച നിർദേശങ്ങളുടെ സത്തയും ഇതുതന്നെ. ഇക്കുറിയുമുണ്ടായി, ഉപജില്ലകളിലും ജില്ലകളിലും അപശബ്ദങ്ങൾ ഏറെ.</p>\n\n<p style="text-align: justify;">കൊട്ടിക്കയറി വരുന്ന മേളംപോലെ സംസ്ഥാന കലോത്സവത്തിൽ അലങ്കോലത്തിന്റെ ധ്വനികൾക്കു ശബ്ദം കൂടാതിരിക്കട്ടെ എന്നാണു കലയെ സ്നേഹിക്കുന്നവരുടെ പ്രാർഥന. ഏതു സർക്കാരായാലും, മേനിയോടെ അണിയിച്ചൊരുക്കുകയും അവതരിപ്പിക്കുകയും ചെയ്യുന്നതിൽ മത്സരിക്കുന്ന മേള കൂടിയാണു സ്കൂൾ കലോത്സവം. പക്ഷേ, അതിനുതക്ക ശ്രദ്ധ പലപ്പോഴും ഇല്ലാതെ പോകുന്നതുകൊണ്ടാണു കലയുടെ മേള കലഹത്തിന്റേതായി മാറിപ്പോകാറുള്ളത്.</p>\n\n<p style="text-align: justify;">കലോത്സവത്തിലൂടെ മികച്ച കലാകാരൻമാരെ കണ്ടെത്തണമെന്നു നിഷ്ഠയുള്ളതുപോലെ, മികച്ച വിധികർത്താക്കളെ അണിനിരത്തണമെന്ന കർശനബുദ്ധി ഇല്ലാതെപോകുമ്പോൾ കലയിൽ വെള്ളം ചേർക്കപ്പെടുകയാണ്. കുട്ടികളായാലും രക്ഷിതാക്കളായാലും, വിധികർത്താക്കളുടെ തീരുമാനം അംഗീകരിക്കാനുള്ള മനസ്സുമായി കലോത്സവത്തിലേക്കു കടന്നുചെല്ലണമെന്ന നിർദേശം അങ്ങേയറ്റം പ്രസക്തമാണ്. വേദിയിലും പുറത്തും ഗുരുവും രക്ഷിതാവും അമിതമായി ഇടപെടുന്നതാണു കലാപങ്ങളുടെ മൂലകാരണമെന്നും മനോരമ ചർച്ചയിൽ അഭിപ്രായങ്ങൾ ഉയരുകയുണ്ടായി. ആയിരക്കണക്കിനു കുട്ടികളെ ഒരേമാനദണ്ഡത്തിൽ അളന്ന് അതിൽനിന്നു തിളക്കമേറെയുള്ളവരെ കണ്ടെത്തുകയെന്ന ഭഗീരഥയത്നത്തെ പങ്കിലമാക്കുന്ന പാപം സംഘാടകരും രക്ഷിതാക്കളും ചെയ്തുകൂടാ.</p>', '', '', '', '', '', '', '2017/1/13/original/tr1.jpg', 'tr1', 'tr1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സ്കൂൾ കലോത്സവം കുട്ടികളുടേതാവട്ടെ', '', 0, 0, 'P'),
(43, NULL, 7, 'കായികം', NULL, '', NULL, '', 0, '2017-01-13 11:54:00', '0000-00-00 00:00:00', '2017-01-17 13:02:00', '<p>ജിഷ്ണു കോപ്പിയടിച്ചിട്ടില്ലെന്നു കണ്ണീരോടെ അമ്മ; അത് എല്ലാവർക്കുമറിയാമെന്നു മന്ത്രി രവീന്ദ്രനാഥ്</p>', 'kaayikam-sports/2017/jan/13/ജിഷ്ണു-കോപ്പിയടിച്ചിട്ടില്ലെന്നു-കണ്ണീരോടെ-അമ്മ-അത്-എല്ലാവർക്കുമറിയാമെന്നു-മന്ത്രി-രവീന്ദ്രനാഥ്-43.html', '', '<p>നാദാപുരം ∙ മന്ത്രി സി. രവീന്ദ്രനാഥിനെ കണ്ടപ്പോൾ ജിഷ്ണുവിന്റെ അമ്മയ്ക്കു പറയാൻ ഒരുകാര്യമേ ഉണ്ടായിരുന്നുള്ളൂ: &lsquo; അവൻ കോപ്പിയടിച്ചിട്ടില്ല സാർ...&nbsp; കോപ്പിയടിക്കേണ്ട കാര്യം അവനില്ല...&rsquo;&nbsp; പാമ്പാടി നെഹ്&zwnj;റു എൻജിനീയിറിങ് കോളജിൽ ജീവനൊടുക്കിയ വിദ്യാർഥി ജിഷ്ണു പ്രണോയിയുടെ&nbsp; വളയം പൂവംവയലിലെ വീട്ടിൽ ഇന്നലെ രാവിലെ ഏഴരയോടെയാണു വിദ്യാഭ്യാസ മന്ത്രിയെത്തിയത്. അച്ഛൻ അശോകനും അമ്മ മഹിജയും കണ്ണീരിൽക്കുതിർന്ന വാക്കുകളിലൂടെ മന്ത്രിയോടു വേദന പങ്കുവച്ചു. എൻജിനീയറാകണമെന്നത് എട്ടാം ക്ലാസുമുതൽ ജിഷ്ണുവിന്റെ ലക്ഷ്യമായിരുന്നെന്നും അതിനായി നന്നായി പഠിച്ചിരുന്നെന്നും മാതാപിതാക്കൾ പറഞ്ഞു. &nbsp;</p>\n\n<p style="text-align: justify;"><br />\nജിഷ്ണു കോപ്പിയടിച്ചിട്ടില്ലെന്ന് എല്ലാവർക്കും മനസ്സിലായിയെന്നും അക്കാര്യം സർവകലാശാല വ്യക്തമാക്കിയിട്ടുണ്ടെന്നും മന്ത്രി മറുപടി നൽകി. ജിഷ്ണുവിന്റെ മരണത്തിനുത്തരവാദികളെ കണ്ടുപിടിച്ച് ശക്തമായ നടപടി സ്വീകരിക്കുമെന്നും ഉറപ്പുനൽകിയിട്ടാണു മന്ത്രി മടങ്ങിയത്. ജിഷ്ണുവിന്റെ മുത്തശ്ശി ചന്ദ്രിയെയും അദ്ദേഹം ആശ്വസിപ്പിച്ചു.അതേസമയം, മരണത്തിൽ ദുരൂഹതയുണ്ടെന്നും ശരീരത്തിലെ മർദനത്തിന്റെ പാടുകളും രക്തം കട്ടപിടിച്ചിരിക്കുന്നതും സംശയം ശക്തമാക്കുകയാണെന്നും ബന്ധുക്കൾ മന്ത്രിയോടു പറഞ്ഞു. ജിഷ്ണുവിന്റേതെന്നു പറയുന്ന ആത്മഹത്യാകുറിപ്പിനും വിശ്വാസ്യതയില്ല. മറ്റൊരു കോളജിലും പരീക്ഷ നടക്കാത്തപ്പോൾ നെഹ്&zwnj;റു കോളജിൽ മാത്രം പരീക്ഷ നടത്തിയതിനെ ജിഷ്ണു സാമൂഹിക മാധ്യമങ്ങൾ വഴി വിമർശിച്ചിരുന്നു.</p>', '', '', '', '', '', '', '2017/1/13/original/tr2.jpg', 'tr2', 'tr2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ജിഷ്ണു കോപ്പിയടിച്ചിട്ടില്ലെന്നു കണ്ണീരോടെ അമ്മ; അത് എല്ലാവർക്കുമറിയാമെന്നു മന്ത്രി രവീന്ദ്രനാഥ്', '', 0, 0, 'P'),
(44, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-13 11:57:00', '0000-00-00 00:00:00', '2017-01-17 14:42:00', '<p>വിജയ് പടം ഭൈരവ ഇറങ്ങി; ആവേശം അണപൊട്ടി</p>', 'jeevitham-life/2017/jan/13/വിജയ്-പടം-ഭൈരവ-ഇറങ്ങി-ആവേശം-അണപൊട്ടി-44.html', '<p>ഏരീസ് പ്ളക്സിൽ രാവിലെ അറിന് ആറുപ്രദർശനങ്ങളാണു നടന്നത്</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം∙ അണപൊട്ടിയ ആരാധകആവേശത്തിനു നടുവിൽ ഇളയ ദളപതി വിജയ് ചിത്രം ഭൈരവ തിയറ്ററുകളിൽ എത്തി. എ ക്ലാസ് തിയറ്ററുകളുടെ സംഘടന&nbsp; എക്സിബിറ്റേഴ്സ് ഫെഡറേഷന്റെ സമരത്തെ തുടർന്ന് ഇവരുടെ തിയറ്ററുകളെ ഒഴിവാക്കി സർക്കാർ തിയറ്ററുകളിലും ബി ക്ലാസ്, മൾട്ടിപക്ളസുകളിലുമാണു ചിത്രമെത്തിയത്.</p>\n\n<p style="text-align: justify;">നഗരത്തിൽ ഏരീസ് പ്ളക്സ്, സർക്കാർ തിയറ്ററുകളായ കലാഭവൻ, കൈരളി, ശ്രീ, നിള എന്നിവിട&zwnj;ങ്ങളിലാണു ചിത്രമെത്തിയത്. ആദ്യപ്രദർശനം ഏരീസിൽ രാവിലെ അറിന് ആരംഭിച്ചു. മിനിയാന്നു രാത്രി മുതൽ തന്നെ വിജയ് ആരാധകർ തിയറ്ററുകൾക്കു മുന്നിൽ തമ്പടിച്ച് ആഘോഷങ്ങൾ ആരംഭിച്ചിരുന്നു. കൂറ്റൻ കട്ടൗട്ടുകളിൽ വർണ കടലാസുകൾ വാരിവിതറിയും പാലഭിഷേകം നടത്തിയുമാണു ചിത്രത്തിന്റെ വരവ് ആരാധകർ ആഘോഷിച്ചത്. ഏരീസ് പ്ളക്സിൽ രാവിലെ അറിന് ആറുപ്രദർശനങ്ങളാണു നടന്നത്. ഇവിടെ ആദ്യദിനത്തിൽ 24 പ്രദർശനങ്ങൾ നടത്തി. കൂടാതെ സർക്കാർ തിയറ്ററുകളിലെത്&nbsp; ഉൾപ്പെടെ 44 പ്രദർശനങ്ങളാണ് ആദ്യദിനത്തിൽ നടത്തിയത്.</p>', '', '', '', '', '', '', '2017/1/13/original/tr3.jpg', 'tr3', 'tr3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'വിജയ് പടം ഭൈരവ ഇറങ്ങി; ആവേശം അണപൊട്ടി', '', 0, 0, 'P'),
(45, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-13 14:32:00', '0000-00-00 00:00:00', '2017-01-16 15:32:00', '<p>പാക്കിസ്ഥാന് കരസേന മേധാവിയുടെ മുന്നറിയിപ്പ്, &nbsp;ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം</p>', 'deseeyam-national/2017/jan/13/പാക്കിസ്ഥാന്-കരസേന-മേധാവിയുടെ-മുന്നറിയിപ്പ്-ആവശ്യമെങ്കിൽ-വീണ്ടും-മിന്നലാക്രമണം-45.html', '<p>സൈനികരുടെ ഭക്ഷണം സംബന്ധിച്ച പരാതികൾ സൈനികരുടെ തന്നെ വിഡിയോകൾ വഴി കഴിഞ്ഞ</p>', '<p>ന്യൂഡൽഹി∙ പാക്കിസ്ഥാന് വീണ്ടും മുന്നറിയിപ്പുമായി കരസേനാ മേധാവി ബിപിൻ റാവത്ത്. ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം നടത്തും. അതിർത്തികളിൽ നമുക്ക് ഏറെ...</p>\n\n<p style="text-align: justify;">സൈന്യത്തിലെ സൗകര്യങ്ങളെക്കുറിച്ച് ആർക്കെങ്കിലും പരാതിയുണ്ടെങ്കിൽ അവർക്ക് തന്നെ നേരിട്ട് ബന്ധപ്പെടാമെന്ന് കരസേന മേധാവി പറഞ്ഞു. സൈനിക ക്വാർട്ടേഴ്സിലും പരാതിപ്പെട്ടികൾ സ്ഥാപിച്ചിട്ടുണ്ട്. പരാതിപ്പെടുന്നവരെ നേരിട്ട് ബന്ധപ്പെടും. അവരുടെ പേരുവിവരങ്ങൾ ഒരിക്കലും പരസ്യപ്പെടുത്തില്ല. സമൂഹമാധ്യമങ്ങളിൽ കൂടെയല്ല വിവരങ്ങൾ പ്രസിദ്ധപ്പെടുത്തേണ്ടതെന്നും റാവത്ത് പറഞ്ഞു.</p>\n\n<p style="text-align: justify;">സൈനികരുടെ ഭക്ഷണം സംബന്ധിച്ച പരാതികൾ സൈനികരുടെ തന്നെ വിഡിയോകൾ വഴി കഴിഞ്ഞ ദിവസം സമൂഹമാധ്യമങ്ങളിലൂടെ പുറത്തുവന്നിരുന്നു.</p>', '', '', '', '', '', '', '2017/1/13/original/tr5.jpg', 'tr5', 'tr5', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'പാക്കിസ്ഥാന് കരസേന മേധാവിയുടെ മുന്നറിയിപ്പ്, ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം', '', 0, 0, 'P'),
(46, NULL, 1, 'കേരളം', NULL, '', NULL, '', 0, '2017-01-13 14:35:00', '0000-00-00 00:00:00', '2017-01-17 13:55:00', '<p>ബാർ കോഴക്കേസ്: ശങ്കർ റെഡ്ഡിക്കെതിരെ</p>', 'keralam/2017/jan/13/ബാർ-കോഴക്കേസ്-ശങ്കർ-റെഡ്ഡിക്കെതിരെ-തെളിവില്ലെന്ന്-വിജിലൻസ്-46.html', '<p>മുൻ മന്ത്രി കെ.എം.മാണിക്കെതിരായ ബാർകോഴക്കേസ് എൻ.ശങ്കർ റെഡ്ഡിയും എസ്പി</p>', '<p style="text-align: justify;">തിരുവനന്തപുരം∙ ബാർ കോഴക്കേസ് അന്വേഷണം അട്ടിമറിക്കാൻ ഇടപെട്ടുവെന്ന പരാതിയിൽ മുൻ വിജിലൻസ് ഡയറക്ടർ എൻ.ശങ്കർ റെഡ്ഡിക്കെതിരെ തെളിവില്ലെന്ന് വിജിലൻസ്. ത്വരിതാന്വേഷണ റിപ്പോർട്ട് വിജിലൻസ് കോടതിയിൽ സമർപ്പിച്ചു. ശങ്കർ റെഡ്ഡിയും എസ്പി: ആർ.സുകേശനും കേസ് അട്ടിമറിക്കാൻ ഇടപെട്ടതിന് തെളിവില്ല. കേസ് ഡയറിയിൽ കൂടുതൽ കാര്യങ്ങൾ ഉൾക്കൊള്ളിച്ചു. കേസിലെ ഇടപെടൽ അനാവശ്യമായിരുന്നു. പക്ഷേ, കേസെടുക്കാൻ ആവശ്യമായ തെളിവുകൾ ലഭിച്ചിട്ടില്ലെന്നും റിപ്പോർട്ടിൽ പറയുന്നു. 100 പേജുള്ള റിപ്പോർട്ടാണ് കോടതിയിൽ ഹാജരാക്കിയത്. റിപ്പോർട്ടും ശുപാർശയും തമ്മിൽ പൊരുത്തക്കേടുകളുണ്ടെന്ന് കോടതി നിരീക്ഷിച്ചു. അടുത്ത മാസം ഏഴിന് കേസിൽ വിധി പറയും.</p>\n\n<p style="text-align: justify;">മുൻ മന്ത്രി കെ.എം.മാണിക്കെതിരായ ബാർകോഴക്കേസ് എൻ.ശങ്കർ റെഡ്ഡിയും എസ്പി: ആർ.സുകേശനും ചേർന്ന് അട്ടിമറിക്കാൻ ശ്രമിച്ചെന്നായിരുന്നു പരാതി. സംഭവത്തിൽ കേസെടുത്ത് ത്വരിതാന്വേഷണം നടത്താൻ കോടതി ഉത്തരവിടുകയായിരുന്നു.</p>', '', '', '', '', '', '', '2017/1/13/original/tr6.jpg', 'tr6', 'tr6', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ബാർ കോഴക്കേസ്: ശങ്കർ റെഡ്ഡിക്കെതിരെ തെളിവില്ലെന്ന് വിജിലൻസ്', '', 0, 0, 'P'),
(47, NULL, 6, 'ചലച്ചിത്രം', NULL, '', NULL, '', 0, '2017-01-13 15:09:00', '0000-00-00 00:00:00', '2017-01-17 14:43:00', '<p>കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി, ഈ കറുപ്പാണ്</p>', 'chalachithram-film/2017/jan/13/കളറിന്റെ-പേരിൽ-തഴയപ്പെട്ടപ്പോൾ-കരഞ്ഞുപോയി-ഈ-കറുപ്പാണ്-ഇനി-എന്റെ-ഭാഗ്യം-47.html', '<p>ഇതോടെ മലയാളത്തിൽനിന്നു വന്ന കറുത്ത സുന്ദരി തമിഴ് കുടുംബപ്രേക്ഷകർക്കു ഏറ്റവും</p>', '<p style="text-align: justify;">കറുപ്പു നിറം സ്വന്തം ജീവിതത്തിൽ ഒരു ശാപമാണെന്നു കരുതിയ അതേ മനസ്സുകൊണ്ടു നടി ശ്രീപത്മ ഇപ്പോൾ തിരുത്തിപ്പറയുന്നു: &lsquo;ഈ കറുപ്പാണു ഇനി എന്റെ ഭാഗ്യം.&rsquo;</p>\n\n<p style="text-align: justify;">&lsquo;&lsquo;അന്നെനിക്കു മനസ്സിലായി, ഞാനൊരു ഫോട്ടോജനിക്കാണ്. മേക്കപ്പണിഞ്ഞുള്ള ചിത്രങ്ങളിൽ നല്ല വെളുപ്പ്. എന്നാൽ നേരിട്ടു കാണുമ്പോൾ കറുപ്പുനിറം. ഒാഡിഷനു പോയി നിരാശയോടെ മടങ്ങേണ്ടിവന്ന നാളുകൾ ഇന്നും എന്റെ മനസ്സിലുണ്ട്. പല പ്രോജക്ടുകളും കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ ഞാൻ കരഞ്ഞുപോയിട്ടുണ്ട്.&rsquo;&rsquo;</p>\n\n<p style="text-align: justify;">കറുപ്പിനു ഏഴഴകാണെന്നു കണ്ടറിഞ്ഞത് തമിഴകമാണെന്നു ശ്രീപത്മ നന്ദിയാടെ ഒാർക്കുന്നു. ജയാ ടിവിയിൽ &lsquo;അവളപ്പടിതാൻ&rsquo; എന്ന സീരിയലിൽ രണ്ടു നായികമാരിലൊരുവളായി ശീപത്മ അസാധാരണമായ അഭിനയ മികവ് കാഴ്ചവച്ചു. ഇതോടെ മലയാളത്തിൽനിന്നു വന്ന കറുത്ത സുന്ദരി തമിഴ് കുടുംബപ്രേക്ഷകർക്കു ഏറ്റവും പ്രിയപ്പെട്ടവളായി. സിനിമയിലും സീരിയലിലും ഈ നടിക്ക് ധാരാളം അവസരങ്ങൾ ലഭിച്ചു.</p>', '', '', '', '', '', '', '2017/1/13/original/tr7.jpg', 'tr7', 'tr7', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി, ഈ കറുപ്പാണ് ഇനി എന്റെ ഭാഗ്യം', '', 0, 0, 'P'),
(48, NULL, 13, 'ജീവിതം', NULL, '', NULL, '', 0, '2017-01-16 11:14:00', '0000-00-00 00:00:00', '2017-01-17 12:58:00', '<p>ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തത് മഹത്തായ</p>', 'jeevitham-life/2017/jan/16/ബ്രെക്സിറ്റിലൂടെ-ബ്രിട്ടൻ-ചെയ്തത്-മഹത്തായ-48.html', '<p>ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തത് മഹത്തായ കാര്യമെന്ന് ഡോണൾഡ് ട്രംപ്</p>', '<p>ലണ്ടൻ∙ ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തതും ചെയ്തുകൊണ്ടിരിക്കുന്നതും മഹത്തായ കാര്യമെന്നു നിയുക്ത യുഎസ് പ്രസിഡന്റ് ഡോണൾഡ് ട്രംപ്. ബ്രിട്ടീഷ്, ജർമൻ മാധ്യമങ്ങൾക്കായി അനുവദിച്ച പ്രത്യേക അഭിമുഖത്തിലാണു ബ്രെക്സിറ്റിനുശേഷമുള്ള ബ്രിട്ടന്റെ നടപടികളെ ട്രംപ് വാനോളം പുകഴ്ത്തിയത്. ബ്രിട്ടനിലെ മുൻ ജസ്റ്റിസ് സെക്രട്ടറിയും ബ്രെക്സിറ്റ് ക്യാംപെയിനിലെ മുഖ്യ പ്രചാരകരിലൊരാളുമായ മൈക്കിൾ ഗൗവ് ആയിരുന്നു ട്രംപുമായി അഭിമുഖം നടത്തിയത്. യൂറോപ്യൻ യൂണിയനിൽനിന്നു പുറത്തുവരുന്നതിൽ ബ്രിട്ടൻ സമയോചിതമായ മിടുക്കുകാട്ടിയെന്നായിരുന്നു ട്രംപിന്റെ വിലയിരുത്തൽ.</p>\n\n<p style="text-align: justify;">പ്രസിഡന്റായി അധികാരമേറ്റാലുടൻതന്നെ ബ്രിട്ടനുമായി പുതിയ സ്വതന്ത്ര വ്യാപാര കരാർ ഒപ്പിടുന്നതിനുള്ള നടപടിക്രമങ്ങൾ ആരംഭിക്കുമെന്നും അദ്ദേഹം പ്രഖ്യാപിച്ചു. ബ്രിട്ടൻ യൂറോപ്യൻ യൂണിയനിൽനിന്നു പുറത്തുവന്നാൽ വ്യാപാര ഉടമ്പടികളിൽ ബ്രിട്ടന്റെ സ്ഥാനം ക്യൂവിൽ ഏറ്റവും പിന്നിലായിരിക്കും എന്നായിരുന്നു സ്ഥാനമൊഴിയുന്ന പ്രസിഡന്റ് ഒബാമയുടെ നിലപാട്.</p>', '', '', '', '', '', '', '2017/1/16/original/tt5.jpg', 'tt5', 'tt5', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തത് മഹത്തായ', '', 0, 0, 'P'),
(49, NULL, 3, 'പ്രവാസം', NULL, '', NULL, '', 0, '2017-01-16 12:11:00', '0000-00-00 00:00:00', '2017-01-17 10:39:00', '<p>ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർഎസ്സന എന്ത്</p>', 'pravasam-expatriate/2017/jan/16/ഇഷ്ടമില്ലാത്തവർ-രാജ്യംവിടണമെന്നു-പറയാൻ-ആർഎസ്എസിന്-എന്ത്-അവകാശം-പിണറായി-49.html', '<p>സൃഷ്ടിക്കുകയാണ്. ആര്&zwj;എസ്എസ് പ്രചാരകനായ നരേന്ദ്ര മോദി പ്രധാനമന്ത്രി സ്ഥാനത്തിരുന്ന് ജനാധിപത്യവിരുദ്ധ</p>', '<p>തിരുവനന്തപുരം ∙ തങ്ങള്&zwj;ക്ക് ഇഷ്ടപ്പെടാത്ത അഭിപ്രായം പറയുന്നവരോട് രാജ്യം വിട്ടുപോകാന്&zwj; പറയാന്&zwj; ആർഎസ്എസിന് എന്താണ് അവകാശമെന്ന് മുഖ്യമന്ത്രി പിണറായി വിജയൻ. ഫെയ്സ്ബുക് പേജിലെഴുതിയ കുറിപ്പിലാണ് മുഖ്യമന്ത്രി ആർഎസിഎസിനെ രൂക്ഷമായി വിമർശിച്ചത്. ഖാദിയുടെ കലണ്ടറിൽനിന്ന് മഹാത്മാ ഗാന്ധിയുടെ ചിത്രം മാറ്റി പകരം മോദിയുടെ ചിത്രം പതിപ്പിച്ചത് അൽപ്പത്തത്തിന്റെ അങ്ങേയറ്റമാണെന്നും പിണറായി കുറിച്ചു.</p>\n\n<p style="text-align: justify;">തങ്ങള്&zwj;ക്ക് ഇഷ്ടപ്പെടാത്ത അഭിപ്രായം പറയുന്നവരോട് രാജ്യം വിട്ടുപോകാന്&zwj; പറയാന്&zwj; ആര്&zwj;എസ്എസ്സുകാര്&zwj;ക്ക് എന്താണ് അവകാശം? ഇവിടെ എല്ലാവര്&zwj;ക്കും ജീവിക്കാന്&zwj; അവകാശമുണ്ട്. അത് മസസ്സിലാക്കാന്&zwj; തയ്യാറാകാതെ ആര്&zwj;എസ്എസ് പ്രകോപനം സൃഷ്ടിക്കുകയാണ്. ആര്&zwj;എസ്എസ് പ്രചാരകനായ നരേന്ദ്ര മോദി പ്രധാനമന്ത്രി സ്ഥാനത്തിരുന്ന് ജനാധിപത്യവിരുദ്ധ നിലപാടുകളാണ് തുടർച്ചയായി സ്വീകരിക്കുന്നത്</p>', '', '', '', '', '', '', '2017/1/17/original/yoga3.jpg', 'yoga3', 'yoga3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർ‌എസ്എസിന് എന്ത് അവകാശം പിണറായി', '', 0, 0, 'P'),
(50, NULL, 3, 'പ്രവാസം', NULL, '', NULL, '', 0, '2017-01-16 12:18:00', '0000-00-00 00:00:00', '2017-01-17 14:42:00', '<p>നായരെ മ്ലേച്ഛമായി ആക്രമിക്കുന്നത് ആ മനോനില</p>', 'pravasam-expatriate/2017/jan/16/നായരെ-മ്ലേച്ഛമായി-ആക്രമിക്കുന്നത്-ആ-മനോനില-വെച്ചാണ്-50.html', '<p>സ്വന്തം അനുഭവം വിളിച്ചുപറയാന്&zwj; ആരുടെയെങ്കിലും അനുമതി ആവശ്യമുണ്ടോ</p>', '<p>നോട്ട് പിന്&zwj;വലിച്ചത് ജനങ്ങള്&zwj;ക്ക് ദുരിതമായെന്ന് പറഞ്ഞ എം.ടി.വാസുദേവന്&zwj; നായരെ മ്ലേച്ഛമായി ആക്രമിക്കുന്നത് ആ മനോനില വെച്ചാണ്. നിങ്ങളാര് അങ്ങിനെ പറയാന്&zwj; എന്നാണ് ആര്&zwj;എസ്എസ്സിന്റെ ചോദ്യം. സ്വന്തം അനുഭവം വിളിച്ചുപറയാന്&zwj; ആരുടെയെങ്കിലും അനുമതി ആവശ്യമുണ്ടോ. ജനങ്ങള്&zwj; അംഗീകരിക്കുന്ന കലാകാരനാണ് കമല്&zwj;. അദ്ദേഹത്തോട് പാകിസ്ഥാനിലേക്ക് പോകാനാണ് പറയുന്നത്. എങ്ങോട്ടാണ് ഇവര്&zwj; ഈ നാടിനെ കൊണ്ടുപോകുന്നത്.</p>\n\n<p style="text-align: justify;">തങ്ങള്&zwj;ക്ക് ഇഷ്ടപ്പെടാത്ത അഭിപ്രായം പറയുന്നവരോട് രാജ്യം വിട്ടുപോകാന്&zwj; പറയാന്&zwj; ആര്&zwj;എസ്എസ്സുകാര്&zwj;ക്ക് എന്താണ് അവകാശം? ഇവിടെ എല്ലാവര്&zwj;ക്കും ജീവിക്കാന്&zwj; അവകാശമുണ്ട്. അത് മസസ്സിലാക്കാന്&zwj; തയ്യാറാകാതെ ആര്&zwj;എസ്എസ് പ്രകോപനം സൃഷ്ടിക്കുകയാണ്. ആര്&zwj;എസ്എസ് പ്രചാരകനായ നരേന്ദ്ര മോദി പ്രധാനമന്ത്രി സ്ഥാനത്തിരുന്ന് ജനാധിപത്യവിരുദ്ധ നിലപാടുകളാണ് തുടർച്ചയായി സ്വീകരിക്കുന്നത്</p>', '', '', '', '', '', '', '2017/1/16/original/prava1.jpg', 'prava1', 'prava1', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'നായരെ മ്ലേച്ഛമായി ആക്രമിക്കുന്നത് ആ മനോനില വെച്ചാണ്', '', 0, 0, 'P'),
(51, NULL, 3, 'പ്രവാസം', NULL, '', NULL, '', 0, '2017-01-16 12:27:00', '0000-00-00 00:00:00', '2017-01-17 13:54:00', '<p>ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർ&zwnj;എസ്എസിന്</p>', 'pravasam-expatriate/2017/jan/16/എസ്എസിന്-എന്ത്-അവകാശം-പിണറായി-ഇഷ്ടമില്ലാത്തവർ-രാജ്യംവിടണമെന്നു-51.html', '<p>സംസ്ഥാന പ്രസിഡന്റ് കുമ്മനം രാജശേഖരൻ ഇതിനോടകം പലകുറി ചർച്ചകളും നടത്തി</p>', '<p style="text-align: justify;">കോട്ടയം∙ പാർലമെന്റ് തിരഞ്ഞെടുപ്പു മുന്നിൽ കണ്ട് ബിജെപിയുടെ സംസ്ഥാന കൗൺസിലിന് ഇന്നു കോട്ടയത്തു തുടക്കം. ന്യൂനപക്ഷ മേഖലയിൽ സ്വാധീനം ഉറപ്പിക്കാനും കൗൺസിലിലൂടെ പാർട്ടി ലക്ഷ്യമിടുന്നു. കമലിനെതിരായ പരാമര്&zwj;ശത്തില്&zwj; പാര്&zwj;ട്ടിയില്&zwj; ഉയര്&zwj;ന്ന ഭിന്നതയും ചര്&zwj;ച്ചയാകും.</p>\n\n<p style="text-align: justify;">കുമ്മനം രാജശേഖരൻ സംസ്ഥാന അധ്യക്ഷനായതിനുശേഷം നിലവിൽവന്ന ഭരണസമിതിയുടെ ആദ്യ സംസ്ഥാന കൗൺസിലിനാണു കോട്ടയം വേദിയാകുന്നത്. പാർലമെന്റ് തിരഞ്ഞെടുപ്പിനു മുന്നോടിയായി കേന്ദ്രസർക്കാരിന്റെ വികസന പരിപാടികൾ താഴേത്തട്ടിലേക്കു എത്തിക്കാനുള്ള കർമപദ്ധതി ആവിഷ്കരിക്കുകയാണു മുഖ്യ അജൻഡ. ന്യൂനപക്ഷങ്ങൾക്കു സ്വാധീനമുള്ള കോട്ടയം തിരഞ്ഞെടുത്തതും ഇക്കാര്യം മുന്നിൽകണ്ടുതന്നെയാണ്. സഭാമേലധ്യക്ഷന്മാരുമായി സംസ്ഥാന പ്രസിഡന്റ് കുമ്മനം രാജശേഖരൻ ഇതിനോടകം പലകുറി ചർച്ചകളും നടത്തി.</p>\n\n<p style="text-align: justify;">ഉച്ചയ്ക്കുശേഷം ചേരുന്ന കോര്&zwj; കമ്മിറ്റി യോഗത്തിനു മുന്നോടിയായി സംസ്ഥാന അധ്യക്ഷനും ജനറല്&zwj; സെക്രട്ടറിമാരും പങ്കെടുക്കുന്ന നേതൃയോഗം ചേരും. വിവാദ വിഷയങ്ങളില്&zwj; ഉള്&zwj;പ്പെടെ ചര്&zwj;ച്ച നടക്കുമെന്ന് സംസ്ഥാന അധ്യക്ഷന്&zwj; കുമ്മനം രാജശേഖരന്&zwj; യോഗത്തിനു മുന്നോടിയായി മാധ്യമ പ്രവര്&zwj;ത്തകരോട് പറഞ്ഞു.</p>', '', '', '', '', '', '', '2017/1/16/original/prava2.jpg', 'prava2', 'prava2', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർ‌എസ്എസിന് എന്ത് അവകാശം പിണറായി', '', 0, 0, 'P'),
(52, NULL, 3, 'പ്രവാസം', NULL, '', NULL, '', 0, '2017-01-16 12:34:00', '0000-00-00 00:00:00', '2017-01-17 14:42:00', '<p>കുട്ടികളെ മയക്കുന്ന &lsquo;ടെക് ഭൂതം&rsquo;</p>', 'pravasam-expatriate/2017/jan/16/കുട്ടികളെ-മയക്കുന്ന-ടെക്-ഭൂതം-52.html', '<p>കുട്ടികളെ മയക്കുന്ന ഭൂതം ഒളിഞ്ഞിരിപ്പുണ്ട്. അച്ഛനമ്മമാർ അറിയേണ്ട കാര്യങ്ങൾ.</p>', '<p>മൊബൈലിന്റെയും ടാബിന്റെയും സ്ക്രീനിൽ നമ്മുടെ കുട്ടികളെ മയക്കുന്ന ഭൂതം ഒളിഞ്ഞിരിപ്പുണ്ട്. ഇനി നമ്മുടെ കൊച്ചു കേരളത്തിന്റെ കാര്യമെടുക്കാം. കുട്ടികൾക്ക് ഇപ്പോൾ കഴിക്കുന്ന ആപ്പിളിനേക്കാൾ പ്രിയം മൊബൈൽ ഫോണും ടാബുമാണ്. അയലത്തെയും സ്കൂളിലെയും കൂട്ടുകാരേക്കാൾ പ്രിയം കാർട്ടൂൺ കഥാപാത്രങ്ങളെയാണ്. മൈതാനത്തിറങ്ങി ഫുട്ബോളോ ക്രിക്കറ്റോ ഷട്ടിൽ ബാഡ്മിന്റനോ കളിക്കുന്നതിനേക്കാൾ താൽപര്യം മുറിക്കുള്ളിൽ വളഞ്ഞു കുത്തിയിരുന്ന് മൊബൈലിൽ ഗെയിം കളിക്കാനാണ്. കുട്ടികളെ ഇത്തരം ശീലങ്ങളിലേക്ക് എത്തിക്കുന്നതിൽ മാതാപിതാക്കൾക്കും പങ്കുണ്ട്. മൊബൈലും ടാബ്&zwnj;ലറ്റും പോലുള്ള ഗാഡ്ജറ്റുകളുടെ അമിത ഉപയോഗം തുടക്കത്തിലേ നിയന്ത്രിക്കണം. ഇതു മൂലമുണ്ടാകുന്ന ആരോഗ്യപരവും മാനസികപരവുമായുള്ള പ്രശ്നങ്ങൾ മനസ്സിലാക്കണം. മക്കൾ ബാല്യത്തിന്റെ എനർജിയോടെ വളരാൻ മാതാപിതാക്കൾ ഇനി പറയുന്ന കാര്യങ്ങൾക്കു കാതോർക്കൂ.അച്ഛനമ്മമാർ അറിയേണ്ട കാര്യങ്ങൾ.</p>', '', '', '', '', '', '', '2017/1/16/original/prava3.jpg', 'prava3', 'prava3', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'കുട്ടികളെ മയക്കുന്ന ‘ടെക് ഭൂതം’', '', 0, 0, 'P'),
(53, NULL, 3, 'പ്രവാസം', NULL, '', NULL, '', 0, '2017-01-16 12:56:00', '0000-00-00 00:00:00', '2017-01-17 13:04:00', '<p>അവൾ എൻെറ രാജകുമാരിയാണ് നിൻറെ അടിമയല്ല&nbsp;</p>', 'pravasam-expatriate/2017/jan/16/അവൾ-എൻെറ-രാജകുമാരിയാണ്-നിൻറെ-അടിമയല്ല--മകളുടെ-പങ്കാളിയോട്-ഷാരൂഖ്-പറയുന്നു-53.html', '<p>മകളുടെ പങ്കാളിക്കുവേണ്ട ഗുണഗണങ്ങളെക്കുറിച്ച് ഫെമിനക്കു നൽകിയ അഭമുഖത്തിൽ ഷാരൂഖ് പറയുന്നതിങ്ങനെ</p>', '<p>എൻെറ മകളെ ചുംബിക്കുന്നവൻെറ ചുണ്ടു ഞാൻ മുറിച്ചെടുക്കും എന്നുപറഞ്ഞുകൊണ്ടാണ് കോഫിവിത്ത് കരൺ എന്ന പരിപാടിയിൽ ഷാരൂഖ് എത്തിയത്.ഏതൊരച്ഛനെയും പോലെ മകളുടെ കാര്യത്തിൽ അൽപം സ്വാർത്ഥനും ശ്രദ്ധാലുവുമാണ് ഷാരൂഖ്. തൻറെ പ്രശസ്തി മകൾ സുഹാനയുടെ സ്വകാര്യതയ്ക്ക് തടസ്സം വരുത്തുന്നതിൽ തനിക്കു വിഷമമുണ്ടെന്നും മുൻപ് ചില അഭിമുഖങ്ങളിൽ ഷാരൂഖ് തുറന്നു പറഞ്ഞിട്ടുണ്ട്.</p>\n\n<p style="text-align: justify;">കോഫി വിത്ത് കരൺ എന്ന ഷോയിൽ അതിഥിയായെത്തിയപ്പോഴാണ് മകളെ ചുംബിക്കുന്നവൻെറ ചുണ്ടു മുറിച്ചെടുക്കുമെന്ന് ഷാരൂഖ് പ്രസ്താവിച്ചത്. ഷാരൂഖിൻെറ ഈ പ്രസ്താവന കാണികളിൽ ചിരിയുയർത്തിയെങ്കിലും മകളുടെ കാര്യത്തിൽ കക്ഷി അൽപം പൊസസീവ് ആണെന്നു തന്നെയാണ് പിന്നീടുള്ള അഭിമുഖങ്ങളിൽ നിന്നും വ്യക്തമാകുന്നത്. മകളുടെ പങ്കാളിക്കുവേണ്ട ഗുണഗണങ്ങളെക്കുറിച്ച് ഫെമിനക്കു നൽകിയ അഭമുഖത്തിൽ ഷാരൂഖ് പറയുന്നതിങ്ങനെ...</p>', '', '', '', '', '', '', '2017/1/16/original/prava.jpg', 'prava', 'prava', '', '0', '', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'അവൾ എൻെറ രാജകുമാരിയാണ് നിൻറെ അടിമയല്ല ; മകളുടെ പങ്കാളിയോട് ഷാരൂഖ് പറയുന്നു', '', 0, 0, 'P'),
(54, NULL, 2, 'ദേശീയം', NULL, '', NULL, '', 0, '2017-01-16 13:59:00', '0000-00-00 00:00:00', '2017-01-17 12:51:00', '<p>ഭ്രൂണഹത്യക്ക് അനുമതിനി യമവിദഗ ര്&zwj;പറയുന്നു</p>\n\n<p>&nbsp;</p>', 'deseeyam-national/2017/jan/16/ഭ്രൂണഹത്യക്ക്-അനുമതിnbsp-54.html', '<p><em><strong>ചരിത്രവിധി സുപ്രീം കോടതിയുടേത്-ദയാവധം ആവശ്യപ്പെട്ടുള്ള ഹര്&zwj;ജികളെയും തീരുമാനം സ്വാധീനിച്ചേക്കും-നിയമവിദഗ്ധര്&zwj; രണ്ടുതട്ടില്&zwj;</strong></em></p>\n\n<p>&nbsp;</p>', '<p>ആറുമാസം പ്രായമുള്ള ഭ്രൂണം നശിപ്പിക്കുന്നതിന് സുപ്രീംകോടതി അനുമതി നല്&zwj;കി. വളര്&zwj;ച്ചയെത്താത്ത ഭ്രൂണം നശിപ്പിക്കാന്&zwj; അനുവദിക്കണം എന്ന് അപേക്ഷിച്ച് കോടതിയെ സമീപിച്ച മഹാരാഷ്ട്രാ സ്വദേശിക്കാണ് അനുമതി. ഇന്ത്യയില്&zwj; ഭ്രൂണഹത്യ ശിക്ഷാര്&zwj;ഹമായ കുറ്റമാണ്. ഇതിനു മുന്&zwj;പ് കോടതിയില്&zwj; നിന്ന് ഇത്തരമൊരു അനുമതി ആര്&zwj;ക്കും നല്&zwj;കിയിട്ടുമില്ല.&nbsp;<br />\nദയാവധം ആവശ്യപ്പെട്ടുള്ള നിരവധി അപേക്ഷകള്&zwj; ഇപ്പോഴും സുപ്രീംകോടതിയില്&zwj; തുടരുന്നുണ്ട്. ഭ്രൂണഹത്യക്ക് ഇപ്പോള്&zwj; നല്&zwj;കിയ അനുമതി അത്തരം അപേക്ഷകളിലെ തീരുമാനത്തെക്കൂടി സ്വാധീനിക്കാന്&zwj; ഇടയുണ്ടെന്നു നിയമവിദഗ്ധര്&zwj; പറയുന്നു.</p>\n\n<p style="text-align: justify;">&nbsp;</p>', '2017/1/16/original/supremecourt.jpg', 'സ്ുപ്രീം കോടതി (ഫയല്‍ ചിത്രം)', 'sc', '2017/1/16/original/sadfa.jpg', 'സ്ുപ്രീം കോടതി (ഫയല്‍ ചിത്രം)', 'sc', '2017/1/16/original/barrr.jpg', 'സ്ുപ്രീം കോടതി (ഫയല്‍ ചിത്രം)', 'sc', '', '0', 'സുപ്രീം കോടതി, ഭ്രൂണഹത്യ, ദയാവധം', 1, 1, '', 'സ്വന്തം ലേഖകന്‍', '', '', '', 'India', 'Delhi', 'New Delhi', 0, 0, '', 'asdfadF', '', 1, 0, 'P'),
(57, NULL, 14, 'Home', NULL, '', NULL, '', 0, '2017-01-20 14:39:00', '0000-00-00 00:00:00', '2017-01-20 14:39:00', '<p>സ്ത്രീയും ജൂതനും ഹിന്ദുവും ഭാവിയില്&zwj; പ്രസിഡന്റ്: ഒബാമ</p>\n\n<p>&nbsp;</p>', 'home/2017/jan/20/സ്ത്രീയും-ജൂതനും-ഹിന്ദുവും-ഭാവിയില്zwj-പ്രസിഡന്റ്-ഒബാമ\n\nnbsp-57.html', '<p>വനിതാ പ്രസിഡന്റ് എന്ന മോഹം അസ്തമിച്ചിട്ടില്ല-ജൂതനും ലത്തീന്&zwj;കാരനും ഹിന്ദുവും വരെ ഭാവിയില്&zwj; പ്രസിഡന്റ് ആകാം</p>\n\n<p>&nbsp;</p>', '<p style="text-align: justify;">അമേരിക്കയ്ക്ക് ഒരു വനിതാ പ്രസിഡന്റ് എന്ന മോഹം അസ്തമിച്ചിട്ടില്ലെന്ന് സ്ഥാനമൊഴിയുന്ന പ്രസിഡന്റ് ബരാക് ഒബാമ. വനിത മാത്രമല്ല ലത്തീന്&zwj; പ്രസിഡന്റും ജൂത പ്രസിഡന്റും ഭാവിയില്&zwj; വരാം. ഒരു ഹിന്ദു പ്രസിഡന്റ് വന്നാലും അത്ഭുതപ്പെടാനില്ല.&nbsp;<br />\nപ്രസിഡന്റ് എന്ന നിലയില്&zwj; വൈറ്റ് ഹൗസില്&zwj; നടത്തിയ അവസാന വാര്&zwj;ത്താ സമ്മേളനത്തിലാണ് ഒബാമയുടെ പരാമര്&zwj;ശം. &#39;എല്ലാ വംശങ്ങളില്&zwj; നിന്നും വിശ്വാസങ്ങളില്&zwj; നിന്നും രാജ്യത്തിന്റെ എല്ലാ മൂലകളില്&zwj; നിന്നും കഴിവുള്ളവര്&zwj; പ്രസിഡന്റ് പദവിയില്&zwj; എത്തട്ടെ. അതാണ് അമേരിക്കയുടെ ശക്തി. അങ്ങനെ എല്ലാവര്&zwj;ക്കുമായി നമ്മള്&zwj; അവസരങ്ങള്&zwj; തുറന്നിട്ടിരിക്കുന്നതിനാല്&zwj; ഒരു സ്ത്രീക്കും ഈ പദവിയില്&zwj; എത്താം.&#39;<br />\n&#39;ചരിത്രത്തിന്റെ ഏതെങ്കിലും ഘട്ടത്തില്&zwj; നമുക്ക് മിശ്ര സംസ്&zwnj;കാരങ്ങളുടെ ഭാഗമായ പ്രസിഡന്റുമാര്&zwj; ഉണ്ടാകും. അവരെ ഏതു വിഭാഗമെന്ന് ആര്&zwj;ക്കും എടുത്തുപറഞ്ഞു വിശേഷിപ്പിക്കാന്&zwj; കഴിയാത്തത്ര മിശ്ര സംസ്&zwnj;കാരം ഉള്ളവര്&zwj;. &nbsp;ആ കാലവും ഏറെ അകലയെല്ല.&#39;അമേരിക്കയിലെ ആദ്യ മിശ്രവംശജനായ പ്രസിഡന്റ് കൂടിയായ ഒബാമ പറഞ്ഞു.&nbsp;<br />\nവെള്ളിയാഴ്ചയാണ് ഡൊണാള്&zwj;ഡ് ട്രംപ് വൈറ്റ് ഹൗസില്&zwj; സ്ഥാനമേല്&zwj;ക്കുന്നത്.</p>\n\n<p style="text-align: justify;">&nbsp;</p>', '', '', '', '', '', '', '2017/1/20/original/OBAMA.jpg', '', 'OBAMA', '', '0', 'obama', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'സ്ത്രീയും ജൂതനും ഹിന്ദുവും ഭാവിയില്‍ പ്രസിഡന്റ്: ഒബാമ', 'വനിതാ പ്രസിഡന്റ് എന്ന മോഹം അസ്തമിച്ചിട്ടില്ല-ജൂതനും ലത്തീന്‍കാരനും ഹിന്ദുവും വരെ ഭാവിയില്‍ പ്രസിഡന്റ് ആകാം', 1, 0, 'P'),
(58, NULL, 4, 'രാജ്യാന്തരം', NULL, '', NULL, '', 0, '2017-01-20 14:44:00', '0000-00-00 00:00:00', '2017-01-20 14:44:00', '<p>വാര്&zwj;ത്ത എഴുതുന്നത് സ്വന്തം യന്തിരന്&zwj;</p>\n\n<p>&nbsp;</p>', 'rajyandaram-international/2017/jan/20/വാര്zwjത്ത-എഴുതുന്നത്-സ്വന്തം-യന്തിരന്zwj\n\nnbsp-58.html', '<p>യന്ത്ര റിപ്പോര്&zwj;ട്ടര്&zwj; എഴുതിയ ആദ്യ വാര്&zwj;ത്ത പ്രസിദ്ധീകരിച്ച് ചൈനീസ് പത്രം- 300 അക്ഷരങ്ങളുള്ള വാര്&zwj;ത്ത യന്ത്രം എഴുതിയത് ഒരു മിനിറ്റ് കൊണ്ട്&zwnj;</p>\n\n<p>&nbsp;</p>', '<p style="text-align: justify;">മാധ്യമപ്രവര്&zwj;ത്തന രീതിയെ തന്നെ അമ്പരപ്പിച്ചുകൊണ്ട് ചൈനയില്&zwj; യന്ത്രമനുഷ്യന്&zwj; വാര്&zwj;ത്തയെഴുതി. ഗാങ് ഷോവില്&zwj; നിന്നു പ്രസിദ്ധീകരിക്കുന്ന സതേണ്&zwj; മെട്രോപോളിസ് ഡെയില് ഇന്നലെ അതു പ്രസിദ്ധീകരിക്കുകയും ചെയ്തു.&nbsp;<br />\n300 അക്ഷരങ്ങളുള്ള വാര്&zwj;ത്ത ഒറ്റ സെക്കന്&zwj;ഡുകൊണ്ടാണ് ഷിയോ നാന്&zwj; എന്നു പേരിട്ടിരിക്കുന്ന യന്ത്രറിപ്പോര്&zwj;ട്ടര്&zwj; പൂര്&zwj;ത്തിയാക്കിയത്. ചൈനയിലെ വസന്തോല്&zwj;വത്തിലെ തിരക്കിനെക്കുറിച്ചായിരുന്നു റിപ്പോര്&zwj;ട്ട്. നെടുനീളന്&zwj; ലേഖനങ്ങളും കുറുവാര്&zwj;ത്തകളും എഴുതാന്&zwj; ഒരുപോലെ സജ്ജമാണ് ഷിയോ നാന്&zwj; എന്ന് ഗവേഷകന്&zwj; വാന്&zwj; ഷിയോങ് പറയുന്നു. പീകിങ് സര്&zwj;വകലാശാലയിലെ പ്രഫസറായ വാന്&zwj; ആണ് ഷിയോയുടെ സൃഷ്ടിക്കു പിന്നില്&zwj;.&nbsp;<br />\nമനുഷ്യരായ സ്വന്തം ലേഖകന്മാര്&zwj;ക്കു ബദലായി യന്ത്രങ്ങളായ സ്വന്തം ലേഖകന്മാര്&zwj; വരുമോ എന്ന ചോദ്യത്തിന് വാന്&zwj; പറയുന്ന മറുപടി:<br />\n&#39;മനുഷ്യവര്&zwj;ഗ്ഗത്തില്&zwj;പ്പെട്ടവരുമായി താരതമ്യപ്പെടുത്തിയാല്&zwj; ഷിയോ നാന് കാര്യങ്ങള്&zwj; അപഗ്രഥിക്കാനും മനസ്സിലാക്കാനും കഴിവ് വളരെയേറെ കൂടുതലുണ്ട്. മനോഹരമായി അവതരിപ്പിക്കാനും കഴിയും. പ്&zwnj;ക്ഷേ, ബുദ്ധിയുള്ള യന്ത്രങ്ങള്&zwj; വന്നു എന്നതുകൊണ്ട് ലേഖകന്മാര്&zwj; പൂര്&zwj;ണമായും ഇല്ലാതാകും എന്ന് അര്&zwj;ത്ഥമില്ല. പക്ഷേ, ഭാവിയില്&zwj; ഇവ ന്യൂസ് ഡെസ്&zwnj;കിലെ ഏറ്റവും ശ്രദ്ധേയമായ സാന്നിധ്യമായിരിക്കും.&#39;<br />\nമാധ്യമപ്രവര്&zwj;ത്തനത്തിന്റെ വിവിധ മേഖലകള്&zwj; യന്ത്രവല്&zwj;ക്കരിക്കുന്ന ഗവേഷണം ചെയ്യുന്നതിനിടയിലാണ് വാന്&zwj; റിപ്പോര്&zwj;ട്ടര്&zwj; യന്ത്രത്തെ തന്നെ നിര്&zwj;മ്മിച്ചത്. ചൈനയില്&zwj; ഒളിംപിക്&zwnj;സിനിടെ യന്ത്ര റിപ്പോര്&zwj;ട്ടര്&zwj; ഉണ്ടായിരുന്നെങ്കിലും അവ തയ്യാറാക്കിയ വാര്&zwj;ത്തകളൊന്നും പത്രങ്ങള്&zwj; പ്രസിദ്ധീകരിച്ചിരുന്നില്ല. പരിശീലനത്തിലൂടെ മനുഷ്യനെ വാര്&zwj;ത്തയെഴുത്താന്&zwj; സജ്ജമാക്കുന്നതുപോലെ തന്നെ യന്ത്രത്തിനും ആവശ്യത്തിനു ഡാറ്റ നല്&zwj;കി അവയെ ഒരുക്കിയെടുക്കുകയാണു ചെയ്യുന്നത്. മുന്&zwj;കൂട്ടി നല്&zwj;കപ്പെട്ട ഡാറ്റയില്&zwj; നിന്ന് ഓരോ സാഹചര്യത്തിനും അനുയോജ്യമായതു സ്വയം കണ്ടെത്തി വാര്&zwj;ത്തയാക്കാന്&zwj; കഴിയുന്ന ഘട്ടത്തിലേക്ക് യന്ത്രം വികസിച്ചു കഴിഞ്ഞു. ഇനി അഭിമുഖം നടത്താനും തത്സമയ സംഭവങ്ങള്&zwj; കണ്ടു റിപ്പോര്&zwj;ട്ട് ചെയ്യാനും കഴിയുന്ന മാധ്യമ യന്തിരന്മാരാണ് വികാസത്തിന്റെ അടുത്തഘട്ടത്തില്&zwj; ഉണ്ടാവുക.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>', '', '', '', '', '', '', '2017/1/20/original/xiao_nan.jpg', '', 'xiao_nan', '', '0', 'robot reporter , china', 1, 1, '', '', '', '', '', 'India', '', '', 0, 0, '', 'വാര്‍ത്ത എഴുതുന്നത് സ്വന്തം യന്തിരന്‍', 'യന്ത്ര റിപ്പോര്‍ട്ടര്‍ എഴുതിയ ആദ്യ വാര്‍ത്ത പ്രസിദ്ധീകരിച്ച് ചൈനീസ് പത്രം- 300 അക്ഷരങ്ങളുള്ള വാര്‍ത്ത യന്ത്രം എഴുതിയത് ഒരു മിനിറ്റ് കൊണ്ട്‌', 0, 0, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `article_section_mapping`
--

CREATE TABLE `article_section_mapping` (
  `content_id` mediumint(11) UNSIGNED NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_section_mapping`
--

INSERT INTO `article_section_mapping` (`content_id`, `section_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 14),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(10, 10),
(11, 2),
(12, 2),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(16, 9),
(17, 5),
(18, 6),
(19, 6),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 6),
(23, 9),
(23, 10),
(24, 5),
(24, 6),
(25, 7),
(26, 4),
(26, 6),
(27, 7),
(28, 7),
(29, 7),
(30, 13),
(31, 7),
(31, 10),
(32, 5),
(32, 13),
(33, 13),
(34, 6),
(34, 13),
(35, 10),
(35, 13),
(36, 6),
(36, 13),
(37, 9),
(37, 13),
(38, 9),
(38, 10),
(38, 13),
(39, 3),
(39, 13),
(40, 9),
(40, 13),
(41, 1),
(41, 6),
(41, 7),
(41, 9),
(42, 5),
(42, 7),
(42, 9),
(43, 4),
(43, 7),
(44, 7),
(44, 10),
(44, 13),
(45, 2),
(46, 1),
(46, 9),
(47, 3),
(47, 6),
(47, 7),
(47, 10),
(47, 13),
(48, 1),
(48, 3),
(48, 13),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(50, 10),
(51, 3),
(51, 4),
(51, 9),
(52, 3),
(52, 4),
(52, 6),
(52, 10),
(53, 1),
(53, 3),
(53, 5),
(54, 2),
(54, 3),
(54, 14),
(57, 4),
(57, 14),
(58, 4),
(58, 14);

-- --------------------------------------------------------

--
-- Table structure for table `askprabhu`
--

CREATE TABLE `askprabhu` (
  `Question_id` mediumint(9) NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Place` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmailID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Questiontext` text CHARACTER SET utf8,
  `AnswerInHTML` text CHARACTER SET utf8,
  `AnswerInPlainText` text CHARACTER SET utf8,
  `SubmittedOn` datetime DEFAULT NULL,
  `IPAddress` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Status` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `Modifiedby` mediumint(9) DEFAULT NULL,
  `Modifiedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `ecenic_id` mediumint(9) DEFAULT NULL,
  `section_id` smallint(6) DEFAULT NULL,
  `section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parent_section_id` smallint(6) DEFAULT NULL,
  `parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grant_section_id` smallint(6) DEFAULT NULL,
  `grant_parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `publish_start_date` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary_html` text CHARACTER SET utf8,
  `audio_path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `audio_image_path` varchar(255) NOT NULL,
  `audio_image_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `audio_image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` mediumint(9) NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `agency_name` varchar(100) NOT NULL,
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `country_name` varchar(100) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `no_indexed` tinyint(1) NOT NULL,
  `no_follow` tinyint(1) NOT NULL,
  `canonical_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audio_section_mapping`
--

CREATE TABLE `audio_section_mapping` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `breakingnewsmaster`
--

CREATE TABLE `breakingnewsmaster` (
  `breakingnews_id` mediumint(9) NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Displayorder` tinyint(4) NOT NULL,
  `Content_ID` mediumint(9) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakingnewsmaster`
--

INSERT INTO `breakingnewsmaster` (`breakingnews_id`, `Title`, `Displayorder`, `Content_ID`) VALUES
(65, '<p>Website under construction........</p>\n<p></p>', 1, 55),
(66, '<p>Website under construction..........</p>', 3, NULL),
(67, '<p>Launching shortly........</p>', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caption_migration`
--

CREATE TABLE `caption_migration` (
  `caption_migration_id` mediumint(9) NOT NULL,
  `content_id` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `container_master`
--

CREATE TABLE `container_master` (
  `containerid` int(11) NOT NULL,
  `containername` text CHARACTER SET utf8 NOT NULL,
  `containerhtml` text CHARACTER SET utf8 NOT NULL,
  `container_imagepath` varchar(250) CHARACTER SET utf8 NOT NULL,
  `container_design` text CHARACTER SET utf8 NOT NULL,
  `container_values` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Active, 2->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container_master`
--

INSERT INTO `container_master` (`containerid`, `containername`, `containerhtml`, `container_imagepath`, `container_design`, `container_values`, `status`) VALUES
(1, 'Container 1', '', 'images/admin/template_design/images/12.png', '', '12', 1),
(2, 'Container 2', '', 'images/admin/template_design/images/6-6.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_6_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_6_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div></div><div class="clear-fix"></div></div>', '6,6', 1),
(3, 'Container 3', '', 'images/admin/template_design/images/6-3-3.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_6_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-3" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-3" title=""></a></div><div class="widget-container widget-container-#containerId#-3"></div></div></div><div class="clear-fix"></div></div>', '6,3,3', 1),
(4, 'Container 4', '', 'images/admin/template_design/images/4-4-4.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-3" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-3" title=""></a></div><div class="widget-container widget-container-#containerId#-3"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-4" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-4" title=""></a></div><div class="widget-container widget-container-#containerId#-4"></div></div></div><div class="clear-fix"></div></div>', '4,4,4', 1),
(5, 'Container 5', '', 'images/admin/template_design/images/3-6-3.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_9_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div></div><div class="clear-fix"></div></div>', '3,6,3', 1),
(6, 'Container 5', '', 'images/admin/template_design/images/3-3-6.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_9_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div></div><div class="clear-fix"></div></div>', '3,3,6', 1),
(7, 'Container 9,3', '', 'images/admin/template_design/images/9-3.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_9_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div></div><div class="clear-fix"></div></div>', '9,3', 1),
(8, 'Container 8,4', '', 'images/admin/template_design/images/8-4.png', '<div class="container section group" data-type="#containerTypeId#" id="container-#containerId#"><div class="section group"><div class="handle"><span class=" close-container fa fa-times"></span></div></div><div class="section group"><div class="col span_9_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-1" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-1" title=""></a></div><div class="widget-container widget-container-#containerId#-1"></div></div><div class="col span_3_of_12 wc"><div class="add-widget"><a href="#" class="add-widget-button fa fa-plus" data-target-container="#containerId#-1" title="" ></a><a href="#"  class="remove-widget-button fa fa-trash-o" data-target-container="#containerId#-2" title=""></a><a href="#" class="config-widget-button fa fa-cog" data-target-container="#containerId#-2" title=""></a></div><div class="widget-container widget-container-#containerId#-2"></div></div></div><div class="clear-fix"></div></div>', '8,4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contenttypemaster`
--

CREATE TABLE `contenttypemaster` (
  `contenttype_id` tinyint(4) NOT NULL COMMENT 'Primary key , indexed',
  `ContentTypeName` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contenttypemaster`
--

INSERT INTO `contenttypemaster` (`contenttype_id`, `ContentTypeName`) VALUES
(1, 'Article'),
(2, 'Image'),
(3, 'Gallery'),
(4, 'Video'),
(5, 'Audio'),
(6, 'Resources');

-- --------------------------------------------------------

--
-- Table structure for table `content_hit_history`
--

CREATE TABLE `content_hit_history` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `content_type` tinyint(1) NOT NULL,
  `section_id` smallint(6) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` mediumint(8) UNSIGNED NOT NULL,
  `emailed` mediumint(8) UNSIGNED NOT NULL,
  `commented` mediumint(8) NOT NULL,
  `created_on` datetime NOT NULL,
  `hits_updated_on` datetime NOT NULL,
  `email_updated_on` datetime NOT NULL,
  `comment_updated_on` datetime NOT NULL,
  `published_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_hit_history`
--

INSERT INTO `content_hit_history` (`content_id`, `content_type`, `section_id`, `title`, `hits`, `emailed`, `commented`, `created_on`, `hits_updated_on`, `email_updated_on`, `comment_updated_on`, `published_on`) VALUES
(3, 1, 1, 'കെ.എം. ഫിലിപ് അന്തരിച്ചു', 28, 0, 0, '2017-01-12 09:56:08', '2017-01-17 15:26:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 09:39:00'),
(2, 1, 1, 'സ്വാശ്രയ കോളജുകൾക്കു കടിഞ്ഞാൺ; പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതി', 22, 0, 0, '2017-01-12 10:01:06', '2017-01-17 16:16:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 09:37:00'),
(6, 1, 1, 'ചിരഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...', 16, 0, 0, '2017-01-12 12:49:47', '2017-01-18 16:37:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:40:00'),
(11, 1, 2, 'ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണം മോദി സർക്കാർ തടവിലാക്കി: മന്ത്രി ഐസക്', 18, 0, 0, '2017-01-12 13:06:21', '2017-01-17 16:31:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 13:00:00'),
(8, 1, 2, 'ജയലളിതയുടെ ആഗ്രഹം ആഷ് സഫലമാക്കുമോ?', 6, 0, 0, '2017-01-12 13:17:04', '2017-01-18 11:01:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:54:00'),
(1, 1, 1, 'ബന്ധുനിയമന വിവാദം: അഡീ. ചീഫ് സെക്രട്ടറി', 23, 0, 0, '2017-01-12 13:18:13', '2017-01-17 09:23:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 09:34:00'),
(7, 1, 2, 'നാവികസേനയ്ക്ക് ഇനി കൂടുതൽ കരുത്ത്; ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കി...', 5, 0, 0, '2017-01-12 14:04:19', '2017-01-16 12:46:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:51:00'),
(9, 1, 2, 'കേരളം 115 വര്‍ഷത്തെ രൂക്ഷമായ വരള്‍ച്ചയിലേക്ക് ജലസം ഭരണി കൾ വറ്റുന്നു', 4, 0, 0, '2017-01-12 14:46:35', '2017-01-16 12:05:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:56:00'),
(4, 1, 14, 'രഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...', 1, 0, 0, '2017-01-12 14:48:25', '2017-01-12 14:48:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 11:50:00'),
(12, 1, 2, 'അടിയന്തരാവസ്ഥ കാലത്തെ ജയിൽവാസം: ലാലുവിന് 10000 രൂപ പ്രതിമാസ പെൻഷൻ', 6, 0, 0, '2017-01-12 15:24:00', '2017-01-16 11:44:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 13:15:00'),
(5, 1, 1, 'രാജിക്കത്ത് ലഭിച്ചിട്ടില്ല, പോൾ ആന്റണി തുടരും: വ്യവസായമന്ത്രി മൊയ്തീൻ...', 13, 0, 0, '2017-01-12 15:24:49', '2017-01-18 14:27:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:35:00'),
(10, 1, 2, 'കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച് യുവമോർച്ച പ്രതിഷേധം', 4, 0, 0, '2017-01-12 16:15:38', '2017-01-20 16:27:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 12:58:00'),
(13, 1, 5, 'മോശം ഭക്ഷണമാണെന്ന ബിഎസ്എഫ് ജവാന്റെ പരാതിയിൽ പ്രധാനമന്ത്', 4, 0, 0, '2017-01-12 16:24:20', '2017-01-21 13:46:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:20:00'),
(26, 1, 6, 'കമലിന്റെ ആമിയാകാൻ വിദ്യ ഇല്ല; കാരണം', 2, 0, 0, '2017-01-12 17:13:46', '2017-01-12 18:07:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:09:00'),
(20, 1, 7, 'മുംബൈയില്‍ സച്ചിനെക്കൂടാതെ മറ്റൊരു ക്രിക്കറ്റ് ദൈവമോ? ആരാണത്!!!', 1, 0, 0, '2017-01-12 17:25:06', '2017-01-12 17:25:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:49:00'),
(33, 1, 13, 'ആരാണ് ഗോഡ്സെ; വിനയ് പറയുന്നു', 2, 0, 0, '2017-01-12 18:08:54', '2017-01-17 16:29:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 18:07:00'),
(32, 1, 13, 'രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്‌ലെസ് ആയി ദിഷാ പട്ടാണി', 5, 0, 0, '2017-01-12 18:38:26', '2017-01-13 11:13:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:59:00'),
(24, 1, 6, 'സമരത്തിനിടെ 203 തിയറ്ററുകളിൽ ഭൈരവ', 2, 0, 0, '2017-01-13 08:33:13', '2017-01-16 11:19:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:07:00'),
(31, 1, 7, 'എമിറേറ്റ്‌സിന് പറ്റിയ അക്കിടി, ധോണിക്കു പകരം സുശാന്ത്', 2, 0, 0, '2017-01-13 10:22:16', '2017-01-17 16:47:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:55:00'),
(36, 1, 13, 'പരീക്ഷണത്തിൽ ആശങ്ക; ഉത്തരകൊറിയയുടെ മിസൈലുകൾ നിരീക്ഷിക്കാൻ യുഎസ് റഡാർ', 45, 0, 0, '2017-01-13 10:26:43', '2017-01-21 12:45:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 10:25:00'),
(41, 1, 1, 'പുലിമുരുകന്റെ ചെരുപ്പ് ബിജുവിന്റെ സൃഷ്ടി', 4, 0, 0, '2017-01-13 11:36:12', '2017-01-17 15:18:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 11:13:00'),
(6, 3, 8, 'മമ്മൂട്ടിയും മോഹന്‍ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്‍താരങ്ങള്‍ക്കെതിരെ നിര്‍മാതാക്കള്‍', 3, 0, 0, '2017-01-13 13:18:59', '2017-01-13 15:02:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 13:16:00'),
(42, 1, 7, 'സ്കൂൾ കലോത്സവം കുട്ടികളുടേതാവട്ടെ', 2, 0, 0, '2017-01-13 14:55:51', '2017-01-16 11:16:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 11:43:00'),
(1, 3, 8, 'മമ്മൂട്ടിയും മോഹന്‍ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്‍താരങ്ങള്‍ക്കെതിരെ നിര്‍മാതാക്കള്‍', 1, 0, 0, '2017-01-13 15:43:05', '2017-01-13 15:43:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 12:07:00'),
(2, 3, 8, 'മമ്മൂട്ടിയും-മോഹന്‍ലാലും-ഒന്നും-മിണ്ടുന്നില്ല', 1, 0, 0, '2017-01-13 15:44:02', '2017-01-13 15:44:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 12:19:00'),
(4, 3, 8, 'പരിപാടികളിലും-പങ്കെടുത്ത്-മാധ്യമ-ശ്രദ്ധനേടിയിരുന്നു', 1, 0, 0, '2017-01-13 15:44:54', '2017-01-13 15:44:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 13:09:00'),
(7, 3, 8, 'വൈദ്യ സഹാ യത്തോ ടെയുള്ള ആത്മഹത്യ നമുക്ക് വേണോ?', 4, 0, 0, '2017-01-13 15:58:51', '2017-01-17 16:17:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 15:32:00'),
(8, 3, 12, 'പഴയ വീഞ്ഞ് പഴയ കുപ്പി: ഭൈരവ റിവ്യൂ', 2, 0, 0, '2017-01-13 16:03:48', '2017-01-13 16:05:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 15:57:00'),
(43, 1, 7, 'ജിഷ്ണു കോപ്പിയടിച്ചിട്ടില്ലെന്നു കണ്ണീരോടെ അമ്മ; അത് എല്ലാവർക്കുമറിയാമെന്നു മന്ത്രി രവീന്ദ്രനാഥ്', 4, 0, 0, '2017-01-13 17:33:45', '2017-01-20 12:17:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 11:54:00'),
(10, 3, 8, 'ശരീരത്തിൽ ഒമേഗ 3 ഫാറ്റി ആസിഡ് കുറഞ്ഞാൽ?', 4, 0, 0, '2017-01-13 17:45:28', '2017-01-16 11:44:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 17:43:00'),
(40, 1, 13, 'വിദ്യ പോയാലും ആമി വരും; കമൽ വെളിപ്പെടുത്തുന്നു', 8, 0, 0, '2017-01-13 17:48:55', '2017-01-17 16:20:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 10:45:00'),
(28, 1, 7, 'സൗരവ് ഗാംഗുലിക്ക് വധഭീഷണി; സുരക്ഷ ശക്തമാക്കും', 13, 0, 0, '2017-01-13 17:50:16', '2017-01-20 14:35:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:13:00'),
(39, 1, 13, 'ശത്രുരാജ്യങ്ങൾക്ക് മുന്നറിയിപ്പ്; ചൈനയ്ക്ക് അതിസങ്കീർണ നിരീക്ഷണക്കപ്പൽ', 2, 0, 0, '2017-01-13 17:57:52', '2017-01-13 18:01:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 10:37:00'),
(46, 1, 1, 'ബാർ കോഴക്കേസ്: ശങ്കർ റെഡ്ഡിക്കെതിരെ', 3, 0, 0, '2017-01-13 18:01:57', '2017-01-17 13:16:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 14:35:00'),
(37, 1, 13, 'മോദിയോട് ചോദ്യങ്ങൾ ഉന്നയിച്ച രാഹുലിനോട് മറുചോദ്യങ്ങളുമായി സ്മൃതി ഇറാനി', 8, 0, 0, '2017-01-13 18:02:10', '2017-01-17 12:57:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 10:29:00'),
(38, 1, 13, 'ജിഷ്ണുവിന്റെ മരണം: മാനേജ്മെന്റിന്റേത് കണ്ണിൽ പൊടിയിടാനുള്ള നീക്കമെന്ന് വിദ്യാർഥികൾ', 3, 0, 0, '2017-01-13 18:04:15', '2017-01-18 10:07:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 10:34:00'),
(17, 1, 5, 'കേരളംവര്‍ഷത്തെ രൂക്ഷമായ വരള്‍ച്ചയിലേക്ക് ജലസംഭരണികൾ വറ്റുന്നു', 3, 0, 0, '2017-01-13 18:09:49', '2017-01-16 11:44:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:34:00'),
(45, 1, 2, 'പാക്കിസ്ഥാന് കരസേന മേധാവിയുടെ മുന്നറിയിപ്പ്,  ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം', 15, 0, 0, '2017-01-13 18:10:05', '2017-01-17 12:35:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 14:32:00'),
(14, 1, 5, 'ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർ‌ധസൈനികർ കൊല്ലപ്പെട്ടു', 2, 0, 0, '2017-01-16 09:09:53', '2017-01-16 11:20:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:23:00'),
(18, 1, 6, 'എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്‍ക്കാന്‍ ദിലീപ് ശ്രമിക്കുന്ന‍ു', 1, 0, 0, '2017-01-16 11:19:23', '2017-01-16 11:19:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:43:00'),
(15, 1, 5, 'മല്യ മക്കളുടെ പേരിലേക്ക് നാലു കോടി ഡോളർ മാറ്റി', 2, 0, 0, '2017-01-16 11:20:47', '2017-01-16 11:44:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:28:00'),
(16, 1, 5, 'മോദി അറിയണം കേരളമുണ്ടെന്ന്, 17ന് ട്രെയിനുകൾ തടയും: പി.സി.ജോർജ്', 1, 0, 0, '2017-01-16 11:20:53', '2017-01-16 11:20:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:30:00'),
(25, 1, 7, 'ഫുട്‌ബോള്‍ പ്രേമികള്‍ക്ക് സന്തോഷവാര്‍ത്ത, വരാനിരിക്കുന്നത് 48ടീം', 1, 0, 0, '2017-01-16 11:23:33', '2017-01-16 11:23:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:08:00'),
(47, 1, 6, 'കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി, ഈ കറുപ്പാണ്', 6, 0, 0, '2017-01-16 11:23:58', '2017-01-20 16:25:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 15:09:00'),
(27, 1, 7, 'ഫിഫ ബ്ലെസ്റ്റ് പ്ലെയര്‍ ക്രിസ്റ്റ്യാനോ, ബെസ്റ്റ് കോച്ച് ക്ലോഡിയോ റാനിയേരി', 4, 0, 0, '2017-01-16 11:44:02', '2017-01-17 12:43:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:10:00'),
(11, 3, 8, 'വർഷത്തിനിടെ നൂറോളം പെൺകുട്ടികളെ', 7, 0, 0, '2017-01-16 11:44:26', '2017-01-20 11:39:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 11:10:00'),
(49, 1, 3, 'ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർഎസ്സന എന്ത്', 2, 0, 0, '2017-01-16 12:21:58', '2017-01-17 13:16:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 12:11:00'),
(51, 1, 3, 'ഇഷ്ടമില്ലാത്തവർ രാജ്യംവിടണമെന്നു പറയാൻ ആർ‌എസ്എസിന്', 2, 0, 0, '2017-01-16 12:29:47', '2017-01-20 14:57:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 12:27:00'),
(52, 1, 3, 'കുട്ടികളെ മയക്കുന്ന ‘ടെക് ഭൂതം’', 2, 0, 0, '2017-01-16 12:35:15', '2017-01-17 12:47:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 12:34:00'),
(44, 1, 13, 'വിജയ് പടം ഭൈരവ ഇറങ്ങി; ആവേശം അണപൊട്ടി', 1, 0, 0, '2017-01-16 12:45:43', '2017-01-16 12:45:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 11:57:00'),
(54, 1, 2, 'ഭ്രൂണഹത്യക്ക് അനുമതിനി യമവിദഗ ര്‍പറയുന്നു\n\n ', 7, 0, 0, '2017-01-16 14:21:37', '2017-01-18 11:40:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 13:59:00'),
(53, 1, 3, 'അവൾ എൻെറ രാജകുമാരിയാണ് നിൻറെ അടിമയല്ല ', 5, 0, 0, '2017-01-16 17:01:46', '2017-01-18 10:43:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 12:56:00'),
(29, 1, 7, 'ക്രിസ്റ്റിയാനോ ലോകഫുട്‌ബോളറാകുമെന്ന് ബാഴ്‌സ ഉറപ്പിച്ചു', 1, 0, 0, '2017-01-17 11:38:22', '2017-01-17 11:38:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 17:20:00'),
(50, 1, 3, 'നായരെ മ്ലേച്ഛമായി ആക്രമിക്കുന്നത് ആ മനോനില', 4, 0, 0, '2017-01-17 12:57:09', '2017-01-20 12:53:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 12:18:00'),
(3, 4, 15, 'പാർട്ടിയും ചിഹ്നവും തരാം', 10, 0, 0, '2017-01-17 16:16:42', '2017-01-18 16:36:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-16 10:55:00'),
(2, 4, 11, 'മാഹിക്ക്', 3, 0, 0, '2017-01-17 16:18:02', '2017-01-20 12:18:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 18:21:00'),
(9, 3, 8, 'വികാരങ്ങളെ നിയന്ത്രിക്കണോ, ധ്യാനം ശീലമാക്കാം', 1, 0, 0, '2017-01-17 16:28:26', '2017-01-17 16:28:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 17:15:00'),
(23, 1, 6, 'ക്യാറ്റിൽ മിന്നും ജയം, പക്ഷേ നിലഞ്ജന്‍ ഐഐഎമ്മിലേക്കില്ല', 1, 0, 0, '2017-01-17 16:36:10', '2017-01-17 16:36:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-12 16:57:00'),
(1, 4, 11, 'സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി', 2, 0, 0, '2017-01-18 10:24:30', '2017-01-18 12:13:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-13 17:47:00'),
(4, 4, 11, 'ചലനമറ്റ് കിടന്ന ‘ഡമ്മി കുരങ്ങ’നരികെ നിറകണ്ണുകളോടെ കുര', 7, 0, 0, '2017-01-18 12:06:53', '2017-01-21 10:58:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-18 11:57:00'),
(55, 1, 4, 'വാര്‍ത്ത എഴുതുന്നത് സ്വന്തം യന്തിരന്‍', 6, 0, 0, '2017-01-19 15:10:06', '2017-01-20 14:51:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-19 14:58:00'),
(56, 1, 4, 'സ്ത്രീയും ജൂതനും ഹിന്ദുവും\nഭാവിയില്‍ പ്രസിഡന്റ്: ഒബാമ\n\n ', 2, 0, 0, '2017-01-20 10:23:39', '2017-01-20 14:32:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-01-19 15:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `content_id` mediumint(9) UNSIGNED NOT NULL,
  `ecenic_id` mediumint(9) DEFAULT NULL,
  `section_id` smallint(6) DEFAULT NULL,
  `section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parent_section_id` smallint(6) DEFAULT NULL,
  `parent_section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `grant_section_id` smallint(6) DEFAULT NULL,
  `grant_parent_section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `publish_start_date` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary_html` text CHARACTER SET utf8 NOT NULL,
  `first_image_path` varchar(255) NOT NULL,
  `first_image_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `first_image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` mediumint(9) NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `agency_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `country_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `state_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `city_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `no_indexed` tinyint(1) NOT NULL,
  `no_follow` tinyint(1) NOT NULL,
  `canonical_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` char(1) NOT NULL COMMENT 'P - Published, U - Unpublished'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `first_image_path`, `first_image_title`, `first_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `author_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status`) VALUES
(1, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 12:07:00', '2017-01-13 15:42:00', '<p>മമ്മൂട്ടിയും മോഹന്&zwj;ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്&zwj;താരങ്ങള്&zwj;ക്കെതിരെ നിര്&zwj;മാതാക്കള്&zwj;</p>', 'galleries/aarogyam-health/2017/jan/13/മമ്മൂട്ടി-1.html', '<p>കടുത്ത പ്രതിസന്ധിയിലൂടെയാണ് മലയാള സിനിമ ഇപ്പോള്‍ കടന്നു പോകുന്നത്. പുലിമുരുകന്‍ എന്ന ചിത്രം 150 കോടി ക്ലബ്ബിലേക്ക് കടന്ന പശ്ചാത്തലത്തില്‍ തിയേറ്ററുടമകളും നിര്‍മാതാക്കളും തമ്മിലുള്ള പ്രശ്‌നത്തെ തുടര്‍ന്ന് ഒരു സിനിമ പോലും റിലീസ് ചെയ്യാതായിട്ട് ഒരു മാസത്തിലധികമായി.</p>', '2017/1/13/original/tt1.jpg', 'tt1', 'tt1', 0, '', 1, '', '', 'India', '', '', 0, 0, '', 'മമ്മൂട്ടിയും മോഹന്‍ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്‍താരങ്ങള്‍ക്കെതിരെ നിര്‍മാതാക്കള്‍', '', 'P'),
(2, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 12:19:00', '2017-01-13 15:43:00', '<p>മമ്മൂട്ടിയും-മോഹന്&zwj;ലാലും-ഒന്നും-മിണ്ടുന്നില്ല</p>', 'galleries/aarogyam-health/2017/jan/13/മമ്മൂട്ടിയും-മോഹന്ലാലും-ഒന്നും-മിണ്ടുന്നില്ല-2.html', '<p>സൂപ്പര്‍താരങ്ങള്‍ക്കെതിരെ നിര്‍മാതാക്കള്‍</p>', '2017/1/13/original/tt01.jpg', 'tt1', 'tt1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'മമ്മൂട്ടിയും-മോഹന്‍ലാലും-ഒന്നും-മിണ്ടുന്നില്ല', '', 'P'),
(3, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 13:03:00', '2017-01-13 15:44:00', '<p>കരീനയുടെ ഗര്&zwj;ഭകാല പ്രദര്&zwj;ശനം കഴിഞ്ഞു</p>', 'galleries/aarogyam-health/2017/jan/13/കരീനയുടെ-ഗര്കാല-പ്രദര-കഴിഞ്ഞു-3.html', '<p>കരീന കപൂറിന്റെ ഗര്‍ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം</p>', '2017/1/13/original/pr1.jpg', 'pr1', 'pr1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'കരീനയുടെ ഗര്‍ഭകാല പ്രദര്‍ശനം കഴിഞ്ഞു', '', 'P'),
(4, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 13:09:00', '2017-01-13 13:11:00', '<p>പരിപാടികളിലും-പങ്കെടുത്ത്-മാധ്യമ-ശ്രദ്ധനേടിയിരുന്നു</p>', 'galleries/aarogyam-health/2017/jan/13/പരിപാടികളിലും-പങ്കെടുത്ത്-മാധ്യമ-ശ്രദ്ധനേടിയിരുന്നു-4.html', '<p>കരീന കപൂറിന്റെ ഗര്&zwj;ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം രാജ്യത്തെ ചലച്ചിത്ര പ്രേക്ഷകര്&zwj;മൊത്തം ആഘോഷിച്ചതാണ്. നടി ഗര്&zwj;ഭകാലത്തിന്റെ തുടക്കം മുതല്&zwj;&nbsp;പ്രസവത്തിന്റെ തൊട്ടടുത്ത ദിവസം വരെ ഫോട്ടോ ഷൂട്ടിലും ഫാഷന്&zwj; ഈവന്റുകളിലും പൊതു പരിപാടികളിലും പങ്കെടുത്ത് മാധ്യമ ശ്രദ്ധനേടിയിരുന്നു.</p>', '2017/1/13/original/pr01.jpg', 'pr1', 'pr1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'പരിപാടികളിലും-പങ്കെടുത്ത്-മാധ്യമ-ശ്രദ്ധനേടിയിരുന്നു', '', 'P'),
(5, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 13:12:00', '2017-01-13 15:33:00', '<p>കരീന കപൂറിന്റെ ഗര്&zwj;ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം രാജ്യത്തെ ചലച്ചിത്ര പ്രേക്ഷകര്&zwj;മൊത്തം ആഘോഷിച്ചതാണ്</p>', 'galleries/aarogyam-health/2017/jan/13/കരീന-കപ-5.html', '<p>കരീന കപൂറിന്റെ ഗര്‍ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം രാജ്യത്തെ ചലച്ചിത്ര പ്രേക്ഷകര്‍മൊത്തം ആഘോഷിച്ചതാണ്</p>', '2017/1/13/original/pr001.jpg', 'pr1', 'pr1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'കരീന കപൂറിന്റെ ഗര്‍ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം രാജ്യത്തെ ചലച്ചിത്ര പ്രേക്ഷകര്‍മൊത്തം', '', 'P'),
(6, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 13:16:00', '2017-01-13 13:18:00', '<p>മമ്മൂട്ടിയും മോഹന്&zwj;ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്&zwj;താരങ്ങള്&zwj;ക്കെതിരെ നിര്&zwj;മാതാക്കള്&zwj;</p>', 'galleries/aarogyam-health/2017/jan/13/മമ്മൂട്ടിയും-6.html', '<p>കടുത്ത പ്രതിസന്ധിയിലൂടെയാണ് മലയാള സിനിമ ഇപ്പോള്‍ കടന്നു പോകുന്നത്. പുലിമുരുകന്‍ എന്ന ചിത്രം 150 കോടി ക്ലബ്ബിലേക്ക് കടന്ന പശ്ചാത്തലത്തില്‍ തിയേറ്ററുടമകളും നിര്‍മാതാക്കളും തമ്മിലുള്ള പ്രശ്‌നത്തെ തുടര്‍ന്ന് ഒരു സിനിമ പോലും റിലീസ് ചെയ്യാതായിട്ട് ഒരു മാസത്തിലധികമായി.</p>', '2017/1/13/original/pr001.jpg', 'pr1', 'pr1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'മമ്മൂട്ടിയും മോഹന്‍ലാലും ഒന്നും മിണ്ടുന്നില്ല; സൂപ്പര്‍താരങ്ങള്‍ക്കെതിരെ നിര്‍മാതാക്കള്‍', '', 'P'),
(7, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 15:32:00', '2017-01-13 16:00:00', '<p>വൈദ്യ സഹാ യത്തോ ടെയുള്ള ആത്മഹത്യ നമുക്ക് വേണോ?</p>', 'galleries/aarogyam-health/2017/jan/13/വൈദ്യ-സഹാ-യത്തോ-ടെയുള്ള-ആത്മഹത്യ-നമുക്ക്-വേണോ-7.html', '', '2017/1/13/original/sur1.jpg', 'sur1', 'sur1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'വൈദ്യസഹായത്തോടെയുള്ള ആത്മഹത്യ നമുക്ക് വേണോ?', '', 'P'),
(8, NULL, 12, 'ചിത്രജാലം', NULL, '', NULL, '', '2017-01-13 15:57:00', '2017-01-13 16:02:00', '<p>പഴയ വീഞ്ഞ് പഴയ കുപ്പി: ഭൈരവ റിവ്യൂ</p>', 'galleries/2017/jan/13/പഴയ-വീഞ്ഞ്-പഴയ-കുപ്പി-ഭൈരവ-റിവ്യൂ-8.html', '<p>ഇക്കുറിയും വിജയ് പതിവു തെറ്റിച്ചില്ല. കാലങ്ങളായി ആരാധകരെ</p>', '2017/1/13/original/bai0.jpg', 'bai0', 'bai0', 0, '', 1, '', '', '', '', '', 0, 0, '', 'പഴയ വീഞ്ഞ് പഴയ കുപ്പി: ഭൈരവ റിവ്യൂ', '', 'P'),
(9, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 17:15:00', '2017-01-13 17:34:00', '<p>വികാരങ്ങളെ നിയന്ത്രിക്കണോ, ധ്യാനം ശീലമാക്കാം</p>', 'galleries/aarogyam-health/2017/jan/13/വികാരങ്ങളെ-നിയന്ത്രിക്കണോ-ധ്യാനം-ശീലമാക്കാം-9.html', '', '2017/1/13/original/yoga1.jpg', 'yoga1', 'yoga1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'വികാരങ്ങളെ നിയന്ത്രിക്കണോ, ധ്യാനം ശീലമാക്കാം', '', 'P'),
(10, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-13 17:43:00', '2017-01-13 17:44:00', '<p>ശരീരത്തിൽ ഒമേഗ 3 ഫാറ്റി ആസിഡ് കുറഞ്ഞാൽ?</p>', 'galleries/aarogyam-health/2017/jan/13/ശരീരത്തിൽ-ഒമേഗ-3-ഫാറ്റി-ആസിഡ്-കുറഞ്ഞാൽ-10.html', '', '2017/1/13/original/org1.jpg', 'org1', 'org1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'ശരീരത്തിൽ ഒമേഗ 3 ഫാറ്റി ആസിഡ് കുറഞ്ഞാൽ?', '', 'P'),
(11, NULL, 8, 'ആരോഗ്യം', 12, 'ചിത്രജാലം', NULL, '', '2017-01-16 11:10:00', '2017-01-16 11:12:00', '<p>വർഷത്തിനിടെ നൂറോളം പെൺകുട്ടികളെ</p>', 'galleries/aarogyam-health/2017/jan/16/വർഷത്തിനിടെ-നൂറോളം-പെൺകുട്ടികളെ-11.html', '', '2017/1/16/original/nat2.jpg', 'nat2', 'nat2', 0, '', 1, '', '', '', '', '', 0, 0, '', 'വർഷത്തിനിടെ നൂറോളം പെൺകുട്ടികളെ', '', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_related_images`
--

CREATE TABLE `gallery_related_images` (
  `PrimaryId` int(11) NOT NULL,
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `gallery_image_path` varchar(255) NOT NULL,
  `gallery_image_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gallery_image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_related_images`
--

INSERT INTO `gallery_related_images` (`PrimaryId`, `content_id`, `gallery_image_path`, `gallery_image_title`, `gallery_image_alt`, `display_order`) VALUES
(17, 4, '2017/1/13/original/pr01.jpg', 'pr1', 'pr1', 1),
(18, 4, '2017/1/13/original/pr02.jpg', 'pr2', 'pr2', 2),
(19, 4, '2017/1/13/original/pr03.jpg', 'pr3', 'pr3', 3),
(20, 4, '2017/1/13/original/pr04.jpg', 'pr4', 'pr4', 4),
(21, 4, '2017/1/13/original/pr05.jpg', 'pr5', 'pr5', 5),
(31, 6, '2017/1/13/original/pr001.jpg', 'pr1', 'pr1', 1),
(32, 6, '2017/1/13/original/pr002.jpg', 'pr2', 'pr2', 2),
(33, 6, '2017/1/13/original/pr003.jpg', 'pr3', 'pr3', 3),
(34, 6, '2017/1/13/original/pr004.jpg', 'pr4', 'pr4', 4),
(45, 5, '2017/1/13/original/pr001.jpg', 'pr1', 'pr1', 1),
(46, 5, '2017/1/13/original/pr002.jpg', 'pr2', 'pr2', 2),
(47, 5, '2017/1/13/original/pr003.jpg', 'pr3', 'pr3', 3),
(48, 5, '2017/1/13/original/pr004.jpg', 'pr4', 'pr4', 4),
(49, 5, '2017/1/13/original/pr005.jpg', 'pr5', 'pr5', 5),
(50, 1, '2017/1/13/original/tt1.jpg', 'tt1', 'tt1', 1),
(51, 1, '2017/1/13/original/tt2.jpg', 'tt2', 'tt2', 2),
(52, 1, '2017/1/13/original/tt3.jpg', 'tt3', 'tt3', 3),
(53, 1, '2017/1/13/original/tt4.jpg', 'tt4', 'tt4', 4),
(54, 1, '2017/1/13/original/tt5.jpg', 'tt5', 'tt5', 5),
(55, 2, '2017/1/13/original/tt01.jpg', 'tt1', 'tt1', 1),
(56, 2, '2017/1/13/original/tt02.jpg', 'tt2', 'tt2', 2),
(57, 2, '2017/1/13/original/tt03.jpg', 'tt3', 'tt3', 3),
(58, 2, '2017/1/13/original/tt04.jpg', 'tt4', 'tt4', 4),
(59, 2, '2017/1/13/original/tt05.jpg', 'tt5', 'tt5', 5),
(60, 3, '2017/1/13/original/pr1.jpg', 'pr1', 'pr1', 1),
(61, 3, '2017/1/13/original/pr2.jpg', 'pr2', 'pr2', 2),
(62, 3, '2017/1/13/original/pr3.jpg', 'pr3', 'pr3', 3),
(63, 3, '2017/1/13/original/pr4.jpg', 'pr4', 'pr4', 4),
(64, 3, '2017/1/13/original/pr5.jpg', 'pr5', 'pr5', 5),
(95, 7, '2017/1/13/original/sur1.jpg', 'sur1', 'sur1', 1),
(96, 7, '2017/1/13/original/sur2.jpg', 'sur2', 'sur2', 2),
(97, 7, '2017/1/13/original/sur3.jpg', 'sur3', 'sur3', 3),
(98, 7, '2017/1/13/original/sur4.jpg', 'sur4', 'sur4', 4),
(99, 7, '2017/1/13/original/sur5.jpg', 'sur5', 'sur5', 5),
(100, 7, '2017/1/13/original/sur6.jpg', 'sur6', 'sur6', 6),
(101, 8, '2017/1/13/original/bai0.jpg', 'bai0', 'bai0', 1),
(102, 8, '2017/1/13/original/bai1.jpg', 'bai1', 'bai1', 2),
(103, 8, '2017/1/13/original/bai2.jpg', 'bai2', 'bai2', 3),
(104, 8, '2017/1/13/original/bai3.jpg', 'bai3', 'bai3', 4),
(105, 8, '2017/1/13/original/bai4.jpg', 'bai4', 'bai4', 5),
(106, 9, '2017/1/13/original/yoga1.jpg', 'yoga1', 'yoga1', 1),
(107, 9, '2017/1/13/original/yoga2.jpg', 'yoga2', 'yoga2', 2),
(108, 9, '2017/1/13/original/yoga3.jpg', 'yoga3', 'yoga3', 3),
(109, 9, '2017/1/13/original/yoga4.jpg', 'yoga4', 'yoga4', 4),
(110, 9, '2017/1/13/original/yoga5.jpg', 'yoga5', 'yoga5', 5),
(111, 10, '2017/1/13/original/org1.jpg', 'org1', 'org1', 1),
(112, 10, '2017/1/13/original/org2.jpg', 'org2', 'org2', 2),
(113, 10, '2017/1/13/original/org3.jpg', 'org3', 'org3', 3),
(114, 10, '2017/1/13/original/org4.jpg', 'org4', 'org4', 4),
(115, 10, '2017/1/13/original/org5.jpg', 'org5', 'org5', 5),
(116, 11, '2017/1/16/original/nat2.jpg', 'nat2', 'nat2', 1),
(117, 11, '2017/1/16/original/nat3.jpg', 'nat3', 'nat3', 2),
(118, 11, '2017/1/16/original/nat8.jpg', 'nat8', 'nat8', 3),
(119, 11, '2017/1/16/original/tr4.jpg', 'tr4', 'tr4', 4),
(120, 11, '2017/1/16/original/tr7.jpg', 'tr7', 'tr7', 5);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_section_mapping`
--

CREATE TABLE `gallery_section_mapping` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_section_mapping`
--

INSERT INTO `gallery_section_mapping` (`content_id`, `section_id`) VALUES
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 12),
(9, 8),
(10, 8),
(11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `hit_count_history`
--

CREATE TABLE `hit_count_history` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `Contentid` mediumint(9) NOT NULL,
  `content_type` tinyint(1) NOT NULL,
  `Accessedon` datetime NOT NULL,
  `Accessedfrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hit_count_history`
--

INSERT INTO `hit_count_history` (`id`, `Contentid`, `content_type`, `Accessedon`, `Accessedfrom`) VALUES
(1, 3, 1, '2017-01-12 09:56:08', '203.197.142.42'),
(2, 2, 1, '2017-01-12 10:01:06', '203.197.142.42'),
(3, 3, 1, '2017-01-12 10:49:47', '203.197.142.42'),
(4, 2, 1, '2017-01-12 10:50:05', '203.197.142.42'),
(5, 3, 1, '2017-01-12 10:50:16', '203.197.142.42'),
(6, 2, 1, '2017-01-12 11:54:46', '203.197.142.42'),
(7, 3, 1, '2017-01-12 11:54:51', '203.197.142.42'),
(8, 2, 1, '2017-01-12 12:02:26', '203.197.142.42'),
(9, 6, 1, '2017-01-12 12:49:47', '203.197.142.42'),
(10, 11, 1, '2017-01-12 13:06:21', '203.197.142.42'),
(11, 11, 1, '2017-01-12 13:13:35', '203.197.142.42'),
(12, 8, 1, '2017-01-12 13:17:04', '203.197.142.42'),
(13, 1, 1, '2017-01-12 13:18:13', '203.197.142.42'),
(14, 7, 1, '2017-01-12 14:04:19', '203.197.142.42'),
(15, 8, 1, '2017-01-12 14:26:01', '203.197.142.42'),
(16, 7, 1, '2017-01-12 14:36:11', '203.197.142.42'),
(17, 7, 1, '2017-01-12 14:36:45', '203.197.142.42'),
(18, 2, 1, '2017-01-12 14:43:04', '203.197.142.42'),
(19, 9, 1, '2017-01-12 14:46:35', '203.197.142.42'),
(20, 4, 1, '2017-01-12 14:48:25', '203.197.142.42'),
(21, 8, 1, '2017-01-12 14:48:56', '203.197.142.42'),
(22, 11, 1, '2017-01-12 15:10:40', '203.197.142.42'),
(23, 1, 1, '2017-01-12 15:11:04', '203.197.142.42'),
(24, 11, 1, '2017-01-12 15:11:35', '203.197.142.42'),
(25, 8, 1, '2017-01-12 15:11:58', '203.197.142.42'),
(26, 6, 1, '2017-01-12 15:12:03', '203.197.142.42'),
(27, 1, 1, '2017-01-12 15:16:04', '203.197.142.42'),
(28, 6, 1, '2017-01-12 15:16:12', '203.197.142.42'),
(29, 6, 1, '2017-01-12 15:19:42', '203.197.142.42'),
(30, 6, 1, '2017-01-12 15:19:48', '203.197.142.42'),
(31, 11, 1, '2017-01-12 15:21:54', '203.197.142.42'),
(32, 11, 1, '2017-01-12 15:22:40', '203.197.142.42'),
(33, 12, 1, '2017-01-12 15:24:00', '203.197.142.42'),
(34, 11, 1, '2017-01-12 15:24:34', '203.197.142.42'),
(35, 5, 1, '2017-01-12 15:24:49', '203.197.142.42'),
(36, 5, 1, '2017-01-12 15:25:45', '203.197.142.42'),
(37, 3, 1, '2017-01-12 15:26:22', '203.197.142.42'),
(38, 5, 1, '2017-01-12 15:27:21', '203.197.142.42'),
(39, 5, 1, '2017-01-12 15:27:25', '203.197.142.42'),
(40, 3, 1, '2017-01-12 15:59:13', '203.197.142.42'),
(41, 2, 1, '2017-01-12 16:02:17', '203.197.142.42'),
(42, 3, 1, '2017-01-12 16:02:27', '203.197.142.42'),
(43, 3, 1, '2017-01-12 16:02:50', '203.197.142.42'),
(44, 3, 1, '2017-01-12 16:02:58', '203.197.142.42'),
(45, 3, 1, '2017-01-12 16:03:04', '203.197.142.42'),
(46, 3, 1, '2017-01-12 16:04:14', '203.197.142.42'),
(47, 12, 1, '2017-01-12 16:14:11', '203.197.142.42'),
(48, 12, 1, '2017-01-12 16:14:25', '203.197.142.42'),
(49, 12, 1, '2017-01-12 16:14:49', '203.197.142.42'),
(50, 10, 1, '2017-01-12 16:15:38', '203.197.142.42'),
(51, 3, 1, '2017-01-12 16:23:51', '203.197.142.42'),
(52, 13, 1, '2017-01-12 16:24:20', '203.197.142.42'),
(53, 1, 1, '2017-01-12 16:25:28', '203.197.142.42'),
(54, 12, 1, '2017-01-12 16:35:07', '203.197.142.42'),
(55, 11, 1, '2017-01-12 16:59:49', '203.197.142.42'),
(56, 5, 1, '2017-01-12 17:01:03', '203.197.142.42'),
(57, 26, 1, '2017-01-12 17:13:46', '203.197.142.42'),
(58, 1, 1, '2017-01-12 17:24:53', '203.197.142.42'),
(59, 6, 1, '2017-01-12 17:25:01', '203.197.142.42'),
(60, 20, 1, '2017-01-12 17:25:06', '203.197.142.42'),
(61, 5, 1, '2017-01-12 17:25:16', '203.197.142.42'),
(62, 26, 1, '2017-01-12 18:07:07', '203.197.142.42'),
(63, 33, 1, '2017-01-12 18:08:54', '203.197.142.42'),
(64, 32, 1, '2017-01-12 18:38:26', '203.197.142.42'),
(65, 32, 1, '2017-01-12 18:40:47', '203.197.142.42'),
(66, 13, 1, '2017-01-13 08:23:30', '203.197.142.42'),
(67, 24, 1, '2017-01-13 08:33:13', '203.197.142.42'),
(68, 32, 1, '2017-01-13 08:35:41', '203.197.142.42'),
(69, 32, 1, '2017-01-13 10:22:11', '203.197.142.42'),
(70, 31, 1, '2017-01-13 10:22:16', '203.197.142.42'),
(71, 36, 1, '2017-01-13 10:26:43', '203.197.142.42'),
(72, 36, 1, '2017-01-13 10:27:06', '203.197.142.42'),
(73, 1, 1, '2017-01-13 11:08:29', '203.197.142.42'),
(74, 32, 1, '2017-01-13 11:13:40', '203.197.142.42'),
(75, 6, 1, '2017-01-13 11:23:08', '203.197.142.42'),
(76, 11, 1, '2017-01-13 11:25:33', '203.197.142.42'),
(77, 11, 1, '2017-01-13 11:27:48', '203.197.142.42'),
(78, 11, 1, '2017-01-13 11:30:25', '203.197.142.42'),
(79, 36, 1, '2017-01-13 11:31:49', '203.197.142.42'),
(80, 11, 1, '2017-01-13 11:33:42', '203.197.142.42'),
(81, 11, 1, '2017-01-13 11:33:53', '203.197.142.42'),
(82, 11, 1, '2017-01-13 11:34:55', '203.197.142.42'),
(83, 41, 1, '2017-01-13 11:36:12', '203.197.142.42'),
(84, 6, 3, '2017-01-13 13:18:59', '203.197.142.42'),
(85, 6, 3, '2017-01-13 14:06:31', '203.197.142.42'),
(86, 41, 1, '2017-01-13 14:24:09', '203.197.142.42'),
(87, 42, 1, '2017-01-13 14:55:51', '203.197.142.42'),
(88, 6, 3, '2017-01-13 15:02:56', '203.197.142.42'),
(89, 1, 3, '2017-01-13 15:43:05', '203.197.142.42'),
(90, 2, 3, '2017-01-13 15:44:02', '203.197.142.42'),
(91, 4, 3, '2017-01-13 15:44:54', '203.197.142.42'),
(92, 7, 3, '2017-01-13 15:58:51', '203.197.142.42'),
(93, 7, 3, '2017-01-13 15:59:38', '203.197.142.42'),
(94, 8, 3, '2017-01-13 16:03:48', '203.197.142.42'),
(95, 8, 3, '2017-01-13 16:05:50', '203.197.142.42'),
(96, 36, 1, '2017-01-13 17:03:46', '203.197.142.42'),
(97, 1, 1, '2017-01-13 17:25:06', '203.197.142.42'),
(98, 1, 1, '2017-01-13 17:26:11', '203.197.142.42'),
(99, 1, 1, '2017-01-13 17:31:42', '203.197.142.42'),
(100, 43, 1, '2017-01-13 17:33:45', '203.197.142.42'),
(101, 10, 3, '2017-01-13 17:45:28', '203.197.142.42'),
(102, 1, 1, '2017-01-13 17:48:53', '203.197.142.42'),
(103, 40, 1, '2017-01-13 17:48:55', '203.197.142.42'),
(104, 1, 1, '2017-01-13 17:49:10', '203.197.142.42'),
(105, 28, 1, '2017-01-13 17:50:16', '203.197.142.42'),
(106, 28, 1, '2017-01-13 17:51:20', '203.197.142.42'),
(107, 28, 1, '2017-01-13 17:51:28', '203.197.142.42'),
(108, 28, 1, '2017-01-13 17:51:33', '203.197.142.42'),
(109, 28, 1, '2017-01-13 17:51:39', '203.197.142.42'),
(110, 28, 1, '2017-01-13 17:54:25', '203.197.142.42'),
(111, 28, 1, '2017-01-13 17:54:29', '203.197.142.42'),
(112, 28, 1, '2017-01-13 17:55:20', '203.197.142.42'),
(113, 28, 1, '2017-01-13 17:55:26', '203.197.142.42'),
(114, 39, 1, '2017-01-13 17:57:52', '203.197.142.42'),
(115, 40, 1, '2017-01-13 17:59:58', '203.197.142.42'),
(116, 40, 1, '2017-01-13 18:00:14', '203.197.142.42'),
(117, 1, 1, '2017-01-13 18:00:17', '203.197.142.42'),
(118, 40, 1, '2017-01-13 18:00:27', '203.197.142.42'),
(119, 1, 1, '2017-01-13 18:00:29', '203.197.142.42'),
(120, 46, 1, '2017-01-13 18:01:57', '203.197.142.42'),
(121, 39, 1, '2017-01-13 18:01:59', '203.197.142.42'),
(122, 37, 1, '2017-01-13 18:02:10', '203.197.142.42'),
(123, 36, 1, '2017-01-13 18:02:30', '203.197.142.42'),
(124, 37, 1, '2017-01-13 18:02:39', '203.197.142.42'),
(125, 38, 1, '2017-01-13 18:04:15', '203.197.142.42'),
(126, 37, 1, '2017-01-13 18:06:30', '203.197.142.42'),
(127, 17, 1, '2017-01-13 18:09:49', '203.197.142.42'),
(128, 45, 1, '2017-01-13 18:10:05', '203.197.142.42'),
(129, 40, 1, '2017-01-13 18:10:12', '203.197.142.42'),
(130, 40, 1, '2017-01-13 18:10:18', '203.197.142.42'),
(131, 37, 1, '2017-01-13 18:10:30', '203.197.142.42'),
(132, 6, 1, '2017-01-13 18:14:46', '203.197.142.42'),
(133, 6, 1, '2017-01-13 18:14:57', '203.197.142.42'),
(134, 28, 1, '2017-01-13 18:15:27', '203.197.142.42'),
(135, 28, 1, '2017-01-13 18:16:20', '203.197.142.42'),
(136, 1, 1, '2017-01-13 18:16:26', '203.197.142.42'),
(137, 10, 3, '2017-01-13 18:17:07', '203.197.142.42'),
(138, 1, 1, '2017-01-13 18:18:32', '203.197.142.42'),
(139, 1, 1, '2017-01-13 18:18:41', '203.197.142.42'),
(140, 1, 1, '2017-01-13 18:20:16', '203.197.142.42'),
(141, 2, 1, '2017-01-13 18:24:15', '203.197.142.42'),
(142, 2, 1, '2017-01-13 18:24:28', '203.197.142.42'),
(143, 2, 1, '2017-01-13 18:26:22', '203.197.142.42'),
(144, 2, 1, '2017-01-13 18:26:27', '203.197.142.42'),
(145, 2, 1, '2017-01-13 18:26:36', '203.197.142.42'),
(146, 10, 3, '2017-01-13 18:26:44', '203.197.142.42'),
(147, 14, 1, '2017-01-16 09:09:53', '203.197.142.42'),
(148, 6, 1, '2017-01-16 09:10:02', '203.197.142.42'),
(149, 6, 1, '2017-01-16 09:10:11', '203.197.142.42'),
(150, 2, 1, '2017-01-16 09:16:59', '203.197.142.42'),
(151, 2, 1, '2017-01-16 09:34:35', '203.197.142.42'),
(152, 46, 1, '2017-01-16 09:34:50', '203.197.142.42'),
(153, 2, 1, '2017-01-16 09:52:29', '203.197.142.42'),
(154, 2, 1, '2017-01-16 10:45:26', '203.197.142.42'),
(155, 7, 3, '2017-01-16 11:09:32', '203.197.142.42'),
(156, 2, 1, '2017-01-16 11:14:16', '203.197.142.42'),
(157, 42, 1, '2017-01-16 11:16:48', '14.140.244.65'),
(158, 24, 1, '2017-01-16 11:19:09', '203.197.142.42'),
(159, 18, 1, '2017-01-16 11:19:23', '203.197.142.42'),
(160, 13, 1, '2017-01-16 11:20:35', '203.197.142.42'),
(161, 14, 1, '2017-01-16 11:20:41', '203.197.142.42'),
(162, 15, 1, '2017-01-16 11:20:47', '203.197.142.42'),
(163, 16, 1, '2017-01-16 11:20:53', '203.197.142.42'),
(164, 17, 1, '2017-01-16 11:20:58', '203.197.142.42'),
(165, 25, 1, '2017-01-16 11:23:33', '203.197.142.42'),
(166, 47, 1, '2017-01-16 11:23:58', '117.196.167.2'),
(167, 1, 1, '2017-01-16 11:32:55', '117.196.167.2'),
(168, 2, 1, '2017-01-16 11:43:36', '203.197.142.42'),
(169, 3, 1, '2017-01-16 11:43:51', '203.197.142.42'),
(170, 27, 1, '2017-01-16 11:44:02', '203.197.142.42'),
(171, 15, 1, '2017-01-16 11:44:07', '203.197.142.42'),
(172, 17, 1, '2017-01-16 11:44:18', '203.197.142.42'),
(173, 10, 3, '2017-01-16 11:44:20', '203.197.142.42'),
(174, 12, 1, '2017-01-16 11:44:24', '203.197.142.42'),
(175, 11, 3, '2017-01-16 11:44:26', '203.197.142.42'),
(176, 11, 1, '2017-01-16 11:44:31', '203.197.142.42'),
(177, 10, 1, '2017-01-16 11:44:36', '203.197.142.42'),
(178, 8, 1, '2017-01-16 11:44:42', '203.197.142.42'),
(179, 7, 1, '2017-01-16 11:44:50', '203.197.142.42'),
(180, 3, 1, '2017-01-16 11:45:03', '203.197.142.42'),
(181, 5, 1, '2017-01-16 11:45:10', '203.197.142.42'),
(182, 2, 1, '2017-01-16 11:45:18', '203.197.142.42'),
(183, 1, 1, '2017-01-16 11:45:27', '203.197.142.42'),
(184, 3, 1, '2017-01-16 11:45:52', '203.197.142.42'),
(185, 3, 1, '2017-01-16 11:46:10', '203.197.142.42'),
(186, 3, 1, '2017-01-16 11:46:31', '203.197.142.42'),
(187, 5, 1, '2017-01-16 11:50:22', '14.140.244.65'),
(188, 27, 1, '2017-01-16 11:51:35', '203.197.142.42'),
(189, 2, 1, '2017-01-16 11:57:37', '14.140.244.65'),
(190, 37, 1, '2017-01-16 12:01:49', '14.140.244.65'),
(191, 9, 1, '2017-01-16 12:02:45', '203.197.142.42'),
(192, 40, 1, '2017-01-16 12:04:00', '14.140.244.65'),
(193, 9, 1, '2017-01-16 12:04:39', '203.197.142.42'),
(194, 9, 1, '2017-01-16 12:05:00', '203.197.142.42'),
(195, 3, 1, '2017-01-16 12:13:14', '203.197.142.42'),
(196, 1, 1, '2017-01-16 12:19:01', '14.140.244.65'),
(197, 49, 1, '2017-01-16 12:21:58', '203.197.142.42'),
(198, 51, 1, '2017-01-16 12:29:47', '203.197.142.42'),
(199, 52, 1, '2017-01-16 12:35:15', '203.197.142.42'),
(200, 27, 1, '2017-01-16 12:42:33', '14.140.244.65'),
(201, 44, 1, '2017-01-16 12:45:43', '14.140.244.65'),
(202, 3, 1, '2017-01-16 12:46:41', '14.140.244.65'),
(203, 7, 1, '2017-01-16 12:46:49', '14.140.244.65'),
(204, 3, 1, '2017-01-16 12:53:45', '203.197.142.42'),
(205, 1, 1, '2017-01-16 13:14:20', '14.140.244.65'),
(206, 11, 3, '2017-01-16 13:18:39', '203.197.142.42'),
(207, 37, 1, '2017-01-16 13:40:53', '14.140.244.65'),
(208, 3, 1, '2017-01-16 14:02:21', '203.197.142.42'),
(209, 3, 1, '2017-01-16 14:03:50', '203.197.142.42'),
(210, 2, 1, '2017-01-16 14:03:54', '203.197.142.42'),
(211, 2, 1, '2017-01-16 14:04:26', '203.197.142.42'),
(212, 36, 1, '2017-01-16 14:05:44', '203.197.142.42'),
(213, 6, 1, '2017-01-16 14:17:57', '14.140.244.65'),
(214, 54, 1, '2017-01-16 14:21:37', '14.140.244.65'),
(215, 54, 1, '2017-01-16 14:26:15', '14.140.244.65'),
(216, 36, 1, '2017-01-16 14:53:07', '203.197.142.42'),
(217, 38, 1, '2017-01-16 14:53:15', '203.197.142.42'),
(218, 3, 1, '2017-01-16 15:24:02', '203.197.142.42'),
(219, 5, 1, '2017-01-16 15:25:41', '203.197.142.42'),
(220, 45, 1, '2017-01-16 15:26:41', '203.197.142.42'),
(221, 45, 1, '2017-01-16 15:27:07', '203.197.142.42'),
(222, 45, 1, '2017-01-16 15:31:36', '203.197.142.42'),
(223, 3, 1, '2017-01-16 15:39:28', '203.197.142.42'),
(224, 54, 1, '2017-01-16 15:54:13', '14.140.244.65'),
(225, 53, 1, '2017-01-16 17:01:46', '14.140.244.65'),
(226, 36, 1, '2017-01-16 17:03:24', '14.140.244.65'),
(227, 36, 1, '2017-01-16 19:00:38', '203.197.142.42'),
(228, 36, 1, '2017-01-16 19:01:03', '203.197.142.42'),
(229, 3, 1, '2017-01-16 19:01:27', '203.197.142.42'),
(230, 37, 1, '2017-01-16 19:01:53', '203.197.142.42'),
(231, 36, 1, '2017-01-16 19:05:45', '203.197.142.42'),
(232, 36, 1, '2017-01-16 19:06:07', '203.197.142.42'),
(233, 45, 1, '2017-01-16 19:11:32', '203.197.142.42'),
(234, 6, 1, '2017-01-16 21:45:58', '59.92.63.109'),
(235, 5, 1, '2017-01-17 09:12:34', '203.197.142.42'),
(236, 54, 1, '2017-01-17 09:20:09', '14.140.244.65'),
(237, 1, 1, '2017-01-17 09:21:05', '14.140.244.65'),
(238, 1, 1, '2017-01-17 09:23:53', '14.140.244.65'),
(239, 36, 1, '2017-01-17 09:43:12', '14.140.244.65'),
(240, 36, 1, '2017-01-17 10:47:02', '203.197.142.42'),
(241, 5, 1, '2017-01-17 10:51:55', '14.140.244.65'),
(242, 36, 1, '2017-01-17 11:02:02', '203.197.142.42'),
(243, 36, 1, '2017-01-17 11:02:23', '203.197.142.42'),
(244, 36, 1, '2017-01-17 11:07:06', '203.197.142.42'),
(245, 29, 1, '2017-01-17 11:38:22', '203.197.142.42'),
(246, 45, 1, '2017-01-17 11:43:25', '203.197.142.42'),
(247, 47, 1, '2017-01-17 12:01:21', '203.197.142.42'),
(248, 54, 1, '2017-01-17 12:05:15', '14.140.244.65'),
(249, 47, 1, '2017-01-17 12:09:54', '203.197.142.42'),
(250, 36, 1, '2017-01-17 12:15:24', '203.197.142.42'),
(251, 36, 1, '2017-01-17 12:15:28', '203.197.142.42'),
(252, 3, 1, '2017-01-17 12:16:38', '203.197.142.42'),
(253, 36, 1, '2017-01-17 12:22:50', '203.197.142.42'),
(254, 45, 1, '2017-01-17 12:26:24', '203.197.142.42'),
(255, 45, 1, '2017-01-17 12:26:43', '203.197.142.42'),
(256, 45, 1, '2017-01-17 12:27:42', '203.197.142.42'),
(257, 45, 1, '2017-01-17 12:27:50', '203.197.142.42'),
(258, 45, 1, '2017-01-17 12:30:07', '203.197.142.42'),
(259, 36, 1, '2017-01-17 12:31:10', '203.197.142.42'),
(260, 45, 1, '2017-01-17 12:32:12', '203.197.142.42'),
(261, 45, 1, '2017-01-17 12:32:30', '203.197.142.42'),
(262, 36, 1, '2017-01-17 12:32:32', '203.197.142.42'),
(263, 36, 1, '2017-01-17 12:33:01', '203.197.142.42'),
(264, 45, 1, '2017-01-17 12:33:53', '203.197.142.42'),
(265, 45, 1, '2017-01-17 12:35:14', '203.197.142.42'),
(266, 36, 1, '2017-01-17 12:35:41', '203.197.142.42'),
(267, 36, 1, '2017-01-17 12:36:13', '203.197.142.42'),
(268, 36, 1, '2017-01-17 12:36:48', '203.197.142.42'),
(269, 36, 1, '2017-01-17 12:39:07', '203.197.142.42'),
(270, 36, 1, '2017-01-17 12:39:19', '203.197.142.42'),
(271, 36, 1, '2017-01-17 12:40:43', '203.197.142.42'),
(272, 27, 1, '2017-01-17 12:43:08', '14.140.244.65'),
(273, 36, 1, '2017-01-17 12:45:17', '203.197.142.42'),
(274, 36, 1, '2017-01-17 12:47:09', '203.197.142.42'),
(275, 36, 1, '2017-01-17 12:47:21', '203.197.142.42'),
(276, 36, 1, '2017-01-17 12:47:26', '203.197.142.42'),
(277, 52, 1, '2017-01-17 12:47:31', '203.197.142.42'),
(278, 50, 1, '2017-01-17 12:57:09', '203.197.142.42'),
(279, 37, 1, '2017-01-17 12:57:15', '203.197.142.42'),
(280, 50, 1, '2017-01-17 12:57:21', '203.197.142.42'),
(281, 11, 1, '2017-01-17 13:04:30', '14.140.244.65'),
(282, 11, 3, '2017-01-17 13:04:53', '14.140.244.65'),
(283, 36, 1, '2017-01-17 13:10:17', '203.197.142.42'),
(284, 47, 1, '2017-01-17 13:15:24', '14.140.244.65'),
(285, 46, 1, '2017-01-17 13:16:14', '14.140.244.65'),
(286, 49, 1, '2017-01-17 13:16:22', '14.140.244.65'),
(287, 53, 1, '2017-01-17 13:16:37', '14.140.244.65'),
(288, 11, 3, '2017-01-17 13:40:37', '14.140.244.65'),
(289, 11, 1, '2017-01-17 13:42:45', '14.140.244.65'),
(290, 5, 1, '2017-01-17 13:53:49', '14.140.244.65'),
(291, 11, 3, '2017-01-17 14:54:21', '14.140.244.65'),
(292, 36, 1, '2017-01-17 15:03:01', '203.197.142.42'),
(293, 36, 1, '2017-01-17 15:03:24', '203.197.142.42'),
(294, 36, 1, '2017-01-17 15:04:06', '203.197.142.42'),
(295, 3, 1, '2017-01-17 15:12:29', '203.197.142.42'),
(296, 41, 1, '2017-01-17 15:13:57', '203.197.142.42'),
(297, 41, 1, '2017-01-17 15:18:44', '203.197.142.42'),
(298, 36, 1, '2017-01-17 15:20:53', '203.197.142.42'),
(299, 3, 1, '2017-01-17 15:26:40', '14.140.244.65'),
(300, 6, 1, '2017-01-17 15:36:12', '203.197.142.42'),
(301, 10, 1, '2017-01-17 15:59:47', '14.140.244.65'),
(302, 3, 4, '2017-01-17 16:16:42', '203.197.142.42'),
(303, 2, 1, '2017-01-17 16:16:53', '203.197.142.42'),
(304, 7, 3, '2017-01-17 16:17:05', '203.197.142.42'),
(305, 2, 4, '2017-01-17 16:18:02', '14.140.244.65'),
(306, 3, 4, '2017-01-17 16:18:10', '203.197.142.42'),
(307, 50, 1, '2017-01-17 16:19:40', '14.140.244.65'),
(308, 40, 1, '2017-01-17 16:20:30', '14.140.244.65'),
(309, 9, 3, '2017-01-17 16:28:26', '203.197.142.42'),
(310, 36, 1, '2017-01-17 16:29:23', '203.197.142.42'),
(311, 33, 1, '2017-01-17 16:29:49', '14.140.244.65'),
(312, 36, 1, '2017-01-17 16:29:54', '203.197.142.42'),
(313, 11, 1, '2017-01-17 16:31:50', '14.140.244.65'),
(314, 23, 1, '2017-01-17 16:36:10', '14.140.244.65'),
(315, 36, 1, '2017-01-17 16:37:37', '203.197.142.42'),
(316, 31, 1, '2017-01-17 16:47:11', '14.140.244.65'),
(317, 43, 1, '2017-01-17 17:16:26', '14.140.244.65'),
(318, 53, 1, '2017-01-17 20:51:22', '117.209.211.18'),
(319, 38, 1, '2017-01-18 10:07:47', '117.209.215.14'),
(320, 11, 3, '2017-01-18 10:11:21', '14.140.244.65'),
(321, 6, 1, '2017-01-18 10:23:17', '203.197.142.42'),
(322, 53, 1, '2017-01-18 10:24:05', '203.197.142.42'),
(323, 1, 4, '2017-01-18 10:24:30', '203.197.142.42'),
(324, 36, 1, '2017-01-18 10:24:53', '203.197.142.42'),
(325, 36, 1, '2017-01-18 10:25:18', '203.197.142.42'),
(326, 53, 1, '2017-01-18 10:43:28', '14.140.244.65'),
(327, 47, 1, '2017-01-18 10:59:26', '14.140.244.65'),
(328, 8, 1, '2017-01-18 11:01:09', '14.140.244.65'),
(329, 54, 1, '2017-01-18 11:33:16', '203.197.142.42'),
(330, 54, 1, '2017-01-18 11:40:26', '203.197.142.42'),
(331, 3, 4, '2017-01-18 11:50:46', '203.197.142.42'),
(332, 4, 4, '2017-01-18 12:06:53', '203.197.142.42'),
(333, 3, 4, '2017-01-18 12:09:24', '203.197.142.42'),
(334, 3, 4, '2017-01-18 12:09:53', '203.197.142.42'),
(335, 4, 4, '2017-01-18 12:11:36', '203.197.142.42'),
(336, 3, 4, '2017-01-18 12:13:05', '203.197.142.42'),
(337, 1, 4, '2017-01-18 12:13:35', '203.197.142.42'),
(338, 2, 4, '2017-01-18 12:15:09', '203.197.142.42'),
(339, 3, 4, '2017-01-18 12:15:56', '203.197.142.42'),
(340, 3, 4, '2017-01-18 12:16:06', '203.197.142.42'),
(341, 4, 4, '2017-01-18 12:42:05', '14.140.244.65'),
(342, 5, 1, '2017-01-18 14:27:28', '203.197.142.42'),
(343, 3, 4, '2017-01-18 14:29:56', '203.197.142.42'),
(344, 3, 4, '2017-01-18 16:36:33', '203.197.142.42'),
(345, 6, 1, '2017-01-18 16:37:00', '203.197.142.42'),
(346, 55, 1, '2017-01-19 15:10:06', '14.140.244.65'),
(347, 55, 1, '2017-01-19 15:16:11', '14.140.244.65'),
(348, 55, 1, '2017-01-19 15:53:47', '14.140.244.65'),
(349, 56, 1, '2017-01-20 10:23:39', '203.197.142.42'),
(350, 4, 4, '2017-01-20 10:24:48', '203.197.142.42'),
(351, 11, 3, '2017-01-20 11:39:52', '14.140.244.65'),
(352, 55, 1, '2017-01-20 12:15:03', '203.197.142.42'),
(353, 43, 1, '2017-01-20 12:15:51', '203.197.142.42'),
(354, 43, 1, '2017-01-20 12:17:18', '203.197.142.42'),
(355, 2, 4, '2017-01-20 12:18:22', '203.197.142.42'),
(356, 50, 1, '2017-01-20 12:53:27', '203.197.142.42'),
(357, 4, 4, '2017-01-20 14:08:32', '14.140.244.65'),
(358, 56, 1, '2017-01-20 14:32:54', '14.140.244.65'),
(359, 55, 1, '2017-01-20 14:33:48', '14.140.244.65'),
(360, 28, 1, '2017-01-20 14:35:57', '66.249.79.174'),
(361, 28, 1, '2017-01-20 14:35:59', '66.249.79.174'),
(362, 55, 1, '2017-01-20 14:51:50', '14.140.244.65'),
(363, 51, 1, '2017-01-20 14:57:22', '14.140.244.65'),
(364, 47, 1, '2017-01-20 16:25:12', '14.140.244.65'),
(365, 10, 1, '2017-01-20 16:27:44', '14.140.244.65'),
(366, 4, 4, '2017-01-20 16:52:31', '14.140.244.65'),
(367, 36, 1, '2017-01-20 18:43:51', '203.197.142.42'),
(368, 4, 4, '2017-01-21 10:58:45', '14.140.244.65'),
(369, 36, 1, '2017-01-21 12:45:30', '203.197.142.42'),
(370, 13, 1, '2017-01-21 13:46:39', '203.197.142.42');

-- --------------------------------------------------------

--
-- Table structure for table `page_master`
--

CREATE TABLE `page_master` (
  `id` smallint(6) NOT NULL,
  `menuid` smallint(6) DEFAULT NULL,
  `pagetype` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->Section, 2->article',
  `hasTemplate` tinyint(1) DEFAULT '0',
  `templatexml` longtext CHARACTER SET utf8 NOT NULL,
  `workspace_version_id` int(11) DEFAULT NULL,
  `published_templatexml` longtext CHARACTER SET utf8 NOT NULL,
  `templateid` smallint(6) DEFAULT NULL,
  `Header_Adscript` text CHARACTER SET utf8 NOT NULL,
  `common_header` tinyint(1) NOT NULL COMMENT '1->common, 0->current',
  `common_rightpanel` tinyint(1) NOT NULL COMMENT '1->common, 0->current',
  `common_footer` tinyint(1) NOT NULL COMMENT '1->common, 0->current',
  `locked_user_id` smallint(6) DEFAULT NULL,
  `locked_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->locked, 2-unlocked',
  `Published_Version_Id` int(11) DEFAULT NULL,
  `Is_Template_Committed` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->commited, 2->working',
  `Createdby` smallint(6) DEFAULT NULL,
  `Createdon` datetime NOT NULL,
  `Modifiedby` smallint(6) DEFAULT NULL,
  `Modifiedon` datetime NOT NULL,
  `page_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->Active, 2->Inactive',
  `use_parent_section_template` tinyint(4) NOT NULL COMMENT '0->Not use parent template, 1->Use parent template'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_master`
--

INSERT INTO `page_master` (`id`, `menuid`, `pagetype`, `hasTemplate`, `templatexml`, `workspace_version_id`, `published_templatexml`, `templateid`, `Header_Adscript`, `common_header`, `common_rightpanel`, `common_footer`, `locked_user_id`, `locked_status`, `Published_Version_Id`, `Is_Template_Committed`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `page_status`, `use_parent_section_template`) VALUES
(1, 10000, 1, 1, '', 3, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "1" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n<widgetcontainer type = "1" id ="container-1484217225018"  containervalue="12">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="65" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484217225641"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="66" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484217226498"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="67" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "8" id ="container-1484217347017"  containervalue="8,4">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="68" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484217364442"  containervalue="12">\n<widget id ="38" widgetTitle ="weather logo search" widgetorder_in_container ="1" data-widgetid="38" data-widgetname="weather logo search" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/weather_logo_search" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/weather_logo_search-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="70" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484218069558"  containervalue="12">\n<widget id ="30" widgetTitle ="Section" widgetorder_in_container ="1" data-widgetid="30" data-widgetname="Section" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="1" data-widgetfilepath="admin/widgets/menu" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/menu-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="81" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484218054575"  containervalue="12">\n<widget id ="48" widgetTitle ="Bread Crumb" widgetorder_in_container ="1" data-widgetid="48" data-widgetname="Bread Crumb" data-minimumcontent="1" data-maximumcontent="1" data-contenttype="1" data-widgetfilepath="admin/widgets/breadcrumb" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/breadcrumb-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="80" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484630083229"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="99" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484286291119"  containervalue="12">\n<widget id ="121" widgetTitle ="Listing page other stories with manual option" widgetorder_in_container ="1" data-widgetid="121" data-widgetname="Listing page other stories with manual option" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_other_stories_manual" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories_manual-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="89" cdata-customBgColor="" cdata-customMaxArticles="10" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n<widgetcontainer type = "1" id ="container-1484218185278"  containervalue="12">\n<widget id ="7" widgetTitle ="Editor\'s Picks" widgetorder_in_container ="1" data-widgetid="7" data-widgetname="Editor\'s Picks" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/editor_pick" data-widgetstyle="1" data-renderingtype="2" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/editor_pick-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="85" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484218185638"  containervalue="12">\n<widget id ="122" widgetTitle ="Pc Corner" widgetorder_in_container ="1" data-widgetid="122" data-widgetname="Pc Corner" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/pc_corner" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/pc_corner-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="84" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484218186213"  containervalue="12">\n<widget id ="37" widgetTitle ="twitter" widgetorder_in_container ="1" data-widgetid="37" data-widgetname="twitter" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/twitter" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/twitter-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="83" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n<widgetcontainer type = "1" id ="container-1484218144950"  containervalue="12">\n<widget id ="34" widgetTitle ="Footer" widgetorder_in_container ="1" data-widgetid="34" data-widgetname="Footer" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/footer1" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/footer1-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="1" data-widgetinstanceid="82" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n</template>', 4, '', 0, 0, 0, NULL, 1, 3, 1, 39, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `page_master` (`id`, `menuid`, `pagetype`, `hasTemplate`, `templatexml`, `workspace_version_id`, `published_templatexml`, `templateid`, `Header_Adscript`, `common_header`, `common_rightpanel`, `common_footer`, `locked_user_id`, `locked_status`, `Published_Version_Id`, `Is_Template_Committed`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `page_status`, `use_parent_section_template`) VALUES
(2, 10000, 2, 1, '', 2, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "9" pageid = "2" templatevalues="3-7,5-3"><tplcontainer name="template-wrapper-top" master-tcid="13">\n<widgetcontainer type = "4" id ="container-1484194703873"  containervalue="4,4,4">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="27" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="2" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="2" data-widgetpageid="2" data-widgetinstanceid="28" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="3" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="3" data-widgetpageid="2" data-widgetinstanceid="29" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194732421"  containervalue="12">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="30" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "7" id ="container-1484194752192"  containervalue="9,3">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="31" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194767634"  containervalue="12">\n<widget id ="38" widgetTitle ="weather logo search" widgetorder_in_container ="1" data-widgetid="38" data-widgetname="weather logo search" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/weather_logo_search" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/weather_logo_search-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="32" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194768079"  containervalue="12">\n<widget id ="30" widgetTitle ="Section" widgetorder_in_container ="1" data-widgetid="30" data-widgetname="Section" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="1" data-widgetfilepath="admin/widgets/menu" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/menu-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="33" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="14">\n<widgetcontainer type = "1" id ="container-1484194793922"  containervalue="12">\n<widget id ="41" widgetTitle ="Article Details" widgetorder_in_container ="1" data-widgetid="41" data-widgetname="Article Details" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/article_details" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/article_details-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="34" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194802702"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="36" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194832823"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="37" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194833367"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="38" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194849671"  containervalue="12">\n<widget id ="108" widgetTitle ="Comments" widgetorder_in_container ="1" data-widgetid="108" data-widgetname="Comments" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/comments" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/comments-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="39" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194865143"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="40" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194865359"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="41" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "2" id ="container-1484194873496"  containervalue="6,6">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="42" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="2" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="2" data-widgetpageid="2" data-widgetinstanceid="43" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194883583"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="44" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="15">\n<widgetcontainer type = "1" id ="container-1484194805616"  containervalue="12">\n<widget id ="120" widgetTitle ="Promotion menu" widgetorder_in_container ="1" data-widgetid="120" data-widgetname="Promotion menu" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/promotion_menu" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/promotion_menu-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="35" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194923326"  containervalue="12">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="46" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194946639"  containervalue="12">\n<widget id ="69" widgetTitle ="Entertainment Gossip" widgetorder_in_container ="1" data-widgetid="69" data-widgetname="Entertainment Gossip" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/entertainment_gossip" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/entertainment_gossip-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="92" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="13" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194923566"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="47" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484194939119"  containervalue="12">\n<widget id ="3" widgetTitle ="Top News" widgetorder_in_container ="1" data-widgetid="3" data-widgetname="Top News" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/topnews" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/topnews-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="48" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="ഏറ്റവും പുതിയ" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="13" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195010991"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="50" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195011431"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="51" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195011936"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="52" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195028798"  containervalue="12">\n<widget id ="70" widgetTitle ="Gallery Right Side" widgetorder_in_container ="1" data-widgetid="70" data-widgetname="Gallery Right Side" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="3" data-widgetfilepath="admin/widgets/section_gallery" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/section_gallery-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="53" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195039399"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="54" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195055695"  containervalue="12">\n<widget id ="71" widgetTitle ="Video Right Side" widgetorder_in_container ="1" data-widgetid="71" data-widgetname="Video Right Side" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="4" data-widgetfilepath="admin/widgets/section_video" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/section_video-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="55" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195093463"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="56" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195094078"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="57" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195094518"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="58" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195094974"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="59" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195095422"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="60" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195095926"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="61" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195096310"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="62" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="16">\n<widgetcontainer type = "1" id ="container-1484195132256"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="63" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484195132572"  containervalue="12">\n<widget id ="34" widgetTitle ="Footer" widgetorder_in_container ="1" data-widgetid="34" data-widgetname="Footer" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/footer1" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/footer1-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="2" data-widgetinstanceid="64" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n</template>', 9, '', 0, 0, 0, NULL, 1, 2, 1, 39, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(3, 10001, 1, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 39, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(4, 10001, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 39, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `page_master` (`id`, `menuid`, `pagetype`, `hasTemplate`, `templatexml`, `workspace_version_id`, `published_templatexml`, `templateid`, `Header_Adscript`, `common_header`, `common_rightpanel`, `common_footer`, `locked_user_id`, `locked_status`, `Published_Version_Id`, `Is_Template_Committed`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `page_status`, `use_parent_section_template`) VALUES
(5, 1, 1, 1, '', 5, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "5" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484286861201"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="5" data-widgetinstanceid="91" cdata-customBgColor="" cdata-customMaxArticles="6" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="1" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484286778289"  containervalue="12">\n<widget id ="121" widgetTitle ="Listing page other stories with manual option" widgetorder_in_container ="1" data-widgetid="121" data-widgetname="Listing page other stories with manual option" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_other_stories_manual" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories_manual-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="5" data-widgetinstanceid="90" cdata-customBgColor="" cdata-customMaxArticles="100" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="1" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 5, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(6, 1, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(7, 2, 1, 1, '', 6, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "7" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484547895537"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="7" data-widgetinstanceid="95" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="2" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484547948456"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="7" data-widgetinstanceid="96" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 6, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(8, 2, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(9, 3, 1, 1, '', 7, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "9" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484548542882"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="9" data-widgetinstanceid="97" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="3" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484548543090"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="9" data-widgetinstanceid="98"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 7, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(10, 3, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(11, 4, 1, 1, '', 8, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "11" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484635015349"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="11" data-widgetinstanceid="100" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="4" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484635016069"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="11" data-widgetinstanceid="101" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 8, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(12, 4, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(13, 5, 1, 1, '', 9, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "13" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484638140240"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="13" data-widgetinstanceid="102" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="5" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484638140582"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="13" data-widgetinstanceid="103"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 9, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(14, 5, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(15, 6, 1, 1, '', 10, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "15" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484638522132"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="15" data-widgetinstanceid="104" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="6" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484638522885"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="15" data-widgetinstanceid="105"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 10, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(16, 6, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(17, 7, 1, 1, '', 11, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "17" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484638720229"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="17" data-widgetinstanceid="106" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="7" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484638720637"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="17" data-widgetinstanceid="107"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 11, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(18, 7, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(19, 8, 1, 1, '', 12, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "19" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 12, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(20, 8, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', 149, '0000-00-00 00:00:00', 1, 0),
(21, 9, 1, 1, '', 13, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "21" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484641298652"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="21" data-widgetinstanceid="108" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="9" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484641298988"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="21" data-widgetinstanceid="109" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 13, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(22, 9, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(23, 10, 1, 1, '', 14, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "23" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484644272717"  containervalue="12">\n<widget id ="40" widgetTitle ="Listing Page Lead Stories" widgetorder_in_container ="1" data-widgetid="40" data-widgetname="Listing Page Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/subsection_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="23" data-widgetinstanceid="112" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="10" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484644273213"  containervalue="12">\n<widget id ="45" widgetTitle ="Listing Page Other Stories" widgetorder_in_container ="1" data-widgetid="45" data-widgetname="Listing Page Other Stories" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="23" data-widgetinstanceid="114"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 14, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(24, 10, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(25, 11, 1, 1, '', 15, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "25" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484720091863"  containervalue="12">\n<widget id ="73" widgetTitle ="Video Lead" widgetorder_in_container ="1" data-widgetid="73" data-widgetname="Video Lead" data-minimumcontent="4" data-maximumcontent="4" data-contenttype="4" data-widgetfilepath="admin/widgets/video_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/video_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="25" data-widgetinstanceid="121" cdata-customBgColor="" cdata-customMaxArticles="1" cdata-customTitle="" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="11" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484720092358"  containervalue="12">\n<widget id ="58" widgetTitle ="Video Type 1" widgetorder_in_container ="1" data-widgetid="58" data-widgetname="Video Type 1" data-minimumcontent="4" data-maximumcontent="4" data-contenttype="4" data-widgetfilepath="admin/widgets/video_entertainment" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/video_entertainment-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="25" data-widgetinstanceid="123" cdata-customBgColor="" cdata-customMaxArticles="3" cdata-customTitle="" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="11" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 15, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(26, 11, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', 149, '0000-00-00 00:00:00', 1, 0),
(27, 12, 1, 1, '', 16, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "27" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484644700629"  containervalue="12">\n<widget id ="73" widgetTitle ="Video Lead" widgetorder_in_container ="1" data-widgetid="73" data-widgetname="Video Lead" data-minimumcontent="4" data-maximumcontent="4" data-contenttype="4" data-widgetfilepath="admin/widgets/video_lead" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/video_lead-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="27" data-widgetinstanceid="120" cdata-customBgColor="" cdata-customMaxArticles="1" cdata-customTitle="" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="11" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484644699475"  containervalue="12">\n<widget id ="101" widgetTitle ="Videos Listing" widgetorder_in_container ="1" data-widgetid="101" data-widgetname="Videos Listing" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/videos_subsection_other_stories" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned_instance_id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/videos_subsection_other_stories-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="27" data-widgetinstanceid="118"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 16, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(28, 12, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', 149, '0000-00-00 00:00:00', 2, 0),
(29, 13, 1, 1, '', 17, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "29" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n</tplcontainer>\n</template>', 4, '', 1, 1, 1, NULL, 1, 17, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(30, 13, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `page_master` (`id`, `menuid`, `pagetype`, `hasTemplate`, `templatexml`, `workspace_version_id`, `published_templatexml`, `templateid`, `Header_Adscript`, `common_header`, `common_rightpanel`, `common_footer`, `locked_user_id`, `locked_status`, `Published_Version_Id`, `Is_Template_Committed`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `page_status`, `use_parent_section_template`) VALUES
(31, 14, 1, 1, '', 1, '<?xml version="1.0" encoding="UTF-8"?>\n<template templateid = "4" pageid = "31" templatevalues="3-2,1-3"><tplcontainer name="template-wrapper-top" master-tcid="4">\n<widgetcontainer type = "7" id ="container-1484127488136"  containervalue="9,3">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="1" cdata-customBgColor="" cdata-customMaxArticles="0" cdata-customTitle="adv_1" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="2" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="2" data-widgetpageid="31" data-widgetinstanceid="2" cdata-customBgColor="" cdata-customMaxArticles="0" cdata-customTitle="adv_2" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484127563967"  containervalue="12">\n<widget id ="38" widgetTitle ="weather logo search" widgetorder_in_container ="1" data-widgetid="38" data-widgetname="weather logo search" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/weather_logo_search" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/weather_logo_search-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="3" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484127564655"  containervalue="12">\n<widget id ="30" widgetTitle ="Section" widgetorder_in_container ="1" data-widgetid="30" data-widgetname="Section" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="1" data-widgetfilepath="admin/widgets/menu" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/menu-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="4" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484127600952"  containervalue="12">\n<widget id ="8" widgetTitle ="Breaking News" widgetorder_in_container ="1" data-widgetid="8" data-widgetname="Breaking News" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/breaking_news" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/breaking_news-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="5" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "5" id ="container-1484127628921"  containervalue="3,6,3">\n<widget id ="3" widgetTitle ="Top News" widgetorder_in_container ="1" data-widgetid="3" data-widgetname="Top News" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/topnews" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/topnews-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="6" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="Latest" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="13" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n<widget id ="39" widgetTitle ="Lead Stories" widgetorder_in_container ="2" data-widgetid="39" data-widgetname="Lead Stories" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="7" data-widgetfilepath="admin/widgets/lead_story" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="1" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/lead_story-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="2" data-widgetpageid="31" data-widgetinstanceid="8" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="Lead Stories" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n<widget id ="3" widgetTitle ="Top News" widgetorder_in_container ="3" data-widgetid="3" data-widgetname="Top News" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/topnews" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/topnews-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="3" data-widgetpageid="31" data-widgetinstanceid="7" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="കേരളം" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="1" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="5">\n<widgetcontainer type = "1" id ="container-1484127705591"  containervalue="12">\n<widget id ="10" widgetTitle ="Specials" widgetorder_in_container ="1" data-widgetid="10" data-widgetname="Specials" data-minimumcontent="3" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/specials" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/specials-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="9" cdata-customBgColor="" cdata-customMaxArticles="9" cdata-customTitle="Editor\'s Pick" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "2" id ="container-1484128036000"  containervalue="6,6">\n<widget id ="16" widgetTitle ="Nation" widgetorder_in_container ="1" data-widgetid="16" data-widgetname="Nation" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/nation" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/nation-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="11" cdata-customBgColor="" cdata-customMaxArticles="6" cdata-customTitle="ദേശീയം" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="2" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n<widget id ="16" widgetTitle ="Nation" widgetorder_in_container ="2" data-widgetid="16" data-widgetname="Nation" data-minimumcontent="1" data-maximumcontent="5" data-contenttype="2" data-widgetfilepath="admin/widgets/nation" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/nation-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="2" data-widgetpageid="31" data-widgetinstanceid="12" cdata-customBgColor="" cdata-customMaxArticles="5" cdata-customTitle="ധനകാര്യം" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="5" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128116976"  containervalue="12">\n<widget id ="18" widgetTitle ="Entertainment" widgetorder_in_container ="1" data-widgetid="18" data-widgetname="Entertainment" data-minimumcontent="5" data-maximumcontent="0" data-contenttype="7" data-widgetfilepath="admin/widgets/entertainment" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/entertainment-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="14" cdata-customBgColor="" cdata-customMaxArticles="6" cdata-customTitle="ചലച്ചിത്രം " cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128274160"  containervalue="12">\n<widget id ="22" widgetTitle ="Sport" widgetorder_in_container ="1" data-widgetid="22" data-widgetname="Sport" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/sports" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/sports-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="17" cdata-customBgColor="" cdata-customMaxArticles="8" cdata-customTitle="കായികം" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="7" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484225089050"  containervalue="12">\n<widget id ="123" widgetTitle ="Raw Script Dont use" widgetorder_in_container ="1" data-widgetid="123" data-widgetname="Raw Script Dont use" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/raw_script" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/raw_script-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="86" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128458752"  containervalue="12">\n<widget id ="62" widgetTitle ="Sunday Standard 3" widgetorder_in_container ="1" data-widgetid="62" data-widgetname="Sunday Standard 3" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/sunday_standard_region3" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="1" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/sunday_standard_region3-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="19" cdata-customBgColor="" cdata-customMaxArticles="3" cdata-customTitle="" cdata-showSummary="1" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="13" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128539944"  containervalue="12">\n<widget id ="23" widgetTitle ="Gallery" widgetorder_in_container ="1" data-widgetid="23" data-widgetname="Gallery" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="3" data-widgetfilepath="admin/widgets/gallery" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/gallery-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="21" cdata-customBgColor="" cdata-customMaxArticles="4" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="8" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128556504"  containervalue="12">\n<widget id ="71" widgetTitle ="Video Right Side" widgetorder_in_container ="1" data-widgetid="71" data-widgetname="Video Right Side" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="4" data-widgetfilepath="admin/widgets/section_video" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/section_video-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="88" cdata-customBgColor="" cdata-customMaxArticles="3" cdata-customTitle="മലയാളം വാരിക " cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="11" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-left" master-tcid="6">\n<widgetcontainer type = "1" id ="container-1484127873296"  containervalue="12">\n<widget id ="4" widgetTitle ="Gallery - Videos" widgetorder_in_container ="1" data-widgetid="4" data-widgetname="Gallery - Videos" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="7" data-widgetfilepath="admin/widgets/gallery_videos" data-widgetstyle="2" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/gallery_videos-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="94" cdata-customBgColor="" cdata-customMaxArticles="1" cdata-customTitle="" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="auto" cdata-separatorRequired="" cdata-widgetCategory="11" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n<widgettab cdata-categoryId="12" cdata-categoryName="ചിത്രജാലം" cdata-customTitle="ചിത്രജാലം" cdata-categoryType="3" cdata-categoryTypeName="Gallery" ></widgettab><widgettab cdata-categoryId="11" cdata-categoryName="വിഡിയോ" cdata-customTitle="വിഡിയോ" cdata-categoryType="4" cdata-categoryTypeName="Video" ></widgettab></widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484127874176"  containervalue="12">\n<widget id ="11" widgetTitle ="Polls" widgetorder_in_container ="1" data-widgetid="11" data-widgetname="Polls" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/polls" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/polls-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="13" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128156585"  containervalue="12">\n<widget id ="122" widgetTitle ="Pc Corner" widgetorder_in_container ="1" data-widgetid="122" data-widgetname="Pc Corner" data-minimumcontent="4" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/pc_corner" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/pc_corner-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="16" cdata-customBgColor="" cdata-customMaxArticles="6" cdata-customTitle="Trending" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="manual" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128157177"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="15" cdata-customBgColor="" cdata-customMaxArticles="0" cdata-customTitle="Sports Score" cdata-showSummary="" cdata-iframeUrl="" cdata-renderingMode="" cdata-separatorRequired="" cdata-widgetCategory="" cdata-widgetpublishOn="" cdata-widgetpublishOff="" cdata-widgetStatus="1" cdata-isCloned="0"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484128315096"  containervalue="12">\n<widget id ="5" widgetTitle ="Script Widget" widgetorder_in_container ="1" data-widgetid="5" data-widgetname="Script Widget" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="2" data-widgetfilepath="admin/widgets/header_add" data-widgetstyle="1" data-renderingtype="3" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="1" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/header_add-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="18" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n<widgetcontainer type = "1" id ="container-1484129386196"  containervalue="12">\n<widget id ="37" widgetTitle ="twitter" widgetorder_in_container ="1" data-widgetid="37" data-widgetname="twitter" data-minimumcontent="1" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/twitter" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/twitter-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="23" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n<tplcontainer name="template-wrapper-footer" master-tcid="7">\n<widgetcontainer type = "1" id ="container-1484140071499"  containervalue="12">\n<widget id ="34" widgetTitle ="Footer" widgetorder_in_container ="1" data-widgetid="34" data-widgetname="Footer" data-minimumcontent="0" data-maximumcontent="0" data-contenttype="1" data-widgetfilepath="admin/widgets/footer1" data-widgetstyle="1" data-renderingtype="1" data-isrelatedarticleavailable="0" data-iswidgettitleconfigurable="0" data-issummaryavailable="0" data-createdby="1" data-createdon="0000-00-00 00:00:00" data-modifiedby="0" data-modifiedon="0000-00-00 00:00:00" data-status="1" data-clonedstatus="" data-cloned-instance-id="" data-clonedfrom="" data-widgetthumbnailpath="images/admin/template_design/images/widget_images/footer1-small.jpg" data-clonedinstanceid="" data-widgetcontainerorderid="1" data-widgetpageid="31" data-widgetinstanceid="26" cdata-customBgColor="undefined" cdata-customMaxArticles="undefined" cdata-customTitle="undefined" cdata-showSummary="undefined" cdata-iframeUrl="" cdata-renderingMode="undefined" cdata-separatorRequired="" cdata-widgetCategory="undefined" cdata-widgetpublishOn="undefined" cdata-widgetpublishOff="undefined" cdata-widgetStatus="undefined" cdata-isCloned="undefined"  >\n</widget>\n</widgetcontainer>\n</tplcontainer>\n</template>', 4, '', 0, 0, 1, NULL, 1, 1, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(32, 14, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', 149, '0000-00-00 00:00:00', 1, 0),
(33, 15, 1, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 1, 0),
(34, 15, 2, 0, '', NULL, '', NULL, '', 0, 0, 0, NULL, 1, NULL, 1, 149, '0000-00-00 00:00:00', 149, '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pollmaster`
--

CREATE TABLE `pollmaster` (
  `Poll_id` smallint(6) NOT NULL,
  `PollQuestion` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image_id` mediumint(9) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NumberOfOptions` tinyint(1) NOT NULL,
  `OptionText1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `OptionText2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `OptionText3` varchar(50) CHARACTER SET utf8 NOT NULL,
  `OptionText4` varchar(50) CHARACTER SET utf8 NOT NULL,
  `OptionText5` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Content_ID` mediumint(9) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `Createdby` smallint(6) NOT NULL,
  `Createdon` datetime NOT NULL,
  `Modifiedby` smallint(6) NOT NULL,
  `Modifiedon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pollmaster`
--

INSERT INTO `pollmaster` (`Poll_id`, `PollQuestion`, `image_id`, `image_path`, `image_title`, `image_alt`, `NumberOfOptions`, `OptionText1`, `OptionText2`, `OptionText3`, `OptionText4`, `OptionText5`, `Content_ID`, `Status`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`) VALUES
(1, 'എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്‍ക്കാന്‍ ദിലീപ് ശ്രമിക്കുന്ന‍ു: ലിബര്‍ട്ടി ബഷീര്‍', 3, '2017/1/12/original/poll.jpg', 'poll', 'poll', 2, 'അതെ', 'ഇല്ല', '', '', '', 2, 1, 148, '2017-01-18 12:23:08', 148, '2017-01-18 12:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `pollresultdata`
--

CREATE TABLE `pollresultdata` (
  `poll_result_ID` mediumint(9) NOT NULL,
  `poll_id` smallint(6) DEFAULT NULL,
  `textvalue1` mediumint(9) NOT NULL,
  `textvalue2` mediumint(9) NOT NULL,
  `textvalue3` mediumint(9) NOT NULL,
  `textvalue4` mediumint(9) NOT NULL,
  `textvalue5` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pollresultdata`
--

INSERT INTO `pollresultdata` (`poll_result_ID`, `poll_id`, `textvalue1`, `textvalue2`, `textvalue3`, `textvalue4`, `textvalue5`) VALUES
(1, 1, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `relatedcontent`
--

CREATE TABLE `relatedcontent` (
  `content_id` mediumint(9) UNSIGNED NOT NULL,
  `contenttype` tinyint(1) NOT NULL,
  `related_articletitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `related_articleurl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `content_id` mediumint(9) UNSIGNED NOT NULL,
  `ecenic_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `resource_url` varchar(255) NOT NULL,
  `article_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image_caption` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `publish_start_date` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sectionmaster`
--

CREATE TABLE `sectionmaster` (
  `Section_id` smallint(6) NOT NULL,
  `IsSubSection` tinyint(1) DEFAULT '0' COMMENT '0 for No, 1 for Yes',
  `IsSeperateWebsite` tinyint(1) DEFAULT '0' COMMENT '0 for No, 1 for Yes',
  `ParentSectionID` smallint(9) DEFAULT NULL,
  `Highlight` tinyint(1) DEFAULT '0',
  `RSSFeedAllowed` tinyint(1) DEFAULT '0',
  `DisplayOrder` tinyint(4) DEFAULT NULL,
  `BGImage_path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `AuthorID` smallint(6) DEFAULT NULL,
  `AuthorImgPath` varchar(255) CHARACTER SET utf8 NOT NULL,
  `AuthorBiography` text CHARACTER SET utf8 NOT NULL,
  `Noindexed` tinyint(1) DEFAULT '0',
  `Nofollow` tinyint(1) DEFAULT '0',
  `Section_landing` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1->Section, 2->Section & Article',
  `section_allowed_for_hosting` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - not allow 1 -> allow',
  `Status` tinyint(1) DEFAULT '0' COMMENT '0 for Inactive, 1 for Active',
  `URLSectionStructure` varchar(255) CHARACTER SET utf8 NOT NULL,
  `URLSectionName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MenuVisibility` tinyint(1) DEFAULT '0' COMMENT '0 for Hide, 1 for visible',
  `ecenic_section_id` smallint(6) DEFAULT NULL,
  `Createdby` smallint(6) DEFAULT NULL,
  `Createdon` datetime DEFAULT NULL,
  `Modifiedby` smallint(9) DEFAULT NULL,
  `Modifiedon` datetime DEFAULT NULL,
  `SectionnameInHTML` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Sectionname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ExternalLinkURL` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaKeyword` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `Canonicalurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectionmaster`
--

INSERT INTO `sectionmaster` (`Section_id`, `IsSubSection`, `IsSeperateWebsite`, `ParentSectionID`, `Highlight`, `RSSFeedAllowed`, `DisplayOrder`, `BGImage_path`, `AuthorID`, `AuthorImgPath`, `AuthorBiography`, `Noindexed`, `Nofollow`, `Section_landing`, `section_allowed_for_hosting`, `Status`, `URLSectionStructure`, `URLSectionName`, `MenuVisibility`, `ecenic_section_id`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `SectionnameInHTML`, `Sectionname`, `ExternalLinkURL`, `MetaTitle`, `MetaDescription`, `MetaKeyword`, `Canonicalurl`) VALUES
(1, 0, 0, NULL, 0, 0, 1, '', NULL, '', '', 0, 0, 2, 1, 1, 'keralam', 'keralam', 1, NULL, 149, '2017-01-11 02:56:31', 149, '2017-01-11 02:56:31', '<p>കേരളം</p>\n', 'കേരളം', '', '', '', '', ''),
(2, 0, 0, NULL, 0, 0, 2, '', NULL, '', '', 0, 0, 2, 1, 1, 'deseeyam-national', 'deseeyam-national', 1, NULL, 149, '2017-01-11 02:56:52', 149, '2017-01-11 02:56:52', '<p>ദേശീയം</p>\n', 'ദേശീയം', '', '', '', '', ''),
(3, 0, 0, NULL, 0, 0, 3, '', NULL, '', '', 0, 0, 2, 1, 1, 'pravasam-expatriate', 'pravasam-expatriate', 1, NULL, 149, '2017-01-11 02:57:11', 149, '2017-01-11 02:57:11', '<p>പ്രവാസം</p>\n', 'പ്രവാസം', '', 'പ്രവാസം', '', '', ''),
(4, 0, 0, NULL, 0, 0, 4, '', NULL, '', '', 0, 0, 2, 1, 1, 'rajyandaram-International', 'rajyandaram-International', 1, NULL, 149, '2017-01-11 02:57:30', 149, '2017-01-11 02:57:30', '<p>രാജ്യാന്തരം</p>\n', 'രാജ്യാന്തരം', '', 'രാജ്യാന്തരം', '', '', ''),
(5, 0, 0, NULL, 0, 0, 5, '', NULL, '', '', 0, 0, 2, 1, 1, 'dhanakaaryam-financial', 'dhanakaaryam-financial', 1, NULL, 149, '2017-01-11 02:57:50', 149, '2017-01-11 02:57:50', '<p>ധനകാര്യം</p>\n', 'ധനകാര്യം', '', '', '', '', ''),
(6, 0, 0, NULL, 0, 0, 6, '', NULL, '', '', 0, 0, 2, 1, 1, 'chalachithram-Film', 'chalachithram-Film', 1, NULL, 149, '2017-01-11 02:58:11', 149, '2017-01-11 02:58:11', '<p>ചലച്ചിത്രം</p>\n', 'ചലച്ചിത്രം', '', 'ചലച്ചിത്രം', '', '', ''),
(7, 0, 0, NULL, 0, 0, 7, '', NULL, '', '', 0, 0, 2, 1, 1, 'kaayikam-sports', 'kaayikam-sports', 1, NULL, 149, '2017-01-11 02:58:33', 149, '2017-01-11 02:58:33', '<p>കായികം</p>\n', 'കായികം', '', 'കായികം', '', '', ''),
(8, 1, 0, 12, 0, 0, 8, '', NULL, '', '', 0, 0, 2, 1, 1, 'galleries/aarogyam-health', 'aarogyam-health', 1, NULL, 149, '2017-01-11 02:58:57', 149, '2017-01-17 15:02:25', '<p>ആരോഗ്യം</p>', 'ആരോഗ്യം', '', 'ആരോഗ്യം', '', '', ''),
(9, 0, 0, NULL, 0, 0, 10, '', NULL, '', '', 0, 0, 2, 1, 1, 'nilapad-opinion', 'nilapad-opinion', 1, NULL, 149, '2017-01-11 02:59:18', 149, '2017-01-11 02:59:18', '<p>നിലപാട്</p>\n', 'നിലപാട്', '', 'നിലപാട്', '', '', ''),
(10, 0, 0, NULL, 0, 0, 11, '', NULL, '', '', 0, 0, 2, 1, 1, 'chintha-Laugh-and-thought', 'chintha-Laugh-and-thought', 1, NULL, 149, '2017-01-11 02:59:49', 149, '2017-01-11 02:59:49', '<p>ചിരി-ചിന്ത</p>\n', 'ചിരി-ചിന്ത', '', 'ചിരി-ചിന്ത', '', '', ''),
(11, 0, 0, NULL, 0, 0, 12, '', NULL, '', '', 0, 0, 2, 1, 1, 'videos', 'videos', 1, NULL, 149, '2017-01-11 03:00:05', 149, '2017-01-17 04:15:47', '<p>വിഡിയോ</p>', 'വിഡിയോ', '', 'വിഡിയോ', '', '', ''),
(12, 0, 0, NULL, 0, 0, 9, '', NULL, '', '', 0, 0, 1, 1, 1, 'galleries', 'galleries', 1, NULL, 149, '2017-01-11 03:01:21', 149, '2017-01-17 03:02:25', '<p>ചിത്രജാലം</p>', 'ചിത്രജാലം', '', 'ചിത്രജാലം', '', '', ''),
(13, 0, 0, NULL, 0, 0, 14, '', NULL, '', '', 0, 0, 2, 1, 1, 'jeevitham-life', 'jeevitham-life', 0, NULL, 149, '2017-01-11 03:05:12', 149, '2017-01-11 03:05:12', '<p>ജീവിതം</p>\n', 'ജീവിതം', '', 'ജീവിതം', '', '', ''),
(14, 0, 0, NULL, 0, 0, 0, '', NULL, '', '', 0, 0, 2, 1, 1, 'home', 'home', 1, NULL, 149, '2017-01-11 03:06:46', 149, '2017-01-11 03:27:44', '<p>Home</p>', 'Home', '', 'Home', '', '', ''),
(15, 1, 0, 11, 0, 0, 9, '', NULL, '', '', 0, 0, 2, 1, 1, 'videos/malayalam-vaarika', 'malayalam-vaarika', 0, NULL, 149, '2017-01-12 06:17:54', 149, '2017-01-17 16:15:47', '<p>മലയാളം വാരിക</p>', 'മലയാളം വാരിക', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sectionwidgetarticle`
--

CREATE TABLE `sectionwidgetarticle` (
  `content_id` mediumint(9) DEFAULT NULL,
  `content_type` tinyint(1) NOT NULL,
  `widget_type` tinyint(1) NOT NULL COMMENT '1 - jumbo menu article, 2- Editor''s pick article, 3- Trending Now',
  `section_id` smallint(6) DEFAULT NULL,
  `CustomTitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `CustomSummary` text CHARACTER SET utf8 NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_caption` varchar(255) DEFAULT NULL,
  `DisplayOrder` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` tinyint(4) NOT NULL,
  `breakingNews_scrollSpeed` mediumint(9) NOT NULL,
  `articlecountfortotherstories` tinyint(4) NOT NULL,
  `facebook_url` varchar(255) NOT NULL,
  `twitter_url` varchar(255) NOT NULL,
  `google_plus_url` varchar(255) NOT NULL,
  `rss_url` varchar(255) NOT NULL,
  `Daysintervalformostreadnow` tinyint(4) NOT NULL,
  `timeintervalformostreadarticle` time NOT NULL,
  `articlecountformostreadnow` tinyint(3) UNSIGNED NOT NULL,
  `subsection_otherstories_count_perpage` tinyint(4) NOT NULL,
  `subsection_otherstories_autoCount` tinyint(4) NOT NULL,
  `magazine_list_count_perpage` tinyint(4) NOT NULL,
  `sitelogo` varchar(255) NOT NULL,
  `favouriteicon` varchar(255) NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_to` varchar(255) NOT NULL,
  `slider_count` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `breakingNews_scrollSpeed`, `articlecountfortotherstories`, `facebook_url`, `twitter_url`, `google_plus_url`, `rss_url`, `Daysintervalformostreadnow`, `timeintervalformostreadarticle`, `articlecountformostreadnow`, `subsection_otherstories_count_perpage`, `subsection_otherstories_autoCount`, `magazine_list_count_perpage`, `sitelogo`, `favouriteicon`, `send_email`, `email_to`, `slider_count`) VALUES
(1, 4, 6, 'https://www.facebook.com/thenewindianxpress', 'https://twitter.com/NewIndianXpress', 'https://plus.google.com/107417132035811835892/', 'http://www.newindianexpress.com/rss/', 0, '05:01:46', 5, 21, 0, 6, 'images/FrontEnd/images/NIE-logo21.jpg', 'images/FrontEnd/images/favicon.ico', 1, 'testadmin@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shared_email_details`
--

CREATE TABLE `shared_email_details` (
  `shared_email_id` mediumint(8) NOT NULL,
  `content_id` mediumint(8) NOT NULL,
  `content_type` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `short_article_details`
--

CREATE TABLE `short_article_details` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `bodytext` mediumtext CHARACTER SET utf8 NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `short_audio_details`
--

CREATE TABLE `short_audio_details` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `bodytext` mediumtext CHARACTER SET utf8 NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `short_gallery_details`
--

CREATE TABLE `short_gallery_details` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `bodytext` mediumtext CHARACTER SET utf8 NOT NULL,
  `section_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `short_video_details`
--

CREATE TABLE `short_video_details` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `bodytext` mediumtext CHARACTER SET utf8 NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_master`
--

CREATE TABLE `template_master` (
  `templateid` int(11) NOT NULL,
  `templatename` text CHARACTER SET utf8 NOT NULL,
  `template_values` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Header-Body-Footer',
  `template_imagepath` varchar(250) CHARACTER SET utf8 NOT NULL,
  `template_design` text CHARACTER SET utf8 NOT NULL,
  `Createdby` mediumint(9) NOT NULL,
  `Createdon` datetime NOT NULL,
  `Modifiedby` mediumint(9) NOT NULL,
  `Modifiedon` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Active, 2->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_master`
--

INSERT INTO `template_master` (`templateid`, `templatename`, `template_values`, `template_imagepath`, `template_design`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`) VALUES
(3, 'Single Column Template', '3-2-3', 'images/admin/template_design/images/single-col-tpl.png', '', 1, '2015-07-07 11:19:12', 0, '0000-00-00 00:00:00', 1),
(4, 'Two Column Template', '3-2,1-3', 'images/admin/template_design/images/two-col-left-sidebar-tpl.png', '<div class="section group"> \r\n							<div name="template-wrapper-top" id="tc-4" data-tcid="4"  class="col span_3_of_3 template-wrapper-top tpl-col-container"></div> \r\n						</div><div class="section group"> <div name="template-wrapper-left" id="tc-5" data-tcid="5" class="col span_2_of_3 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-6" data-tcid="6" class="col span_1_of_3 template-wrapper-left tpl-col-container"></div></div> <div class="section group">	\r\n							<div id="tc-7" data-tcid="7" name="template-wrapper-footer" class="col span_3_of_3 template-wrapper-footer tpl-col-container"></div> \r\n						</div>', 1, '2015-07-07 11:39:00', 0, '0000-00-00 00:00:00', 1),
(5, 'Three Column Template', '3-1,2,1-3', 'images/admin/template_design/images/three-col-tpl.png', '<div class="section group"> 							<div name="template-wrapper-top" id="tc-8" data-tcid="8"  class="col span_3_of_3 template-wrapper-top tpl-col-container"></div> 						</div><div class="section group"> <div name="template-wrapper-left" id="tc-9" data-tcid="9" class="col span_1_of_4 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-10" data-tcid="10" class="col span_2_of_4 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-11" data-tcid="11" class="col span_1_of_4 template-wrapper-left tpl-col-container"></div></div> <div class="section group">								<div id="tc-12" data-tcid="12" name="template-wrapper-footer" class="col span_3_of_3 template-wrapper-footer tpl-col-container"></div> 						</div>', 1, '2015-07-07 11:45:00', 0, '0000-00-00 00:00:00', 2),
(6, 'Four Column Template', '3-2,1,1-3', 'images/admin/template_design/images/three-col-tpl-2.png', '<div class="section group"> \r\n							<div name="template-wrapper-top" id="tc-13" data-tcid="13"  class="col span_3_of_3 template-wrapper-top tpl-col-container"></div> \r\n						</div><div class="section group"> <div name="template-wrapper-left" id="tc-14" data-tcid="14" class="col span_2_of_4 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-15" data-tcid="15" class="col span_1_of_4 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-16" data-tcid="16" class="col span_1_of_4 template-wrapper-left tpl-col-container"></div></div> <div class="section group">	\r\n							<div id="tc-17" data-tcid="17" name="template-wrapper-footer" class="col span_3_of_3 template-wrapper-footer tpl-col-container"></div> \r\n						</div>', 1, '2015-07-07 11:45:00', 0, '0000-00-00 00:00:00', 2),
(7, 'Four Column Template', '3-2,1,1,2-3', 'images/admin/template_design/images/three-col-tpl-2.png', '<div class="section group"> 							<div name="template-wrapper-top" id="tc-18" data-tcid="18"  class="col span_3_of_3 template-wrapper-top tpl-col-container"></div> 						</div><div class="section group"> <div name="template-wrapper-left" id="tc-19" data-tcid="19" class="col span_2_of_6 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-20" data-tcid="20" class="col span_1_of_6 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-21" data-tcid="21" class="col span_1_of_6 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-22" data-tcid="22" class="col span_2_of_6 template-wrapper-left tpl-col-container"></div></div> <div class="section group">								<div id="tc-23" data-tcid="23" name="template-wrapper-footer" class="col span_3_of_3 template-wrapper-footer tpl-col-container"></div> 						</div>', 1, '2015-07-07 11:45:00', 0, '0000-00-00 00:00:00', 2),
(8, 'Three Column Template', '3-1,3,2-3', 'images/admin/template_design/images/three-col-main-tpl.png', '', 1, '2015-07-07 11:45:00', 0, '0000-00-00 00:00:00', 1),
(9, 'Two Column  Article Template', '3-7,5-3', 'images/admin/template_design/images/two-col-article-tpl.png', '<div class="section group"> 							<div name="template-wrapper-top" id="tc-4" data-tcid="4"  class="col span_3_of_3 template-wrapper-top tpl-col-container"></div> 						</div><div class="section group"> <div name="template-wrapper-left" id="tc-5" data-tcid="5" class="col span_2_of_3 template-wrapper-left tpl-col-container"></div><div name="template-wrapper-left" id="tc-6" data-tcid="6" class="col span_1_of_3 template-wrapper-left tpl-col-container"></div></div> <div class="section group">								<div id="tc-7" data-tcid="7" name="template-wrapper-footer" class="col span_3_of_3 template-wrapper-footer tpl-col-container"></div> 						</div>', 1, '2015-07-07 11:39:00', 0, '0000-00-00 00:00:00', 1),
(10, 'Common Column Template', '3-2-3', 'images/admin/template_design/images/common-col-tpl.png', '', 1, '2015-07-07 11:19:12', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `ecenic_id` mediumint(9) DEFAULT NULL,
  `section_id` smallint(6) DEFAULT NULL,
  `section_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parent_section_id` smallint(6) DEFAULT NULL,
  `parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `grant_section_id` smallint(6) DEFAULT NULL,
  `grant_parent_section_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `publish_start_date` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary_html` text CHARACTER SET utf8,
  `video_script` text CHARACTER SET utf8 NOT NULL,
  `video_site` varchar(255) NOT NULL,
  `video_image_path` varchar(255) NOT NULL,
  `video_image_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `video_image_alt` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` mediumint(9) NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `agency_name` varchar(100) NOT NULL,
  `author_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `country_name` varchar(100) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `no_indexed` tinyint(1) NOT NULL,
  `no_follow` tinyint(1) NOT NULL,
  `canonical_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`content_id`, `ecenic_id`, `section_id`, `section_name`, `parent_section_id`, `parent_section_name`, `grant_section_id`, `grant_parent_section_name`, `publish_start_date`, `last_updated_on`, `title`, `url`, `summary_html`, `video_script`, `video_site`, `video_image_path`, `video_image_title`, `video_image_alt`, `hits`, `tags`, `allow_comments`, `agency_name`, `author_name`, `country_name`, `state_name`, `city_name`, `no_indexed`, `no_follow`, `canonical_url`, `meta_Title`, `meta_description`, `status`) VALUES
(1, NULL, 11, 'വിഡിയോ', NULL, '', NULL, '', '2017-01-13 17:47:00', '2017-01-17 16:16:00', '<p>സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി</p>', 'videos/2017/jan/13/സ്റ്റെപ്പിറങ്ങാൻ-ശ്രമിച്ച-ഇന്നോവയ്ക്-1.html', '', '<div id="vt-video-player"></div>\n<script type="text/javascript">\nwindow.__ventunoplayer = window.__ventunoplayer||[];\nwindow.__ventunoplayer.push({video_key: \'ODc0MzcxfHw4fHw2fHwxLDIsMQ==\', holder_id: \'vt-video-player\', player_type: \'vp\', width:\'100%\', ratio:\'4:3\'});\n</script>\n<script type="text/javascript" src="http://pl.ventunotech.com/plugins/cntplayer/ventunoSmartPlayer.js"></script>', '', '2017/1/13/original/vd.jpg', 'vd', 'vd', 0, '', 1, '', '', '', '', '', 0, 0, '', 'സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി', '', 'P'),
(2, NULL, 11, 'വിഡിയോ', NULL, '', NULL, '', '2017-01-13 18:21:00', '2017-01-17 16:15:00', '<p>മാഹിക്ക്</p>', 'videos/2017/jan/13/മാഹിക്ക്-2.html', '', '<div id="vt-video-player"></div>\n<script type="text/javascript">\nwindow.__ventunoplayer = window.__ventunoplayer||[];\nwindow.__ventunoplayer.push({video_key: \'ODc0MzcxfHw4fHw2fHwxLDIsMQ==\', holder_id: \'vt-video-player\', player_type: \'vp\', width:\'100%\', ratio:\'4:3\'});\n</script>\n<script type="text/javascript" src="http://pl.ventunotech.com/plugins/cntplayer/ventunoSmartPlayer.js"></script>', '', '2017/1/13/original/vd.jpg', 'vd', 'vd', 0, '', 1, '', '', '', '', '', 0, 0, '', 'മാഹിക്ക്', '', 'P'),
(3, NULL, 15, 'മലയാളം വാരിക', 11, 'വിഡിയോ', NULL, '', '2017-01-16 10:55:00', '2017-01-17 16:15:00', '<p>പാർട്ടിയും ചിഹ്നവും തരാം</p>', 'videos/malayalam-vaarika/2017/jan/16/പാർട്ടിയും-ചിഹ്നവും-തരാം-3.html', '', '<div id="vt-video-player"></div>\n<script type="text/javascript">\nwindow.__ventunoplayer = window.__ventunoplayer||[];\nwindow.__ventunoplayer.push({video_key: \'ODc0MzcxfHw4fHw2fHwxLDIsMQ==\', holder_id: \'vt-video-player\', player_type: \'vp\', width:\'100%\', ratio:\'4:3\'});\n</script>\n<script type="text/javascript" src="http://pl.ventunotech.com/plugins/cntplayer/ventunoSmartPlayer.js"></script>', '', '2017/1/16/original/vi1.jpg', 'vi1', 'vi1', 0, '', 1, '', '', '', '', '', 0, 0, '', 'പാർട്ടിയും ചിഹ്നവും തരാം', '', 'P'),
(4, NULL, 11, 'വിഡിയോ', NULL, '', NULL, '', '2017-01-18 11:57:00', '2017-01-18 12:05:00', '<p>ചലനമറ്റ് കിടന്ന &lsquo;ഡമ്മി കുരങ്ങ&rsquo;നരികെ നിറകണ്ണുകളോടെ കുര</p>', 'videos/2017/jan/18/ചലനമറ്റ്-കിടന്ന-ഡമ്മി-കുരങ്ങനരികെ-നിറകണ്ണുകളോടെ-കുര-4.html', '', '<div id="vt-video-player"></div>\n<script type="text/javascript">\nwindow.__ventunoplayer = window.__ventunoplayer||[];\nwindow.__ventunoplayer.push({video_key: \'ODc0MzcxfHw4fHw2fHwxLDIsMQ==\', holder_id: \'vt-video-player\', player_type: \'vp\', width:\'100%\', ratio:\'4:3\'});\n</script>\n<script type="text/javascript" src="http://pl.ventunotech.com/plugins/cntplayer/ventunoSmartPlayer.js"></script>', '', '2017/1/18/original/we2.jpg', 'we2', 'we2', 0, '', 1, '', '', '', '', '', 0, 0, 'https://youtu.be/xg79mkbNaTg', 'ചലനമറ്റ് കിടന്ന ‘ഡമ്മി കുരങ്ങ’നരികെ നിറകണ്ണുകളോടെ കുര', '', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `video_section_mapping`
--

CREATE TABLE `video_section_mapping` (
  `content_id` mediumint(8) UNSIGNED NOT NULL,
  `section_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_section_mapping`
--

INSERT INTO `video_section_mapping` (`content_id`, `section_id`) VALUES
(3, 15),
(2, 11),
(1, 11),
(4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `widgetinstancecontent_live`
--

CREATE TABLE `widgetinstancecontent_live` (
  `WidgetInstanceContentlive_ID` bigint(20) NOT NULL,
  `WidgetInstanceContent_ID` bigint(20) NOT NULL,
  `widgetInstanceRelated_ID` mediumint(9) NOT NULL,
  `WidgetInstance_id` int(11) NOT NULL,
  `WidgetInstanceMainSection_id` mediumint(9) DEFAULT NULL,
  `WidgetInstanceSubSection_ID` int(11) DEFAULT NULL,
  `Page_version_id` int(11) DEFAULT NULL,
  `content_id` mediumint(9) NOT NULL,
  `CustomTitle` text CHARACTER SET utf8 NOT NULL,
  `CustomSummary` text CHARACTER SET utf8 NOT NULL,
  `content_type_id` tinyint(1) DEFAULT '0',
  `custom_image_path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `custom_image_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `custom_image_alt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `custom_image_height` tinyint(1) DEFAULT NULL,
  `custom_image_width` tinyint(1) DEFAULT NULL,
  `customimage_id` mediumint(9) DEFAULT NULL,
  `Image` longblob NOT NULL,
  `Imagename` text CHARACTER SET utf8 NOT NULL,
  `DisplayOrder` smallint(6) NOT NULL,
  `Publishedby` mediumint(9) NOT NULL,
  `publishedon` datetime NOT NULL,
  `UnPublishedby` mediumint(9) NOT NULL,
  `Unpublishedon` datetime NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1->Active, 2->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgetinstancecontent_live`
--

INSERT INTO `widgetinstancecontent_live` (`WidgetInstanceContentlive_ID`, `WidgetInstanceContent_ID`, `widgetInstanceRelated_ID`, `WidgetInstance_id`, `WidgetInstanceMainSection_id`, `WidgetInstanceSubSection_ID`, `Page_version_id`, `content_id`, `CustomTitle`, `CustomSummary`, `content_type_id`, `custom_image_path`, `custom_image_title`, `custom_image_alt`, `custom_image_height`, `custom_image_width`, `customimage_id`, `Image`, `Imagename`, `DisplayOrder`, `Publishedby`, `publishedon`, `UnPublishedby`, `Unpublishedon`, `Status`) VALUES
(4498, 633, 0, 100, 0, 0, 8, 48, '<p>ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തത് മഹത്തായ</p>', '<p>ബ്രെക്സിറ്റിലൂടെ ബ്രിട്ടൻ ചെയ്തത് മഹത്തായ കാര്യമെന്ന് ഡോണൾഡ് ട്രംപ്</p>', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-17 12:12:26', 148, '2017-01-17 12:12:26', 1),
(4499, 634, 0, 100, 0, 0, 8, 47, '<p>കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി, ഈ കറുപ്പാണ്</p>', '<p>ഇതോടെ മലയാളത്തിൽനിന്നു വന്ന കറുത്ത സുന്ദരി തമിഴ് കുടുംബപ്രേക്ഷകർക്കു ഏറ്റവും</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-17 12:12:26', 148, '2017-01-17 12:12:26', 1),
(4500, 635, 0, 100, 0, 0, 8, 46, '<p>ബാർ കോഴക്കേസ്: ശങ്കർ റെഡ്ഡിക്കെതിരെ</p>', '<p>മുൻ മന്ത്രി കെ.എം.മാണിക്കെതിരായ ബാർകോഴക്കേസ് എൻ.ശങ്കർ റെഡ്ഡിയും എസ്പി</p>', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-17 12:12:26', 148, '2017-01-17 12:12:26', 1),
(4501, 636, 0, 100, 0, 0, 8, 45, '<p>പാക്കിസ്ഥാന് കരസേന മേധാവിയുടെ മുന്നറിയിപ്പ്,  ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം</p>', '<p>സൈനികരുടെ ഭക്ഷണം സംബന്ധിച്ച പരാതികൾ സൈനികരുടെ തന്നെ വിഡിയോകൾ വഴി കഴിഞ്ഞ</p>', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-17 12:12:26', 148, '2017-01-17 12:12:26', 1),
(4502, 637, 0, 100, 0, 0, 8, 31, '<p>എമിറേറ്റ്‌സിന് പറ്റിയ അക്കിടി, ധോണിക്കു പകരം സുശാന്ത്</p>', '<p>ന്യൂഡല്‍ഹി: കളിക്കളത്തില്‍ നിന്നു വിടവാങ്ങിയെങ്കിലും ഇന്ത്യയുടെ വെടിക്കെട്ട്</p>', 1, '', '', '', 0, 0, 0, '', '', 5, 148, '2017-01-17 12:12:26', 148, '2017-01-17 12:12:26', 1),
(4549, 643, 0, 120, 0, 0, 16, 2, '<p>മാഹിക്ക്</p>', '', 4, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-17 14:52:37', 148, '2017-01-17 14:52:37', 1),
(4930, 750, 0, 121, 0, 0, 15, 2, '<p>മാഹിക്ക് സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി</p>\n', '<p>മാഹിക്ക് സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി മാഹിക്ക് സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി</p>\n', 4, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-18 11:50:13', 148, '2017-01-18 11:50:13', 1),
(4931, 767, 0, 123, 0, 0, 15, 3, '<p>ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണം മോദി സർക്കാർ തടവിലാക്കി: മന്ത്രി ഐസക്</p>\n', '', 4, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-18 12:06:32', 148, '2017-01-18 12:06:32', 1),
(4932, 768, 0, 123, 0, 0, 15, 4, '<p>ചലനമറ്റ് കിടന്ന ‘ഡമ്മി കുരങ്ങ’നരികെ നിറകണ്ണുകളോടെ കുര</p>', '', 4, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-18 12:06:32', 148, '2017-01-18 12:06:32', 1),
(4933, 769, 0, 123, 0, 0, 15, 1, '<p>സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി</p>', '', 4, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-18 12:06:32', 148, '2017-01-18 12:06:32', 1),
(4934, 770, 0, 123, 0, 0, 15, 2, '<p>മാഹിക്ക്</p>', '', 4, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-18 12:06:32', 148, '2017-01-18 12:06:32', 1),
(4935, 278, 0, 6, 0, 0, 1, 36, '<p>പരീക്ഷണത്തിൽ ആശങ്ക; ഉത്തരകൊറിയയുടെ മിസൈലുകൾ നിരീക്ഷിക്കാൻ യുഎസ് റഡാർ</p>', '<p>ഉത്തര കൊറിയയുടെ മിസൈലുകൾ മറ്റു രാജ്യങ്ങൾക്കു ഭീഷണി ഉയർത്തുന്നതാണെങ്കിൽ...</p>', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-13 11:07:16', 148, '2017-01-13 11:07:16', 1),
(4936, 279, 0, 6, 0, 0, 1, 37, '<p>മോദിയോട് ചോദ്യങ്ങൾ ഉന്നയിച്ച രാഹുലിനോട് മറുചോദ്യങ്ങളുമായി സ്മൃതി ഇറാനി</p>', '<p>ന്യൂഡൽഹി∙ നോട്ട് അസാധുവാക്കലുമായി ബന്ധപ്പെട്ട് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദിയോട് ചോദ്യങ്ങൾ</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-13 11:07:16', 148, '2017-01-13 11:07:16', 1),
(4937, 280, 0, 6, 0, 0, 1, 38, '<p>ജിഷ്ണുവിന്റെ മരണം: മാനേജ്മെന്റിന്റേത് കണ്ണിൽ പൊടിയിടാനുള്ള നീക്കമെന്ന് വിദ്യാർഥികൾ</p>', '', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-13 11:07:16', 148, '2017-01-13 11:07:16', 1),
(4938, 281, 0, 6, 0, 0, 1, 39, '<p>ശത്രുരാജ്യങ്ങൾക്ക് മുന്നറിയിപ്പ്; ചൈനയ്ക്ക് അതിസങ്കീർണ നിരീക്ഷണക്കപ്പൽ</p>', '<p>കഴിഞ്ഞ വർഷം 18 കപ്പലുകൾ കൂടി നാവികസേനയുടെ ഉപയോഗത്തിനായി ലഭിച്ചിരുന്ന</p>', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-13 11:07:16', 148, '2017-01-13 11:07:16', 1),
(4939, 282, 0, 6, 0, 0, 1, 40, '<p>വിദ്യ പോയാലും ആമി വരും; കമൽ വെളിപ്പെടുത്തുന്നു</p>', '<p>ആരാകും വെള്ളിത്തിരയിൽ മാധവിക്കുട്ടിയാകുകയെന്ന ചോദ്യത്തിനു കമൽ നൽകിയ</p>', 1, '', '', '', 0, 0, 0, '', '', 5, 148, '2017-01-13 11:07:16', 148, '2017-01-13 11:07:16', 1),
(4940, 593, 0, 7, 0, 0, 1, 6, '<p>ചിരഞ്ജീവി @ 150, ബാലകൃഷ്ണ @ 100; കേരളത്തിൽ തിയറ്റർ കാലി, തെലുങ്കിൽ ഉൽസവമേളം...</p>', '<p>ഹൈദരാബാദ് ∙ കേരളത്തിലെ സിനിമാപ്രേമികൾ പുതിയ റിലീസുകളില്ലാതെ വിഷമിക്കുകയാണെങ്കിൽ തെലുങ്കു സിനിമയ്ക്ക്...</p>', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-16 19:02:40', 148, '2017-01-16 19:02:40', 1),
(4941, 594, 0, 7, 0, 0, 1, 5, '<p>രാജിക്കത്ത് ലഭിച്ചിട്ടില്ല, പോൾ ആന്റണി തുടരും: വ്യവസായമന്ത്രി മൊയ്തീൻ...</p>', '<p>തിരുവനന്തപുരം∙ ബന്ധുനിയമന വിവാദത്തിൽ പ്രതിപ്പട്ടികയിലുള്ള പോൾ ആന്റണി വ്യവസായ സെക്രട്ടറിയായി തുടരുമെന...</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-16 19:02:40', 148, '2017-01-16 19:02:40', 1),
(4942, 595, 0, 7, 0, 0, 1, 3, '<p>കെ.എം. ഫിലിപ് അന്തരിച്ചു പ്രസിഡന്റും മലയാള മനോരമയുടെ മുൻ ഡയറക്‌ടറുമായ</p>\n', '<p>ചെന്നൈ∙ ആഗോള വൈഎംസിഎ പ്രസ്‌ഥാനത്തിന്റെ ഏഷ്യയിൽ നിന്നുള്ള ആദ്യ സാരഥിയും മുംബൈ വൈഎംസിഎയുടെ മുൻ പ്രസിഡന്റും മലയാള മനോരമയുടെ മുൻ ഡയറക്‌ടറുമായ പദ്‌മശ്രീ കെ.എം.ഫിലിപ് (പീലിക്കുട്ടി–104) അന്തരിച്ചു. ചെന്നൈ ക</p>\n', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-16 19:02:40', 148, '2017-01-16 19:02:40', 1),
(4943, 596, 0, 7, 0, 0, 1, 2, '<p>സ്വാശ്രയ കോളജുകൾക്കു കടിഞ്ഞാൺ; പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതി</p>', '<p>തിരുവനന്തപുരം/കൊച്ചി ∙ തൃശൂർ പാമ്പാടി നെഹ്റു എൻജിനീയറിങ് കോളജ് സംഭവത്തിന്റെ പശ്ചാത്തലത്തിൽ സ്വാശ്രയ കോളജുകളുടെ പ്രവർത്തനം പരിശോധിക്കാൻ ഉന്നതതല സമിതിയെ നിയോഗിക്കാൻ മന്ത്രിസഭ തീരുമാനിച്ചു. സമിതിയുടെ ഏകോ</p>', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-16 19:02:40', 148, '2017-01-16 19:02:40', 1),
(4944, 597, 0, 7, 0, 0, 1, 1, '<p>ബന്ധുനിയമന വിവാദം: അഡീ. ചീഫ് സെക്രട്ടറി പോൾ ആന്റണി രാജിക്കത്ത് കൈമാറി</p>', '<p>തിരുവനന്തപുരം∙ ബന്ധുനിയമന വിവാദത്തിൽ പ്രതിചേർക്കപ്പെട്ട വ്യവസായ വകുപ്പ് അഡീഷനൽ ചീഫ് സെക്രട്ടറി പോൾ ആന്റണി ചീഫ് സെക്രട്ടറി എസ്.എം. വിജയാനന്ദിന് രാജിക്കത്ത് കൈമാറി. ഇ.പി. ജയരാജൻ ഉൾപ്പെട്ട ബന്ധുനിയമന വിവ</p>', 1, '', '', '', 0, 0, 0, '', '', 5, 148, '2017-01-16 19:02:40', 148, '2017-01-16 19:02:40', 1),
(4949, 522, 0, 11, 0, 0, 1, 7, '<p>നാവികസേനയ്ക്ക് ഇനി കൂടുതൽ കരുത്ത്; ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കി...</p>\n', '<p>മുംബൈ ∙ ഇന്ത്യൻ നാവികസേനയുടെ കരുത്തു വർധിപ്പിക്കാൻ ഫ്രാൻസിന്റെ സഹായത്തോടെ നിർമിച്ച രണ്ടാം സ്കോർപീൻ ക്ലാസ് അന്തർവാഹിനി ഐഎൻഎസ് ഖന്തേരി നീറ്റിലിറക്കി. ഇന്ത്യൻ നാവികസേനക്കായി </p>\n', 1, '', '', '', 0, 0, 0, '', '', 1, 149, '2017-01-16 18:39:28', 149, '2017-01-16 18:39:28', 1),
(4950, 523, 0, 11, 0, 0, 1, 8, '<p>ജയലളിതയുടെ ആഗ്രഹം ആഷ് സഫലമാക്കുമോ?</p>', '<p>തൻെറ ജീവിതം എന്നെങ്കിലും സിനിമയാക്കുകയാണെങ്കിൽ ആ വേഷം ഐശ്വര്യ റായ് ചെയ്യണമെന്നു ജയലളിത പറഞ്ഞിരുന്നതായി ചാനൽ അവതാരികയായ സിമി ഗെർവാൾ. അന്തരിച്ച മുൻ തമിഴ്നാട് മുഖ്യമന്ത്രിയുമായി താൻ നടത്തിയ അഭിമുഖത്തിൽ അ</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 149, '2017-01-16 18:39:28', 149, '2017-01-16 18:39:28', 1),
(4951, 524, 0, 11, 0, 0, 1, 10, '<p>കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച്</p>\n', '<p>കമലിന് പിന്തുണ അറിയിച്ച വേദിയിൽ ചാണകവെള്ളം ഒഴിച്ച് യുവമോർച്ച പ്രതിഷേധം</p>\n', 1, '', '', '', 0, 0, 0, '', '', 3, 149, '2017-01-16 18:39:28', 149, '2017-01-16 18:39:28', 1),
(4952, 525, 0, 11, 0, 0, 1, 11, '<p>ഇന്ത്യയിലെ സാധാരണക്കാരുടെ പണം മോദി സർക്കാർ തടവിലാക്കി: മന്ത്രി ഐസക്</p>', '', 1, '', '', '', 0, 0, 0, '', '', 4, 149, '2017-01-16 18:39:28', 149, '2017-01-16 18:39:28', 1),
(4953, 526, 0, 11, 0, 0, 1, 12, '<p>അടിയന്തരാവസ്ഥ കാലത്തെ ജയിൽവാസം: ലാലുവിന് 10000 </p>\n', '<p>സോഷ്യലിസ്റ്റ് നേതാവ് ജയപ്രകാശ് നാരായണന്റെ പേരിൽ ആരംഭിച്ചതാണ് പെൻഷൻ പദ്ധതി.</p>\n', 1, '', '', '', 0, 0, 0, '', '', 5, 149, '2017-01-16 18:39:28', 149, '2017-01-16 18:39:28', 1),
(4954, 658, 0, 12, 0, 0, 1, 17, '<p>കേരളംവര്‍ഷത്തെ രൂക്ഷമായ വരള്‍ച്ചയിലേക്ക് ജലസംഭരണികൾ വറ്റുന്നു</p>', '<p>തിരുവനന്തപുരം ∙ മകരക്കുളിര് മാറും മുൻപ് നാട് വരണ്ട് ഉണങ്ങിത്തുടങ്ങിയതോടെ കേരളം 115 വര്‍ഷത്തെ അതിരൂക്ഷമായ വരള്‍ച്ചയിലേക്ക്. ജലസംഭരണികൾ അതിവേഗം വറ്റുകയാണ്. തെക്കും വടക്കും മധ്യമേഖലയിലും മലയോരത്തും സമാനമ</p>', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-18 11:29:52', 148, '2017-01-18 11:29:52', 1),
(4955, 659, 0, 12, 0, 0, 1, 16, '<p>മോദി അറിയണം കേരളമുണ്ടെന്ന്, 17ന് ട്രെയിനുകൾ തടയും: പി.സി.ജോർജ്</p>', '<p>കോട്ടയം∙ നോട്ടു നിരോധനം ഏർപ്പെടുത്തി പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇന്ത്യയിലെ ജനങ്ങളെ അപമാനിക്കുകയാണെന്ന് പൂഞ്ഞാർ എംഎൽഎ പി.സി. ജോർജ്. കേന്ദ്രസർക്കാർ നടപടിയിൽ പ്രതിഷേധിച്ച് 17ന് എറണാകുളം നോർത്ത് റെയിൽവേ</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-18 11:29:52', 148, '2017-01-18 11:29:52', 1),
(4956, 660, 0, 12, 0, 0, 1, 15, '<p>മല്യ മക്കളുടെ പേരിലേക്ക് നാലു കോടി ഡോളർ മാറ്റി</p>', '<p>ന്യൂഡൽഹി ∙ നാലു കോടി ഡോളർ തന്റെ മക്കളുടെ പേരിലേക്കു മാറ്റി എന്ന ബാങ്കുകളുടെ ആരോപണത്തെക്കുറിച്ചു മൂന്നാഴ്ചയ്ക്കകം പ്രതികരണം അറിയിക്കാൻ സുപ്രീംകോടതി വിജയ് മല്യയോട് ആവശ്യപ്പെട്ടു. വിജയ് മല്യ തന്റെ മക്കളു</p>', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-18 11:29:52', 148, '2017-01-18 11:29:52', 1),
(4957, 661, 0, 12, 0, 0, 1, 14, '<p>ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർ‌ധസൈനികർ കൊല്ലപ്പെട്ടു</p>', '<p>പട്ന ∙ ബിഹാറിലെ ഔറംഗബാദിൽ സഹപ്രവർത്തകന്റെ വെടിയേറ്റ് നാല് അർധസൈനികർ കൊല്ലപ്പെട്ടു. സെൻട്രൽ ഇൻഡസ്ട്രിയൽ സെക്യൂരിറ്റി ഫോഴ്സ് (സിഐഎസ്എഫ്) ജവാൻമാരാണ് കൊല്ലപ്പെട്ടത്. സഹപ്രവർത്തകനായ സൈനികൻ സർവീസ് തോക്ക് ഉപ</p>', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-18 11:29:52', 148, '2017-01-18 11:29:52', 1),
(4958, 662, 0, 12, 0, 0, 1, 13, '<p>മോശം ഭക്ഷണമാണെന്ന ബിഎസ്എഫ് ജവാന്റെ പരാതിയിൽ പ്രധാനമന്ത്</p>', '<p>ന്യൂഡൽഹി ∙ അതിർത്തി രക്ഷാസേനയിലെ (ബിഎസ്എഫ്) ജവാന്മാർക്കു മോശം ഭക്ഷണമാണു നൽകുന്നതെന്ന ജവാന്റെ വെളിപ്പെടുത്തലിൽ പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി ഇടപെടുന്നു. ബിഎസ്എഫ് ജവാൻ തേജ് ബഹാദൂർ യാദവിന്റെ വെളിപ്പെടുത്തല</p>', 1, '', '', '', 0, 0, 0, '', '', 5, 148, '2017-01-18 11:29:52', 148, '2017-01-18 11:29:52', 1),
(4959, 222, 0, 14, 0, 0, 1, 18, '<p>എക്സിബിറ്റേഴ്സ് ഫെഡറേഷനെ തകര്‍ക്കാന്‍ ദിലീപ് ശ്രമിക്കുന്ന‍ു:</p>\n', '<p>ദിലീപ് കേരളത്തിലെ പല തിയറ്റർ ഉടമകളെയും വിളിച്ചു പുതിയ സംഘടനയെ കുറിച്ചു സംസാരിച്ചതിന്റെ തെളിവുണ്ടെന്നും ലിബര്‍ട്ടി ബഷീർ..</p>\n', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-12 17:18:19', 148, '2017-01-12 17:18:19', 1),
(4960, 223, 0, 14, 0, 0, 1, 23, '<p>ക്യാറ്റിൽ മിന്നും ജയം, പക്ഷേ നിലഞ്ജന്‍ ഐഐഎമ്മിലേക്കില്ല</p>', '', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-12 17:18:19', 148, '2017-01-12 17:18:19', 1),
(4961, 224, 0, 14, 0, 0, 1, 26, '<p>കമലിന്റെ ആമിയാകാൻ വിദ്യ ഇല്ല; കാരണം</p>\n', '<p>പല തവണനീണ്ടുപോയ</p>\n', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-12 17:18:19', 148, '2017-01-12 17:18:19', 1),
(4962, 225, 0, 14, 0, 0, 1, 24, '<p>സമരത്തിനിടെ 203 തിയറ്ററുകളിൽ ഭൈരവ</p>\n', '<p>തിയറ്ററുകളിൽ ഭൈരവ</p>\n', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-12 17:18:19', 148, '2017-01-12 17:18:19', 1),
(4963, 354, 0, 16, 0, 0, 1, 42, '<p>സ്കൂൾ കലോത്സവം കുട്ടികളുടേതാവട്ടെ</p>', '<p>ഇക്കുറിയുമുണ്ടായി, ഉപജില്ലകളിലും ജില്ലകളിലും അപശബ്ദങ്ങൾ ഏറെ.</p>', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4964, 355, 0, 16, 0, 0, 1, 44, '<p>വിജയ് പടം ഭൈരവ ഇറങ്ങി; ആവേശം അണപൊട്ടി</p>', '<p>ഏരീസ് പ്ളക്സിൽ രാവിലെ അറിന് ആറുപ്രദർശനങ്ങളാണു നടന്നത്</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4965, 356, 0, 16, 0, 0, 1, 43, '<p>ജിഷ്ണു കോപ്പിയടിച്ചിട്ടില്ലെന്നു കണ്ണീരോടെ അമ്മ; അത് എല്ലാവർക്കുമറിയാമെന്നു മന്ത്രി രവീന്ദ്രനാഥ്</p>', '', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4966, 357, 0, 16, 0, 0, 1, 47, '<p>കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി, ഈ കറുപ്പാണ് ഇനി എന്റെ ഭാഗ്യം</p>', '<p>ഇതോടെ മലയാളത്തിൽനിന്നു വന്ന കറുത്ത സുന്ദരി തമിഴ് കുടുംബപ്രേക്ഷകർക്കു ഏറ്റവും</p>', 1, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4967, 358, 0, 16, 0, 0, 1, 46, '<p>ബാർ കോഴക്കേസ്: ശങ്കർ റെഡ്ഡിക്കെതിരെ തെളിവില്ലെന്ന് വിജിലൻസ്</p>', '<p>മുൻ മന്ത്രി കെ.എം.മാണിക്കെതിരായ ബാർകോഴക്കേസ് എൻ.ശങ്കർ റെഡ്ഡിയും എസ്പി</p>', 1, '', '', '', 0, 0, 0, '', '', 5, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4968, 359, 0, 16, 0, 0, 1, 45, '<p>പാക്കിസ്ഥാന് കരസേന മേധാവിയുടെ മുന്നറിയിപ്പ്, ആവശ്യമെങ്കിൽ വീണ്ടും മിന്നലാക്രമണം</p>', '<p>സൈനികരുടെ ഭക്ഷണം സംബന്ധിച്ച പരാതികൾ സൈനികരുടെ തന്നെ വിഡിയോകൾ വഴി കഴിഞ്ഞ</p>', 1, '', '', '', 0, 0, 0, '', '', 6, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4969, 360, 0, 16, 0, 0, 1, 32, '<p>രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്‌ലെസ് ആയി ദിഷാ പട്ടാണി</p>', '<p>ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്. കലണ്ടർ നാളെ പുറത്തിറങ്ങും.</p>', 1, '', '', '', 0, 0, 0, '', '', 7, 148, '2017-01-13 15:09:46', 148, '2017-01-13 15:09:46', 1),
(4970, 575, 0, 19, 0, 0, 1, 32, '<p>രത്നാനിയുടെ സെലിബ്രിറ്റി കലണ്ടറിൽ ടോപ്‌ലെസ് ആയി</p>\n', '<p>ദിഷ തന്നെയാണ് ട്വിറ്ററിലൂടെ ഈ ചിത്രം ആരാധകർക്കായി പങ്കുവച്ചത്.</p>\n', 1, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-16 18:58:38', 148, '2017-01-16 18:58:38', 1),
(4971, 576, 0, 19, 0, 0, 1, 33, '<p>ആരാണ് ഗോഡ്സെ; വിനയ് പറയുന്നു</p>', '<p>ആരെയും എൻഗേജ് ചെയ്യുന്ന എന്റർടെയ്ൻ ചെയ്യുന്ന ചിത്രം തന്നെയാണു ഗോ‍ഡ്സേ</p>', 1, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-16 18:58:38', 148, '2017-01-16 18:58:38', 1),
(4972, 577, 0, 19, 0, 0, 1, 47, '<p>കളറിന്റെ പേരിൽ തഴയപ്പെട്ടപ്പോൾ കരഞ്ഞുപോയി</p>\n', '<p>ഇതോടെ മലയാളത്തിൽനിന്നു വന്ന കറുത്ത സുന്ദരി</p>\n', 1, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-16 18:58:38', 148, '2017-01-16 18:58:38', 1),
(4973, 405, 0, 21, 0, 0, 1, 7, '<p>വൈദ്യസഹാ യത്തോ  ടെയുള്ള ആത്മഹത്യ നമുക്ക് വേണോ?</p>\n', '', 3, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-13 17:46:49', 148, '2017-01-13 17:46:49', 1),
(4974, 406, 0, 21, 0, 0, 1, 3, '<p>കരീനയുടെ ഗര്‍ഭകാല പ്രദര്‍ശനം കഴിഞ്ഞു</p>', '<p>കരീന കപൂറിന്റെ ഗര്‍ഭകാലം നടിമാത്രമല്ല ബോളിവുഡും ടോളിവുഡുമടക്കം</p>\n', 3, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-13 17:46:49', 148, '2017-01-13 17:46:49', 1),
(4975, 407, 0, 21, 0, 0, 1, 9, '<p>വികാരങ്ങളെ നിയന്ത്രിക്ക ണോ, ധ്യാനം ശീലമാക്കാം</p>\n', '', 3, '', '', '', 0, 0, 0, '', '', 3, 148, '2017-01-13 17:46:49', 148, '2017-01-13 17:46:49', 1),
(4976, 408, 0, 21, 0, 0, 1, 10, '<p>ശരീരത്തിൽ ഒമേഗ 3 ഫാറ്റി ആസിഡ് കുറഞ്ഞാൽ?</p>', '', 3, '', '', '', 0, 0, 0, '', '', 4, 148, '2017-01-13 17:46:49', 148, '2017-01-13 17:46:49', 1),
(4977, 646, 0, 88, 0, 0, 1, 3, '<p>പാർട്ടിയും ചിഹ്നവും തരാം</p>', '', 4, '', '', '', 0, 0, 0, '', '', 1, 149, '2017-01-17 16:17:54', 149, '2017-01-17 16:17:54', 1),
(4978, 647, 0, 88, 0, 0, 1, 1, '<p>സ്റ്റെപ്പിറങ്ങാൻ ശ്രമിച്ച ഇന്നോവയ്ക്ക് കിട്ടിയ പണി</p>', '', 4, '', '', '', 0, 0, 0, '', '', 2, 149, '2017-01-17 16:17:54', 149, '2017-01-17 16:17:54', 1),
(4979, 377, 0, 94, 3, 0, 1, 8, '<p>പഴയ വീഞ്ഞ് പഴയ കുപ്പി: ഭൈരവ റിവ്യൂ</p>', '<p>ഇക്കുറിയും വിജയ് പതിവു തെറ്റിച്ചില്ല. കാലങ്ങളായി ആരാധകരെ</p>\n', 3, '', '', '', 0, 0, 0, '', '', 1, 148, '2017-01-13 16:03:18', 148, '2017-01-13 16:03:18', 1),
(4980, 378, 0, 94, 3, 0, 1, 7, '<p>വൈദ്യ സഹാ യത്തോ ടെയുള്ള ആത്മഹത്യ നമുക്ക് വേണോ?</p>', '', 3, '', '', '', 0, 0, 0, '', '', 2, 148, '2017-01-13 16:03:18', 148, '2017-01-13 16:03:18', 1),
(4985, 795, 0, 8, 0, 0, 1, 58, '<p>വാര്‍ത്ത എഴുതുന്നത് സ്വന്തം യന്തിരന്‍</p>\n\n<p> </p>', '<p>യന്ത്ര റിപ്പോര്‍ട്ടര്‍ എഴുതിയ ആദ്യ വാര്‍ത്ത പ്രസിദ്ധീകരിച്ച് ചൈനീസ് പത്രം- 300 അക്ഷരങ്ങളുള്ള വാര്‍ത്ത യന്ത്രം എഴുതിയത് ഒരു മിനിറ്റ് കൊണ്ട്‌</p>\n\n<p> </p>', 1, '', '', '', 0, 0, 0, '', '', 1, 151, '2017-01-20 14:45:47', 151, '2017-01-20 14:45:47', 1),
(4986, 796, 0, 8, 0, 0, 1, 57, '<p>സ്ത്രീയും ജൂതനും ഹിന്ദുവും ഭാവിയില്‍ പ്രസിഡന്റ്: ഒബാമ</p>\n\n<p> </p>', '<p>വനിതാ പ്രസിഡന്റ് എന്ന മോഹം അസ്തമിച്ചിട്ടില്ല-ജൂതനും ലത്തീന്‍കാരനും ഹിന്ദുവും വരെ ഭാവിയില്‍ പ്രസിഡന്റ് ആകാം</p>\n\n<p> </p>', 1, '', '', '', 0, 0, 0, '', '', 2, 151, '2017-01-20 14:45:47', 151, '2017-01-20 14:45:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgetinstancemainsectionconfig_live`
--

CREATE TABLE `widgetinstancemainsectionconfig_live` (
  `WidgetInstanceMainSection_live_id` bigint(20) NOT NULL,
  `WidgetInstanceMainSection_id` mediumint(9) NOT NULL,
  `WidgetInstance_id` int(11) NOT NULL,
  `Page_version_id` int(11) DEFAULT NULL,
  `CustomTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Section_ID` mediumint(9) DEFAULT NULL,
  `Section_Content_Type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DisplayOrder` smallint(6) NOT NULL,
  `Createdby` mediumint(9) NOT NULL,
  `Createdon` datetime NOT NULL,
  `Modifiedby` mediumint(9) NOT NULL,
  `Modifiedon` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Active, 2->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgetinstancemainsectionconfig_live`
--

INSERT INTO `widgetinstancemainsectionconfig_live` (`WidgetInstanceMainSection_live_id`, `WidgetInstanceMainSection_id`, `WidgetInstance_id`, `Page_version_id`, `CustomTitle`, `Section_ID`, `Section_Content_Type`, `DisplayOrder`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`) VALUES
(133, 3, 94, 1, 'ചിത്രജാലം', 12, '3', 1, 149, '2017-01-13 15:58:18', 148, '2017-01-13 18:27:48', 1),
(134, 4, 94, 1, 'വിഡിയോ', 11, '4', 2, 149, '2017-01-13 15:58:18', 148, '2017-01-13 18:27:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgetinstance_live`
--

CREATE TABLE `widgetinstance_live` (
  `WidgetInstancelive_id` bigint(11) NOT NULL,
  `WidgetInstance_id` int(11) NOT NULL,
  `Pagesection_id` mediumint(9) NOT NULL,
  `Page_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Page_version_id` int(11) DEFAULT NULL,
  `Container_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Widget_id` mediumint(9) NOT NULL,
  `WidgetDisplayOrder` int(11) NOT NULL,
  `CustomTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `AdvertisementScript` text CHARACTER SET utf8,
  `Background_Color` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Maximum_Articles` int(11) NOT NULL,
  `WidgetSection_ID` mediumint(9) NOT NULL,
  `RenderingMode` varchar(6) CHARACTER SET utf8 NOT NULL DEFAULT 'manual',
  `Numberofcontents` smallint(6) NOT NULL,
  `Hideseperatorline` char(1) CHARACTER SET utf8 NOT NULL,
  `isSummaryRequired` char(1) NOT NULL DEFAULT 'y',
  `publish_start_date` datetime NOT NULL,
  `publish_end_date` datetime NOT NULL,
  `Createdby` mediumint(9) NOT NULL,
  `Createdon` datetime NOT NULL,
  `Modifiedby` mediumint(9) NOT NULL,
  `Modifiedon` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Active, 2->Inactive',
  `cloned_instance_reference_id` int(11) DEFAULT NULL COMMENT 'Null->Not a cloned instance, Not Null-> This instance is cloned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgetinstance_live`
--

INSERT INTO `widgetinstance_live` (`WidgetInstancelive_id`, `WidgetInstance_id`, `Pagesection_id`, `Page_type`, `Page_version_id`, `Container_ID`, `Widget_id`, `WidgetDisplayOrder`, `CustomTitle`, `AdvertisementScript`, `Background_Color`, `Maximum_Articles`, `WidgetSection_ID`, `RenderingMode`, `Numberofcontents`, `Hideseperatorline`, `isSummaryRequired`, `publish_start_date`, `publish_end_date`, `Createdby`, `Createdon`, `Modifiedby`, `Modifiedon`, `status`, `cloned_instance_reference_id`) VALUES
(5006, 97, 3, '1', 7, 'container-1484548542882', 40, 1, '', '', '', 5, 3, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-16 12:06:21', 148, '2017-01-17 12:53:18', 1, 0),
(5007, 98, 3, '1', 7, 'container-1484548543090', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-16 12:06:25', 148, '2017-01-17 12:53:18', 1, 0),
(5008, 95, 2, '1', 6, 'container-1484547895537', 40, 1, '', '', '', 5, 2, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-16 11:55:46', 149, '2017-01-16 12:02:30', 1, 0),
(5009, 96, 2, '1', 6, 'container-1484547948456', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-16 11:55:58', 149, '2017-01-16 12:02:30', 1, 0),
(5010, 74, 1, '1', 5, 'container-1484217565035', 38, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:11:59', 148, '2017-01-16 11:52:37', 1, 0),
(5011, 76, 1, '1', 5, 'container-1484217738465', 48, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:12:19', 148, '2017-01-16 11:52:37', 1, 0),
(5012, 78, 1, '1', 5, 'container-1484217777530', 30, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:13:27', 148, '2017-01-16 11:52:37', 1, 0),
(5013, 79, 1, '1', 5, 'container-1484217813489', 48, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:13:38', 148, '2017-01-16 11:52:37', 1, 0),
(5014, 90, 1, '1', 5, 'container-1484286778289', 121, 1, '', '', '', 100, 1, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, '2017-01-13 11:22:56', 148, '2017-01-16 11:52:37', 1, 0),
(5015, 91, 1, '1', 5, 'container-1484286861201', 40, 1, '', '', '', 6, 1, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, '2017-01-13 11:24:30', 148, '2017-01-16 11:52:37', 1, 0),
(5018, 100, 4, '1', 8, 'container-1484635015349', 40, 1, '', '', '', 5, 4, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 12:07:02', 81, '2017-01-17 12:16:25', 1, 0),
(5019, 101, 4, '1', 8, 'container-1484635016069', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 12:07:04', 148, '2017-01-17 12:12:31', 1, 0),
(5020, 102, 5, '1', 9, 'container-1484638140240', 40, 1, '', '', '', 5, 5, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 12:59:25', 148, '2017-01-17 13:00:55', 1, 0),
(5021, 103, 5, '1', 9, 'container-1484638140582', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 12:59:28', 148, '2017-01-17 13:00:55', 1, 0),
(5022, 104, 6, '1', 10, 'container-1484638522132', 40, 1, '', '', '', 5, 6, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:05:26', 148, '2017-01-17 13:05:49', 1, 0),
(5023, 105, 6, '1', 10, 'container-1484638522885', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:05:29', 0, '0000-00-00 00:00:00', 1, 0),
(5024, 106, 7, '1', 11, 'container-1484638720229', 40, 1, '', '', '', 5, 7, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:08:44', 148, '2017-01-17 13:09:00', 1, 0),
(5025, 107, 7, '1', 11, 'container-1484638720637', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:08:48', 0, '0000-00-00 00:00:00', 1, 0),
(5028, 108, 9, '1', 13, 'container-1484641298652', 40, 1, '', '', '', 5, 9, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:51:41', 148, '2017-01-17 13:54:10', 1, 0),
(5029, 109, 9, '1', 13, 'container-1484641298988', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 13:51:45', 148, '2017-01-17 13:54:10', 1, 0),
(5059, 112, 10, '1', 14, 'container-1484644272717', 40, 1, '', '', '', 5, 10, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 14:41:17', 148, '2017-01-17 14:46:12', 1, 0),
(5060, 114, 10, '1', 14, 'container-1484644273213', 45, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 14:46:07', 148, '2017-01-17 14:46:12', 1, 0),
(5061, 118, 12, '1', 16, 'container-1484644699475', 101, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 14:48:51', 0, '0000-00-00 00:00:00', 1, 0),
(5062, 120, 12, '1', 16, 'container-1484644700629', 73, 1, '', '', '', 1, 11, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 14:51:04', 148, '2017-01-17 14:52:37', 1, 0),
(5113, 27, 10000, '2', 2, 'container-1484194703873', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:48:29', 148, '2017-01-13 11:34:43', 1, 0),
(5114, 28, 10000, '2', 2, 'container-1484194703873', 5, 2, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:48:31', 148, '2017-01-13 11:34:43', 1, 0),
(5115, 29, 10000, '2', 2, 'container-1484194703873', 5, 3, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:48:33', 148, '2017-01-13 11:34:43', 1, 0),
(5116, 30, 10000, '2', 2, 'container-1484194732421', 123, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:48:55', 148, '2017-01-13 11:34:43', 1, 0),
(5117, 31, 10000, '2', 2, 'container-1484194752192', 123, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:49:16', 148, '2017-01-13 11:34:43', 1, 0),
(5118, 32, 10000, '2', 2, 'container-1484194767634', 38, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:49:30', 148, '2017-01-13 11:34:43', 1, 0),
(5119, 33, 10000, '2', 2, 'container-1484194768079', 30, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:49:35', 148, '2017-01-13 11:34:43', 1, 0),
(5120, 34, 10000, '2', 2, 'container-1484194793922', 41, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:49:58', 148, '2017-01-13 11:34:43', 1, 0),
(5121, 35, 10000, '2', 2, 'container-1484194805616', 120, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:50:09', 148, '2017-01-13 11:34:43', 1, 0),
(5122, 36, 10000, '2', 2, 'container-1484194802702', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:50:37', 148, '2017-01-13 11:34:43', 1, 0),
(5123, 37, 10000, '2', 2, 'container-1484194832823', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:50:40', 148, '2017-01-13 11:34:43', 1, 0),
(5124, 38, 10000, '2', 2, 'container-1484194833367', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:50:42', 148, '2017-01-13 11:34:43', 1, 0),
(5125, 39, 10000, '2', 2, 'container-1484194849671', 108, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:50:52', 148, '2017-01-13 11:34:43', 1, 0),
(5126, 40, 10000, '2', 2, 'container-1484194865143', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:51:08', 148, '2017-01-13 11:34:43', 1, 0),
(5127, 41, 10000, '2', 2, 'container-1484194865359', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:51:09', 148, '2017-01-13 11:34:43', 1, 0),
(5128, 42, 10000, '2', 2, 'container-1484194873496', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:51:15', 148, '2017-01-13 11:34:43', 1, 0),
(5129, 43, 10000, '2', 2, 'container-1484194873496', 123, 2, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:51:17', 148, '2017-01-13 11:34:43', 1, 0),
(5130, 44, 10000, '2', 2, 'container-1484194883583', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:51:24', 148, '2017-01-13 11:34:43', 1, 0),
(5131, 46, 10000, '2', 2, 'container-1484194923326', 123, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:52:07', 148, '2017-01-13 11:34:43', 1, 0),
(5132, 47, 10000, '2', 2, 'container-1484194923566', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:52:09', 148, '2017-01-13 11:34:43', 1, 0),
(5133, 48, 10000, '2', 2, 'container-1484194939119', 3, 1, 'ഏറ്റവും പുതിയ', '', '', 5, 13, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:52:22', 148, '2017-01-13 11:34:43', 1, 0),
(5134, 50, 10000, '2', 2, 'container-1484195010991', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:53:36', 148, '2017-01-13 11:34:43', 1, 0),
(5135, 51, 10000, '2', 2, 'container-1484195011431', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:53:37', 148, '2017-01-13 11:34:43', 1, 0),
(5136, 52, 10000, '2', 2, 'container-1484195011936', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:53:40', 148, '2017-01-13 11:34:43', 1, 0),
(5137, 53, 10000, '2', 2, 'container-1484195028798', 70, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:53:55', 148, '2017-01-13 11:34:43', 1, 0),
(5138, 54, 10000, '2', 2, 'container-1484195039399', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:54:03', 148, '2017-01-13 11:34:43', 1, 0),
(5139, 55, 10000, '2', 2, 'container-1484195055695', 71, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:54:28', 148, '2017-01-13 11:34:43', 1, 0),
(5140, 56, 10000, '2', 2, 'container-1484195093463', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:02', 148, '2017-01-13 11:34:43', 1, 0),
(5141, 57, 10000, '2', 2, 'container-1484195094078', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:04', 148, '2017-01-13 11:34:43', 1, 0),
(5142, 58, 10000, '2', 2, 'container-1484195094518', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:05', 148, '2017-01-13 11:34:43', 1, 0),
(5143, 59, 10000, '2', 2, 'container-1484195094974', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:07', 148, '2017-01-13 11:34:43', 1, 0),
(5144, 60, 10000, '2', 2, 'container-1484195095422', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:08', 148, '2017-01-13 11:34:43', 1, 0),
(5145, 61, 10000, '2', 2, 'container-1484195095926', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:11', 148, '2017-01-13 11:34:43', 1, 0),
(5146, 62, 10000, '2', 2, 'container-1484195096310', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:15', 148, '2017-01-13 11:34:43', 1, 0),
(5147, 63, 10000, '2', 2, 'container-1484195132256', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:35', 148, '2017-01-13 11:34:43', 1, 0),
(5148, 64, 10000, '2', 2, 'container-1484195132572', 34, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 09:55:42', 148, '2017-01-13 11:34:43', 1, 0),
(5149, 92, 10000, '2', 2, 'container-1484194946639', 69, 1, '', '', '', 5, 13, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-13 11:33:16', 148, '2017-01-13 11:34:43', 1, 0),
(5289, 121, 11, '1', 15, 'container-1484720091863', 73, 1, '', '', '', 1, 11, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-18 11:45:49', 148, '2017-01-18 12:11:14', 1, 0),
(5290, 123, 11, '1', 15, 'container-1484720092358', 58, 1, '', '', '', 3, 11, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-18 11:46:50', 148, '2017-01-18 12:10:06', 1, 0),
(5291, 1, 14, '1', 1, 'container-1484127488136', 5, 1, 'adv_1', '', '', 0, 0, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:08:19', 148, '2017-01-18 11:38:35', 1, 0),
(5292, 2, 14, '1', 1, 'container-1484127488136', 5, 2, 'adv_2', '', '', 0, 0, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:08:33', 148, '2017-01-18 11:38:35', 1, 0),
(5293, 3, 14, '1', 1, 'container-1484127563967', 38, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:09:38', 148, '2017-01-18 11:38:35', 1, 0),
(5294, 4, 14, '1', 1, 'container-1484127564655', 30, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:09:45', 148, '2017-01-18 11:38:35', 1, 0),
(5295, 5, 14, '1', 1, 'container-1484127600952', 8, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:10:09', 148, '2017-01-18 11:38:35', 1, 0),
(5296, 6, 14, '1', 1, 'container-1484127628921', 3, 1, 'Latest', '', '', 5, 13, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:10:33', 148, '2017-01-18 11:38:35', 1, 0),
(5297, 7, 14, '1', 1, 'container-1484127628921', 3, 3, 'കേരളം', '', '', 5, 1, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:10:36', 148, '2017-01-18 11:38:35', 1, 0),
(5298, 8, 14, '1', 1, 'container-1484127628921', 39, 2, 'Lead Stories', '', '', 5, 0, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:10:52', 148, '2017-01-18 11:38:35', 1, 0),
(5299, 9, 14, '1', 1, 'container-1484127705591', 10, 1, 'Editor\'s Pick', '', '', 9, 0, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:13:30', 148, '2017-01-18 11:38:35', 1, 0),
(5300, 11, 14, '1', 1, 'container-1484128036000', 16, 1, 'ദേശീയം', '', '', 6, 2, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:17:22', 148, '2017-01-18 11:38:35', 1, 0),
(5301, 12, 14, '1', 1, 'container-1484128036000', 16, 2, 'ധനകാര്യം', '', '', 5, 5, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:17:25', 148, '2017-01-18 11:38:35', 1, 0),
(5302, 13, 14, '1', 1, 'container-1484127874176', 11, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:18:13', 148, '2017-01-18 11:38:35', 1, 0),
(5303, 14, 14, '1', 1, 'container-1484128116976', 18, 1, 'ചലച്ചിത്രം', '', '', 6, 0, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:18:42', 148, '2017-01-18 11:38:35', 1, 0),
(5304, 15, 14, '1', 1, 'container-1484128157177', 5, 1, 'Sports Score', '', '', 0, 0, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:19:22', 148, '2017-01-18 11:38:35', 1, 0),
(5305, 16, 14, '1', 1, 'container-1484128156585', 122, 1, 'Trending', '', '', 6, 0, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:20:38', 148, '2017-01-18 11:38:35', 1, 0),
(5306, 17, 14, '1', 1, 'container-1484128274160', 22, 1, 'കായികം', '', '', 8, 7, 'auto', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:21:25', 148, '2017-01-18 11:38:35', 1, 0),
(5307, 18, 14, '1', 1, 'container-1484128315096', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:24:02', 148, '2017-01-18 11:38:35', 1, 0),
(5308, 19, 14, '1', 1, 'container-1484128458752', 62, 1, '', '', '', 3, 6, 'manual', 0, '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:24:41', 148, '2017-01-18 11:38:35', 1, 0),
(5309, 21, 14, '1', 1, 'container-1484128539944', 23, 1, '', '', '', 4, 8, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:25:51', 148, '2017-01-18 11:38:35', 1, 0),
(5310, 23, 14, '1', 1, 'container-1484129386196', 37, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-11 15:39:50', 148, '2017-01-18 11:38:35', 1, 0),
(5311, 25, 14, '1', 1, 'container-1484140071499', 117, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, '2017-01-11 18:38:07', 148, '2017-01-18 11:38:35', 1, 0),
(5312, 26, 14, '1', 1, 'container-1484140071499', 34, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, '2017-01-11 18:38:11', 148, '2017-01-18 11:38:35', 1, 0),
(5313, 86, 14, '1', 1, 'container-1484225089050', 123, 1, '', '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" ><fieldset class="FieldTopic" style="margin-left:-15px;"> <legend class="topic"><a href="http://www.samakalikamalayalam.com/kaayikam-sports">ജീവിതം</a></legend></fieldset></div>', '', 0, 0, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 18:15:07', 148, '2017-01-18 11:38:35', 1, 0),
(5314, 88, 14, '1', 1, 'container-1484128556504', 71, 1, 'മലയാളം വാരിക', '', '', 3, 11, 'manual', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 19:02:31', 148, '2017-01-18 11:38:35', 1, 0),
(5315, 94, 14, '1', 1, 'container-1484127873296', 4, 1, '', '', '', 1, 11, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-13 15:57:11', 148, '2017-01-18 11:38:35', 1, 0),
(5316, 65, 10000, '1', 3, 'container-1484217225018', 123, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:03:54', 148, '2017-01-17 10:46:06', 1, 0),
(5317, 66, 10000, '1', 3, 'container-1484217225641', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:03:56', 148, '2017-01-17 10:46:06', 1, 0),
(5318, 67, 10000, '1', 3, 'container-1484217226498', 5, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:04:00', 148, '2017-01-17 10:46:06', 1, 0),
(5319, 68, 10000, '1', 3, 'container-1484217347017', 123, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:05:49', 148, '2017-01-17 10:46:06', 1, 0),
(5320, 70, 10000, '1', 3, 'container-1484217364442', 38, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, '2017-01-12 16:06:07', 148, '2017-01-17 10:46:06', 1, 0),
(5321, 80, 10000, '1', 3, 'container-1484218054575', 48, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:17:43', 148, '2017-01-17 10:46:06', 1, 0),
(5322, 81, 10000, '1', 3, 'container-1484218069558', 30, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:18:47', 148, '2017-01-17 10:46:06', 1, 0),
(5323, 82, 10000, '1', 3, 'container-1484218144950', 34, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:19:43', 148, '2017-01-17 10:46:06', 1, 0),
(5324, 83, 10000, '1', 3, 'container-1484218186213', 37, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:21:33', 148, '2017-01-17 10:46:06', 1, 0),
(5325, 84, 10000, '1', 3, 'container-1484218185638', 122, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:22:21', 148, '2017-01-17 10:46:06', 1, 0),
(5326, 85, 10000, '1', 3, 'container-1484218185278', 7, 1, '', '', '', 0, 0, 'manual', 0, '', 'y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-12 16:23:00', 148, '2017-01-17 10:46:06', 1, 0),
(5327, 89, 10000, '1', 3, 'container-1484286291119', 121, 1, '', '', '', 10, 0, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, '2017-01-13 11:19:32', 148, '2017-01-17 10:46:06', 1, 0),
(5328, 99, 10000, '1', 3, 'container-1484630083229', 40, 1, '', '', '', 5, 0, 'auto', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, '2017-01-17 10:45:43', 148, '2017-01-17 10:46:06', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `widget_master`
--

CREATE TABLE `widget_master` (
  `widgetId` smallint(6) NOT NULL,
  `widgetName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `minimumContent` tinyint(4) NOT NULL,
  `maximumContent` tinyint(4) NOT NULL,
  `contentType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->None, 2->Article, 3->Gallery, 4->Video, 5->Audio, 6->Polls, 7->All(Except Polls)',
  `widgetfilePath` varchar(50) CHARACTER SET utf8 NOT NULL,
  `widgetStyle` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Normal, 2->Simple Tabs, 3->Nested Tabs',
  `renderingType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1->Content, 2->Static, 3->script',
  `isRelatedArticleAvailable` tinyint(1) DEFAULT '0' COMMENT '0->No, 1->Yes',
  `IsWidgetTitleAvailable` tinyint(1) DEFAULT '0' COMMENT '0->No, 1->Yes',
  `isWidgetTitleConfigurable` tinyint(1) DEFAULT '0' COMMENT '0->No, 1->Yes',
  `isSummaryAvailable` tinyint(1) DEFAULT '0' COMMENT '0->No, 1->Yes',
  `createdBy` smallint(6) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedBy` smallint(6) NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1->Active, 0->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget_master`
--

INSERT INTO `widget_master` (`widgetId`, `widgetName`, `minimumContent`, `maximumContent`, `contentType`, `widgetfilePath`, `widgetStyle`, `renderingType`, `isRelatedArticleAvailable`, `IsWidgetTitleAvailable`, `isWidgetTitleConfigurable`, `isSummaryAvailable`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `status`) VALUES
(1, 'Widget-Header-1', 0, 5, 1, 'admin/widgets/header1', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(3, 'Top News', 4, 0, 2, 'admin/widgets/topnews', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(4, 'Gallery - Videos', 4, 0, 7, 'admin/widgets/gallery_videos', 2, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(5, 'Script Widget', 0, 0, 2, 'admin/widgets/header_add', 1, 3, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(6, 'Ask Prabhu', 0, 0, 1, 'admin/widgets/askprabhu', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(7, 'Editor\'s Picks', 1, 0, 1, 'admin/widgets/editor_pick', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(8, 'Breaking News', 0, 0, 1, 'admin/widgets/breaking_news', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(9, 'Sections / Menus', 1, 5, 0, 'admin/widgets/sections', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(10, 'Specials', 3, 0, 2, 'admin/widgets/specials', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(11, 'Polls', 0, 0, 1, 'admin/widgets/polls', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(12, 'Editorial', 1, 0, 2, 'admin/widgets/editorial', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 'Columns', 1, 0, 2, 'admin/widgets/columns1', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(14, 'Columns-2', 1, 0, 2, 'admin/widgets/columns2', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(16, 'Nation', 1, 5, 2, 'admin/widgets/nation', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(18, 'Entertainment', 5, 0, 7, 'admin/widgets/entertainment', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(19, 'Weather', 0, 0, 1, 'admin/widgets/header_weather', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(20, 'Cities', 6, 0, 2, 'admin/widgets/city', 3, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(21, 'Business', 6, 0, 2, 'admin/widgets/business', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(22, 'Sport', 4, 0, 2, 'admin/widgets/sports', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(23, 'Gallery', 4, 0, 3, 'admin/widgets/gallery', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(24, 'Videos', 4, 4, 4, 'admin/widgets/videos', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(25, 'Others', 5, 0, 2, 'admin/widgets/others', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(26, 'Magazines', 3, 3, 2, 'admin/widgets/magazines', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(27, 'Sunday Standard', 4, 0, 2, 'admin/widgets/sunday_standard', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(28, 'Logo', 0, 0, 1, 'admin/widgets/header_logo', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(29, 'Search', 0, 0, 1, 'admin/widgets/header_search', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(30, 'Section', 1, 5, 1, 'admin/widgets/menu', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(31, 'States', 6, 0, 2, 'admin/widgets/states', 2, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(32, 'Business', 6, 0, 2, 'admin/widgets/business', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(33, 'Advertisemet 300 X 250', 0, 0, 0, 'admin/widgets/add_300_250', 0, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(34, 'Footer', 0, 0, 1, 'admin/widgets/footer1', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(35, 'Footer-2', 0, 0, 2, 'admin/widgets/footer2', 2, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(36, 'facebook', 1, 0, 1, 'admin/widgets/facebook', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(37, 'twitter', 1, 0, 1, 'admin/widgets/twitter', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(38, 'weather logo search', 1, 0, 1, 'admin/widgets/weather_logo_search', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(39, 'Lead Stories', 1, 5, 7, 'admin/widgets/lead_story', 1, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(40, 'Listing Page Lead Stories', 1, 5, 2, 'admin/widgets/subsection_lead', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(41, 'Article Details', 1, 0, 1, 'admin/widgets/article_details', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(43, 'Section Lead Stories', 1, 0, 2, 'admin/widgets/section_article', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(44, 'Columns Listing', 1, 0, 2, 'admin/widgets/section_columns', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(45, 'Listing Page Other Stories', 1, 0, 1, 'admin/widgets/subsection_other_stories', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(46, 'Sub Sections Name', 1, 1, 1, 'admin/widgets/subsection_names', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(48, 'Bread Crumb', 1, 1, 1, 'admin/widgets/breadcrumb', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(49, 'Ask prabhu form', 1, 1, 1, 'admin/widgets/askprabhu_form', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(50, 'Ask prabhu Questions', 1, 1, 1, 'admin/widgets/askprabhu_questions', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(51, 'Ask prabhu biography', 1, 1, 1, 'admin/widgets/prabhu_biography', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(52, 'Magazine Lead', 1, 1, 2, 'admin/widgets/magazine_lead', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(53, 'Magazine Middle', 1, 1, 2, 'admin/widgets/magazine_middle', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(54, 'Magazine Voices', 1, 1, 2, 'admin/widgets/magazine_voices', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(55, 'Sport Lead Story', 1, 5, 2, 'admin/widgets/sports_lead_story', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(56, 'Most Popular Gallery', 4, 0, 3, 'admin/widgets/most_viewed_gallery', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(57, 'Gallery Type 1', 4, 0, 3, 'admin/widgets/gallery_entertainment', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(58, 'Video Type 1', 4, 4, 4, 'admin/widgets/video_entertainment', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(59, 'Most Popular Videos', 4, 4, 4, 'admin/widgets/most_viewed_video', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2),
(60, 'Sunday Standard 1', 4, 0, 2, 'admin/widgets/sunday_standard_section_lead', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(61, 'Sunday Standard 4', 4, 0, 2, 'admin/widgets/sunday_standard_region4', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(62, 'Sunday Standard 3', 4, 0, 2, 'admin/widgets/sunday_standard_region3', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(63, 'Sunday Standard 2', 4, 0, 2, 'admin/widgets/sunday_standard_region2', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(64, 'Gallery Lead', 4, 0, 3, 'admin/widgets/gallery_lead', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(65, 'More from Gallery ', 4, 0, 3, 'admin/widgets/more_gallery', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(66, 'Entertainment Lead', 4, 0, 2, 'admin/widgets/entertainment_lead', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(67, 'Entertainment News', 4, 0, 2, 'admin/widgets/entertainment_news', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(68, 'Entertainment Gallery', 4, 0, 3, 'admin/widgets/entertainment_gallery', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(69, 'Entertainment Gossip', 4, 0, 2, 'admin/widgets/entertainment_gossip', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(70, 'Gallery Right Side', 4, 0, 3, 'admin/widgets/section_gallery', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(71, 'Video Right Side', 4, 0, 4, 'admin/widgets/section_video', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(72, 'Other Stories (Right Side)', 1, 0, 2, 'admin/widgets/other_stories', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(73, 'Video Lead', 4, 4, 4, 'admin/widgets/video_lead', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(74, 'Life Style Lead ', 4, 0, 2, 'admin/widgets/lifestyle_lead', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(75, 'Life Style Travel', 4, 0, 2, 'admin/widgets/lifestyle_travel', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(76, 'Life Style Food', 4, 0, 2, 'admin/widgets/lifestyle_food', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(77, 'Life Style Gallery', 4, 0, 3, 'admin/widgets/lifestyle_gallery', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(78, 'Life Style Video', 4, 0, 4, 'admin/widgets/lifestyle_video', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(79, 'Entertainment Video', 4, 0, 4, 'admin/widgets/entertainment_video', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(80, 'Sport Middle', 1, 5, 2, 'admin/widgets/sports_middle', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(81, 'Sport Last', 1, 5, 2, 'admin/widgets/sports_last', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(82, 'Power and Politics', 1, 5, 2, 'admin/widgets/power_politics', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(83, 'Sunday Standard 5', 4, 0, 2, 'admin/widgets/sunday_standard_region5', 1, 1, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(84, 'Video Detailed List', 4, 0, 4, 'admin/widgets/video_details', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 'Columnist Biography', 4, 0, 1, 'admin/widgets/column_biography', 1, 2, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(86, 'Columnist Article Listing', 4, 0, 1, 'admin/widgets/single_column_articles', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(87, 'Health List1', 1, 1, 2, 'admin/widgets/health_list1', 1, 1, 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(88, 'Health List2', 1, 1, 2, 'admin/widgets/health_list2', 1, 1, 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(89, 'Health List3', 1, 1, 2, 'admin/widgets/health_list3', 1, 1, 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(90, 'Health List4', 1, 1, 2, 'admin/widgets/health_list4', 1, 1, 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(91, 'Section Editorial', 1, 0, 2, 'admin/widgets/section_editorial', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(92, 'Sunday Standard Logo Widget', 1, 0, 1, 'admin/widgets/sunday_standard_logo_widget', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(93, 'Contact Us', 0, 0, 1, 'admin/widgets/contact_us', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(94, 'About Us', 0, 0, 1, 'admin/widgets/about_us', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(95, 'Privacy Policy', 0, 0, 1, 'admin/widgets/privacy_policy', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(96, 'Terms of Use', 0, 0, 1, 'admin/widgets/terms_of_use', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(97, 'Advertise with us', 0, 0, 1, 'admin/widgets/advertise_with_us', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(98, 'Galleries Subsection Landing Lead', 1, 5, 3, 'admin/widgets/galleries_subsection_lead', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 'Galleries Listing', 1, 0, 1, 'admin/widgets/gallaries_subsection_other_stories', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(100, 'Videos Subsection Landing Lead', 1, 5, 4, 'admin/widgets/videos_subsection_lead', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 'Videos Listing', 1, 0, 1, 'admin/widgets/videos_subsection_other_stories', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(102, 'Search Result', 0, 0, 1, 'admin/widgets/tag_search', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(103, 'More from Video', 4, 0, 4, 'admin/widgets/more_video', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(104, 'Breaking News Single Type 1', 4, 0, 2, 'admin/widgets/headline1', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(105, 'Breaking News Single Type 2', 4, 0, 2, 'admin/widgets/headline2', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(106, 'Breaking News Single Type 3', 4, 0, 2, 'admin/widgets/headline3', 1, 1, 0, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(107, 'Rss Widget', 0, 0, 1, 'admin/widgets/rss_widget', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(108, 'Comments', 0, 0, 1, 'admin/widgets/comments', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(109, 'Author Columns', 1, 0, 1, 'admin/widgets/author_columns', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(110, 'Gallery and Video Lead', 0, 0, 7, 'admin/widgets/section_top_story', 1, 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(111, 'Breaking News Single Type 4', 4, 0, 2, 'admin/widgets/headline4', 1, 1, 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(112, 'Election result', 4, 0, 2, 'admin/widgets/election_result', 1, 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(113, 'Newsletter header logo', 0, 0, 1, 'admin/widgets/newsletter_header_logo', 1, 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(114, 'Newsletter1', 4, 0, 2, 'admin/widgets/newsletter1', 1, 1, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(115, 'Newsletter2', 4, 0, 2, 'admin/widgets/newsletter2', 1, 1, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(116, 'Newsletter3', 4, 0, 2, 'admin/widgets/newsletter3', 1, 1, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(117, 'Newsletter Footer', 0, 0, 1, 'admin/widgets/newsletter_footer', 1, 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(118, '404 page', 0, 0, 1, 'admin/widgets/404', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(119, 'Sacchi Baat', 1, 5, 2, 'admin/widgets/sacchi_baat', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(120, 'Promotion menu', 0, 0, 2, 'admin/widgets/promotion_menu', 1, 3, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(121, 'Listing page other stories with manual option', 1, 0, 2, 'admin/widgets/subsection_other_stories_manual', 1, 1, 0, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(122, 'Pc Corner', 4, 0, 2, 'admin/widgets/pc_corner', 1, 1, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(123, 'Raw Script Dont use', 0, 0, 2, 'admin/widgets/raw_script', 1, 3, 0, 1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `parent_section_id` (`parent_section_id`),
  ADD KEY `section_id_2` (`section_id`),
  ADD KEY `grant_section_id` (`grant_section_id`),
  ADD KEY `ecenic_id` (`ecenic_id`),
  ADD KEY `allow_pagination` (`allow_pagination`);

--
-- Indexes for table `article_section_mapping`
--
ALTER TABLE `article_section_mapping`
  ADD KEY `content_id` (`content_id`,`section_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `askprabhu`
--
ALTER TABLE `askprabhu`
  ADD PRIMARY KEY (`Question_id`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `parent_section_id` (`parent_section_id`),
  ADD KEY `section_id_2` (`section_id`),
  ADD KEY `grant_section_id` (`grant_section_id`),
  ADD KEY `ecenic_id` (`ecenic_id`);

--
-- Indexes for table `audio_section_mapping`
--
ALTER TABLE `audio_section_mapping`
  ADD KEY `section_id` (`section_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `caption_migration`
--
ALTER TABLE `caption_migration`
  ADD PRIMARY KEY (`caption_migration_id`);

--
-- Indexes for table `container_master`
--
ALTER TABLE `container_master`
  ADD PRIMARY KEY (`containerid`);

--
-- Indexes for table `contenttypemaster`
--
ALTER TABLE `contenttypemaster`
  ADD KEY `contenttype_id` (`contenttype_id`);

--
-- Indexes for table `content_hit_history`
--
ALTER TABLE `content_hit_history`
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `parent_section_id` (`parent_section_id`),
  ADD KEY `section_id_2` (`section_id`),
  ADD KEY `grant_section_id` (`grant_section_id`),
  ADD KEY `publish_start_date` (`publish_start_date`),
  ADD KEY `ecenic_id` (`ecenic_id`);

--
-- Indexes for table `gallery_related_images`
--
ALTER TABLE `gallery_related_images`
  ADD PRIMARY KEY (`PrimaryId`),
  ADD UNIQUE KEY `PrimaryId` (`PrimaryId`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `content_id_2` (`content_id`);

--
-- Indexes for table `gallery_section_mapping`
--
ALTER TABLE `gallery_section_mapping`
  ADD KEY `content_id` (`content_id`,`section_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `hit_count_history`
--
ALTER TABLE `hit_count_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_master`
--
ALTER TABLE `page_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Createdby` (`Createdby`),
  ADD KEY `Modifiedby` (`Modifiedby`),
  ADD KEY `pagetype` (`pagetype`);

--
-- Indexes for table `pollmaster`
--
ALTER TABLE `pollmaster`
  ADD PRIMARY KEY (`Poll_id`);

--
-- Indexes for table `pollresultdata`
--
ALTER TABLE `pollresultdata`
  ADD PRIMARY KEY (`poll_result_ID`),
  ADD KEY `poll_result_ID` (`poll_result_ID`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `ecenic_id` (`ecenic_id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `sectionmaster`
--
ALTER TABLE `sectionmaster`
  ADD PRIMARY KEY (`Section_id`),
  ADD KEY `section_selection_allowed` (`section_allowed_for_hosting`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `settings_id` (`settings_id`),
  ADD UNIQUE KEY `email_to` (`email_to`),
  ADD KEY `slider_count` (`slider_count`);

--
-- Indexes for table `shared_email_details`
--
ALTER TABLE `shared_email_details`
  ADD PRIMARY KEY (`shared_email_id`),
  ADD KEY `shared_email_id` (`shared_email_id`,`content_id`);

--
-- Indexes for table `short_article_details`
--
ALTER TABLE `short_article_details`
  ADD KEY `content_id` (`content_id`,`section_id`),
  ADD KEY `title` (`title`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `short_audio_details`
--
ALTER TABLE `short_audio_details`
  ADD UNIQUE KEY `content_id_2` (`content_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `short_gallery_details`
--
ALTER TABLE `short_gallery_details`
  ADD KEY `content_id` (`content_id`,`section_id`);

--
-- Indexes for table `short_video_details`
--
ALTER TABLE `short_video_details`
  ADD KEY `section_id` (`section_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `template_master`
--
ALTER TABLE `template_master`
  ADD PRIMARY KEY (`templateid`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `parent_section_id` (`parent_section_id`),
  ADD KEY `section_id_2` (`section_id`),
  ADD KEY `grant_section_id` (`grant_section_id`),
  ADD KEY `ecenic_id` (`ecenic_id`);

--
-- Indexes for table `video_section_mapping`
--
ALTER TABLE `video_section_mapping`
  ADD KEY `section_id` (`section_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `widgetinstancecontent_live`
--
ALTER TABLE `widgetinstancecontent_live`
  ADD PRIMARY KEY (`WidgetInstanceContentlive_ID`),
  ADD KEY `WidgetInstance_id` (`WidgetInstance_id`),
  ADD KEY `WidgetInstanceMainSection_id` (`WidgetInstanceMainSection_id`),
  ADD KEY `WidgetInstanceSubSection_ID` (`WidgetInstanceSubSection_ID`),
  ADD KEY `contentversion_id` (`content_id`),
  ADD KEY `WidgetInstanceContent_ID` (`WidgetInstanceContent_ID`),
  ADD KEY `customimage_id` (`customimage_id`),
  ADD KEY `widgetInstanceRelated_ID` (`widgetInstanceRelated_ID`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `content_type_id` (`content_type_id`),
  ADD KEY `Page_version_id` (`Page_version_id`);

--
-- Indexes for table `widgetinstancemainsectionconfig_live`
--
ALTER TABLE `widgetinstancemainsectionconfig_live`
  ADD PRIMARY KEY (`WidgetInstanceMainSection_live_id`),
  ADD KEY `WidgetInstance_id` (`WidgetInstance_id`),
  ADD KEY `Section_ID` (`Section_ID`),
  ADD KEY `WidgetInstanceMainSection_id` (`WidgetInstanceMainSection_id`),
  ADD KEY `Page_version_id` (`Page_version_id`);

--
-- Indexes for table `widgetinstance_live`
--
ALTER TABLE `widgetinstance_live`
  ADD PRIMARY KEY (`WidgetInstancelive_id`),
  ADD KEY `WidgetInstance_id` (`WidgetInstance_id`),
  ADD KEY `Pagesection_id` (`Pagesection_id`),
  ADD KEY `Container_ID` (`Container_ID`),
  ADD KEY `Widget_id` (`Widget_id`),
  ADD KEY `WidgetSection_ID` (`WidgetSection_ID`),
  ADD KEY `Page_version_id` (`Page_version_id`);

--
-- Indexes for table `widget_master`
--
ALTER TABLE `widget_master`
  ADD PRIMARY KEY (`widgetId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `askprabhu`
--
ALTER TABLE `askprabhu`
  MODIFY `Question_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `caption_migration`
--
ALTER TABLE `caption_migration`
  MODIFY `caption_migration_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `container_master`
--
ALTER TABLE `container_master`
  MODIFY `containerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contenttypemaster`
--
ALTER TABLE `contenttypemaster`
  MODIFY `contenttype_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Primary key , indexed', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gallery_related_images`
--
ALTER TABLE `gallery_related_images`
  MODIFY `PrimaryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `hit_count_history`
--
ALTER TABLE `hit_count_history`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `pollmaster`
--
ALTER TABLE `pollmaster`
  MODIFY `Poll_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pollresultdata`
--
ALTER TABLE `pollresultdata`
  MODIFY `poll_result_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shared_email_details`
--
ALTER TABLE `shared_email_details`
  MODIFY `shared_email_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template_master`
--
ALTER TABLE `template_master`
  MODIFY `templateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `widgetinstancecontent_live`
--
ALTER TABLE `widgetinstancecontent_live`
  MODIFY `WidgetInstanceContentlive_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4987;
--
-- AUTO_INCREMENT for table `widgetinstancemainsectionconfig_live`
--
ALTER TABLE `widgetinstancemainsectionconfig_live`
  MODIFY `WidgetInstanceMainSection_live_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `widgetinstance_live`
--
ALTER TABLE `widgetinstance_live`
  MODIFY `WidgetInstancelive_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5329;
--
-- AUTO_INCREMENT for table `widget_master`
--
ALTER TABLE `widget_master`
  MODIFY `widgetId` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_section_mapping`
--
ALTER TABLE `article_section_mapping`
  ADD CONSTRAINT `article_section_mapping_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `article` (`content_id`);

--
-- Constraints for table `audio_section_mapping`
--
ALTER TABLE `audio_section_mapping`
  ADD CONSTRAINT `audio_section_mapping_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `audio` (`content_id`);

--
-- Constraints for table `gallery_related_images`
--
ALTER TABLE `gallery_related_images`
  ADD CONSTRAINT `gallery_related_images_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `gallery` (`content_id`);

--
-- Constraints for table `gallery_section_mapping`
--
ALTER TABLE `gallery_section_mapping`
  ADD CONSTRAINT `gallery_section_mapping_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `gallery` (`content_id`);

--
-- Constraints for table `short_article_details`
--
ALTER TABLE `short_article_details`
  ADD CONSTRAINT `short_article_details_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `article` (`content_id`);

--
-- Constraints for table `short_audio_details`
--
ALTER TABLE `short_audio_details`
  ADD CONSTRAINT `short_audio_details_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `audio` (`content_id`);

--
-- Constraints for table `short_video_details`
--
ALTER TABLE `short_video_details`
  ADD CONSTRAINT `short_video_details_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `video` (`content_id`);

--
-- Constraints for table `video_section_mapping`
--
ALTER TABLE `video_section_mapping`
  ADD CONSTRAINT `video_section_mapping_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `video` (`content_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

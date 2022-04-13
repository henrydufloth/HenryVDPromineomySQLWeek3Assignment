CREATE DATABASE socialdatabase;

use socialdatabase;

CREATE TABLE users (
user_id INT(11) NOT NULL auto_increment, 
username VARCHAR(12) NOT NULL, 
email VARCHAR(30) NOT NULL, 
password CHAR(8) NOT NULL, 
PRIMARY KEY (user_id));

CREATE TABLE posts (
post_id INT(11) NOT NULL auto_increment, 
user_id INT(11)  NOT NULL, 
post_content VARCHAR(256)  NOT NULL, 
time_of_post TIMESTAMP  NOT NULL, 
PRIMARY KEY (post_id), 
FOREIGN KEY (user_id) REFERENCES users(user_id));

CREATE TABLE comments (
comment_id INT(11)  NOT NULL auto_increment, 
post_id INT(11)  NOT NULL, 
user_id INT(11)  NOT NULL, 
comment_content VARCHAR(256)  NOT NULL, 
time_of_comment TIMESTAMP  NOT NULL, 
PRIMARY KEY(comment_id), 
FOREIGN KEY (user_id) REFERENCES users(user_id), 
FOREIGN KEY (post_id) REFERENCES posts(post_id));

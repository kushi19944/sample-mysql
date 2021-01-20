CREATE DATABASE TestDB;
use TestDB;
/* 初期登録で文字化けしないよう文字コード指定 */
SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

CREATE TABLE user (
    id INT(11) AUTO_INCREMENT NOT NULL,
    PRIMARY KEY (id),
    name VARCHAR(64) NOT NULL,
    age INT(20)
);

INSERT INTO user (name,age) VALUES ("たかし",18);

/* これでも可 */
INSERT INTO user (name,age) VALUES ("†たかし†",37),("†超たかし†",83);

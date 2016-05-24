drop database test;
create database test;

use test;


CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` bigint(20) DEFAULT NULL,
    `admin` BOOLEAN NOT NULL,
 `createdDate` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

INSERT INTO user (name, age, admin, createdDate)
VALUES ('Mikle','21','1','10.10.12');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Vladimir','41','1','10.08.12');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Nikolya','61','0','10.07.12');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Ovechkin','31','0','10.07.14');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Tom','32','0','10.07.01');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Nikola','33','0','10.07.04');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Semen','34','0','10.07.16');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Valera','3','0','10.07.16');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Tolstyi','40','1','10.07.12');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Boris','45','0','10.07.09');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Boris1','45','0','10.07.09');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Boris2','45','0','10.07.09');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Kot','5','0','10.07.10');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Pes','6','0','10.07.11');
INSERT INTO user (name, age, admin, createdDate)
VALUES ('Barbos','6','0','10.07.11');
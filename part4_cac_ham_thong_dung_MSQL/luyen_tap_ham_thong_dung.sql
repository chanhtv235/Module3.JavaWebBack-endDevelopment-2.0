create database `students`;
use `students`;
create table sinhvien (
id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
ten varchar(50),
tuoi int,
khoahoc varchar(50),
sotien int
);
INSERT INTO `students`.`sinhvien` (`id`, `ten`, `tuoi`, `khoahoc`, `sotien`) VALUES ('1', 'Huong', '18', 'CNTT', '400000');
INSERT INTO `students`.`sinhvien` (`id`, `ten`, `tuoi`, `khoahoc`, `sotien`) VALUES ('2', 'Huong1', '19', 'CNTT1', '500000');
INSERT INTO `students`.`sinhvien` (`id`, `ten`, `tuoi`, `khoahoc`, `sotien`) VALUES ('3', 'Huong2', '29', 'CNTT2', '600000');
INSERT INTO `students`.`sinhvien` (`id`, `ten`, `tuoi`, `khoahoc`, `sotien`) VALUES ('4', 'Huong', '21', 'CNTT1', '700000');
INSERT INTO `students`.`sinhvien` (`id`, `ten`, `tuoi`, `khoahoc`, `sotien`) VALUES ('5', 'Huong', '22', 'CNTT', '800000');

SELECT * FROM `students`.`sinhvien` where ten ='Huong'; 
SELECT sum(sotien) FROM `students`.`sinhvien` where ten ='Huong'; 
SELECT distinct ten FROM `students`.`sinhvien`; 
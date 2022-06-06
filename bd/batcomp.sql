create database batcomputer;
use batcomputer;

create table metrica (
idBat int primary key,
nomeBattraje varchar(45),
anoTraje char(4)
);

create table usuario (
id int primary
 key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
fkBat int,
foreign key (fkBat) references metrica(idBat)
);

insert into metrica values (101,'Bat-Pattinson','2022'),
						   (102,'Bat-Affleck','2016'),
                           (103,'Bat-Bale','2005');
                           
                           
select count(fkBat) as 'Qtde BatPattinson' from usuario where fkBat = 101 ;
select count(fkBat) as 'Qtde BatAffleck' from usuario where fkBat = 102 ;
select count(fkBat) as 'Qtde BatBale' from usuario where fkBat = 103;

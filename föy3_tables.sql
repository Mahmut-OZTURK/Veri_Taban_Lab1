create database föy3

use föy3
create table birimler(
	birim_id int primary key ,
	birim_ad char(25) not null
)

create table calisanlar(
	calisan_id int primary key,
	ad char(25),
	soyad char(25),
	maas int,
	katilmaTarihi datetime,
	calisan_birim_id int not null,

	foreign key (calisan_birim_id)
		references birimler(birim_id)
)

create table ikramiye(
	ikramiye_calisan_id int not null,
	ikramiye_ucret int,
	ikramiye_tarih datetime,

	foreign key (ikramiye_calisan_id)
		references calisanlar(calisan_id)
)

create table unvan(
	unvan_calisan_id int not null,
	unvan_calisan char(25),
	unvan_tarih datetime

	foreign key (unvan_calisan_id)
		references calisanlar(calisan_id)
)
				--SORGULAR

--3) “Yazýlým” veya “Donaným” birimlerinde çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz. (Tek bir sorgu ile) 
--select c.ad,c.soyad,c.maas from calisanlar c inner join birimler b on c.calisan_birim_id = b.birim_id where b.birim_ad in ('donaným','yazýlým') 


--4) Maaþý en yüksek olan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz. (Tek bir sorgu ile) 
--select ad,soyad,maas from calisanlar  where maas = (select max(maas) from calisanlar)  










--5) Birimlerin her birinde kaç adet çalýþan olduðunu ve birimlerin isimlerini listeleyen sorguyu yazýnýz. (Tek bir sorgu ile)
--(Örneðin; x biriminde 3 çalýþan var gibi düþünebilirsiniz.) (Gruplamalý sorgu ile) 

  -- select b.birim_ad, count(c.calisan_id) from calisanlar c join birimler b on (c.calisan_birim_id = b.birim_id) group by b.birim_ad








--6) Birden fazla çalýþana ait olan unvanlarýn isimlerini ve o unvan altýnda çalýþanlarýn sayýsýný listeleyen sorguyu yazýnýz. (Tek bir sorgu ile) 
--select u.unvan_calisan, count(u.unvan_calisan_id) from unvan u group by u.unvan_calisan having count(u.unvan_calisan_id) > 1







--7) Maaþlarý “50000” ve “100000” arasýnda deðiþen çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz. (Tek bir sorgu ile) 
--select ad,soyad,maas from calisanlar where maas  between 50000 and 100000



--8) Ýkramiye hakkýna sahip çalýþanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazýnýz. (Tek bir sorgu ile) 
--select c.ad,c.soyad,b.birim_ad,u.unvan_calisan,i.ikramiye_ucret from calisanlar c 
--join birimler b on(c.calisan_birim_id = b.birim_id)
--join unvan u on (c.calisan_id = u.unvan_calisan_id)
--join ikramiye i on (c.calisan_id = i.ikramiye_calisan_id) 







--9) Ünvaný “Yönetici” ve “Müdür” olan çalýþanlarýn ad, soyad ve ünvanlarýný listeleyen sorguyu yazýnýz. (Tek bir sorgu ile) 
--select c.ad,c.soyad,u.unvan_calisan from calisanlar c join unvan u on (c.calisan_id = u.unvan_calisan_id) where u.unvan_calisan in ('yönetici','müdür');









--10) Her bir birimde en yüksek maaþ alan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz. (Tek bir sorgu ile) 
--select c.ad,c.soyad,c.maas,b.birim_ad from calisanlar c join birimler b on (c.calisan_birim_id = b.birim_id)
--where c.maas in (select max(c.maas) from calisanlar c group by c.calisan_birim_id)
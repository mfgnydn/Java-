select ContactName Adi,City Sehir from Customers
select * from Customers where City = 'London'
sELECT * fRom Products Where categoryId=1 or categoryId=3
sELECT * fRom Products Where categoryId=1 and Price>=10

--order by sırala demek--   --desc azalan-- --asc artan--
select * from Products order by Price desc
select * from Products where categoryID=1 order by Price asc

--count komutu saymak demek--
select count(*) from Products    --Kaç adet product var onu belirtir--
select count(*) Adet from Products where categoryID=2

--group by komutu istenen categorilerin listelenmesini sağlar--
select categoryID,count(*) from Products group by categoryID

--having komutu count comutunun olduğu kümülatiflere uygulanır--,
select categoryID,count(*) from Products group by categoryID having count(*)<10 --kategori id'si gruplandığında 10 elemandan daha az  elemana sahip olanları grupla ve listele demektir--
select categoryID,count(*) from Products where Price>20 group by categoryID having count(*)<10

--join komutu birleştirmek demek--
select  Products.ProductID,Products.ProductName,Products.Price,Categories.CategoryName
from Products  inner join Categories
on Products.CategoryID=Categories.CategoryID
--Yukarıdaki kod satırı ürünün ve kategori verilerinin kategori id'lerinin eşit olduğu durumlarda ürün ve kategori veri tabanlarını birleştirir ve ürün id'si,ürün ismi,ürün fiyatı ve kategori ismini listeler --

select  Products.ProductID,Products.ProductName,Products.Price,Categories.CategoryName
from Products  inner join Categories
on Products.CategoryID=Categories.CategoryID
where Products.Price>10

--inner join arasına yazıldığı iki tabloyu birleştirerek listeler fakat left join sol tarafta olup sağ tarafta olmayanları listeler right join ise sağda olup solda olmayanları birleştirir ve listeler
select * from Products p left join OrderDetails od
on p.ProductID=od.ProductID

--bu kod satırı sol da olup sağda olmayanları birleştirir veortak olarak listeler daha sonra customer tablosunda bulunan fakat orders tablosunda bulunmayan verileri listeler yani is null komutu customer(müşteri) olup order(sipariş) vermeyen müşterileri listeler
select * from Customers c left join Orders o
on c.CustomerID=o.CustomerID
where o.CustomerID is null

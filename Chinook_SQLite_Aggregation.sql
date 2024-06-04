--1. Function
SELECT MAX (UnitPrice)
FROM Track t 
--Digunakan untuk menunjukan harga tertinggi pada kolom Track
--Untuk fungsi lainnya coba cari mandiri (di W3)

--2. Aggregation
--Berapa harga rata-rata track yang dijual perkomposer?
SELECT Composer, AVG(UnitPrice) as HargaRataan
--Berikan 'as' agar tidak memunculkan kebingungan di Order By
FROM Track t 
GROUP BY Composer 
ORDER BY HargaRataan
--Bisa menggunakan angka (nomor kolom jika diketahui)
--Ex: ORDER BY 2 (HargaRataan)

--3. Case When
SELECT CustomerId , Country , 
	CASE Country 
	WHEN 'USA' THEN 'Domestic'
	--Gabisa make IF :')
	ELSE 'Foreign' END as CustomerGroup
	--Jangan lupa 'END'
FROM Customer c 

--NOTE: Untuk merapihkan ke format SQL: Block Code, Right Click, Format, Format SQL

--Challange: Buat Query yang menunjukan banyaknya invoice berdasarkan BillingCountry
--Hint: Gunakan Count!
SELECT CustomerId , COUNT(BillingCountry)
FROM Invoice i 
GROUP BY BillingCountry 
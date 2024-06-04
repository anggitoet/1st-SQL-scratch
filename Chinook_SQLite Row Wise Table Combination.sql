--ARTIST mengandung nama 'john'
--Tracknya mengandung 'hop'
SELECT Name , "Artist" as entity
--This section 'as' is indicating a new collumn as 'entity' 
FROM Artist 
WHERE Name LIKE "%john%"
UNION 
SELECT Name , "Track" as entity
--Following the latest label
--Dalam penggunaan union/intersect/except -> nama kolom harus sama
FROM Track t 
WHERE Name LIKE "%hop%"
--Dalam kasus ini, row tidak menggunakan 'Artist.Name'

--Challange
--Tampilkan nama depan customer yang bukan nama depan employee
--Hint: Except
SELECT FirstName 
FROM Customer 
--Ada 59 baris data
EXCEPT 
SELECT FirstName 
FROM Employee  
--Ada 55 baris data
--Menunujukan adanya 4 orang (data) dengan nama yg sama

--Union
SELECT FirstName 
FROM Customer 
UNION
SELECT FirstName 
FROM Employee  
--Menjadi 63 baris data
--Menggabungkan 4 orang dengan nama (nilai) yang sama

--Union All
SELECT FirstName 
FROM Customer 
UNION ALL
SELECT FirstName 
FROM Employee 
--Menjadi 67 baris data
--Menggabungkan semua data (nilai) yang ada
--Ada nama yang double (tergabung dari 2 kolom-> FirstName Cust dan Employee)

--Intersect
SELECT FirstName 
FROM Customer 
INTERSECT
SELECT FirstName 
FROM Employee 
--Ada berapa kali nama 'Steve' dan 'Robert' muncul?
--PEER buat Anggita
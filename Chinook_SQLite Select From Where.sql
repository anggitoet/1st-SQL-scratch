--1. Basic Selection
SELECT email, Phone
FROM Customer c 

--2. Filter
SELECT FirstName, LastName, Email
FROM Customer c 
WHERE c.Country = 'Brazil' 

--2.1 Filter Except
SELECT FirstName, LastName, Email
FROM Customer c 
WHERE c.Country != 'Brazil' 
--gunakan != atau <>	

--3. Mengurutkan Data
SELECT FirstName, BirthDate 
FROM Employee e 
ORDER BY FirstName 

--3.1 Mengurutkan Data dari belakang
SELECT FirstName, BirthDate 
FROM Employee e 
ORDER BY FirstName DESC 

--4. Limit
SELECT *
--Tanda * mengindikasikan semua data yang ada
FROM Employee e 
LIMIT 2

--5. Menggunakan Alias
SELECT FirstName as NamaDepan
--Untuk mengaliaskan nama kolom di query (bukan data base)
--Sebenarnya tidak perlu menggunakan 'as' namun agar rapih saja
FROM Employee e 
--Huruf 'e' adalah saran alias otomatis dari SQL

--6. WHERE-LIKE
SELECT Name 
FROM Artist 
WHERE Name LIKE "%JOHN%"
--LIKE digunakan untuk mencari pola dengan tipe string
--tanda '%' mengindikasikan string (kata) sebelum dan/atau sesudah

--CHALLANGE
--1. Buat query untuk mengambil nama depan, nama belakang customer
SELECT FirstName , LastName 
FROM Customer c 

--2. Buat query mengambil seluruh informasi karyawan yang bertitle IT Staff
SELECT *
FROM Employee e 
WHERE Title = 'IT Staff' 
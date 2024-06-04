--Penggabungan 2 tabel
SELECT
	*
FROM
	Album as ALb
INNER JOIN Artist as Art
	ON
	Alb.ArtistId = Art.ArtistId
	--Biasakan lebih dulu dari From agar bisa lebih mudah untuk mengoprasikan data
	--Jika tidak menggunakan ON akan ada 2 'ArtistId'
WHERE
	Art.Name = 'U2'
	--Panggil dulu dari tabel mana agar tidak membingungkan program

--Penggabungan 3 tabel
SELECT
	*
FROM
	Track as Tra
LEFT JOIN Album as Alb
	ON
	Tra.AlbumId = Alb.AlbumId
LEFT JOIN Artist as Art ON
	Art.ArtistId = Alb.AlbumId

--Challange
--Buatlah query yang menunjukan InvoiceID & Sales Agent (employee)
--Berurut dengan nama agent (employee)
SELECT
	Inv.InvoiceId , Emp.FirstName 
FROM
	Invoice as Inv
LEFT JOIN Customer as Cust
	ON
	Inv.CustomerId = Cust.CustomerId
LEFT JOIN Employee as Emp ON
	Cust.SupportRepId = Emp.EmployeeId
ORDER BY
	Emp.FirstName 
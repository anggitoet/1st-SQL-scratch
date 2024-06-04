--Ambil semua track dengan genre rock
SELECT *
FROM Track
WHERE GenreId in
(SELECT GenreId 
FROM Genre
WHERE Genre.Name = 'Rock')

--Challange
--Carilah agent yg pernah melayani top 5 customer dgn spending paling banyak
--Tips: cari query terdalam dahulu:

--Pendekatan (Cara) 1 CTE
SELECT c.SupportRepId , top_spender.CustomerId 
FROM Customer c  
RIGHT JOIN
	(SELECT i.CustomerId, SUM(Total)
	FROM Invoice i 
	GROUP BY i.CustomerId
	ORDER BY Total DESC 
	LIMIT 5) as top_spender
ON c.CustomerId = top_spender.CustomerId

--Pendekatan (Cara) 2 CTE
WITH top_spender as
	(SELECT i.CustomerId, SUM(Total)
	FROM Invoice i 
	GROUP BY i.CustomerId
	ORDER BY Total DESC 
	LIMIT 5)
SELECT c.SupportRepId , top_spender.CustomerId 
FROM Customer c RIGHT JOIN top_spender
ON c.CustomerId = top_spender.CustomerId

--CTE dalam CTE
WITH top_spender as
	(SELECT i.CustomerId, SUM(Total)
	FROM Invoice i 
	GROUP BY i.CustomerId
	ORDER BY Total DESC 
	LIMIT 5),
--Gunakan koma (,) untuk memisahkan CTE
--Jangan gunakan WITH lagi
lowest_spender AS 
	(SELECT i.CustomerId, SUM(Total)
	FROM Invoice i 
	GROUP BY i.CustomerId
	ORDER BY Total
	LIMIT 5)
SELECT c.SupportRepId , top_spender.CustomerId 
FROM Customer c RIGHT JOIN top_spender
ON c.CustomerId = top_spender.CustomerId
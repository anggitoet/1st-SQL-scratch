SELECT InvoiceId , SUM(Quantity) as sum_qty
FROM InvoiceLine il 
--WHERE tidak bisa digunakan untuk filter kolom hasil aggregasi
GROUP BY InvoiceId 
HAVING SUM(Quantity) > 10
--HAVING adalah syntax yang digunakan untuk filter data terhadap hasil AGGREGASI
--HAVING diletakan setelah (atau di posisi) WHERE

SELECT *
FROM InvoiceLine il 
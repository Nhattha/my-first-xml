-- To find the top employee seller

select emp.employeeid empID, emp.firstname, emp.lastname, invi.unitprice, invi.quantity, emp.birthdate
from employees emp
JOIN customers cus on emp.employeeid = cus.supportrepid
join invoices inv on cus.customerid = inv.customerid
join invoice_items invi on inv.invoiceid = invi.invoiceid

-- To demonstrate the growth of sale revenue 

SELECT gen.name, invi.quantity, invi.UnitPrice, inv.invoicedate, strftime("%Y", inv.invoicedate) from genres gen
JOIN tracks tra on tra.genreid = gen.genreid
join invoice_items invi on invi.trackid = tra.trackid
join invoices inv on inv.invoiceid = invi.InvoiceId

-- To find top country for expanding business
SELECT cus.country, strftime("%Y",inv.invoicedate), invi.quantity, invi.unitprice from customers cus
join invoices inv ON inv.customerid = cus.customerid
join invoice_items invi on invi.InvoiceId = inv.invoiceid

SELECT cus.country, strftime("%Y",inv.invoicedate), invi.quantity, invi.unitprice from customers cus
join invoices inv ON inv.customerid = cus.customerid
join invoice_items invi on invi.InvoiceId = inv.invoiceid

-- To check NULL value
select count(*) from invoice_items WHERE quantity is NULL

-- To count classical value
SELECT * from tracks tra
join genres gen on gen.genreid = tra.genreid
where gen.name = "Classical"

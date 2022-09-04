-- To find the top employee seller
select emp.employeeid empID, emp.firstname, emp.lastname, invi.unitprice, invi.quantity, emp.birthdate
from employees emp
JOIN customers cus on emp.employeeid = cus.supportrepid
join invoices inv on cus.customerid = inv.customerid
join invoice_items invi on inv.invoiceid = invi.invoiceid

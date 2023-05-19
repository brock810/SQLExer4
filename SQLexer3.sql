SELECT P.Name as ProductName, C.name as CategoryName
from products As P
inner join categories as C
on C.CategoryID = P.CategoryID
WHERE C.Name = "Computers";

SELECT products.Name as "Product Name", products.Price as "Product Price", reviews.Rating
from products
inner join reviews on reviews.ProductID = products.ProductID
WHERE reviews.Rating = 5;

Select e.FirstName, e.LastName, Sum(s.Quantity) as Total
from sales as s 
inner join employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID 
order by total desc
limit 2;
select * from sales 
where EmployeeID = 33809;

select d.Name as 'Department Name', C.name as 'Category Name'from departments as d 
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.Name = 'Appliances' or c.Name = 'Games';

select p.Name, Sum(s.quantity) as 'total sold', sum(s.Quantity* s.PricePerUnit) as 'total price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID =97;

select p.Name, r.Reviewer, r.Rating, r.Comment 
from products as p 
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;

select e.EmployeeID, e.FirstName, e.LastName, p.Name, SUM(s.Quantity) as TotalSold
from sales as s
inner join employees as e on e.EmployeeID = s.EmployeeID
inner join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID
order by e.FirstName;

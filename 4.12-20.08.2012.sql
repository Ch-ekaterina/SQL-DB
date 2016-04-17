--Вывести количество запросов за период с 12 по 20 августа 2012г.
USE UipDB
GO
select count(plategi.PlategTime)
from plategi
where PlategTime between '12.08.2012' and '20.08.2012'
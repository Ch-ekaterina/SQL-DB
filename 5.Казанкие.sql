--Вывести дату, сумму платежей (успешных и не успешных),  ФИО плательщиков, которые проживают в Казани.
use UipDB
go


SELECT Summ, PlategTime, Firstname, Lastname, Middlename, Adress
from (
  SELECT p.Summ, p.PlategTime, c.Firstname, c.Lastname, c.Middlename, a.Adress
    
  from  Adresa a
	join Clients c on a.Id=c.Adres_id
	join Zapros z on c.Id=z.Client_id
	join Plategi p on p.id=z.plateg_id

  where a.Adress Like '%казан%'
) a
where Adress Like '%казан%'
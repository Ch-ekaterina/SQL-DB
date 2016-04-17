--Вывести максимальную сумму успешной оплаты и ФИО плательщика.
use UipDB
go

SELECT Lastname, Firstname, Middlename, summ
from (
  SELECT c.Firstname, c.Lastname, c.Middlename, p.summ,
    MAX(p.summ) over () as maxs
  from Plategi p
    join Zapros z on p.id=z.plateg_id
    join Clients c on z.client_id=c.id
  where p.Plategstatus=2
) p
where summ=maxs
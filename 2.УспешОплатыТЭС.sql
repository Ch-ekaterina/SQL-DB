--Вывести все успешные  оплаты по услуге (все поля plategi) – Оплата услуг Татэнергосбыта.
USE UipDB
GO
select p.*
from Plategi p, Zapros z, Uslugi u 
where p.id=z.plateg_id and z.uslugi_id=u.id and
	u.name = 'Оплата услуг Татэнергосбыта' and p.Plategstatus=2
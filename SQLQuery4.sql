--������� ���� ������ (�������� �������), ��� �������, ��� �����, ����� �������, �������� ������, 
--��� �����������, ����� �����������, 
--������� ���� ����������� �� ������ ������ � ������ ���� � ������ � 1 �� 31 ������� 2012�.

use UipDB
go

select plategTime, PlategStatus , Code, Card_Nom, Summ, Name, Lastname, Firstname, Middlename, Adress--,	Value
from (select p.PlategTime, p.PlategStatus, p.Code, p.Card_Nom, p.Summ, u.Name, c.Firstname, c.Lastname, c.Middlename, a.Adress--,	pp.Value
	  from Adresa a
		join Clients c on a.Id=c.Adres_id
		join Zapros z on c.Id=z.Client_id
		join Uslugi u on u.Id=z.Uslugi_id
		join Plategi p on p.Id=z.Plateg_id
		--join Param_plat pp on pp.Plateg_id=p.Id
	  Where u.Name like '%���%' 
	 )p
Where PlategTime between '1.08.2012' and '31.08.2012' and PlategStatus=2
--������� ��� ��������  ������ �� ������ (��� ���� plategi) � ������ ����� ��������������.
USE UipDB
GO
select p.*
from Plategi p, Zapros z, Uslugi u 
where p.id=z.plateg_id and z.uslugi_id=u.id and
	u.name = '������ ����� ��������������' and p.Plategstatus=2
--������������� ������� (�������� � �� ��������)  �� �������� ������. ������� ������ � ���������� �����  �� ���.
use UipDB
go

SELECT u.Name, COUNT(p.id)
from  Uslugi u
	join Zapros z on u.Id=z.Uslugi_id
	join Plategi p on p.id=z.plateg_id
Group by u.Name
  


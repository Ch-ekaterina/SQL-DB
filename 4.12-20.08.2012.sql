--������� ���������� �������� �� ������ � 12 �� 20 ������� 2012�.
USE UipDB
GO
select count(plategi.PlategTime)
from plategi
where PlategTime between '12.08.2012' and '20.08.2012'
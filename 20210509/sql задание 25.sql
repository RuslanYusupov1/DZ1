Задание: 25 (Serge I: 2003-02-14) задание на 2 очка
Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker


select maker
from Product as pr join PC
on pr.model = PC.model
where pc.ram = (select min(ram) from PC)
	and speed = (
		select min(speed) 
		from PC 
		where ram = (select min(ram) from PC)
				)
intersect
select maker
from Product
where type = 'Printer'
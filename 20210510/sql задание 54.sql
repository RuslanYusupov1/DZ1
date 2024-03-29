3) Задание: 54 (Serge I: 2003-02-14) задание на два очка
С точностью до 2-х десятичных знаков определите среднее число орудий всех линейных кораблей (учесть корабли из таблицы Outcomes).


select cast(avg(numguns * 1.0) as decimal(4,2))
from (
		select s.name, s.class from ships as s
		union
		select o.ship, o.ship from outcomes as o
	) t
	join classes c on t.class=c.class
where type='bb'
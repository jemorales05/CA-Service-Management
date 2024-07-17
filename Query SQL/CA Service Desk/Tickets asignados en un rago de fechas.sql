-- Contador de tickets asignados en un rango de fechas especificas agrupados por analistas
use mdb
select cnt.last_name as Analista, COUNT(0) as [Tickets asignados]
from call_req cr
inner join  ca_contact cnt
on cr.assignee = cnt.contact_uuid
where dateadd(ss, open_date ,'19700101')>'20160801' -- formato año mes dia
and dateadd(ss, open_date ,'19700101')<'20160831' -- formato año mes dia
group by cnt.last_name
order by [Tickets asignados] DESC

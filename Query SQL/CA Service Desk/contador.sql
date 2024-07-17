-- Contador de tickets Reportados en un rango de fechas especificas agrupados por analistas
use mdb
select cnt.last_name as [Reportado por],COUNT(0) as [# Tickets Reportados]
from call_req cr
inner join  ca_contact cnt
on cr.log_agent = cnt.contact_uuid
where dateadd(ss, open_date ,'19700101')>'20160801'
and dateadd(ss, open_date ,'19700101')<'20160831'
group by cnt.last_name
order by [# Tickets Reportados] DESC
insert into meeting_room_reserve ( reserve_record_id , meeting_topic , meeting_start_time , meeting_end_time , reserve_record_status ,
 meeting_attendee , meeting_additional , available_id_desc , schedule_id , outlook_id , create_by , update_by , sys_ctime , sys_utime )
 values (1095966455733710900, 'sunyilu预定的会议室', '20:00', '20:30', 1, 'sunyilu','', '16138',
 '1293435695041347590', '1293435695041347590', 'sunyilu', 'sunyilu', now(), now());
1293435695041347591	astonguo预定的会议室	11:00	13:30	1	astonguo		157167;157168;157169;157170;157171;		1293435695041347590	astonguo	astonguo	2020-08-17 09:01:36	2020-08-17 09:01:36


select distinct b.* from  meeting_room_reserve  b
join meeting_room_available c on b.reserve_record_id = c.reserve_record_id
where c.room_id = 5 and c.reserve_date = "2020-08-27" and c.reserver_begin > "08:00";

select id, room_id, reserve_date, reserver_begin, reserver_end 
from meeting_room_available where reserve_date = '2020-08-27' and room_id = 1;

update meeting_room_available set reserve_record_id = 1095966455733710899 
where id in ('159886','159887','159888','159889','159890');

xavier

louis

select * from wesure_wof_upms_sit.meeting_room_available mra 
where id = any 
(select SUBSTRING_INDEX(available_id_desc ,';',1) from wesure_wof_upms_sit.meeting_room_reserve mrr where sys_ctime between '2020-10-12 16:00:00'  and '2020-10-20 11:00:00')
and room_id = 47


select * from wesure_wof_upms_sit.meeting_room_available mra 
where id = any 
(select SUBSTRING_INDEX(available_id_desc ,';',1) from wesure_wof_upms_sit.meeting_room_reserve mrr where sys_ctime between '2020-10-12 16:00:00'  and '2020-10-20 11:00:00')
and room_id = 47

select *,SUBSTRING_INDEX(available_id_desc ,';',1) as str from wesure_wof_upms_sit.meeting_room_reserve mrr where sys_ctime between '2020-10-12 16:00:00'  and '2020-10-20 11:00:00'




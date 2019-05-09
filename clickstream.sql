select u.fname, u.lname,
case ou.type
	when 1 then 'Student'
	when 2 then 'Parent'
	when 3 then 'Staff'
	when 4 then 'Moderator'
	when 6 then 'Principal'
	when 8 then 'Guidance'
	when 9 then 'Security'
end,
o.name, count(p.rec_id)
from bt_live.user u, bt_clickstream_live.page p, bt_live.organization o,
bt_live.organization_user ou
where p.date_created >=  str_to_date('2016-09-04', '%Y-%m-%d')
and u.rec_id = p.user_id
and u.last_organization_id = o.rec_id
and ou.user_id = u.rec_id
and ou.organization_id in (43)
and p.url_path like '%resource%'
group by u.fname, u.lname, ou.type, o.name
INTO OUTFILE '/tmp/weekly_reports/oysd_click_counts7-6.txt';



select case ou.type
	when 1 then 'Student'
	when 2 then 'Parent'
	when 3 then 'Staff'
	when 4 then 'Moderator'
	when 6 then 'Principal'
	when 8 then 'Guidance'
	when 9 then 'Security'
end,
o.name,
count(p.rec_id)
from bt_live.user u, bt_clickstream_live.page p, bt_live.organization o,
bt_live.organization_user ou
where p.date_created >=  str_to_date('2016-09-04', '%Y-%m-%d')
and u.rec_id = p.user_id
and u.last_organization_id = o.rec_id
and ou.user_id = u.rec_id
and p.url_path like '%resource%'
and ou.organization_id in (43)
group by ou.type, o.name
INTO OUTFILE '/tmp/weekly_reports/weekly_rc_03_10.txt';

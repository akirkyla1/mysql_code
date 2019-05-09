
select organization_id, user_group,
	sum(Apps) as Apps,
	sum(Books) as Books,
	sum(Activities_Programs) as Activities_Programs,
	sum(Curricula) as Curricula,
	sum(Help_Services) as Help_Services,
	sum(Legal) as Legal,
	sum(Music) as Music,
	sum(News) as News,
	sum(Prof_Development) as Prof_Development,
	sum(Research) as Research,
	sum(Video) as Video,
	sum(Website) as Website,
    sum(total) as total
from
	(select 18 as organization_id , user_group, resource_category, count(*) as total,
		if(resource_category=1, count(*), 0) as Apps,
		if(resource_category=2, count(*), 0) as Books,
		if(resource_category=3, count(*), 0) as Activities_Programs,
		if(resource_category=4, count(*), 0) as Curricula,
		if(resource_category=5, count(*), 0) as Help_Services,
		if(resource_category=6, count(*), 0) as Legal,
		if(resource_category=7, count(*), 0) as Music,
		if(resource_category=8, count(*), 0) as News  , 
		if(resource_category=9, count(*), 0) as Prof_Development,    
		if(resource_category=10, count(*), 0) as Research,
		if(resource_category=11, count(*), 0) as Video,
		if(resource_category=12, count(*), 0) as Website
	from 
		(select p.organization_id, p.user_id, p.resource_category,
			gt.description user_group, gt.group_type_id
		from bt_clickstream_live.page p,  bt_live.organization_user ou, bt_etl.group_type gt
		where p.organization_id =  ou.organization_id and p.user_id = ou.user_id
			and ou.type = gt.group_type_id
			and p.organization_id = 18
			and p.date_created >= STR_TO_DATE('12/01/2015', '%m/%d/%Y')
		   and p.resource_category is not null) a
	group by organization_id, user_group, resource_category ) b
group by organization_id, user_group;

select organization_id, user_group,
	sum(Apps) as Apps,
	sum(Books) as Books,
	sum(Activities_Programs) as Activities_Programs,
	sum(Curricula) as Curricula,
	sum(Help_Services) as Help_Services,
	sum(Legal) as Legal,
	sum(Music) as Music,
	sum(News) as News,
	sum(Prof_Development) as Prof_Development,
	sum(Research) as Research,
	sum(Video) as Video,
	sum(Website) as Website,
    sum(total) as total
from
	(select 110 as organization_id , user_group, resource_category, count(*) as total,
		if(resource_category=1, count(*), 0) as Apps,
		if(resource_category=2, count(*), 0) as Books,
		if(resource_category=3, count(*), 0) as Activities_Programs,
		if(resource_category=4, count(*), 0) as Curricula,
		if(resource_category=5, count(*), 0) as Help_Services,
		if(resource_category=6, count(*), 0) as Legal,
		if(resource_category=7, count(*), 0) as Music,
		if(resource_category=8, count(*), 0) as News  , 
		if(resource_category=9, count(*), 0) as Prof_Development,    
		if(resource_category=10, count(*), 0) as Research,
		if(resource_category=11, count(*), 0) as Video,
		if(resource_category=12, count(*), 0) as Website
	from 
		(select p.organization_id, p.user_id, p.resource_category,
			gt.description user_group, gt.group_type_id
		from bt_clickstream_live.page p,  bt_live.organization_user ou, bt_etl.group_type gt
		where p.organization_id =  ou.organization_id and p.user_id = ou.user_id
			and ou.type = gt.group_type_id
			and p.organization_id = 110
			and p.date_created >= STR_TO_DATE('12/01/2015', '%m/%d/%Y')
			and p.date_created < STR_TO_DATE('12/31/2015', '%m/%d/%Y')
		   and p.resource_category is not null) a
	group by organization_id, user_group, resource_category ) b
group by organization_id, user_group










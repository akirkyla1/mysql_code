use bt_clickstream_live;

select organization_id, date_created,
  SUM(account_module) account_module,
  SUM(administration_module) administration_module,
  SUM(analytics_module) analytics_module,
  SUM(dashboard_module) dashboard_module,
  SUM(reports_module) reports_module,
  SUM(resources_module) resources_module,
  SUM(messages_module) messages_module,
  SUM(notification_module) notification_module,
  SUM(root_module) root_module
from
  (select organization_id, date_created,
      if (module='account', pageviews, 0) account_module,
      if (module='administration', pageviews, 0) administration_module,
      if (module='analytics', pageviews, 0) analytics_module,
      if (module='dashboard', pageviews, 0) dashboard_module,
      if (module='reports', pageviews, 0) reports_module,
      if (module='resources', pageviews, 0) resources_module,
      if (module='root' OR module='home', pageviews, 0) root_module,
      if (module='notifications', pageviews, 0) notification_module,
      if (module='messages', pageviews, 0) messages_module
  from
    (select organization_id, date(date_created) date_created,
        if(locate('/',url_path,2)>0,SUBSTRING(url_path FROM 2 FOR locate('/',url_path,2)-2),'root') module, count(*) pageviews
    from page
    where organization_id is not null
    -- where organization_id = 110
	 and date_created >= STR_TO_DATE('01/01/2016', '%m/%d/%Y')
	 and date_created < STR_TO_DATE('01/31/2016', '%m/%d/%Y')
    group by organization_id, date(date_created), module) lng
  ) wide
group by organization_id, date_created;

select organization_id, date_created,
  SUM(account_module) account_module,
  SUM(administration_module) administration_module,
  SUM(analytics_module) analytics_module,
  SUM(dashboard_module) dashboard_module,
  SUM(reports_module) reports_module,
  SUM(resources_module) resources_module,
  SUM(messages_module) messages_module,
  SUM(notification_module) notification_module,
  SUM(root_module) root_module
from
  (select organization_id, date_created,
      if (module='account', pageviews, 0) account_module,
      if (module='administration', pageviews, 0) administration_module,
      if (module='analytics', pageviews, 0) analytics_module,
      if (module='dashboard', pageviews, 0) dashboard_module,
      if (module='reports', pageviews, 0) reports_module,
      if (module='resources', pageviews, 0) resources_module,
      if (module='root' OR module='home', pageviews, 0) root_module,
      if (module='notifications', pageviews, 0) notification_module,
      if (module='messages', pageviews, 0) messages_module
  from
    (select organization_id, date(date_created) date_created,
        if(locate('/',url_path,2)>0,SUBSTRING(url_path FROM 2 FOR locate('/',url_path,2)-2),'root') module, count(*) pageviews
    from page
    where organization_id is not null
    -- where organization_id = 110
	 and date_created >= STR_TO_DATE('01/01/2016', '%m/%d/%Y')
	 group by organization_id, date(date_created), module) lng
  ) wide
group by organization_id, date_created;

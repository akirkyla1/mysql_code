select "School", "Organization ID", "Report Number", "Status", "Date Created"
union
select  "New Visions", "17", number, 
case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_17.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Boody", "18", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_18.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Albertus Magnus", "23", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_23.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "M.S. 53", "24", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_24.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "I.S. 281", "25", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_25.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Humes","26", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_26.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "East Bronx Academy", "27", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_27.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Brooklyn Studio","28", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_28.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Meca","30", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_30.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')
union
select  "Dewey","31", number, case status
	when 0 then "Closed"
	when 1 then "New"
	when 2 then "Open"
	when 3 then "Under Review"
	when 4 then "Invalid"
    when 5 then "Non Bullying"
    when 6 then "Submitted to state"
    when 7 then "False Report"
End 	
, r.date_created 
from bt_live_account_data_31.report r 
where r.date_created >=  str_to_date('2016-01-11', '%Y-%m-%d')


INTO OUTFILE '/tmp/weekly_reports/reports_01_22_WKLY.txt';
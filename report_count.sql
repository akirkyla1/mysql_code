select "School", "Report Number", "Status", "Date Created"
union
select  "New Visions", number, 
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "Boody", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "Albertus Magnus", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "M.S. 53", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "I.S. 281", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "Humes", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
union
select  "East Bronx Academy", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')
select  "Brooklyn Studio", number, case status
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
where r.date_created >=  str_to_date('2015-08-30', '%Y-%m-%d')


INTO OUTFILE '/tmp/weekly_reports/reports_11_30.txt';
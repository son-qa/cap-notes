set @uid = 80056441 ;
select * from max_leadgen_sponsor_ad where user_id = @uid ;
select * from tcpa_survey_optin where user_id = @uid ;

-- select * from user_master where user_id = @uid ;

-- select * from max_leadgen_sponsor_ad where stats_date > '2023-03-17' 
-- and (url_lead_status like '%Auto%' or url_lead_status like '%auto%') order by created_on desc;
-- select user_id from user_master where user_cookie_id = 'f78c1bb9-20d6-4fe4-9376-1a45885564c3'
-- 75573441 3 lead ids

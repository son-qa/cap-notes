-- Set @mail = 'vidipi4260@gam1fy.com' ;
Set @uid = 81664719 ;
select * from user_master where user_id = @uid ;
select * from user_master_pii where user_id = @uid ;
select * from max_leadgen_sponsor_ad where user_id = @uid ;
select * from tcpa_survey_optin where user_id = @uid ;
select * from onetrust_requests where user_id = @uid ;
-- select * from leadgen_unsubscribed_list where email_hash = md5(@mail) ;

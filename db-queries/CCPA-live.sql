-- Set @mail = 'dilewi9771@jthoven.com' ;
Set @uid = 78435134 ;
select * from user_master where user_id = @uid ;
select * from user_master_pii where user_id = @uid ;
select * from max_leadgen_sponsor_ad where user_id = @uid ;
select * from tcpa_survey_optin where user_id = @uid ;
select * from onetrust_requests where user_id = @uid ;
-- select * from leadgen_unsubscribed_list where email_hash = md5(@mail) ;

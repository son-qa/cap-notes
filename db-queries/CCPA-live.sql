-- Set @mail = 'jateke6133@meidecn.com' ;
Set @uid = 84791146 ;
select * from user_master where user_id = @uid ;
select * from user_master_pii where user_id = @uid ;
select user_id, lead_id, request_url, request_data, responce_url, ping_url_status, url_lead_status, offer_sold_at from max_leadgen_sponsor_ad where user_id = @uid ;
-- select * from tcpa_survey_optin where user_id = @uid ;
select * from onetrust_requests where user_id = @uid ;
-- select * from leadgen_unsubscribed_list where email_hash = md5(@mail) ;


-- SELECT * from email_monetization.email_config_master ecm ;
-- SELECT * from email_monetization.sms_config_master scm ;

set @stackid = 49 ;
select * from campaignmanager.offer_stack_master osm where id = @stackid ;
-- SELECT * from campaignmanager.user_offer_delivery uoh WHERE offer_stack_master_id = @stackid ;
-- select * from campaignmanager.user_offer_history WHERE offer_stack_master_id = @stackid and created_time >= curdate() ;
-- select * from campaignmanager.user_offer_failure_history where user_id = @stackid ;
select * from  campaignmanager.users where id in
(select user_id from campaignmanager.user_offer_history WHERE offer_stack_master_id = @stackid and created_time >= curdate()) ;

select * from offerwall_conversion order by conversion_id desc ;
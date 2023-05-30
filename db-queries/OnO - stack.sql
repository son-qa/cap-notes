set @stackid = 1669 ;
select * from campaignmanager.offer_stack_master osm where id = @stackid ;
SELECT * from campaignmanager.user_offer_delivery uoh WHERE offer_stack_master_id = @stackid ;
-- delete from campaignmanager.user_offer_delivery where stats_date >= curdate() and offer_id in (1134, 1136) ;
-- select 
-- select * from campaignmanager.user_offer_failure_history uofh WHERE offer_stack_master_id = @stackid ;
-- SELECT * from campaignmanager.user_offer_delivery uod WHERE offer_stack_master_id = @stackid and mail_sent=1 ;

-- use campaignmanager ;
-- select * from campaignmanager.offer_stack_master osm where id = @stackid ;
-- SELECT * from campaignmanager.stack_to_offer_mapping stom where offer_stack_id = @stackid ;
-- SELECT * from campaignmanager.auto_re_ranking_history arrh where offer_stack_id = @stackid ;
-- SELECT * from campaignmanager.user_offer_history uoh WHERE offer_stack_master_id = @stackid ; -- processed users
-- SELECT * from campaignmanager.user_offer_delivery uod WHERE mail_sent=1 ; -- delievered users
-- select * from campaignmanager.user_offer_tracking where offer_stack_master_id = @stackid ;																																																		
-- select * from campaignmanager.user_offer_failure_history uofh WHERE offer_stack_master_id = @stackid ;
-- select offer_id, event, count(event) from campaignmanager.user_offer_tracking where offer_id in (141, 143, 1017, 1019, 1018) and event in ('sent', 'delivered', 'click') and stats_date between (curdate() - interval 90 day) and curdate() group by offer_id, event ;
-- select * from campaignmanager.delivery_rule_set where active = 1;
-- select * from campaignmanager.automation;
-- select * from campaignmanager.event_filter_options;

-- SELECT * FROM campaignmanager.users ;
-- SELECT * FROM campaignmanager.user_company_mapping where user_id = 82;
-- SELECT * FROM campaignmanager.company ;

-- select name from campaignmanager.offers where id in (SELECT offer_id from campaignmanager.stack_to_offer_mapping stom where offer_stack_id = 939) order by created_time desc;

-- SELECT * FROM campaignmanager.phone_meta_data where id in 
-- (SELECT phone_meta_data_id FROM campaignmanager.users u where id in (82));

-- select * from campaignmanager.phone_meta_data ;

-- SELECT * from campaignmanager.user_offer_delivery uod WHERE offer_id in (141 , 143, 1017, 1019, 1018, 580, 581, 582) and stats_date = curdate();

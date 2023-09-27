select experiment_slug, experiment_name, experiment_type, experiment_schema, config_data from ab_experiment_v2 where site_id = 1
and experiment_slug not in 
('FSPU-AI-SS-Branded-Dynamic-Flow', 'FSPU-Branded-Personalized-Appwall') ;

select experiment_slug, experiment_name, experiment_type, experiment_schema, config_data from ab_experiment_v2 where site_id = 2
and experiment_slug not in 
('TAS-AI-Instant-Giveaway-QA', 'TAS-Timer-Lander') ;

-- https://freesamplesprousa.com/?test=1&cid=21eo8&exp=FSPU-Branded-Personalized-Appwall
-- https://theamericansweepstakes.com/?test=1&cid=n9gb2&exp=TAS-Timer-Lander

-- select * from campaign_master where site_id in (1)
-- and campaign_slug not in ('has03', 'vv3dp') and is_active = 1 ;
-- select * from campaign_master where site_id in (2)
-- and campaign_slug not in ('xa9mp', '60ean') and is_active = 1 ;
-- select * from campaign_master where site_id in (5)
-- and campaign_slug not in ('6xymj') ;
-- select * from campaign_master where site_id in (6)
-- and campaign_slug not in ('xnupe') ;
-- select * from campaign_master where site_id in (14)
-- and campaign_slug not in ('wwzji') ;

-- has03
-- xa9mp
-- 6xymj
-- xnupe
-- wwzji
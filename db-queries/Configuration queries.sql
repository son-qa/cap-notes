SELECT * FROM `leadgen-new`.ab_experiment_v2 where experiment_id in (978, 1000, 927, 929, 977, 1073, 1076, 1064);

select * from advertiser_offers where offer_name like '%edu%';
select * from advertiser_offers where offer_id in (446, 447, 448);

select * from advertiser_offers where 
offer_unique_id in ('a8e7c46a-4eab-46a9-b57a-7c7391c54fd0', '075bdcf1-925d-4261-9b96-9f2fb9a85786');

select * from campaign_master where campaign_id in (200, 201);
-- campaign_slug like '%QA%';

select campaign_id, campaign_config from campaign_master where campaign_slug like 'emily1';

select * from advertiser_offer_creatives where offer_unique_id in
('2d383382-0983-40b9-8889-16f45eae1111', '9ca2feeb-f037-41c2-befe-c4e2ad90250f',
'3240be96-270b-461f-ba3a-da58a1a098df', '8db4579e-61d5-4292-a5ee-2d7fed120709');


select * from advertiser_offer_creatives where creative_id=34;

select * from advertiser_offers where offer_name like 'Offer2%';

select * from advertiser_master where advertiser_id='591bcb75-490c-4faa-ae92-51fb8fb92e62'; -- (ccpa) advertiser

SELECT * FROM `leadgen-new`.ab_experiment_v2_experiment_flow_mapping where experiment_id=956;

SELECT * FROM `leadgen-new`.ab_experiment_v2 where experiment_id in (1001982);

select * from leadgen_sites ;
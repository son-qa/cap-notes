/*

 stage offers
select -- *
offer_id, offer_name, has_offer_id, offer_unique_id, offer_config
-- , JSON_EXTRACT(offer_config, '$.exclusive_tag') as tag
from advertiser_offers where offer_unique_id  in 
('21ae6176-ec96-4c98-a44b-79e0009e4cc1',
'21ae6176-ec96-4c98-a44b-79e0009e4cc123',
'21ae6176-ec96-4c98-a44b-79e00e4cc234',
'21ae6176-ec96-4c98-a44b-79e0009e4cc345',
'21ae6176-ec96-4c98-a44b-79e0009e4cc456',
'21ae6176-ec96-4c98-a44b-79e0009e4cc567') ;


select offer_id, has_offer_id, offer_name, offerwall_title, offer_unique_id, offer_config
from advertiser_offers
where offer_unique_id in
('21ae6176-ec96-4c98-a44b-79e0009e4cc1',
'21ae6176-ec96-4c98-a44b-79e0009e4cc123',
'21ae6176-ec96-4c98-a44b-79e00e4cc234',
'21ae6176-ec96-4c98-a44b-79e0009e4cc345',
'21ae6176-ec96-4c98-a44b-79e0009e4cc456',
'21ae6176-ec96-4c98-a44b-79e0009e4cc567',
'7b91fd8d-f03d-4f1a-911d-d56fa16ad40b',
'a58b7d51-25c2-4b0e-8598-b14ec11e9b75',
'28ce7104-ec15-4ccc-a4b2-9dde28aaa4d8',
'8c80c984-d649-4ce1-afc5-83e6469e8bbe',
'015ec4b0-45c9-4f52-9655-8262d7a842ea',
'6de06915-551c-4e95-babc-cf87b64bdcae',
'd762aade-37dc-4deb-9ec9-2c1ea1ee3d41',
'69d41236-0662-4541-a069-68ccb78f6516',
'51dee7f6-d55a-4d42-b002-ed6cf72c92be',
'75a80572-2f53-4076-b08e-0af6063847c4',
'835a72d6-7952-4c61-92b0-970cd9a269d6',
'd4824baf-2460-4fda-8104-d87598accc49');

----------------
Auto rank tables

select * from offerwall_ranking_groups ;

set @ranking_group_id = 2 ;
select * from offerwall_ranking where ranking_group_id = @ranking_group_id ;
select * from offerwall_ranking where ranking_group_id = @ranking_group_id and offer_group_type_id = 1 order by offer_rank ;
select * from offerwall_ranking where ranking_group_id = @ranking_group_id and offer_group_type_id = 3 order by offer_rank ;
select * from offerwall_ranking where ranking_group_id = @ranking_group_id and offer_group_type_id = 4 order by offer_rank ;

--------------

select * from offerwall_conversion where email_md5 = 'a7ba005e00ca681716f353b4cdd0fa78' ;

--------------

Setting Dimension Hash

update offerwall_ranking
set dimension_hash = md5('Other_bronze')
where ranking_group_id = 2 and offer_group_type_id = 1 ;

update offerwall_ranking
set dimension_hash = md5('Other_gold')
where ranking_group_id = 2 and offer_group_type_id = 3 ;

update offerwall_ranking
set dimension_hash = md5('Other_diamond')
where ranking_group_id = 2 and offer_group_type_id = 4 ;

--------------

, json_extract(offer_config, '$.is_exclusive')
, json_extract(offer_config, '$.exclusive_tag')
'$.allowMultipleConversion', true

--------------

update advertiser_offers
set offer_config = json_set(offer_config, '$.is_exclusive', true, '$.exclusive_tag', 'sanket')
where offer_unique_id in

--------------

update ab_experiment_v2
set config_data = json_set(config_data, '$.exclusivityOW', true)
where experiment_slug = 'prs-stage-v3-test' ;

--------------

set @oui = "32beeb6e-6e96-4870-889d-1551614d94a9" ;
set @group_type_id = 4 ;
set @group_type_name = "diamond" ;
set @rank = 1 ;
set @json_m = json_object("exploration_type", "non-exploratory") ;
set @strat = "v2" ;
set @dim_hash = md5(concat("Other_", @group_type_name)) ;

INSERT INTO `leadgen-new`.`offerwall_ranking`
(
`ranking_group_id`,
`offer_group_type_id`,
`offer_group_type`,
`offer_id`,
`offer_name`,
`offer_unique_id`,
`offer_rank`,
`json_metadata`,
`strategy`,
`dimension_hash`)
VALUES
(1, @group_type_id, @group_type_name
, (select offer_id from advertiser_offers where offer_unique_id = @oui)
, (select offer_name from advertiser_offers where offer_unique_id = @oui)
, @oui
, @rank
, @json_m
, @strat
, @dim_hash) ;


--------------


INSERT INTO `leadgen-new`.`offerwall_conversion`
(`offer_id`, `offerwall_id`, `offer_group_type_id`, `email_md5`, `transaction_id`, `click_id`, `is_active`, `session_offerwall_conversion_id`,
`session_id`, `is_fulfilled`, `offerwall_metadata`)
VALUES
("9d614965-6a0e-4605-81a0-621072e900895", 99, 1, "17c566816898d063fe0222146e50fcbe", 1, 07010640720000080099617332313, 1
, "5bddf984-7526-453f-a7ca-b200b04e4ad5", "6017bcf7-7ece-4355-a330-2ae25ceb70ab", 0, json_object("site_id", 34)) ;



INSERT INTO `leadgen-new`.`offerwall_conversion`
(`offer_id`, `offerwall_id`, `offer_group_type_id`, `email_md5`, `transaction_id`, `click_id`, `is_active`, `session_offerwall_conversion_id`,
`session_id`, `is_fulfilled`, `offerwall_metadata`)
VALUES
('ce1bd2fb-00d3-4f26-be0e-225336bacf308', 99, 3, "17c566816898d063fe0222146e50fcbe", 1, 07010640720000080099617332313, 1
, "5bddf984-7526-453f-a7ca-b200b04e4ad5", "6017bcf7-7ece-4355-a330-2ae25ceb70ab", 0, json_object("site_id", 34)) ;



INSERT INTO `leadgen-new`.`offerwall_conversion`
(`offer_id`, `offerwall_id`, `offer_group_type_id`, `email_md5`, `transaction_id`, `click_id`, `is_active`, `session_offerwall_conversion_id`,
`session_id`, `is_fulfilled`, `offerwall_metadata`)
VALUES
('32beeb6e-6e96-4870-889d-1551614d94a910', 99, 4, "17c566816898d063fe0222146e50fcbe", 1, 07010640720000080099617332313, 1
, "5bddf984-7526-453f-a7ca-b200b04e4ad5", "6017bcf7-7ece-4355-a330-2ae25ceb70ab", 0, json_object("site_id", 34)) ;


--------------


UPDATE offerwall_ranking 
SET 
    offer_group_type = CASE
        WHEN offer_group_type_id = 1 THEN 'bronze'
        WHEN offer_group_type_id = 3 THEN 'gold'
        WHEN offer_group_type_id = 4 THEN 'diamond'
    END
    , offer_id = (SELECT 
            offer_id
        FROM
            advertiser_offers
        WHERE
            offer_unique_id = offerwall_ranking.offer_unique_id)
    , offer_name = (SELECT 
            offer_name
        FROM
            advertiser_offers
        WHERE
            offer_unique_id = offerwall_ranking.offer_unique_id)
    , json_metadata = JSON_OBJECT('exploration_type', 'non-exploratory')
    , strategy = 'v2'
    , dimension_hash = MD5(CONCAT('Other_', offer_group_type))
WHERE
    ranking_group_id = 1 ;


--------------


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

----------------

Offerwall autorank stage
select * from offerwall_ranking_groups ;
select * from offerwall_ranking where offer_group_type_id = 1 order by offer_rank ;
select * from offerwall_ranking where offer_group_type_id = 3 order by offer_rank ;
select * from offerwall_ranking where offer_group_type_id = 4 order by offer_rank ;

--------------

select * from offerwall_conversion where email_md5 = 'a7ba005e00ca681716f353b4cdd0fa78' ;

--------------


*/
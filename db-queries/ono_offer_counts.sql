SELECT 
    offer_id, event, COUNT(event)
FROM
    campaignmanager.user_offer_tracking
WHERE
    offer_id IN (141 , 143, 1017, 1019, 1018, 580, 581, 582)
        AND event IN ('sent' , 'delivered', 'click')
        AND stats_date BETWEEN (CURDATE() - INTERVAL 10 DAY) AND (CURDATE() - INTERVAL 0 DAY)
-- 		AND stats_date >= '2022-10-11'
GROUP BY offer_id , event
ORDER BY event , offer_id;

-- select * from campaignmanager.offers where id in (141,143,1017,1018,1019, 580, 581, 582);
-- select id, name, reset_time from campaignmanager.offers where id in (141,143,1017,1018,1019, 580, 581, 582);
-- select distinct(event) from campaignmanager.user_offer_tracking ;

-- (124,181,182,183,184,188,189,190,191,192,264,566,572) email offers
-- (141 , 143, 1017, 1019, 1018, 580, 581, 582)	phone offers
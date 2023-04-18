select * from advertiser_master where advertiser_id='591bcb75-490c-4faa-ae92-51fb8fb92e62';

select * from leadgen_unsubscribed_list where email_hash in (md5("polit31016@charav.com"));

select * from user_master where user_email_address in ('e6965141e850875442e6f0608bf37528', 'tekag97862@canyona.com') 
or user_mobile in ('6187896613') or mobile_hash in ('263b3a9cdedfd64bf76ef3dc42f70ff7') or user_id = 12333744 ;
select * from leadgen_unsubscribed_list where email_address in ('b56f0ed043470aa62609834bf03559c2', 'timix15259@deitada.com') 
or email_hash in ('e6965141e850875442e6f0608bf37528') or phone_hash in ('263b3a9cdedfd64bf76ef3dc42f70ff7') ;

select * from user_master where user_email_address in ('0ca17c6fe842b7e47464afc441aaa666', 'riyejo6861@deitada.com') 
or user_mobile in ('6187896614') or mobile_hash in ('318fdaa4949e79e4abd65d4cf5830fe3') or user_id = 12333745 ;
select * from leadgen_unsubscribed_list where email_address in ('0ca17c6fe842b7e47464afc441aaa666', 'riyejo6861@deitada.com') 
or email_hash in ('0ca17c6fe842b7e47464afc441aaa666') or phone_hash in ('318fdaa4949e79e4abd65d4cf5830fe3') ;

desc leadgen_unsubscribed_list;
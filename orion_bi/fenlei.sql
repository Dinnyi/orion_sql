SELECT
b_query,
b_slots,
count(b_query) as c
FROM data_xy_b_content_asr_nlp_all
WHERE insert_time BETWEEN STR_TO_DATE('2018-07-01 00:00:00','%Y-%m-%d %H:%i:%s') AND STR_TO_DATE('2018-07-22 23:59:59','%Y-%m-%d %H:%i:%s')

and b_query!=''
and b_query!='text'
and b_intent not in ('auto_next','play_fm_notts','unknown','search_live_radio_notts','alarm_scene_play','search_music_notts','play_news_notts','play_news_without_slot_notts')
and b_domain='fm'
-- and p_prodid=3

and b_slots like '%category%'
and b_slots not like '%album%'
and b_slots not like '%title%'
and b_slots not like '%artist%'
and b_slots not like '%episode%'
and b_slots not like '%sort%'
and b_slots not like '%live_channel%'
and b_slots not like '%time%'
and b_slots not like '%live_number_channel%'
and b_slots not like '%geo%'
and b_slots not like '%source%'
and b_slots not like '%scenario%'
and b_slots not like '%live_channel_category%'
and b_slots not like '%extra_words%'
and b_slots not like '%type%'

group by b_query
order by c desc
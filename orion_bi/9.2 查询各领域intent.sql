SELECT
b_intent,
count(b_intent) as c
FROM data_xy_b_content_asr_nlp_all
WHERE insert_time BETWEEN STR_TO_DATE('2018-08-13 00:00:00','%Y-%m-%d %H:%i:%s') AND STR_TO_DATE('2018-08-30 00:00:00','%Y-%m-%d %H:%i:%s')
-- and b_source in (21, 101, 25)
and b_domain='fm'
GROUP BY b_intent
ORDER BY c DESC



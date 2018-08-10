
SELECT
-- b_query,
-- b_domain,
-- b_intent,
-- b_slots,
*
-- count(b_slots) as c
FROM data_xy_b_content_asr_nlp_all
WHERE insert_time BETWEEN STR_TO_DATE('2018-07-01 00:00:00','%Y-%m-%d %H:%i:%s') AND STR_TO_DATE('2018-08-15 23:59:59','%Y-%m-%d %H:%i:%s')

-- and b_query!=''
-- and b_query!='text'
and b_intent='previous'
and b_query='上一个'
-- and b_slots!=''
GROUP BY b_query
ORDER BY c desc

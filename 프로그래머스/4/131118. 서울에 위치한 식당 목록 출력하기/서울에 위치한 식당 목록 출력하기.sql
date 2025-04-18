-- 코드를 입력하세요
SELECT REST_INFO.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, SCORE
from REST_INFO
join (select REST_ID, ROUND(AVG(REVIEW_SCORE), 2) as SCORE from REST_REVIEW group by REST_ID) AS R
on REST_INFO.REST_ID = R.REST_ID
where address like '서울%'
order by SCORE DESC, FAVORITES DESC;

# select REST_ID, ROUND(AVG(REVIEW_SCORE), 2) as SCORE
# from REST_REVIEW
# group by REST_ID;

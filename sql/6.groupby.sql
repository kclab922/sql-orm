-- -- 국가별로 유저가 각각 몇명인지

-- -- django ver.
-- -- annotate: 컬럼을 하나 더 붙이는 개념
-- User.objects.values('country').annotate(Count('id'))

-- -- SQL ver.
-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;



-- -- 국가별 평균 평점

-- -- django ver.
-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))

-- -- SQL ver.
-- SELECT country, COUNT(*), AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- GROUP BY country;

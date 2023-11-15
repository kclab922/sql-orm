-- --  User.objects.filter(age=41)
-- SELECT * FROM movies_user
-- WHERE age=41;

-- -- Movie.objects.filter(year__gt=2000)
-- SELECT * FROM movies_movie
-- WHERE year > 2000;

-- -- AND
-- --  Movie.objects.filter(year__gt=2000, year__lt=2010)
-- SELECT * FROM movies_movie
-- WHERE year > 2000 AND year < 2010;

-- -- OR
-- -- Movie.objects.filter(Q(year__lt=2000) | Q(year__gt=2010))
-- SELECT * FROM movies_movie
-- WHERE year < 2000 OR year > 2010;

-- -- NOT
-- -- 특정조건에 일치하지 않는 데이터 가져오기
-- -- User.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;


-- -- MIN/MAX
-- -- Movie.objects.aggregate(Min('year'))
-- -- Movie.objects.aggregate(Max('year'))
-- SELECT MIN(year) FROM movies_movie;
-- SELECT MAX(year) FROM movies_movie;


-- -- 1번 영화에 달린 스코어만!
-- -- Score.objects.filter(movie_id=1).aggregate(Min('value'), Max('value'))
-- SELECT MAX(value), MIN(value) FROM movies_score
-- WHERE movie_id=1;


-- 개수 세기
-- -- Movie.objects.count()
-- SELECT COUNT(*) FROM movies_movie;


-- -- 2000년도에 개봉한 영화의 개수
-- -- Movie.objects.filter(year__gt=2000).count()
-- SELECT COUNT(*) FROM movies_movie
-- WHERE year > 2000;


-- -- 중복값제거하고 개수 세기
-- -- User.objects.values('country').distinct().count()
-- SELECT COUNT(DISTINCT country) FROM movies_user;


-- -- 모든 유저의 나이의 총합
-- -- User.objects.aggregate(Sum('age'))
-- SELECT SUM(age) FROM movies_user;


-- -- 10번영화에 달린 모든 평점의 합
-- -- Score.objects.filter(movie_id=10).aggregate(Sum('value'))
-- SELECT SUM(value) FROM movies_score
-- WHERE movie_id=10;


-- -- 전체 평균 제작년도
-- -- Movie.objects.aggregate(Avg('year'))
-- SELECT AVG(year) from movies_movie;


-- -- 10번영화의 평점 평균
-- -- Score.objects.filter(movie_id=10).aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_score
-- WHERE movie_id=10;




-- -- <LIKE>
-- -- %(여러 개 어떤 데이터든 들어올 수 있음), _(해당 개수 글자만큼)
-- -- 대소문자 구분 없이 다 찾음

-- 1) 제목에 the가 들어가는 문자열
-- Movie.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';

-- -- 2) 제목이 the로 시작하는 영화
-- -- Movie.objects.filter(title__startswith='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE 'the%';

-- -- 3) 제목이 on으로 끝나는 영화
-- -- Movie.objects.filter(title__endswith='on.')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%on.';

-- -- 4) 제목이 ~g??d~ 인 영화
-- -- djanggo에서는 ORM에서 사용하기 위해서는 정규표현식을 사용해야 함.
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';



-- -- <IN>
-- -- Movie.objects.filter(year__in=[2000, 2001, 2002])
-- SELECT * FROM movies_movie
-- WHERE year IN (2000, 2001, 2002);



-- -- <BETWEEN>
-- -- User.objects.filter(age__range=[20, 29])
-- SELECT * FROM movies_user
-- WHERE age BETWEEN 20 AND 29;
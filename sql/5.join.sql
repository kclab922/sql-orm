-- 1번 유저가 작성한 모든 점수(score)

-- django ver.
-- Score.objects.filter(user_id=1)
-- User.objects.get(id=1).score_set.all()

-- -- SQL ver.
-- SELECT movies_score.id FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;



-- -- -- 1번 영화의 카테고리

-- -- django ver.
-- -- Movie.objects.get(id=1).categories.all()

-- -- SQL ver.
-- -- M:N 연결시 테이블 3개를 연결하므로 join을 2번 해야함.
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category.id = movies_category_movies.category_id
-- WHERE movies_movie.id=1



-- -- 1번 유저가 작성한 모든 점수의 평균

-- -- django ver.
-- -- User.objects.get(id=1).score_set.all().aggregate(Avg('value'))

-- -- SQL ver. : 유저테이블 + 스코어테이블
-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;



--  drama 카테고리에 속한 모든 영화

-- django ver.
-- Category.objects.get(name='drama').movies.all()

-- SQL ver.
SELECT * FROM movies_movie
JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
JOIN movies_category ON movies_category.id = movies_category_movies.category_id
WHERE movies_category.name = 'drama';


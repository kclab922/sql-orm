--  Movie.objects.all()
-- SELECT * FROM movies_movie;


-- User.objects.all()
-- SELECT * FROM movies_user;


--  Movie.objects.all().order_by('-year')
-- 오름차순이 기본 / 내림차순시 DESC 붙여줄 것
SELECT * FROM movies_movie
ORDER BY year DESC;


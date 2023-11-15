SELECT * FROM movies_actor
WHERE id=1;


-- django버전
actor = Actor.objects.get(id=1)
actor.age = 50
actor.save()
actor.age

UPDATE movies_actor
SET name='iron man'
WHERE id=1;


-- python manage.py shell_plus --ipython
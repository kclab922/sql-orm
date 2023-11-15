-- -- django ver.
-- actor = Actor.objects.get(id=2)
-- actor.delete()

-- SQL ver.
DELETE FROM movies_actor 
WHERE id=1;

SELECT * FROM movies_actor;
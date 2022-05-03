select users.username, comments.contents  from comments 
join users on comments.user_id  = users.id;

select comments.contents, photos.url from comments 
join photos on comments.photo_id  = photos.id

-- Inner joins
select url, username FROM photos 
JOIN users ON users.id = photos.user_id;

-- left joins
select url, username FROM photos 
LEFT JOIN users ON users.id = photos.user_id;

-- right joins
select url, username FROM photos 
RIGHT JOIN users ON users.id = photos.user_id;

-- outer joins
select url, username FROM photos 
FULL JOIN users ON users.id = photos.user_id;
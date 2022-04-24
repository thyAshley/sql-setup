select users.username, comments.contents  from comments 
join users on comments.user_id  = users.id;

select comments.contents, photos.url from comments 
join photos on comments.photo_id  = photos.id
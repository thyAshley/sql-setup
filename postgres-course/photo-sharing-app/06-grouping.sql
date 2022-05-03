SELECT user_id
FROM comments
GROUP BY user_id;

select p.id, count(*) from "comments" c
left join photos p ON c.photo_id = p.id 
where c.photo_id < 3
group by p.id 
having count(*) > 2
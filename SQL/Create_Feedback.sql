use event_system;
create table feedback(
feedback_id int primary key auto_increment,
user_id int, foreign key (user_id) references users(user_id),
event_id int, foreign key (event_id) references events(event_id),
rating int check(rating between 1 and 5),
comments text,
feedback_date date not null
);
insert into feedback (user_id, event_id, rating, comments, feedback_date)
values
(3, 2, 4, 'Great insights!', '2025-05-16'),
(4, 2, 5, 'Very informative.', '2025-05-16'),
(2, 1, 3, 'Could be better.', '2025-06-11');

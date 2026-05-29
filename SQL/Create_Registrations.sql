use event_system;
create table registrations(
registration_id int primary key auto_increment, 
user_id int, foreign key (user_id) references users(user_id),
event_id int, foreign key (event_id) references events(event_id),
registration_date date  not null
);
insert into registrations (user_id, event_id, registration_date)
values (1, 1, '2025-05-01'),
       (2, 1, '2025-05-02'),
       (3, 2, '2025-04-30'),
       (4, 2, '2025-04-28'),
       (5, 3, '2025-06-15');

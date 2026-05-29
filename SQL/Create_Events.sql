use event_system;
create table events(event_id int primary key auto_increment, title varchar(200) not null, description text, city varchar(200) not null, start_date datetime not null, end_date datetime not null, status enum ('upcoming','completed','cancelled'), organizer_id int, foreign key (organizer_id) references users(user_id));
INSERT INTO Events (title, description, city, start_date, end_date, status, organizer_id)
VALUES
(
    'Tech Innovators Meetup',
    'A meetup for tech enthusiasts.',
    'New York',
    '2025-06-10 10:00:00',
    '2025-06-10 16:00:00',
    'upcoming',
    1
),
(
    'AI & ML Conference',
    'Conference on AI and ML advancements.',
    'Chicago',
    '2025-05-15 09:00:00',
    '2025-05-15 17:00:00',
    'completed',
    3
),
(
    'Frontend Development Bootcamp',
    'Hands-on training on frontend tech.',
    'Los Angeles',
    '2025-07-01 10:00:00',
    '2025-07-03 16:00:00',
    'upcoming',
    2
);

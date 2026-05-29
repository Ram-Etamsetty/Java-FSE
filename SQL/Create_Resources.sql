use event_system;
create table resources(
resource_id int primary key auto_increment,
event_id int, foreign key (event_id) references events(event_id),
resource_type enum ('pdf','image', 'link'),
resource_url varchar(255) not null,
upload_at datetime not null
);
insert into resources
(event_id, resource_type, resource_url, uploaded_at)
values
(1, 'pdf', 'https://portal.com/resources/tech_meetup_agenda.pdf', '2025-05-01 10:00:00'),
(2, 'image', 'https://portal.com/resources/ai_poster.jpg', '2025-04-20 09:00:00'),
(3, 'link', 'https://portal.com/resources/html5_docs', '2025-06-25 15:00:00');

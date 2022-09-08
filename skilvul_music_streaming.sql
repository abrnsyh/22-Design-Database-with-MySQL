CREATE TABLE `User` (
  `user_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255),
  `email` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `Singer` (
  `singer_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255)
);

CREATE TABLE `Track` (
  `track_id` int PRIMARY KEY NOT NULL,
  `title` varchar(255),
  `singer_id` int,
  `album_id` int
);

CREATE TABLE `Album` (
  `album_id` int PRIMARY KEY NOT NULL,
  `name` varchar(255),
  `singer_id` int
);

CREATE TABLE `Playlist` (
  `playlist_id` int PRIMARY KEY NOT NULL,
  `user_id` int
);

CREATE TABLE `List_Tracks` (
  `list_tracks_id` int PRIMARY KEY NOT NULL,
  `playlist_id` int,
  `track_id` int
);

ALTER TABLE `Track` ADD FOREIGN KEY (`singer_id`) REFERENCES `Singer` (`singer_id`);

ALTER TABLE `Track` ADD FOREIGN KEY (`album_id`) REFERENCES `Album` (`album_id`);

ALTER TABLE `Album` ADD FOREIGN KEY (`singer_id`) REFERENCES `Singer` (`singer_id`);

ALTER TABLE `Playlist` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

ALTER TABLE `List_Tracks` ADD FOREIGN KEY (`playlist_id`) REFERENCES `Playlist` (`playlist_id`);

ALTER TABLE `List_Tracks` ADD FOREIGN KEY (`track_id`) REFERENCES `Track` (`track_id`);
create table if not exists songwriter (
	id SERIAL primary key,
	name VARCHAR(40) not null unique
);

create table if not exists album (
	id SERIAL primary key, 
	name VARCHAR(40) not null,
	year integer not null,
	album_id integer references songwriter(id) not null
);

create table if not exists track (
	id SERIAL primary key,
	name VARCHAR(45) not null,
	duration VARCHAR(8) not null,
	track_id integer references album(id) not null
);

create table if not exists genre (
	id SERIAL primary key,
	name VARCHAR(40) not null,
	songwriter_id integer references songwriter(id) not null
);
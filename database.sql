create table LOGIN(ID int primary key auto_increment,NAME varchar(100),AGE int,ROLE varchar(100),PASSWORD varchar(100));
create table MEMBERS(TEAM_ID int,PLAYED int,WIN int,LOST int,KD float,LEVELS int,MEMBER_ID int,foreign key (MEMBER_ID) REFERENCES LOGIN(ID));
alter table MEMBERS ADD foreign key(TEAM_ID) references TEAMS(TEAM_ID);
create table TOURNAMENTS(TOURNAMENT_ID int primary key auto_increment,TNAME varchar(100),LOCATION varchar(100),PRIZE DOUBLE,WINNER varchar(100));
create table TEAMS(TEAM_ID int primary key auto_increment,TEAM_NAME varchar(30),TEAM_REGION varchar(30),RATING DOUBLE,TOURNAMENT_ID int,foreign key (TOURNAMENT_ID) references TOURNAMENTS(TOURNAMENT_ID));
create table RESULTS (TOURNAMENT_ID int,WINNER int,LOSER int,foreign key (TOURNAMENT_ID) references TOURNAMENTS(TOURNAMENT_ID), foreign key (WINNER) references TEAMS(TEAM_ID),foreign key (LOSER) references TEAMS(TEAM_ID));

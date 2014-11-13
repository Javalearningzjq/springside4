drop table if exists ss_role;

drop table if exists ss_team;

drop table if exists ss_user;

drop table if exists ss_user_role;

/*==============================================================*/
/* Table: ss_role                                               */
/*==============================================================*/
create table ss_role
(
   id                   bigint not null auto_increment,
   name                 varchar(255) not null,
   permissions          varchar(255),
   primary key (id),
   unique key AK_Key_2 (name)
);

/*==============================================================*/
/* Table: ss_team                                               */
/*==============================================================*/
create table ss_team
(
   id                   bigint not null,
   name                 varchar(255),
   master_id            bigint,
   primary key (id),
   unique key AK_Key_2 (name)
);

/*==============================================================*/
/* Table: ss_user                                               */
/*==============================================================*/
create table ss_user
(
   id                   bigint not null auto_increment,
   login_name           varchar(255),
   name                 varchar(64),
   password             varchar(255),
   salt                 varchar(64),
   email                varchar(128),
   status               varchar(32),
   team_id              bigint,
   primary key (id),
   unique key AK_Key_2 (login_name)
);

/*==============================================================*/
/* Table: ss_user_role                                          */
/*==============================================================*/
create table ss_user_role
(
   user_id              bigint not null,
   role_id              bigint not null,
   primary key (role_id, user_id)
);

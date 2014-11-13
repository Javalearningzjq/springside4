drop table if exists QRTZ_BLOB_TRIGGERS;

drop table if exists QRTZ_CALENDARS;

drop table if exists QRTZ_CRON_TRIGGERS;

drop table if exists QRTZ_FIRED_TRIGGERS;

drop table if exists QRTZ_JOB_DETAILS;

drop table if exists QRTZ_LOCKS;

drop table if exists QRTZ_PAUSED_TRIGGER_GRPS;

drop table if exists QRTZ_SCHEDULER_STATE;

drop table if exists QRTZ_SIMPLE_TRIGGERS;

drop table if exists QRTZ_TRIGGERS;

drop table if exists qrtz_simprop_triggers;

/*==============================================================*/
/* Table: QRTZ_BLOB_TRIGGERS                                    */
/*==============================================================*/
create table QRTZ_BLOB_TRIGGERS
(
   SCHED_NAME           varchar(120),
   TRIGGER_NAME         varchar(200),
   TRIGGER_GROUP        varchar(200),
   BLOB_DATA            blob
);

/*==============================================================*/
/* Table: QRTZ_CALENDARS                                        */
/*==============================================================*/
create table QRTZ_CALENDARS
(
   SCHED_NAME           varchar(120) not null,
   CALENDAR_NAME        varchar(200) not null,
   CALENDAR             blob
);

/*==============================================================*/
/* Table: QRTZ_CRON_TRIGGERS                                    */
/*==============================================================*/
create table QRTZ_CRON_TRIGGERS
(
   SCHED_NAME           varchar(120) not null,
   TRIGGER_NAME         varchar(200) not null,
   TRIGGER_GROUP        varchar(200) not null,
   CRON_EXPRESSION      varchar(120) not null,
   TIME_ZONE_ID         varchar(80)
);

/*==============================================================*/
/* Table: QRTZ_FIRED_TRIGGERS                                   */
/*==============================================================*/
create table QRTZ_FIRED_TRIGGERS
(
   SCHED_NAME           varchar(120) not null,
   ENTRY_ID             varchar(120) not null,
   TRIGGER_NAME         varchar(120) not null,
   TRIGGER_GROUP        varchar(120) not null,
   INSTANCE_NAME        varchar(120) not null,
   FIRED_TIME           bigint not null,
   SCHED_TIME           bigint not null,
   PRIORITY             int not null,
   STATE                varchar(16) not null,
   JOB_NAME             varchar(200),
   JOB_GROUP            varchar(200),
   IS_NONCONCURRENT     boolean,
   REQUESTS_RECOVERY    boolean
);

/*==============================================================*/
/* Table: QRTZ_JOB_DETAILS                                      */
/*==============================================================*/
create table QRTZ_JOB_DETAILS
(
   SCHED_NAME           varchar(120),
   JOB_NAME             varchar(200),
   JOB_GROUP            varchar(200),
   DESCRIPTION          varchar(250),
   JOB_CLASS_NAME       varchar(250),
   IS_DURABLE           boolean,
   IS_NONCONCURRENT     boolean,
   IS_UPDATE_DATA       boolean,
   REQUESTS_RECOVERY    boolean,
   JOB_DATA             blob
);

/*==============================================================*/
/* Table: QRTZ_LOCKS                                            */
/*==============================================================*/
create table QRTZ_LOCKS
(
   SCHED_NAME           varchar(120) not null,
   LOCK_NAME            varchar(40) not null
);

/*==============================================================*/
/* Table: QRTZ_PAUSED_TRIGGER_GRPS                              */
/*==============================================================*/
create table QRTZ_PAUSED_TRIGGER_GRPS
(
   SCHED_NAME           varchar(120) not null,
   TRIGGER_GROUP        varchar(200) not null
);

/*==============================================================*/
/* Table: QRTZ_SCHEDULER_STATE                                  */
/*==============================================================*/
create table QRTZ_SCHEDULER_STATE
(
   SCHED_NAME           varchar(120) not null,
   INSTANCE_NAME        varchar(200) not null,
   LAST_CHECKIN_TIME    bigint not null,
   CHECKIN_INTERVAL     bigint not null
);

/*==============================================================*/
/* Table: QRTZ_SIMPLE_TRIGGERS                                  */
/*==============================================================*/
create table QRTZ_SIMPLE_TRIGGERS
(
   SCHED_NAME           varchar(120),
   TRIGGER_NAME         varchar(200),
   TRIGGER_GROUP        varchar(200),
   REPEAT_COUNT         bigint,
   REPEAT_INTERVAL      bigint,
   TIMES_TRIGGERED      bigint
);

/*==============================================================*/
/* Table: QRTZ_TRIGGERS                                         */
/*==============================================================*/
create table QRTZ_TRIGGERS
(
   SCHED_NAME           varchar(200),
   TRIGGER_NAME         varchar(200),
   TRIGGER_GROUP        varchar(200),
   JOB_NAME             varchar(200),
   JOB_GROUP            varchar(200),
   DESCRIPTION          varchar(200),
   NEXT_FIRE_TIME       bigint,
   PREV_FIRE_TIME       bigint,
   PRIORITY             int,
   TRIGGER_STATE        varchar(20),
   TRIGGER_TYPE         varchar(20),
   START_TIME           bigint,
   END_TIME             bigint,
   CALENDAR_NAME        varchar(200),
   MISFIRE_INSTR        int,
   JOB_DATA             blob
);

/*==============================================================*/
/* Table: qrtz_simprop_triggers                                 */
/*==============================================================*/
create table qrtz_simprop_triggers
(
   SCHED_NAME           varchar(120),
   TRIGGER_NAME         varchar(200),
   TRIGGER_GROUP        varchar(200),
   STR_PROP_1           varchar(512),
   STR_PROP_2           varchar(512),
   STR_PROP_3           varchar(512),
   INT_PROP_1           int,
   INT_PROP_2           int,
   LONG_PROP_1          bigint,
   LONG_PROP_2          bigint,
   DEC_PROP_1           int,
   DEC_PROP_2           int,
   BOOL_PROP_1          boolean,
   BOOL_PROP_2          boolean
);

drop table SANGND_TOYS;
drop table SANGND_BRICKS;
commit;

create table SANGND_TOYS (
    TOY_ID      integer,
    TOY_NAME    varchar2(20),
    TOY_COLOUR  varchar2(10)
);

create table SANGND_BRICKS (
    BRICK_ID        integer,
    BRICK_COLOUR    varchar2(10),
    BRICK_SHAPE     varchar2(10)
)
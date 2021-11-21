insert into SANGND_BRICKS(BRICK_ID)
select TOY_ID
from   SANGND_TOYS;

select * from SANGND_BRICKS;

insert into SANGND_TOYS(TOY_ID, TOY_COLOUR) values (4, 'blue');
insert into SANGND_TOYS(TOY_ID, TOY_COLOUR) values (5, 'green');

insert into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR)
select TOY_ID, TOY_COLOUR
from   SANGND_TOYS
where  TOY_ID in (4, 5);

select * from SANGND_BRICKS
where  BRICK_ID in (4, 5);

---
insert all
    into SANGND_BRICKS(BRICK_ID) values(ID)
    into SANGND_BRICKS(BRICK_ID) values(ID)
    into SANGND_TOYS(TOY_ID) values(ID)
select 0 as ID from dual;

select * from SANGND_TOYS
where  TOY_ID = 0;

select * from SANGND_BRICKS
where  BRICK_ID = 0;

---
insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (11, 'Cuteasaurus', 'blue');
insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (12, 'Sir Stripypants', 'blue');
insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (13, 'White Rabbit', 'white');

savepoint post_toys;

insert all
    when TOY_COLOUR = 'blue' then
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
    when TOY_NAME = 'Cuteasaurus' then
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
    else
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
select * from SANGND_TOYS
where  TOY_ID >= 11;

select * from SANGND_BRICKS
where  BRICK_ID >= 11;

rollback to savepoint post_toys;

insert first
    when TOY_COLOUR = 'blue' then
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
    when TOY_NAME = 'Cuteasaurus' then
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
    else
        into SANGND_BRICKS(BRICK_ID, BRICK_COLOUR) values(TOY_ID, TOY_COLOUR)
select * from SANGND_TOYS
where  TOY_ID >= 11;

select * from SANGND_BRICKS
where  BRICK_ID >= 11;

rollback;
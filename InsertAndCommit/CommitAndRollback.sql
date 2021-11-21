-- Rollback
insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (7, 'Pink Rabbit', 'pink');

select * from SANGND_TOYS
where  TOY_ID = 7;

rollback;

select * from SANGND_TOYS
where  TOY_ID = 7;
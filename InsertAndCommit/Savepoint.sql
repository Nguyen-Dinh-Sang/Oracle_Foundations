insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (8, 'Pink Rabbit', 'pink');

savepoint after_six;

insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (9, 'Purple Ninja', 'purple');

select * from SANGND_TOYS
where  TOY_ID in (8, 9);

rollback to savepoint after_six;

-- Dòng 9 đã bị xóa
select * from SANGND_TOYS
where  TOY_ID in (8, 9);

rollback;

-- Xóa luôn dòng 8
select * from SANGND_TOYS
where  TOY_ID in (8, 9);

savepoint first_sp;
savepoint second_sp;
savepoint third_sp;

rollback to savepoint second_sp;
/* Fails - third_sp no longer exists */
rollback to savepoint third_sp;
rollback to savepoint first_sp;

-- Try it!
insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (8, 'Red Rabbit', 'red');

commit;

insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (9, 'Purple Ninja', 'purple');

savepoint savepointone;

insert into SANGND_TOYS(TOY_ID, TOY_NAME, TOY_COLOUR) values (10, 'Blue Dinosaur', 'blue');

rollback to savepoint savepoint_one;

select * from SANGND_TOYS
where  TOY_ID in (8, 9, 10);

rollback;

select * from SANGND_TOYS
where  TOY_ID in (8, 9, 10);
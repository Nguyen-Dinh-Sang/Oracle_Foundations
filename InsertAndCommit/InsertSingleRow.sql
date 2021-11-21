-- Insert value cho tất cả các visible column
insert into SANGND_TOYS values( 1, 'Miss Snuggles', 'pink');

-- Insert liệt kê list columns được cung cấp value
insert into SANGND_TOYS(TOY_ID, TOY_NAME) values( 2, 'Baby Turtle');
insert into SANGND_TOYS(TOY_ID, TOY_COLOUR) values( 2, 'Baby red');

select * from SANGND_TOYS;
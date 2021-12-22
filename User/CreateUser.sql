select * from dba_users;

create  user sangnd;
--Tạo mật khẩu và mở khóa.
alter   user    sangnd identified by sangnd account unlock;
--Tạo sesion cho phép đăng nhập.
grant create session to sangnd;
--Cho full quyền luôn.
grant all PRIVILEGES TO sangnd;
--Gán full rồi mà vẫn k full.
grant dba to sangnd;
--Tạo thêm cái này nữa mới import được.
CREATE DIRECTORY EXAMPLE_DIRECTORY AS 'C:\Users\sangnd\Desktop\20122021';
grant read, write on directory EXAMPLE_DIRECTORY to sangnd;
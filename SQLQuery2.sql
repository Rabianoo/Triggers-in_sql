CREATE DATABASE Demo

use Demo

create table Employ(id int primary key identity, ename varchar(50), Department varchar(50), gender varchar(50),salary int)


Create table info(
	id int ,
	status varchar(255),
	date date
)

insert into Employ values('Saima','H-R','female',2200);
insert into Employ values('Tania','Faculty','female',4200);
insert into Employ values('Ali','Accounts','male',7200);
insert into Employ values('Javad','H-R','male',3300);
insert into Employ values('Amina','Faculty','female',4300);
insert into Employ values('Tabish','Accounts','male',9900);

CREATE TRIGGER INSERT_DATA on Employ
FOR INSERT
	AS
		Declare @id int
		SELECT @id = id FROM  inserted
		BEGIN
			INSERT INTO info VALUES(@id,'INSERTED',GETDATE())
		END 

		insert into Employ values('Tania','Faculty','female',4200);


		SELECT * FROM Employ;

		SELECT * FROM info
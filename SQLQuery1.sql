create table Employ(id int primary key identity, ename varchar(50), Department varchar(50), gender varchar(50),salary int)

insert into Employ values('Saima','H-R','female',2200);
insert into Employ values('Tania','Faculty','female',4200);
insert into Employ values('Ali','Accounts','male',7200);
insert into Employ values('Javad','H-R','male',3300);
insert into Employ values('Amina','Faculty','female',4300);
insert into Employ values('Tabish','Accounts','male',9900);

select *from Employ;




--INSERT TRIGGER--

 CREATE TRIGGER INSERT_TRIGGER on Employ
 FOR INSERT
 AS 
 BEGIN
   PRINT 'INSERTED'
 END

 INSERT INTO Employ VALUES('Laiba','Faculty','Female',2300);


 --DELETE TRIGGER--

  CREATE TRIGGER DELETED_TRIGGER on Employ
 FOR DELETE
 AS 
 BEGIN
   PRINT 'DATA HAS BEEN DELETED' 
 END


 DELETE FROM Employ WHERE id = 6

 --DELETE TRIGGER--

  CREATE TRIGGER UPDATED_TRIGGER on Employ
 FOR UPDATE
 AS 
 BEGIN
   PRINT 'DATA HAS BEEN DElETED' 
 END

 UPDATE  Employ SET ename = 'Alia' WHERE id = 1;



 CREATE TRIGGER INSERTED_TRIGGER on Employ
 FOR INSERT
 AS 
 BEGIN
     Select *from inserted
 END

 INSERT INTO Employ VALUES('Tooba','Faculty','Female',5500);






 CREATE TABLE employ_info(eid int primary key identity, e_info varchar(200))

 select *from employ_info;

  CREATE TRIGGER INSERTED_TRIGGER on Employ
 FOR INSERT
 AS 
 BEGIN
     Select *from inserted
 END



 CREATE TRIGGER DELETED_DATA on Employ
	FOR DELETE
		AS
			BEGIN
				DECLARE @id int
					SELECT id from deleted;
					INSERT INTO employ_info values(@id,GETDATE())		
			END 

			

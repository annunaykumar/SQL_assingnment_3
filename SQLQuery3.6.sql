CREATE PROCEDURE InsertDepartment( 
   @Dept      char(5) ,
   @DeptName  varchar(40),
   @location  varchar(60)
   
   )
  as

  BEGIN
       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;

    -- Insert statements for procedure here
       INSERT INTO Department
              (Dept_no, DeptName,location)
       VALUES
              (@Dept, @DeptName, @location)
END
Go
  
  CREATE PROCEDURE InsertEmployee (
  
  @emp integer ,
   @emp_fname varchar(40) ,
   @emp_lname varchar(40) ,
   @dept char(60) 
   )

   as

   BEGIN
       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;

    -- Insert statements for procedure here
       INSERT INTO Employee
              (emp, emp_fname,emp_lname,dept)
       VALUES
              (@emp, @emp_fname, @emp_lname,@dept)
END

   
  
  
   
   
  
DECLARE @CurrentDate DATE = CAST(GETDATE() AS DATE), @DOB DATE = '1998-09-18', @Years INT = 0, @Months INT = 0, @Days INT = 0
SET @Years = DATEDIFF(DAY,@DOB,@CurrentDate)/365
SET @Months = DATEDIFF(MONTH,DATEADD(YEAR,DATEDIFF(DAY,@DOB,@CurrentDate)/365,@DOB),@CurrentDate)
SET @Days = DATEDIFF(DAY,DATEADD(Month,DATEDIFF(MONTH,DATEADD(YEAR,DATEDIFF(DAY,@DOB,@CurrentDate)/365,@DOB),@CurrentDate),DATEADD(YEAR,DATEDIFF(DAY,@DOB,@CurrentDate)/365,@DOB)),@CurrentDate)
SELECT CONCAT (@Years, ' Years, ', @Months, ' Months and ', @Days, ' Days') AS DateOfBirth
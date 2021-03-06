/*
   Thursday, May 11, 20171:20:32 PM
   User: IDPUser
   Server: ASIA6798\MSSQLEXPRESS12
   Database: FJWU_StudentSurvey
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Courses ADD
	DeptId int NULL
GO
ALTER TABLE dbo.Courses SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Courses', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Courses', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Courses', 'Object', 'CONTROL') as Contr_Per 
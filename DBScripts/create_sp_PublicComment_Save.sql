USE [PM-AZ-2017]
GO

/****** Object:  StoredProcedure [dbo].[sp_PublicComment_Save]    Script Date: 9/30/2017 8:42:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_PublicComment_Save]
(
	@CommentId INT,
	@Name NVARCHAR(255),
	@Company NVARCHAR(255),
	@Email NVARCHAR(255),
	@Phone NVARCHAR(255),
	@Comment NVARCHAR(4000),
	@SubmissionDate SMALLDATETIME,
	@Reviewed BIT,
	@Output INT OUTPUT
)
AS


/******************************************************************************
**		File: 
**		Name: sp_PublicComment_Save
**		Desc: Populates t_PublicComment with new submissions or edits existing submissions.
**
**              
**		Return values:
** 
**		Called by:   
**              
**		Parameters:
**		Input							Output
**     ----------						-----------
**		Comment submission parameters	CommentID
**
**		Auth: Peter Martinez
**		Date: 09/28/2017
*******************************************************************************
**		Change History
*******************************************************************************
**		Date:		Author:				Description:
**		--------	--------			---------------------------------------
**    
*******************************************************************************/

--PRINT 'Creating Stored Procedure sp_PublicComment_Save'

IF (@CommentId=0)
	BEGIN
		INSERT INTO t_PublicComment ([Name], Company, Email, Phone, Comment, SubmissionDate) 
		VALUES (@Name, @Company, @Email, @Phone, @Comment, @SubmissionDate)
		SET @Output=SCOPE_IDENTITY()
		RETURN  @Output
	END
ELSE
	BEGIN
		UPDATE t_PublicComment SET [Name] = @Name, Company = @Company, Email = @Email, Phone = @Phone, Comment = @Comment, SubmissionDate = @SubmissionDate, Reviewed = @Reviewed
		WHERE CommentID = @CommentId
		SET @Output = (SELECT @CommentId)
	END

GO



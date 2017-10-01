USE [PM-AZ-2017]
GO

/****** Object:  Table [dbo].[t_PublicComment]    Script Date: 9/30/2017 8:43:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 't_PublicComment')
	BEGIN
		PRINT 'Table t_PublicComment already exists, it will be dropped'
		DROP TABLE t_PublicComment
	END
ELSE
	BEGIN

/******************************************************************************
**		File: 
**		Name: t_PublicComment
**		Desc: Populated by web form on page Default.aspx
**
**		This template can be customized:
**              
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
CREATE TABLE [dbo].[t_PublicComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Company] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Comment] [nvarchar](4000) NULL,
	[SubmissionDate] [smalldatetime] NULL,
	[Reviewed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



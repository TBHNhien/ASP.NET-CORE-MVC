CREATE TABLE [dbo].[tUser] (
    [username] CHAR (100) NOT NULL,
    [password] CHAR (256) NOT NULL,
    [LoaiUser] TINYINT    NULL,
    CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED ([username] ASC)
);


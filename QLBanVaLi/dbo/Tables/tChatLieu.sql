CREATE TABLE [dbo].[tChatLieu] (
    [MaChatLieu] CHAR (25)      NOT NULL,
    [ChatLieu]   NVARCHAR (150) NULL,
    CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED ([MaChatLieu] ASC)
);


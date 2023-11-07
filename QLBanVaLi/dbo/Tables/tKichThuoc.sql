CREATE TABLE [dbo].[tKichThuoc] (
    [MaKichThuoc] CHAR (25)   NOT NULL,
    [KichThuoc]   NCHAR (150) NULL,
    CONSTRAINT [PK_tKichThuoc] PRIMARY KEY CLUSTERED ([MaKichThuoc] ASC)
);


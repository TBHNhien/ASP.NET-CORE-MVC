CREATE TABLE [dbo].[tQuocGia] (
    [MaNuoc]  CHAR (25)      NOT NULL,
    [TenNuoc] NVARCHAR (100) NULL,
    CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED ([MaNuoc] ASC)
);


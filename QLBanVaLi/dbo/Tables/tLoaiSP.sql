CREATE TABLE [dbo].[tLoaiSP] (
    [MaLoai] CHAR (25)      NOT NULL,
    [Loai]   NVARCHAR (100) NULL,
    CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED ([MaLoai] ASC)
);


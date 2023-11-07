CREATE TABLE [dbo].[tHangSX] (
    [MaHangSX]         CHAR (25)      NOT NULL,
    [HangSX]           NVARCHAR (100) NULL,
    [MaNuocThuongHieu] CHAR (25)      NULL,
    CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED ([MaHangSX] ASC)
);


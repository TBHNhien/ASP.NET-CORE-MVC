CREATE TABLE [dbo].[tNhanVien] (
    [MaNhanVien]   CHAR (25)      NOT NULL,
    [username]     CHAR (100)     NULL,
    [TenNhanVien]  NVARCHAR (100) NULL,
    [NgaySinh]     DATE           NULL,
    [SoDienThoai1] CHAR (15)      NULL,
    [SoDienThoai2] CHAR (15)      NULL,
    [DiaChi]       NVARCHAR (150) NULL,
    [ChucVu]       NVARCHAR (100) NULL,
    [AnhDaiDien]   CHAR (100)     NULL,
    [GhiChu]       NVARCHAR (100) NULL,
    CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED ([MaNhanVien] ASC),
    CONSTRAINT [FK_tNhanVien_tUser] FOREIGN KEY ([username]) REFERENCES [dbo].[tUser] ([username])
);


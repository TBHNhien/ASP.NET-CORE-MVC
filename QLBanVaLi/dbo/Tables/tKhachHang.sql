CREATE TABLE [dbo].[tKhachHang] (
    [MaKhanhHang]   CHAR (25)      NOT NULL,
    [username]      CHAR (100)     NULL,
    [TenKhachHang]  NVARCHAR (100) NULL,
    [NgaySinh]      DATE           NULL,
    [SoDienThoai]   CHAR (15)      NULL,
    [DiaChi]        NVARCHAR (150) NULL,
    [LoaiKhachHang] TINYINT        NULL,
    [AnhDaiDien]    CHAR (100)     NULL,
    [GhiChu]        NVARCHAR (100) NULL,
    CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED ([MaKhanhHang] ASC),
    CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY ([username]) REFERENCES [dbo].[tUser] ([username])
);


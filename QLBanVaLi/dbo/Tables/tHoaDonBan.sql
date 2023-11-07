CREATE TABLE [dbo].[tHoaDonBan] (
    [MaHoaDon]            CHAR (25)      NOT NULL,
    [NgayHoaDon]          DATETIME       NULL,
    [MaKhachHang]         CHAR (25)      NULL,
    [MaNhanVien]          CHAR (25)      NULL,
    [TongTienHD]          MONEY          NULL,
    [GiamGiaHD]           FLOAT (53)     NULL,
    [PhuongThucThanhToan] TINYINT        NULL,
    [MaSoThue]            CHAR (100)     NULL,
    [ThongTinThue]        NVARCHAR (250) NULL,
    [GhiChu]              NVARCHAR (100) NULL,
    CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED ([MaHoaDon] ASC),
    CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY ([MaKhachHang]) REFERENCES [dbo].[tKhachHang] ([MaKhanhHang]),
    CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY ([MaNhanVien]) REFERENCES [dbo].[tNhanVien] ([MaNhanVien])
);


CREATE TABLE [dbo].[tChiTietHDB] (
    [MaHoaDon]    CHAR (25)      NOT NULL,
    [MaChiTietSP] CHAR (25)      NOT NULL,
    [SoLuongBan]  INT            NULL,
    [DonGiaBan]   MONEY          NULL,
    [GiamGia]     FLOAT (53)     NULL,
    [GhiChu]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED ([MaHoaDon] ASC, [MaChiTietSP] ASC),
    CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham] FOREIGN KEY ([MaChiTietSP]) REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP]),
    CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY ([MaHoaDon]) REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
);


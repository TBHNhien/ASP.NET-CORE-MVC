CREATE TABLE [dbo].[tChiTietSanPham] (
    [MaChiTietSP] CHAR (25)  NOT NULL,
    [MaSP]        CHAR (25)  NULL,
    [MaKichThuoc] CHAR (25)  NULL,
    [MaMauSac]    CHAR (25)  NULL,
    [AnhDaiDien]  CHAR (100) NULL,
    [Video]       CHAR (100) NULL,
    [DonGiaBan]   FLOAT (53) NULL,
    [GiamGia]     FLOAT (53) NULL,
    [SLTon]       INT        NULL,
    CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED ([MaChiTietSP] ASC),
    CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP] FOREIGN KEY ([MaSP]) REFERENCES [dbo].[tDanhMucSP] ([MaSP]),
    CONSTRAINT [FK_tChiTietSanPham_tKichThuoc] FOREIGN KEY ([MaKichThuoc]) REFERENCES [dbo].[tKichThuoc] ([MaKichThuoc]),
    CONSTRAINT [FK_tChiTietSanPham_tMauSac] FOREIGN KEY ([MaMauSac]) REFERENCES [dbo].[tMauSac] ([MaMauSac])
);


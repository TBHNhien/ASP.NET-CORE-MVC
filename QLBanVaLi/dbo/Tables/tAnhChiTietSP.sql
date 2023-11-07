CREATE TABLE [dbo].[tAnhChiTietSP] (
    [MaChiTietSP] CHAR (25)  NOT NULL,
    [TenFileAnh]  CHAR (100) NOT NULL,
    [ViTri]       SMALLINT   NULL,
    CONSTRAINT [PK_tAnhChiTietSP] PRIMARY KEY CLUSTERED ([MaChiTietSP] ASC, [TenFileAnh] ASC),
    CONSTRAINT [FK_tAnhChiTietSP_tChiTietSanPham] FOREIGN KEY ([MaChiTietSP]) REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
);


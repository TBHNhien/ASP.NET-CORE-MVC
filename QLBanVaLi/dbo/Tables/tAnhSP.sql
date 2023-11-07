CREATE TABLE [dbo].[tAnhSP] (
    [MaSP]       CHAR (25)  NOT NULL,
    [TenFileAnh] CHAR (100) NOT NULL,
    [ViTri]      SMALLINT   NULL,
    CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED ([MaSP] ASC, [TenFileAnh] ASC),
    CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY ([MaSP]) REFERENCES [dbo].[tDanhMucSP] ([MaSP])
);


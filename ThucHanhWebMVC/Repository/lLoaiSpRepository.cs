using ThucHanhWebMVC.Models;
namespace ThucHanhWebMVC.Repository
{
    public interface lLoaiSpRepository
    {
        TLoaiSp Add(TLoaiSp loaiSp);
        TLoaiSp Update(TLoaiSp loaiSp);

        TLoaiSp Delete(String maloaiSp);

        TLoaiSp GetLoaiSp(String maloaiSp);
        IEnumerable<TLoaiSp> GetAllLoaiSp();
    }
}

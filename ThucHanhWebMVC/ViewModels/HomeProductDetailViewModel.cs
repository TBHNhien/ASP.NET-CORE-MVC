using ThucHanhWebMVC.Models;

namespace ThucHanhWebMVC.ViewModels
{
    public class HomeProductDetailViewModel
    {
        public TDanhMucSp danhMucSp { get; set; }
        public List<TAnhSp> anhSps { get; set; }
    }
}

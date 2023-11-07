using ThucHanhWebMVC.Models;
using Microsoft.AspNetCore.Mvc;
using ThucHanhWebMVC.Repository;

namespace ThucHanhWebMVC.ViewComponents
{
    public class LoaiSpMenuViewComponent :ViewComponent
    {
        private readonly lLoaiSpRepository _loaiSp;
        public LoaiSpMenuViewComponent (lLoaiSpRepository loaiSpRepository)
        {
            _loaiSp = loaiSpRepository;
        }

        public IViewComponentResult Invoke()
        {
            var loaisp = _loaiSp.GetAllLoaiSp().OrderBy(x=>x.Loai); 
            return View(loaisp);
        }
    }
}

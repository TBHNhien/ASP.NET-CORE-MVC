using Microsoft.AspNetCore.Mvc;

namespace ThucHanhWebMVC.Areas.Admin.Controllers
{
    //khai báo vùng
    [Area("admin")]
    [Route("admin")]
    [Route("admin/homeadmin")]
    public class HomeAdminController : Controller
    {
        [Route("")]
        [Route("index")]

        public IActionResult Index()
        {


            return View();
        }
    }
}

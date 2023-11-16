using Microsoft.AspNetCore.Mvc;
using ThucHanhWebMVC.Models;

namespace ThucHanhWebMVC.Controllers
{
    public class AccessController : Controller
    {
        QlbanVaLiContext db = new QlbanVaLiContext();

        [HttpGet]
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("UserName") == null) // khi chưa đăng nhập
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public IActionResult Login(TUser user)
        {
            if (HttpContext.Session.GetString("UserName") == null)
            {
                var u = db.TUsers.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
                if (u != null)
                {
                    //ĐỂ thiết lập Session phải bảo đảm nó chưa tồn tại HttpContext.Session.GetString("UserName") == null
                    HttpContext.Session.SetString("UserName", u.Username.ToString()); // Thiết lập session có tên UserName và được gán bởi tên người dùng u.Username.ToString() =>khi người dùng đăng nhập đúng
                    //Trường hợp trên xảy ra khi nhập dữ liệu người dùng khi người dùng có username nằm trong CSDL x.Username.Equals(user.Username)
                    return RedirectToAction("Index", "Home");
                }
            }
            return View();

        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Access");
        }

    }
}

using System.Web.Mvc;

namespace Vaultex2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Vaultex Technical Test.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "David Smith.";

            return View();
        }
    }
}
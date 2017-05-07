using System;
using System.Web.Mvc;
using System.Threading.Tasks;
using CalculadoraFrontMVC.Models;
using CalculadoraFrontMVC.Services;

namespace CalculadoraFrontMVC.Controllers
{
    public class HomeController : Controller
    {
        private CalculadoraRESTService service = new CalculadoraRESTService();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Calculate(InputCalculadoraModel dto)
        {
            try
            {
                var dataR = await service.Caculate(dto);
                Double result = dataR;
                return Json(result.ToString("N2"));
            }
            catch (Exception ex)
            {
                return Json("Erro" + ex.Message);
            }
        }
    }
}
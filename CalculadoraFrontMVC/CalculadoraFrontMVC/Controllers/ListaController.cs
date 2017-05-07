using CalculadoraFrontMVC.Services;
using System.Web.Mvc;
using System.Threading.Tasks;

namespace CalculadoraFrontMVC.Controllers
{
    public class ListaController : Controller
    {
        private CalculadoraRESTService service = new CalculadoraRESTService();

        // GET: About
        public async Task<ActionResult> Index()
        {
            var data = await service.GetResultados();
            ViewBag.listaResultados = data;

            return View();
        }
    }
}

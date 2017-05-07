using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CalculadoraFrontMVC.Startup))]
namespace CalculadoraFrontMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

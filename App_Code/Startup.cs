using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Гейт.Startup))]
namespace Гейт
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

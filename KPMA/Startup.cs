using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KPMA.Startup))]
namespace KPMA
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

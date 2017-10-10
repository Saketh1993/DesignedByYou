using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DesignedByYou.Startup))]
namespace DesignedByYou
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

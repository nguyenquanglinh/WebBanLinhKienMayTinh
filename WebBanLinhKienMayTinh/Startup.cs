using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebBanLinhKienMayTinh.Startup))]
namespace WebBanLinhKienMayTinh
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

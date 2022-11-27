using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.Web.UI;

namespace House_Utility_Service
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            ScriptManager.ScriptResourceMapping.AddDefinition(
                "jquery",
                new ScriptResourceDefinition
                {
                    Path = "~/script/jquery-3.6.0.min.js",
                    DebugPath = "~/static/script/jquery-3.6.0.js",
                    LoadSuccessExpression = "jQuery"
                }
                );
        }
    }
}
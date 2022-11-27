using House_Utility_Service.Reports;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace House_Utility_Service.UtilityService
{
    public partial class WorkerByPamentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM workers", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "workers");
                    da.SelectCommand.CommandText = "SELECT * FROM workerpayments";
                    da.Fill(ds, "workerpayments");
                    WorkersRpt rpt = new WorkersRpt();
                    rpt.SetDataSource(ds);
                    this.CrystalReportViewer1.ReportSource = rpt;
                    rpt.Refresh();
                    this.CrystalReportViewer1.RefreshReport();
                }
            }
        }
    }
}
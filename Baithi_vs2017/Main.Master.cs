using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baithi_vs2017
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataReader myDr = new dbClass().GetRecord("select matkhau from Nguoidung where taikhoan='" + tk.Text + "'");
            if (myDr.HasRows)
            {
                myDr.Read();
                string p = myDr.GetValue(0).ToString();
                if (p == pass.Text)
                {
                    Session["username"] = tk.Text;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sai tai khoan hoac mat khau')", true);
                }
            }

        }
    }
}
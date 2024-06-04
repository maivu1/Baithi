using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baithi_vs2017
{
    public partial class ViewSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTen.Text = "";
            lblMota.Text = "";
            lblDongia.Text = "";

            string param = Request.QueryString["id"].ToString();
            int spID = Convert.ToInt32(param);
            if (spID > 0)
            {
                SqlDataReader myDr = new dbClass().GetRecord("select HinhAnh, TenSP, Mota, Giaban from Sanpham where MaSP="+spID);
                if (myDr.HasRows)
                {
                    myDr.Read();
                    Image1.ImageUrl = "~/Images/" + myDr.GetValue(0).ToString();
                    lblTen.Text = myDr.GetValue(1).ToString();
                    lblMota.Text = myDr.GetValue(2).ToString();
                    decimal dg = Convert.ToDecimal(myDr.GetValue(3));
                    lblDongia.Text = dg.ToString("### ### ###");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ban co the xem gio hang')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user = (string)Session["username"];
            if (string.IsNullOrEmpty(user) == true)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ban chua dang nhap')", true);
                return;
            }

            if (int.TryParse(TextBox1.Text, out int soluong))
            {
                if(soluong>100)
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ban muon mua qua nhieu')", true);
                else
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ban co the mua hang')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ban nhap sai gia tri so')", true);

            }
        }
    }
}
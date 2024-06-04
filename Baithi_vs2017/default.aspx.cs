﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baithi_vs2017
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListLoai.TypeName = "Baithi_vs2017.dbClass";
            ListLoai.SelectMethod = "GetData";
            Parameter parameter = new Parameter
            {
                Name = "sql",
                DefaultValue = "SELECT * FROM [LoaiSP]"
            };
            ListLoai.SelectParameters.Add(parameter);

            ListSP.TypeName = "Baithi_vs2017.dbClass";
            ListSP.SelectMethod = "GetData";
            Parameter parameter1 = new Parameter
            {
                Name = "sql",
                DefaultValue = "SELECT [MaSP], [TenSP], [Giaban], [HinhAnh] FROM [Sanpham]"
            };
            ListSP.SelectParameters.Add(parameter1);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex > -1)
            {
                int maloai = Convert.ToInt32(ListBox1.SelectedItem.Value);
                string sql = "SELECT [MaSP], [TenSP], [Giaban], [HinhAnh] FROM [Sanpham] where Maloai=" + maloai;

                ListSP.TypeName = "Baithi_vs2017.dbClass";
                ListSP.SelectMethod = "GetData";
                Parameter parameter1 = new Parameter
                {
                    Name = "sql",
                    DefaultValue = sql
                };
                ListSP.SelectParameters.Clear();
                ListSP.SelectParameters.Add(parameter1);
                ListView1.DataBind();
            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "xem")
            {
                int masp = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewSP.aspx?id=" + masp);
            }
        }
    }
}
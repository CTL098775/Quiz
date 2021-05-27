using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz
{
    public partial class Quiz20210525 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gv_Show_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                int sum = 0;
                int i_Row = Convert.ToInt32(e.CommandArgument);
                for (int i = 2; i < 5; i++)
                {
                    sum += Convert.ToInt32( gv_Show.Rows[i_Row].Cells[i].Text);
                }

                lb_Show.Text = "Id：" + gv_Show.Rows[i_Row].Cells[0].Text + "<br>" +
                    "Name：" + gv_Show.Rows[i_Row].Cells[1].Text + "<br>" +
                    "Chi：" +  gv_Show.Rows[i_Row].Cells[2].Text + "<br>"+
                    "Math：" + gv_Show.Rows[i_Row].Cells[3].Text + "<br>"+
                    "Eng：" + gv_Show.Rows[i_Row].Cells[4].Text + "<br>"+
                     "總分：" + sum.ToString();
            }
           // int i_Row = Convert.ToInt32br\(e.CommandArgument);
            //gv_Show.Rows[i_Row].Cells
        }
    }
}
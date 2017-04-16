using System;
using System.Data.SqlClient;


namespace MyArea
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            us1dbDataContext db = new us1dbDataContext();
            try
            {
                us1 tab1 = new us1();

                tab1.data = Convert.ToDateTime(TextBox2.Text);
                tab1.oper = TextBox3.Text;
                tab1.summ = TextBox4.Text;

                db.us1.InsertOnSubmit(tab1);
                db.SubmitChanges();
                Label5.Text = null;
                Response.Redirect("/Home.aspx");
            }
            catch (SystemException)
            {
                Label5.Text = "Ошибка ввода данных!";
            }
        }

        SqlConnection con = new SqlConnection("Data Source=;Initial Catalog=test1;Integrated Security=True");


        protected void Button2_Click(object sender, EventArgs e)
        {
            Label5.Text = "";
            int num = 0;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (Convert.ToInt32(GridView1.Rows[i].Cells[3].Text) > 0 && DropDownList2.Items[2].Selected)
                {
                    Label5.Text = null;
                    num += Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
                }
                else if (Convert.ToInt32(GridView1.Rows[i].Cells[3].Text) < 0 && DropDownList2.Items[1].Selected)
                {
                    Label5.Text = null;
                    num += Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
                }
                else if (DropDownList2.Items[0].Selected)
                {
                    Label5.Text = "Операция не выбрана!";
                }
            }
            TextBox5.Text = num.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = "";
            int m;
            int y=2016;
            if (int.TryParse(DropDownList1.SelectedValue, out m))
            {
                SqlDataSource1.FilterExpression = $"data >= '01.{m}.{y}' and ";
                if (m + 1 == 13) { y++; m = 1; }
                else m++;
                SqlDataSource1.FilterExpression += $"data < '01.{m}.{y}'";
            }
            else
                SqlDataSource1.FilterExpression = null;
        }

        
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/General.aspx");
        }
    }

}

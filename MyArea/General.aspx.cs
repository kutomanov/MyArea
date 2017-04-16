using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyArea
{
    public partial class General : System.Web.UI.Page
    {
        String user1 = "user1";
        String password1 = "123456";

        String user2 = "user2";
        String password2 = "654321";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == user1 && TextBox2.Text == password1)
            {
                Response.Redirect("/Home.aspx");
            }
            if (TextBox1.Text == user2 && TextBox2.Text == password2)
            {
                Response.Redirect("/Home2.aspx");
            }
            else
            {
                Label3.Text = "Неверный логин или пароль!";
            }
        }
    }
}
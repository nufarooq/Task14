using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserRegistrationTask
{
    public partial class formexp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick(object s, EventArgs e)
        {
            if (Page.IsValid == true)
            {
                HttpCookie Cookie;
                Cookie = new HttpCookie("userdata");
                Cookie["username"] = txtName.Text;
                Response.Cookies.Add(Cookie);
                //string username = Request.Cookies["username"].Value;
                HttpCookie reqCookies = Request.Cookies["userdata"];
                if (reqCookies != null)
                {
                    string User_name = reqCookies.Value.ToString();
                    result.Text = User_name + " your data has been saved.";
                }
                
            }
            else
            {
                result.Text ="Sorry you have to fill these fields";
            }
        }
    }
}
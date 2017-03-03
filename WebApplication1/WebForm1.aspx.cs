using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // IsPostBack tells whether page is on its initial load, it prevents duplicate
            // here is another comment 
            if (!IsPostBack) { }
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            var input1 = int.Parse(TextBox1.Text);
            var input2 = int.Parse(TextBox3.Text);

            if (DropDownList1.SelectedIndex == 0)
            {
                int addition = input1 + input2;
                base10.Text = addition.ToString();
                base2.Text = Convert.ToString(addition, 2);
            }

            else if (DropDownList1.SelectedIndex == 1)
            {
                int subtract = input1 - input2;
                base10.Text = subtract.ToString();
                base2.Text = Convert.ToString(subtract, 2);
            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                int multiply = input1 * input2;
                base10.Text = multiply.ToString();
                base2.Text = Convert.ToString(multiply, 2);
            }
            else
            {
                try
                {
                    int divide = input1 / input2;
                    base10.Text = divide.ToString();
                    base2.Text = Convert.ToString(divide, 2);
                }
                catch(System.DivideByZeroException)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script",
                        "<script>alert('Any number divided by {0} is undefined. Please key in other value.');</script>");
                }
            }
        }

        
        protected void Count_Click(object sender, EventArgs e)
        {
            int numOfZero = base2.Text.Split('0').Length - 1;
            int numOfOne = base2.Text.Split('1').Length - 1;

            TextBox5.Text = numOfZero.ToString();
            TextBox6.Text = numOfOne.ToString();
        }
    }
}
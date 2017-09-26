using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace PM_AZ_2017
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                literalThankYou.Visible = false;
        }

        protected void buttonSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Collect and call stored procedure with parameters
                string strName = textboxName.Text;
                string strCompany = textboxCompany.Text;
                string strEmail = textboxEmail.Text;
                string strPhone = textboxPhone.Text;
                string strComment = textboxComment.Text;
                int intCommentID = 0;
                //intCommentID = objComment.commentInsert(string strName, string, strCompany, string strEmail, string strPhone, string strComment)

                // Display thank you message
                if (intCommentID == 0)
                    displayThankYou();
             }
        }
        protected void displayThankYou()
        {
            StringBuilder sbThankYou = new StringBuilder();
            sbThankYou.Append("<div>");
            sbThankYou.Append("<p class=\"thankyouMessage\">");
            sbThankYou.Append("Thank you, Peter Martinez will contact you in response to your comment or question.");
            sbThankYou.Append("</p>");
            sbThankYou.Append("</div>");
            literalThankYou.Text = sbThankYou.ToString();
            literalThankYou.Visible = true;
        }
    }
}
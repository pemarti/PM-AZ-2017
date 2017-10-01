using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

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
                int intNewCommentID = 0;
                intNewCommentID = SaveSubmission(intCommentID, strName, strCompany, strEmail, strPhone, strComment);

                // Display thank you message
                if (intNewCommentID > 0)
                    displayThankYou();
             }
        }

        private static int SaveSubmission(int intCommentID, string strName, string strCompany, string strEmail, string strPhone, string strComment)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["pmAZ2017db"].ConnectionString);
            SqlDataAdapter MyDataAdapter = new SqlDataAdapter("sp_PublicComment_Save", con);

            //Set the command type as StoredProcedure.
            MyDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            //Create and add a parameter to Parameters collection for the stored procedure.
            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@CommentID", SqlDbType.Int));
            MyDataAdapter.SelectCommand.Parameters["@CommentID"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@CommentID"].Value = intCommentID;


            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 255));
            MyDataAdapter.SelectCommand.Parameters["@Name"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Name"].Value = strName;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Company", SqlDbType.NVarChar, 255));
            MyDataAdapter.SelectCommand.Parameters["@Company"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Company"].Value = strCompany;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar, 255));
            MyDataAdapter.SelectCommand.Parameters["@Email"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Email"].Value = strEmail;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Phone", SqlDbType.NVarChar, 255));
            MyDataAdapter.SelectCommand.Parameters["@Phone"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Phone"].Value = strPhone;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Comment", SqlDbType.NVarChar, 4000));
            MyDataAdapter.SelectCommand.Parameters["@Comment"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Comment"].Value = strComment;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@SubmissionDate", SqlDbType.SmallDateTime));
            MyDataAdapter.SelectCommand.Parameters["@SubmissionDate"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@SubmissionDate"].Value = DateTime.Now;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Reviewed", SqlDbType.Bit));
            MyDataAdapter.SelectCommand.Parameters["@Reviewed"].Direction = ParameterDirection.Input;
            MyDataAdapter.SelectCommand.Parameters["@Reviewed"].Value = 0;

            //Create and add an output parameter to the Parameters collection. 
            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@Output", SqlDbType.Int, 4));
            MyDataAdapter.SelectCommand.Parameters["@Output"].Direction = ParameterDirection.Output;

            //Create a new DataSet to hold the records.
            DataSet DS = new DataSet();
            
            //Fill the DataSet with return value.
            MyDataAdapter.Fill(DS, "sp_PublicComment_Save");
            int intNewCommentID = 0;
            return intNewCommentID = Convert.ToInt32(MyDataAdapter.SelectCommand.Parameters["@Output"].Value);
        }

        public void displayThankYou()
        {
            StringBuilder sbThankYou = new StringBuilder();
            sbThankYou.Append("<div>");
            sbThankYou.Append("<p class=\"thankyouMessage\">");
            sbThankYou.Append("Thank you, Peter Martinez will contact you in response to your comment or question.");
            sbThankYou.Append("</p>");
            sbThankYou.Append("</div>");
            literalThankYou.Text = sbThankYou.ToString();
            literalThankYou.Visible = true;
            //contactForm.Visible = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "scrollToBottom()", true);
        }
    }
}
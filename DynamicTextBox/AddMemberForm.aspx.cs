using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicTextBox
{
    public partial class AddMemberForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NumOfMemberTxtBox_TextChanged(object sender, EventArgs e)
        {
            int numOfTextBox = Convert.ToInt32(NumOfMemberTxtBox.Text);

            AddMembersTextBoxes(numOfTextBox);
        }

        protected void AddMembersTextBoxes(int amount) 
        {
            TextBox newTextBox;

            for (int i = 0; i < amount; i++) {
                newTextBox = new TextBox();
                newTextBox.ID = "Member" + i.ToString();
                this.MembersPlaceHolder.Controls.Add(newTextBox);
            }
        }
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMemberForm.aspx.cs" Inherits="DynamicTextBox.AddMemberForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Project</title>
    <style type="text/css">
        #member-list {
            max-width: 250px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Number of teams:
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NumOfMemberTxtBox" Text="1" AutoPostBack="true" OnTextChanged="NumOfMemberTxtBox_TextChanged"></asp:TextBox>
                    <asp:CompareValidator Type="Integer" Operator="DataTypeCheck" runat="server" ControlToValidate="NumOfMemberTxtBox" ErrorMessage="Must be a number"></asp:CompareValidator>
                    <asp:RangeValidator runat="server" ControlToValidate="NumOfMemberTxtBox" MinimumValue="1" MaximumValue="10" Type="Integer" ErrorMessage="Number of member must be between 1 to 10"></asp:RangeValidator>
                 </td>
            </tr>
            <tr>
                <td>
                    Members:
                </td>
                <td id="member-list">
                    <asp:PlaceHolder runat="server" ID="MembersPlaceHolder"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

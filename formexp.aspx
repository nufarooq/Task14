<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formexp.aspx.cs" Inherits="UserRegistrationTask.formexp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Your Name: <asp:TextBox id="txtName" runat="server" /><asp:RequiredFieldValidator id="reqname" ForeColor="Red"
controltovalidate="txtName" runat="server" errormessage="*" />
            <br />
            Enter your address: <asp:TextBox id="txtAddress" textmode="multiline" runat="server"/><asp:RequiredFieldValidator id="reqaddress" ForeColor="Red"
controltovalidate="txtAddress" runat="server" errormessage="*" display="static"/> 
            <br />
            Date of birth: <asp:TextBox id="txtDate" runat="server"/> <asp:Requiredfieldvalidator id="requdate" ForeColor="Red"
controltovalidate="txtDate" runat="server" errormessage="*" display="static"/>
            <asp:Rangevalidator id="reqrunation" controltovalidate="txtDate" ForeColor="Red"
runat="server" type="date" minimumvalue="1/1/1900" maximumvalue="1/1/2099"
errormessage="Date should be in between 1/1/1900 - 1/1/2099"
display="static"/>
            <br />
            Nationality :<asp:TextBox id="txtNationality" runat="server"/> <asp:Requiredfieldvalidator id="requnation" ForeColor="Red"
controltovalidate="txtNationality" runat="server" errormessage="*" display="static"/>
            <br />

            Country:<asp:DropDownList id="ddlCountry" runat="server" >
 <asp:ListItem Value="0">--- Select ---</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>U.S.A</asp:ListItem>
 <asp:ListItem>UAE</asp:ListItem>
 <asp:ListItem>U.K</asp:ListItem>
 <asp:ListItem>China </asp:ListItem>
 <asp:ListItem>Russia </asp:ListItem>
 </asp:DropDownList><asp:Requiredfieldvalidator id="requplace" InitialValue="0"  ForeColor="Red"
controltovalidate="ddlCountry" runat="server" errormessage="*" display="static"/>
            <br />

            Skillsets : <asp:TextBox id="txtSkill" textmode="multiline"
runat="server"/>
    <asp:Requiredfieldvalidator id="requskill" ForeColor="Red"
controltovalidate="txtSkill" runat="server" errormessage="*" display="static"/>

            <br /><br />
            <asp:Button type="submit" text="submit" OnClick="btnclick"
runat="server"/><br /><br />
<asp:Label id="result" runat="server" />
        </div>
    </form>
</body>
</html>

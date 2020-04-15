<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>
 <script language="C#" runat="server">

      void SubmitBtn_Click(Object sender, EventArgs e) 
      {
          string msg = "";
          foreach (ListItem li in ListBox1.Items)
          {
              if (li.Selected == true)
              {
                  msg += "<BR>" + li.Text + " is selected.";
              }
          }
          Label1.Text = msg;
      }

   </script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>ListBox Example</h3>

   

      <section>
    <label class="select-label">Выберите своего динозавра:</label>
    <select class="cs-select cs-skin-rotate">
        <option value="1">Стегозавр</option>
        <option value="2">Велоцираптор</option>
        <option value="3">Спинозавр</option>
        <option value="4">Археоптерикс</option>
        <option value="5">Апатозавр</option>
    </select>
</section>

      <asp:button id="Button1"
           Text="Submit" 
           OnClick="SubmitBtn_Click" 
           runat="server" />
        
      <asp:Label id="Label1" 
           Font-Name="Verdana" 
           Font-Size="10pt" 
           runat="server"/>
       
</asp:Content>

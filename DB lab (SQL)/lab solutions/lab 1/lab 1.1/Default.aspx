<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
       <section>
           <h1>Instagram Home page</h1>
       </section>
        <section>
         <asp:Image ID="image2" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png" 
           runat="server" 
           Height="200px" Width="200px" 
/>
        </section>
        <section>
            <h5>Create an account</h5>
        </section>
        <section>
            <label>Firstname: </label>
            <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
            <label>last name: </label>
            <asp:TextBox ID="lastname" runat="server"></asp:TextBox>

        </section>
        <section> <br />
            <label>User name: </label>
 <asp:TextBox ID="username" runat="server"></asp:TextBox>
</section>
                <section> 
                    <br />
            <label>Password: </label>
            <asp:TextBox ID="pasword" Textmode="Password" runat="server"></asp:TextBox>
</section>
        <section>
            <br />
           <asp:Calendar ID="calDOB" runat="server" 
              SelectionMode="None" 
              VisibleDate="2024-11-03" 
              CssClass="custom-calendar"
/>


        </section>
        <section>
            <br />
            <br />
            <label>Country</label>
            <asp:DropDownList ID="ddlDepartment" runat="server">
    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
    <asp:ListItem Text="USA" Value="CS"></asp:ListItem>
    <asp:ListItem Text="PAK" Value="EE"></asp:ListItem>
    <asp:ListItem Text="MALAYSIA" Value="BBA"></asp:ListItem>
    <asp:ListItem Text="china" Value="CV"></asp:ListItem>
</asp:DropDownList>

        </section>
        <section>
            <label>
                <br /><br />
                Gender:&nbsp&nbsp
            </label>
           <label>male &nbsp &nbsp  </label><asp:RadioButton ID="male" GroupName="gender" runat="server" />
          <label>&nbsp&nbsp female &nbsp &nbsp</label>
            <asp:RadioButton ID="female" GroupName="gender" runat="server" />
        </section>
        <br />
        <section>
            <asp:CheckBox ID="checkisprivwte" runat="server" />
            <label>Enable privacy</label>
        </section>
        <section>
            <br />
            <asp:Button ID="creatacc" Text="Create account" runat="server" />
        </section>
        <div class="row">
          
        </div>
    </main>

</asp:Content>

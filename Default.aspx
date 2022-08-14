<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Safe_Catering._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">


        <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2 class="text-justify">Login</h2>
                <hr />
                <asp:Label Text="Username" runat="server" />
                
                <br />
                <asp:TextBox runat="server" class="form-control" placeholder="John Doe" id="username"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill this" style="color:red;font-weight:bold" ControlToValidate="username"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Password" runat="server" />
                <br />
                <asp:TextBox runat="server" class="form-control" TextMode="Password" id="password" placeholder="********" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill this" style="color:red;font-weight:bold" ControlToValidate="password"></asp:RequiredFieldValidator>
              
                <hr />
                <p>
                    Don't have an account? <a href="Register.aspx">Create New Account</a>
                </p>
                <asp:Button Text="Login" runat="server" class="btn btn-warning" OnClick="Unnamed3_Click" />

            </div>


        </div>
        <div class="col-md-4"></div>

    </div>

</asp:Content>

<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Safe_Catering.Register" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="container" style=" font-weight:bold;color: rgb(170,90,50); padding: 20px; margin: 20px">


        <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2 class="text-justify">Register</h2>
                <hr />
                <asp:Label Text="Username" runat="server" />
                <br />
                <asp:TextBox runat="server" class="form-control" placeholder="John Doe" id="username"/>
                <br />
                <asp:Label Text="Password" runat="server" />
                <br />
                <asp:TextBox runat="server" class="form-control" TextMode="Password" id="password" placeholder="********" />
                <hr />
                <p>
                    Already have an account? <a href="Default.aspx">Login</a>
                </p>
                <asp:Button Text="Register" runat="server" class="btn btn-warning" OnClick="Unnamed3_Click"  />

            </div>


        </div>
        <div class="col-md-4"></div>

    </div>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageralPage.aspx.cs" Inherits="Safe_Catering.ManageralPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
            <div class="row" style="padding: 20px">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="padding: 20px">
                    <h2>Add Day Infromation Details</h2>
                    <hr />

                    <label>Date </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="date" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="date"></asp:RequiredFieldValidator>

                    <br />
                    <label>File/Image</label>
                    <br />

                    <asp:FileUpload runat="server" ID="myfile" class="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select file!" Style="color: red; font-weight: bold" ControlToValidate="myfile"></asp:RequiredFieldValidator>

                    <br />
                    <asp:DropDownList runat="server" ID="table" class="form-control">
                        <asp:ListItem Value="0">--Select Table--</asp:ListItem>
                        <asp:ListItem Value="SC5">SC5</asp:ListItem>
                        <asp:ListItem Value="SC6">SC6</asp:ListItem>
                        <asp:ListItem Value="SC7">SC7</asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select table!" Style="color: red; font-weight: bold" ControlToValidate="table"></asp:RequiredFieldValidator>


                    <hr />
                    <asp:Button Text="Add Details" CssClass="btn btn-info btn-block" ID="btnadd" runat="server" OnClick="btnadd_Click" />




                </div>



            </div>

        </asp:Panel>

        <asp:Panel runat="server" Visible="false" ID="panel2">


            <div class="row" style="text-align: center; padding: 20px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h2 class="text-success">Thank you for your submission, your information has been successfuly stored  
                    </h2>

                    <hr />
                    <asp:Button Text="View Records" class="btn btn-warning" runat="server" OnClick="Unnamed1_Click" />
                </div>
                <div class="col-md-4"></div>

            </div>


        </asp:Panel>
        <asp:Panel runat="server" Visible="false" ID="panel3">


            <div class="row" style="text-align: center; padding: 20px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h2 class="text-success">Thank you for your submission, your information has been successfuly stored  
                    </h2>

                    <hr />
                    <asp:Button Text="View Records" class="btn btn-warning" runat="server" OnClick="Unnamed2_Click" />
                </div>
                <div class="col-md-4"></div>

            </div>


        </asp:Panel>

    </div>

</asp:Content>

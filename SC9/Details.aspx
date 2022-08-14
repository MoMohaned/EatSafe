<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Safe_Catering.SC9.Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
            <div class="row" style="padding: 20px">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="padding: 20px">
                    <h2>Customer Delivery Record

                    </h2>
                    <hr />

                    <label>Date </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="date" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="date"></asp:RequiredFieldValidator>
                    <br />
                    <label>Food Delivery</label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="food" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="food"></asp:RequiredFieldValidator>
                    <br />

                    <label>Quantity</label>
                    <br />
                    <asp:TextBox TextMode="Number" runat="server" class="form-control" ID="quantity" />

                    <br />


                    <label>Batch Code</label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="batchcode" />

                    <br />

                    <br />


                    <label>Customer Details</label>
                    <br />
                    <asp:TextBox  runat="server" class="form-control" ID="customer" />

                    <br />

                    <br />


                    <label>Delivery Temperatue</label>
                    <br />
                    <asp:TextBox TextMode="Number"  runat="server" class="form-control" ID="deltemp" />

                    <br />

                    

<br />
                    <label>Adequate Seperation </label>
                    <br />
                    
                    <asp:DropDownList runat="server" CssClass="form-control" ID="seperation">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>

                    </asp:DropDownList>

                    <br />
                    <label>Comments </label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="comments" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="comments"></asp:RequiredFieldValidator>


                    <label>Sign </label>
                    <asp:TextBox runat="server" ID="sign" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="sign"></asp:RequiredFieldValidator>

                    <hr />
                    <asp:Button Text="Update" CssClass="btn btn-success btn-block" ID="btnadd" runat="server" OnClick="btnadd_Click" />
                    <asp:Button Text="Cancel" CssClass="btn btn-danger btn-block" ID="Button1" runat="server" OnClick="Button1_Click" />




                </div>



            </div>

        </asp:Panel>
    </div>
</asp:Content>

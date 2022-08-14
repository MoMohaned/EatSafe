<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Safe_Catering.SC4.Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
            <div class="row" style="padding: 20px">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="padding: 20px">
                    <h2>Hot/Hold/Display Records

                    </h2>

                    <hr />
                    <label>Date </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="date" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="date"></asp:RequiredFieldValidator>
                    <br />
                    <label>Food </label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="food" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="food"></asp:RequiredFieldValidator>
                    <br />

                    <label>Hot Hold Time</label>
                    <br />
                    <asp:TextBox TextMode="Time" runat="server" class="form-control" ID="hhtime" />

                    <br />


                    <label>Core Temp after 2hrs</label>
                    <br />
                    <asp:TextBox TextMode="Number" runat="server" class="form-control" ID="chours2" />

                    <br />

                    <br />


                    <label>Core Temp after 4hrs</label>
                    <br />
                    <asp:TextBox TextMode="Number" runat="server" class="form-control" ID="chours4" />

                    <br />

                    <br />


                    <label>Core Temp after 6hrs</label>
                    <br />
                    <asp:TextBox TextMode="Number"  runat="server" class="form-control" ID="chours6" />

                    <br />

                    <label>Sign </label>
                    <asp:TextBox runat="server" ID="sign" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="sign"></asp:RequiredFieldValidator>
                    <br />
                    <label>Comment </label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="comments" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="comments"></asp:RequiredFieldValidator>

                    <hr />
                    <asp:Button Text="Update" CssClass="btn btn-success btn-block" ID="updatebtn" runat="server" OnClick="updatebtn_Click"  />
                    <asp:Button Text="Cancel" CssClass="btn btn-danger btn-block" ID="cancelbtn" runat="server" OnClick="cancelbtn_Click"  />




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
                    <asp:Button Text="View Records" class="btn btn-warning" runat="server" />
                </div>
                <div class="col-md-4"></div>

            </div>

        </asp:Panel>
            </div>

</asp:Content>


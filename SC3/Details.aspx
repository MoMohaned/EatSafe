<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Safe_Catering.SC3.Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
            <div class="row" style="padding: 20px">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="padding: 20px">
                    <h2>Cooking/Cooling/Reheating Records

                    </h2>
                    <hr />
                    <h4 class="text-warning text-center">COOKING*
                    </h4>
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

                    <label>Cooking Start Time</label>
                    <br />
                    <asp:TextBox TextMode="Time" runat="server" class="form-control" ID="cStartime" />

                    <br />


                    <label>Cooking End Time</label>
                    <br />
                    <asp:TextBox TextMode="Time" runat="server" class="form-control" ID="cEndtime" />

                    <br />

                    <label>Core Temp</label>
                    <br />
                    <asp:TextBox TextMode="Number" runat="server" class="form-control" ID="coretemp" />

                    <br />

                    <br />
                    <label>Sign </label>
                    <asp:TextBox runat="server" ID="sign1" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="sign1"></asp:RequiredFieldValidator>
                    <hr />
                    <h4 class="text-warning text-center">COOLING*
                    </h4>
                    <hr />
                    <label>Date </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="date2" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="date2"></asp:RequiredFieldValidator>

                    <br />


                    <label>Time into Fridge</label>
                    <br />
                    <asp:TextBox TextMode="Time" runat="server" class="form-control" ID="fridgetime" />

                    <br />

                    <label>Sign </label>
                    <asp:TextBox runat="server" ID="sign2" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="sign2"></asp:RequiredFieldValidator>

                    <h4 class="text-warning text-center">REHEATING*
                    </h4>
                    <hr />
                    <label>Date </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="date3" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="date3"></asp:RequiredFieldValidator>

                    <br />
                    <label>Core Temp </label>
                    <br />
                    <asp:TextBox runat="server" TextMode="number" class="form-control" ID="coretemp2" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="coretemp2"></asp:RequiredFieldValidator>



                    <br />
                    <label>Sign </label>
                    <asp:TextBox runat="server" ID="sign3" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="sign3"></asp:RequiredFieldValidator>
                    <br />
                    <label>Comment </label>
                    <br />
                    <asp:TextBox runat="server" class="form-control" ID="comments" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Fill This!" Style="color: red; font-weight: bold" ControlToValidate="comments"></asp:RequiredFieldValidator>

                    <br />
                    <hr />
                    <asp:Button Text="Update" CssClass="btn btn-success btn-block" ID="btnadd" runat="server" OnClick="btnadd_Click" />
                    <asp:Button Text="Cancel" CssClass="btn btn-danger btn-block" ID="Button1" runat="server" OnClick="Button1_Click" />




                </div>



            </div>

        </asp:Panel>

       
    </div>

</asp:Content>

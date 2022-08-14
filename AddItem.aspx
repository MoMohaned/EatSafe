<%@ Page Title="Add Item" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Safe_Catering.AddItem" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
        <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2 class="text-justify">Add Item</h2>
                <hr />
                <Label> Date </Label>
                <br />
                <asp:TextBox runat="server" TextMode="Date" class="form-control"  id="date"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="date"></asp:RequiredFieldValidator>
                <br />
                <Label> Food Item </Label>
                <br />
                <asp:TextBox runat="server" class="form-control" id="foodname" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="foodname"></asp:RequiredFieldValidator>
                
                <br />
               <Label> Batch Code </Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" TextMode="Number" id="batchcode" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="batchcode"></asp:RequiredFieldValidator>
              
                <br />
               <Label> Supplied By </Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" id="supplied" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="supplied"></asp:RequiredFieldValidator>
              
                <br />
             <Label> Use By </Label>
                   <br />
                <asp:TextBox runat="server" class="form-control" id="useby" TextMode="Date"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="useby"></asp:RequiredFieldValidator>
              

                <br />
             
                <Label> Temperature </Label>
                   <br />
                <asp:TextBox runat="server" class="form-control" id="tempt" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="tempt"></asp:RequiredFieldValidator>
              
                <br />
                <Label> Vehicle </Label>
                 <br />

                <asp:DropDownList ID="VStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Confirmed">Confirmed</asp:ListItem>
                    <asp:ListItem Value="Not Confirmed">Not Confirmed</asp:ListItem>

                </asp:DropDownList>
              

                <br />
              <Label> Comment </Label>
                  <br />
                <asp:TextBox runat="server" class="form-control" id="comments" />
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="comments"></asp:RequiredFieldValidator>
                
                <br />
             <Label> Sign </Label>
                   <asp:TextBox runat="server" id="sign" CssClass="form-control"/> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="sign"></asp:RequiredFieldValidator>
              
                <hr />
                <asp:Button Text="Submit" CssClass="btn btn-warning btn-block" OnClick="Unnamed_Click" runat="server" />
                

                
                
            </div>



        </div>

            </asp:Panel>

        <asp:Panel runat="server" Visible="false" ID="panel2">

            
            <div class="row" style="text-align:center;padding:20px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
            <h2 class="text-success">
                Thank you for your submission, your information has been successfuly stored  
            </h2>

                    <hr />
                    <asp:Button Text="View Records" class="btn btn-warning" OnClick="Unnamed_Click1" runat="server" />
                    </div>
                <div class="col-md-4"></div>

            </div>
            

        </asp:Panel>

    </div>

</asp:Content>

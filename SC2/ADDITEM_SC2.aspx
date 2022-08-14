<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ADDITEM_SC2.aspx.cs" Inherits="Safe_Catering.SC2.ADDITEM_SC2" %>
   

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">

        <asp:Panel runat="server" ID="panel1">
        <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2>
                    Fridge/Cold Room/Display Chill Temperature Records</h2>
                <hr />
                <Label> Unit </Label>
                <br />
                <asp:TextBox runat="server" class="form-control" id="unitname" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="unitname"></asp:RequiredFieldValidator>
                <br />
                <Label> Date </Label>
                <br />
                <asp:TextBox runat="server" TextMode="Date" class="form-control"  id="date"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill This!" style="color:red;font-weight:bold" ControlToValidate="date"></asp:RequiredFieldValidator>
                
                <br />
               <Label>AM</Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" id="am" />
              
                <br />

               <Label>**PM</Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" id="pm" />
              
                
                
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
                <asp:Button Text="Add" CssClass="btn btn-info btn-block" id="btnadd" runat="server" OnClick="btnadd_Click" />
                  
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
                    <asp:Button Text="View Records" class="btn btn-warning"  runat="server" />
                    </div>
                <div class="col-md-4"></div>

            </div>
            

        </asp:Panel>
           <asp:Panel runat="server" Visible="false" ID="panel3">

            
            <div class="row" style="text-align:center;padding:20px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
            <h2 class="text-success">
                Thank you for your submission, your information has been successfuly stored  
            </h2>

                    <hr />
                    <asp:Button Text="View Records" class="btn btn-warning"  runat="server" />
                    </div>
                <div class="col-md-4"></div>

            </div>
            

        </asp:Panel>

    </div>

    </asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Safe_Catering.SC2.Details" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">
        <hr />
        
                 <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2>Item details</h2>
                <hr />
                <asp:Label Visible="false" Text="" ID="itid" runat="server" />
                
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
               
                <hr />
                <asp:Button Text="Update" CssClass="btn btn-info" id="edit" runat="server" OnClick="edit_Click"  />
                <asp:Button Text="Cancel" CssClass="btn btn-danger" id="cancel" runat="server" OnClick="cancel_Click" />
                
                
                
                
            </div>



        </div>
    



    </div>

</asp:Content>

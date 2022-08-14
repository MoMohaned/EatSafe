<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Safe_Catering.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
    <div class="container" style="color: rgb(170,90,50); padding: 20px; margin: 20px">
        <hr />
        
                 <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2>Item details</h2>
                <hr />
                <asp:Label Visible="false" Text="" ID="itid" runat="server" />
                
                <Label> Date </Label>
                <br />
                <asp:TextBox runat="server" TextMode="Date" class="form-control"  id="date"/>
                <br />
                <Label> Food Item </Label>
                <br />
                <asp:TextBox runat="server" class="form-control" id="foodname" />
                
                <br />
               <Label> Batch Code </Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" TextMode="Number" id="batchcode" />
              
                <br />
               <Label> Supplied By </Label>
                 <br />
                <asp:TextBox runat="server" class="form-control" id="supplied" />
              
                <br />
             <Label> Use By </Label>
                   <br />
                <asp:TextBox runat="server" class="form-control" id="useby" TextMode="Date"/>
              

                <br />
             
                <Label> Temperature </Label>
                   <br />
                <asp:TextBox runat="server" class="form-control" id="tempt" />
              
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
                
               
                <br />
             <Label> Sign </Label>
                   <asp:TextBox runat="server" id="sign" CssClass="form-control"/> 
              
                <hr />
                <asp:Button Text="Update" CssClass="btn btn-info" id="edit" runat="server" OnClick="edit_Click" />
                <asp:Button Text="Cancel" CssClass="btn btn-danger" id="cancel" runat="server" OnClick="cancel_Click" />
                

                
                
            </div>
        </div>
    </div>

</asp:Content>

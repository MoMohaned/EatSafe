<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="Safe_Catering.SC2.Items" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


         <div class="text-center" style="color:rgb(170,90,50);padding:20px;margin:20px">

   <div class="row">
             <div class="col-md-4"></div>
             <div class="col-md-4">
                 <hr />
                 <h2>
                     Fridge/Cold Room/Display Chill Temperature Records
                 </h2>
                 <hr />
                     <asp:DataList runat="server" ID="showdata" DataKeyField="Id"  Height="202px" Width="308px" OnItemCommand="showdata_ItemCommand" >
                         <ItemTemplate>
                             <table class="nav-justified">
                                 <tr>
                                 
                                     <td>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                                     </td>
                                     <td>
                                         <asp:LinkButton ID="LinkButton1" runat="server" CommandName="date_dt" CommandArgument='<%# Eval("Id") %>'  CssClass="btn btn-default" Text='<%# Eval("Date") %>' />
                                   
                                         </td>
                                 </tr>
                             </table>

                        
                             </ItemTemplate>
                     </asp:DataList>


                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [_Date] AS column1 FROM [SC1]"></asp:SqlDataSource>


                 </div>
<div class="col-md-4">

    <asp:Button Text="Add Item" CssClass="btn btn-primary btn-block"  runat="server" OnClick="Unnamed1_Click" />


</div>


         </div>

         <hr />
             </div>

        <%-- <asp:Panel runat="server" ID="details" Visible="false" style="color:rgb(170,90,50);padding:20px;margin:20px">

             <div class="row" style="padding:20px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="padding:20px">
                <h2>Item details</h2>
                <hr />
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
                <asp:Button Text="Delete" CssClass="btn btn-danger" id="delete" runat="server" OnClick="delete_Click" />
                

                
                
            </div>



        </div>
    
             
         </asp:Panel>--%>
    </asp:Content>

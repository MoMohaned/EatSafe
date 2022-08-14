<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="Safe_Catering.SC4.items" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


         <div class="text-center" style="color:rgb(170,90,50);padding:20px;margin:20px">

   <div class="row">
             <div class="col-md-4"></div>
             <div class="col-md-4">
                 <hr />
                 <h2>
                     Hot/Hold/Display Records
                 </h2>
                 <hr />
                     <asp:DataList runat="server" ID="showdata" DataKeyField="Id"  Height="202px" Width="308px" OnItemCommand="showdata_ItemCommand">
                         <ItemTemplate>
                             <table class="nav-justified">
                                 <tr>
                                 
                                     <td>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                                     </td>
                                     <td>
                                         <asp:LinkButton ID="LinkButton1" runat="server" CommandName="date_dt" CommandArgument='<%# Eval("Id") %>'  CssClass="btn btn-default" Text='<%# Eval("Date") %>' />
                                   
                                         </td>
                                 </tr>
                             </table>

                        
                             </ItemTemplate>
                     </asp:DataList>


                 
                 </div>
<div class="col-md-4">

    <asp:Button Text="Add Item" CssClass="btn btn-primary btn-block"  runat="server" OnClick="Unnamed1_Click" />


</div>


         </div>

         <hr />
             </div>

    </asp:Content>

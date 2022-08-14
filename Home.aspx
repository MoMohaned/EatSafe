<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Safe_Catering.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .row {
            font-size: 60px;
        }

            .row #sc1 {
                margin: 40px;
                width: 200px;
            }

        .auto-style1 {
            text-align: left;
            height: 20px;
            margin-left: 40px;
        }

        .auto-style2 {
            text-align: left;
            height: 20px;
        }

        .auto-style3 {
            width: 100%;
            height: 335px;
        }

        .auto-style3 {
        }

        #tbl1 tr td {
            padding: 10px;
            font-weight: bold;
        }
    </style>


    <div class="text-center" style="color: rgb(170,90,50); padding: 20px; margin: 10px">
        <hr />
        <h1>Safe Catering
            <br />
            Home Page
        </h1>
        <hr />

        <div class="row row1">


            <asp:Button Text="SC1" ID="sc1" OnClick="sc1_Click" CssClass="btn btn-info" Style="border-radius: 15px; width: 150px" runat="server" />
            <asp:Button Text="SC2" ID="sc2" OnClick="sc2_Click" CssClass="btn btn-info" Style="border-radius: 15px; width: 150px" runat="server" />

            <asp:Button Text="SC3" ID="sc3" OnClick="sc3_Click" CssClass="btn btn-info" Style="border-radius: 15px; width: 150px" runat="server" />

            <asp:Button Text="SC4" ID="sc4" OnClick="sc4_Click" CssClass="btn btn-info" Style="border-radius: 15px; width: 150px" runat="server" />

            <asp:Button Text="SC5" ID="sc5" OnClick="sc5_Click" CssClass="btn btn-info" Style="border-radius: 15px; width: 150px" runat="server" />

        </div>



        <hr />

        <asp:Panel runat="server" ID="SC1Panel">
            <h2>Food Delivery Records
            </h2>
            <hr />

            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" Width="100%" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <ItemTemplate>
                    <table class="auto-style3" id="tbl1">
                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("_Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Food Name</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("foodname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Batch Code</td>
                            <td class="text-left">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("batchcode") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Supplied By</td>
                            <td class="text-left">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("suppliedby") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-left">Use By</td>
                            <td class="text-left">
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("UseBy") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-left">Temperature</td>
                            <td class="text-left">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("temperature") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Vehicle</td>
                            <td class="text-left">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Vehicle") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Comment</td>
                            <td class="text-left">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Comment") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td><strong>
                                <u>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                </u>
                            </strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
              <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SC1]"></asp:SqlDataSource>

        </asp:Panel>



        <asp:Panel runat="server" ID="SC2Panel">

            <hr />
            <h2>Fridge/Cold Room/Display Chill Temperature Records
            </h2>
            <hr />

            <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <ItemTemplate>
                    <table class="auto-style3" id="tbl1">

                        <tr>
                            <td class="auto-style2">Unit</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Unit")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">AM</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("AM") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">**PM</td>
                            <td class="text-left">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("PM") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Comments</td>
                            <td class="text-left">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td><strong>
                                <u>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Signed") %>'></asp:Label>
                                </u>
                            </strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
               <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((DataList2.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>



            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SC1]"></asp:SqlDataSource>

        </asp:Panel>





        <asp:Panel runat="server" ID="SC3Panel">
            <hr />
            <h2>Cooking/Cooling/Reheating Records            
            </h2>
            <hr />
            <asp:DataList ID="ScDDl3" runat="server" DataKeyField="Id" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="ScDDl3_ItemCommand">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />

                <ItemTemplate>
                    <table class="auto-style3" id="tbl1" border="1">

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Cooking" class="text-primary text-center" runat="server" />
                                    <hr />
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">ID</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label20" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Food Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Cooking Start Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cooking_Start") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Cooking End Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Cooking_End") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temperature</td>
                            <td class="text-left">
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Core_Temp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td><strong>
                                <u>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                </u>
                            </strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Cooling" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Date</td>
                            <td class="text-left">
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("F_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Time into Fridge</td>
                            <td class="text-left">
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("FridgeTime") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Sign</td>
                            <td class="text-left">
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("F_Sign") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Reheating" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Date</td>
                            <td class="text-left">
                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("R_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temperature</td>
                            <td class="text-left">
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("CoreTemp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Sign</td>
                            <td class="text-left">
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("R_Sign") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Comments" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Comments</td>
                            <td class="text-left">
                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((ScDDl3.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>




        </asp:Panel>



        <asp:Panel runat="server" ID="Panel4">
            <hr />
            <h2>Hot/Hold/Display Records            
            </h2>
            <hr />
            <asp:DataList ID="ScDDL4" runat="server" DataKeyField="Id" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="ScDDL4_ItemCommand" >
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />

                <ItemTemplate>
                    <table class="auto-style3" id="tbl1" border="1">

                        <tr>
                            <td class="auto-style2">ID</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label20" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Food Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Hot Hold Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("HHTime") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temp after 2hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("CoreTemp2") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temp after 4hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("CoreTemp4") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-left">Core Temp after 6hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("CoreTemp6") %>'></asp:Label>
                            </td>
                        </tr>

                        
                        
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td>
                                
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                
                            </td>
                        </tr>

                        
                      
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((ScDDL4.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>




        </asp:Panel>


        <hr />
        
        <asp:Panel runat="server" ID="Panel9">
            <hr />
            <h2>Customer Delivery Record            
            </h2>
            <hr />
            <asp:DataList ID="ScDDL9" runat="server" DataKeyField="Id" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="ScDDL9_ItemCommand" >
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />

                <ItemTemplate>
                    <table class="auto-style3" id="tbl1" border="1">

                        <tr>
                            <td class="auto-style2">ID</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label20" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Food Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FoodDelv")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Quantity</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Batch Code</td>
                            <td class="text-left">
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("BatchCode") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Customer Name</td>
                            <td class="text-left">
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("CustomerDetails") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-left">Delivery Temperatue</td>
                            <td class="text-left">
                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("DelTemp") %>'></asp:Label>
                            </td>
                        </tr>

                        
                        
                        <tr>
                            <td><strong>Adequate Seperation</strong></td>
                            <td>
                                
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("AddSeperation") %>'></asp:Label>
                                
                            </td>
                        </tr>

                        
<%--                      <tr>
                            <td><strong>Comments</strong></td>
                            <td>
                                
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                
                            </td>
                        </tr>--%>

                        <tr>
                            <td><strong>Sign</strong></td>
                            <td>
                                
                                    <asp:Label ID="Label33" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                                
                            </td>
                        </tr>



                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((ScDDL9.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>




        </asp:Panel>
        <hr />  

        <h2 class="text-warning text-center">
            All-In-One Daily Record Page
        </h2>
        <hr />
        <asp:Panel runat="server" ID="Scpanel8">
             <asp:DataList ID="ScDDL8" runat="server" DataKeyField="Id" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" >
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <ItemTemplate>
                    <table class="auto-style3" id="tbl1">
                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Fridge 1 Records:" class="text-primary text-center" runat="server" />
                                    <hr />
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Unit</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Unit")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">AM</td>
                            <td class="text-left">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("AM") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">**PM</td>
                            <td class="text-left">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("PM") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Comments</td>
                            <td class="text-left">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td><strong>
                                <u>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Signed") %>'></asp:Label>
                                </u>
                            </strong></td>
                        </tr>

<%--                        SC3 details--%>
                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Cooking" class="text-primary text-center" runat="server" />
                                    <hr />
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">ID</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label20" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Food Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("Food")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Cooking Start Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label25" runat="server" Text='<%# Eval("Cooking_Start") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Cooking End Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Cooking_End") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temperature</td>
                            <td class="text-left">
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Core_Temp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td><strong>
                                <u>
                                    <asp:Label ID="Label26" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                </u>
                            </strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Cooling" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Date</td>
                            <td class="text-left">
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("F_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Time into Fridge</td>
                            <td class="text-left">
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("FridgeTime") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Sign</td>
                            <td class="text-left">
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("F_Sign") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Reheating" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Date</td>
                            <td class="text-left">
                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("R_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temperature</td>
                            <td class="text-left">
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("CoreTemp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Sign</td>
                            <td class="text-left">
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("R_Sign") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Comments" class="text-primary text-center" runat="server" />
                                </h3>
                                <hr />
                            </td>

                        </tr>

                        <tr>
                            <td class="text-left">Comments</td>
                            <td class="text-left">
                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                            </td>
                        </tr>

                        <%--SC4 details--%>

                        <tr>
                            <td colspan="2">
                                <h3>
                                    <asp:Label Text="Soup:" class="text-primary text-center" runat="server" />
                                    <hr />
                                </h3>
                            </td>
                        </tr>

                           <tr>
                            <td class="auto-style2">Date</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label27" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Food Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label28" runat="server" Text='<%# Eval("Food")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Hot Hold Time</td>
                            <td class="text-left">
                                <asp:Label ID="Label29" runat="server" Text='<%# Eval("HHTime") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temp after 2hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label30" runat="server" Text='<%# Eval("CoreTemp2") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">Core Temp after 4hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label31" runat="server" Text='<%# Eval("CoreTemp4") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="text-left">Core Temp after 6hrs</td>
                            <td class="text-left">
                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("CoreTemp6") %>'></asp:Label>
                            </td>
                        </tr>

                        
                        
                        <tr>
                            <td><strong>Sign</strong></td>
                            <td>
                                
                                    <asp:Label ID="Label32" runat="server" Text='<%# Eval("Sign") %>'></asp:Label>
                                
                            </td>
                        </tr>



                       <%-- <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edit" CssClass="btn btn-info" Width="81px">Edit</asp:LinkButton>
                            </td>
                        </tr>--%>
                    </table>
                    <br />
                </ItemTemplate>
               <FooterTemplate>
                    <asp:Label Visible='<%#bool.Parse((ScDDL8.Items.Count==0).ToString())%>'
                        runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
                </FooterTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>

        </asp:Panel>





    </div>

</asp:Content>

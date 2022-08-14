<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="managerpagedetails.aspx.cs" Inherits="Safe_Catering.managerpagedetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel runat="server" ID="SC1Panel">
        <hr />
        <h2 class="text-center text-warning">Day Infromation Details
        </h2>
        <br />
        <div style="float: right">
            <asp:Button Text="Add New Detail" CssClass="btn btn-primary" runat="server" OnClick="Unnamed1_Click" />
        </div>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" Width="104%" BorderWidth="1px" CellPadding="4" Style="padding: 20px; margin: 20px" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#3366CC" BorderStyle="None" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />

            <ItemStyle BackColor="White" ForeColor="#003399" />
            <%--<HeaderTemplate>
                <table class="text-center" id="tbl1" style="width: 100%">
                    <tr>
                        <th>Date</th>
                        <th>Table Details</th>
                        <th>Image/File Details</th>
                        <th>Actions</th>



                    </tr>
                </table>
            </HeaderTemplate>--%>
            <ItemTemplate>
                <table class="auto-style3" id="tbl1" style="width: 100%">
                    <tr>
                        <td class="auto-style2">
                            <strong>Date</strong></td>
                        <td class="auto-style1">
                            <strong>Table
                            </strong>
                        </td>
                        <td class="text-center" style="margin-left: 80px; width: 270px;">
                            <strong>Image/File</strong></td>
                        <td class="text-right" style="float: right; margin: 20px" colspan="2">&nbsp;</td>


                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Table") %>'></asp:Label>
                        </td>
                        <td class="text-center" style="margin-left: 80px; width: 270px;"><%--    <asp:Label ID="Label3" runat="server" Text='<%# Eval("File") %>'></asp:Label>
                        --%>
                            <asp:Image ID="Image1" runat="server" Height="191px" ImageUrl='<%# Eval("File")%>' Width="320px" />
                        </td>
                        <td class="text-right" style="float: right; margin: 20px">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete" CssClass="btn btn-danger" Width="122px">Delete</asp:LinkButton>
                        </td>
<%--                        <td class="text-right" style="float: right; margin: 20px">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="view" CssClass="btn btn-info" Width="122px">View Image</asp:LinkButton>
                        </td>--%>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>'
                    runat="server" ID="lblNoRecord" Text="No Record Found!"></asp:Label>
            </FooterTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>


    </asp:Panel>




    
</asp:Content>

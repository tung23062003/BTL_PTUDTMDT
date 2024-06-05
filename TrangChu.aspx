<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_PTUDTMDT.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Chu</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>TRANG GIỚI THIỆU SẢN PHẨM<br />
        </strong></span><br />
    
    </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" RepeatColumns="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl='<%# "images/" + Eval("image") %>' Width="165px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Detail" Width="82px" CommandName="Detail" PostBackUrl='<%# "product_detail.aspx?product_id=" + Eval("product_id") %>'/>
                            <asp:Button ID="Button2" runat="server" Text="Add To Cart" Width="82px" CommandName="Add"/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>

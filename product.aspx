<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="BTL_PTUDTMDT.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tittle" runat="server">
    Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
</asp:Content>

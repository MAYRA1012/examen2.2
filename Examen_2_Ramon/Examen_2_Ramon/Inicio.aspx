<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen_2_Ramon.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Text="Nombre y Apellidos"></asp:Label>
<br />
<asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
<br />
<br />
<br />
<asp:Label ID="Label2" runat="server"></asp:Label>
<br />
<br />
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Maquina"></asp:Label>
<br />
<br />
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Fecha"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox4" type="date" value="2022-11-18" min="2022-01-01" Max="2099-12-31 " runat="server"></asp:TextBox>
    <br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<br />
</asp:Content>

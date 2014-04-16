<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="adicionarCliente.aspx.cs" Inherits="webFinal.Privada.adicionarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 104px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">nome:</td>
            <td>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">morada:</td>
            <td>
                <asp:TextBox ID="txtMorada" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">localidade:</td>
            <td>
                <asp:TextBox ID="txtLocalidade" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">codigoPostal:</td>
            <td>
                <asp:TextBox ID="txtCodPostal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">NIF:</td>
            <td>
                <asp:TextBox ID="txtNIF" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="cmdAdiciona" runat="server" Text="Adicionar" OnClick="cmdAdiciona_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

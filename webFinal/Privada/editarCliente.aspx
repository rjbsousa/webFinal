<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="editarCliente.aspx.cs" Inherits="webFinal.editarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 82%;
        }
        .auto-style2 {
            width: 104px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbWebFinalEntities" DefaultContainerName="dbWebFinalEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Cliente" EntityTypeFilter="" Select="" Where="it.clientePK=@id">
        <WhereParameters>
            <asp:QueryStringParameter DbType="Int32" Name="id" QueryStringField="id" />
        </WhereParameters>
    </asp:EntityDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">clientePK:</td>
            <td>
                <asp:TextBox ID="txtClientePK" runat="server" Enabled="False" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">nome:</td>
            <td>
                <asp:TextBox ID="txtNome" runat="server" Width="206px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">morada:</td>
            <td>
                <asp:TextBox ID="txtMorada" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">localidade:</td>
            <td>
                <asp:TextBox ID="txtLocalidade" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">codigoPostal:</td>
            <td>
                <asp:TextBox ID="txtCodPostal" runat="server" Width="206px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">NIF:</td>
            <td>
                <asp:TextBox ID="txtNIF" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="cmdAltera" runat="server" Text="Alterar" OnClick="cmdAltera_Click" />
                <asp:Button ID="cmdRemove" runat="server" Text="Remover" OnClick="cmdRemove_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>
        <asp:Image ID="mapa" ImageUrl="http://maps.googleapis.com/maps/api/staticmap?&size=400x400&zoom=17&maptype=roadmap\
&sensor=false&key=AIzaSyD-8i2RxZqFe2ZmIJyaIPYdd_zK_VSMY6w&markers=size:mid%7Ccolor:green%7Clabel:R%7C" runat="server" />
            </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</asp:Content>


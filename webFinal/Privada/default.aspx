<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webFinal.Privada._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="clientePK" DataSourceID="EntityDataSource1">
    <Columns>
        <asp:BoundField DataField="clientePK" HeaderText="clientePK" ReadOnly="True" SortExpression="clientePK" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="morada" HeaderText="morada" SortExpression="morada" />
        <asp:BoundField DataField="localidade" HeaderText="localidade" SortExpression="localidade" />
        <asp:BoundField DataField="codigoPostal" HeaderText="codigoPostal" SortExpression="codigoPostal" />
        <asp:BoundField DataField="NIF" HeaderText="NIF" SortExpression="NIF" />
        <asp:HyperLinkField DataNavigateUrlFields="clientePK" DataNavigateUrlFormatString="editarCliente.aspx?id={0}" DataTextField="clientePK" DataTextFormatString="Editar" />
    </Columns>
</asp:GridView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbWebFinalEntities" DefaultContainerName="dbWebFinalEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Cliente">
</asp:EntityDataSource>
    <asp:Button ID="cmdNovo" runat="server" Text="Novo" PostBackUrl="~/Privada/adicionarCliente.aspx" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
            <p>
       
          
            </p>
       </asp:Content>


﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/paciente.Master" AutoEventWireup="true" CodeFile="agConsultaPac.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>&nbsp;</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal" >
        <h3>Agende uma consulta.</h3>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <br />
            <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Nome do Médico:"></asp:Label>
            <br />
            <br />
    <asp:DropDownList ID="ddlMedico" runat="server" DataSourceID="SqlDataSource1" DataTextField="nome" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-default btn-sm">
    </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD16173ConnectionString %>" SelectCommand="SELECT [nome], [id] FROM [Medico]"></asp:SqlDataSource>
            <br />
            <br />
            <div>
                <asp:Label runat="server" AssociatedControlID="Calendar1"  ID="Label1">Data Consulta:</asp:Label>
                <br />
                <br />
            </div>
            <div>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <br />
                <br />
            <asp:Label runat="server" AssociatedControlID="ddlHora" CssClass="control-label" ID="Label6" Width="108px">Inicio Consulta:</asp:Label>
                <br />
            <asp:DropDownList ID="ddlHora" runat="server" CssClass="btn btn-default btn-sm" OnDataBinding="ddlHora_DataBinding">
            </asp:DropDownList>
                <br />
                &nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHora"
                    CssClass="text-danger" ErrorMessage="Esse campo é obrigatório" ID="RequiredFieldValidator4" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" OnClick="Unnamed2_Click" Text="Agendar" CssClass="btn btn-default" />
            </div>
            <asp:Label ID="lblS" runat="server"></asp:Label>
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>


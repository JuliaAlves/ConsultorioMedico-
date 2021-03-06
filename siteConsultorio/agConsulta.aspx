﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/funcionario.Master" AutoEventWireup="true" CodeFile="agConsulta.aspx.cs" Inherits="Account_Register" %>

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
            <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Nome do Paciente:"></asp:Label>
            <br />
            <br />
    <asp:DropDownList ID="ddlPaciente" runat="server" DataSourceID="SqlDataSource2" DataTextField="nome" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="btn btn-default btn-sm">
    </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD16173ConnectionString %>" SelectCommand="SELECT [id], [nome] FROM [Paciente]"></asp:SqlDataSource>
            <br />
                <asp:Label runat="server" AssociatedControlID="Calendar1"  ID="Label1">Data Consulta:</asp:Label>
            <br />
            <br />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
&nbsp;<div>
                <br />
            <asp:Label runat="server" AssociatedControlID="ddlHora" CssClass="control-label" ID="Label6" Width="108px">Inicio Consulta:</asp:Label>
                <br />
                <br />
            <asp:DropDownList ID="ddlHora" runat="server" CssClass="btn btn-default btn-sm" Height="42px" OnDataBinding="ddlHora_DataBinding">
            </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHora"
                    CssClass="text-danger" ErrorMessage="Esse campo é obrigatório" ID="RequiredFieldValidator4" />
                <br />
            </div>
            <div>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" OnClick="Unnamed2_Click" Text="Agendar" CssClass="btn btn-default" />
            </div>
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/funcionario.master" AutoEventWireup="true" CodeFile="vPac.aspx.cs" Inherits="vPac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>&nbsp;</h3>
    <h3>&nbsp;&nbsp;&nbsp; Ver Pacientes.<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
            <asp:BoundField DataField="Column1" HeaderText="data nascimento" SortExpression="Column1" DataFormatString="{0:d}" ReadOnly="True" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
            <asp:BoundField DataField="telResidencial" HeaderText="telefone residencial" SortExpression="telResidencial" />
        </Columns>
        <RowStyle Font-Size="14pt" />
        </asp:GridView>
    </h3>
    <br />
    <div class="form-group">
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False" CssClass="table table-striped table-bordered table-hover">
            <Columns>
                <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                <asp:BoundField DataField="resultado" HeaderText="resultado" SortExpression="resultado" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD16173ConnectionString %>">
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD16173ConnectionString %>" SelectCommand="SELECT nome, endereco, CONVERT(date, dataNasc), email, celular, telResidencial FROM Paciente"></asp:SqlDataSource>
    </div>
</asp:Content>


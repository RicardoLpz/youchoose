<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="YouChooseApp.Contactanos" MasterPageFile="~/Plantilla.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container">
        <div class="page-header" style="background-color: #FFFFFF"><h1 class="center-block">Contáctanos</h1></div>
   
        <div class="panel-default">
            <div class="panel-body" style="background-color: #FFFFFF">
                
                    Aunto
                <asp:TextBox ID="TextBoxAsunto" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>


                Correo
                 <asp:TextBox ID="TextBoxCorreo" runat="server" Width="906px" CssClass="form-control"></asp:TextBox>

            Mensaje
            <asp:TextBox ID="TextBoxMensaje" runat="server" Width="906px" Height="129px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

            </div>
                </div>
        <asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="btn-lg center-block" OnClick="Button1_Click"  /></div>

  
</asp:Content>




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservacion.aspx.cs" Inherits="YouChooseApp.Reservacion" MasterPageFile="~/Plantilla.Master" %>

<%@ Register Src="~/carruselMesas.ascx" TagPrefix="uc1" TagName="carruselMesas" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container" style="padding-bottom:100px"; "margin-bottom:80px" >
        <div class="page-header" style="background-color: #FFFFFF">
            <span class="pull-right">Saludos <asp:Label ID="LabelUsuario" runat="server" Text="Label"></asp:Label></span>
           <div class="panel-heading"> <h1 class="center-block">Reserva Online</h1></div></div>
        <asp:Label ID="LabelID" runat="server" Text="Label" Visible="false"></asp:Label>
        <div class="row"></div>
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-4">
                <div class="panel-default">
                    <div class="panel-heading">
                        <h1 class="center-block">Elige Sucursal</h1>
                    </div>
                    <div class="panel-body" style="background-color: #FFFFFF">
                        <asp:DropDownList ID="DropDownListSucursal" runat="server" DataSourceID="SqlDataSource1" DataTextField="IDSucursal" DataValueField="IDSucursal" CssClass="form-control" AppendDataBoundItems="True">
                            <asp:ListItem Text=""></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="SELECT * FROM [Sucursal]"></asp:SqlDataSource>
                    </div>
                </div>



            </div>

            <div class="col-lg-2"></div>
            <div class="col-lg-4">
                <div class="panel-default">
                    <div class="panel-heading">
                        <h1 class="center-block" style="background-color: #FFFFFF">Elige Fecha</h1></div>
                    <div class="panel-body">
                        <asp:Calendar ID="Calendar1" runat="server" CssClass="panel" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>



                        <asp:Label ID="LabelFecha" runat="server" Text="Label"></asp:Label>
&nbsp;</div>
                </div>
            </div>
            <div class="col-lg-1"></div></div>
        <div class="row"></div>
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-4">
                <div class="panel-default">
                    <div class="panel-heading">
                        <h1 class="center-block">Elige Hora</h1>
                    </div>
                    <div class="panel-body" style="background-color: #FFFFFF">
                        <asp:DropDownList ID="DropDownListHora" runat="server" CssClass="form-control">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                            <asp:ListItem>9:00</asp:ListItem>
                            <asp:ListItem>10:00</asp:ListItem>
                            <asp:ListItem>11:00</asp:ListItem>
                            <asp:ListItem>12:00</asp:ListItem>
                            <asp:ListItem>13:00</asp:ListItem>
                            <asp:ListItem>14:00</asp:ListItem>
                            <asp:ListItem>15:00</asp:ListItem>
                            <asp:ListItem>16:00</asp:ListItem>
                            <asp:ListItem>17:00</asp:ListItem>
                            <asp:ListItem>18:00</asp:ListItem>
                            <asp:ListItem>19:00</asp:ListItem>
                            <asp:ListItem>20:00</asp:ListItem>
                            <asp:ListItem>21:00</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="col-lg-2"></div>
            <div class="col-lg-4">
                <div class="panel-default">
                    <div class="panel-heading">
                        <h1 class="center-block">Elige Mesa</h1>

                    </div>
                    <div class="panel-body" style="background-color: #FFFFFF">
                        <asp:DropDownList ID="DropDownListMesa" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="IDMesa" DataValueField="IDMesa" AppendDataBoundItems="True">
                            <asp:ListItem Text=""></asp:ListItem>
                        </asp:DropDownList>
                        <uc1:carruselMesas runat="server" id="carruselMesas" />

                        
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="SELECT * FROM [Mesa]"></asp:SqlDataSource>


                    </div>
                </div>
            </div>
            <div class="col-lg-1"></div>
        </div>
        <div class="row"></div>
        <div class="row" >
            <a class="fa-align-center">
           <asp:Button ID="ButtonAceptar" runat="server" style="position:relative" Text="Aceptar" CssClass="btn-lg"  OnClick="ButtonAceptar_Click" />
                </a>
        </div>

        <asp:SqlDataSource ID="SqlDataSourceID" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="Select count (IDReservacion) from Reservacion"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="false">
            </asp:GridView>


    </div>
    <script class="alert"> 
        function Ocupado()
        {
            alert("Esta mesa ya está ocupada en el horario elegido, favor de elegir otra mesa");
        }
    </script>
</asp:Content>



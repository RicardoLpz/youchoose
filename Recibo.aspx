<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recibo.aspx.cs" Inherits="YouChooseApp.Recibo" MasterPageFile="~/Plantilla.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    

    
    <!--Aqui el script que nos permite imprimir el contenido del panel donde metimos 
        la informacion que queremos imprimir, es Panel1-->
    <script>
        function ImprimirRecibo() {

            var getpanel = document.getElementById("<%= Panel1.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write('<html><head><title>Imprimir recibo</title>');
            MainWindow.document.write('</head><body>');
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.write('</body></html>');
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;

        }
 </script>
     <style type="text/css">
         .auto-style1 {}
     </style>

        <div class="container" style="padding-bottom:100px">
        <div class="page-header" style="background-color: #FFFFFF"><h1 class="center-block"> Recibo </h1></div>
            
        
             <asp:Label ID="LabelUsername" runat="server" Text="Label"></asp:Label>
             </div>
        <div class="panel-default">
            <asp:Panel ID="Panel1" runat="server"> 
            <div class="panel-body" style="background-color: #FFFFFF">
                <div id="Panelcargo">
            Numero de Reservación:
            <asp:Label ID="LabelIDReservacion" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Nombre de Usuario:<asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Sucursal:
            <asp:Label ID="LabelSucursal" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            Mesa :<asp:Label ID="LabelMesa" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Fecha de Reservación&nbsp;&nbsp;
            <asp:Label ID="LabelFecha" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Hora de Reservacion
            <asp:Label ID="LabelHora" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Tarjeta:&nbsp;
            <asp:Label ID="LabelTarjeta" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Cargo:&nbsp;
            <asp:Label ID="LabelCargo" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Este recibo es un comprobante de la transacción realizada para poder reservar su mesa, muchas gracias por usar nuestro servicio de Reservaciones online<br />
                 
                    </div>
                </div>
                    
                      </asp:Panel>
            <br />
           
                    </div>
     

        <div class="h1" style="text-align:center">
           
                <asp:Button ID="Button1" runat="server" Text="Generar PDF" CssClass="btn-lg" OnClick="Button1_Click"  />
            
                <asp:Button ID="Button2" runat="server" Text="Enviar a mi correo" CssClass="btn-lg" OnClick="Button2_Click"/>
            
                <asp:Button ID="Button3" runat="server" Text="Imprimir" OnClientClick="return ImprimirRecibo();" CssClass="btn-lg" OnClick="Button3_Click" />


        </div>
    <br />
        <br />

        <br />

        <br />

        <br />

        <br />

        <br />

            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="select correoElectronico from Clientes where username=@username">
            <SelectParameters>
                <asp:ControlParameter ControlID="LabelUsername" Name="username" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridViewCorreo" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="correoElectronico" HeaderText="correoElectronico" SortExpression="correoElectronico" />
            </Columns>
        </asp:GridView>


</asp:Content>




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="YouChooseApp.Confirmacion" MasterPageFile="~/Plantilla.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
      <div class="container" style="padding-bottom:100px">
        <div class="row center-block">
            <div class="panel-default">
                <div class="panel-heading"><h1 class="center-block">Confirmación de la Reservación</h1></div>
            
                <asp:Label ID="LabelID" runat="server" Text=" Label" Visible="false"></asp:Label>
            
        

        <div class="panel-body" style="background-color: #FFFFFF">
            <div class="form-group">
            Fecha:
            <asp:Label ID="LabelFecha" runat="server" Text="Label"></asp:Label></div>
                
        

        <div class="form-group">
         Sucursal:
                <asp:Label ID="LabelSucursal" runat="server" Text="Label"></asp:Label></div>
         

        <div class="form-group">
            Hora:
            
                <asp:Label ID="LabelHora" runat="server" Text="Label"></asp:Label></div>
        
        <div class="form-group">
            Nombre
            
                <asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
            
                <asp:Label ID="LabelUsuario" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="form-group">
                Mesa
                
                    <asp:Label ID="LabelMesa" runat="server" Text="Label"></asp:Label></div>

                </div>
                </div>
            


            
            <div class="panel-default">
                <div class="panel-heading"><h1 class="center-block">Registra tu Pago</h1></div>
                
               
                
            <div class="panel-body" style="background-color: #FFFFFF">
                <div class="form-group">
                     Numero de Tarjeta
                    
                        <asp:TextBox ID="TextBoxTarjeta" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox></div>
               

                <div class="form-group">
                Código de Seguridad
                <asp:TextBox ID="TextBoxCodigoSeguridad" runat="server"  CssClass="form-control" TextMode="Number" ToolTip="Viene detrás de tu tarjeta"></asp:TextBox>
                </div>

                <div class="form-group">
                    Fecha de Expiración
                    
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList> / <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown"  Width="300">
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                        </asp:DropDownList> </div>

                

                <div class="form-group">
                     Nombre en la tarjeta
                 <asp:TextBox ID="TextBoxNombreTarjeta" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>


                </div>

                

</div>

            </div>
            </div>
            
            
            <div class="row">
                <div class="form-group">
                
                   <div class="btn"> <asp:Button ID="ButtonCancelar" runat="server" Text="Cancelar" OnClick="ButtonCancelar_Click" CssClass="btn-lg" /></div>
                <asp:Button ID="ButtonAceptar" runat="server" Text="Aceptar" OnClick="ButtonAceptar_Click" CssClass="btn-lg" />
                

                </div>
            
            </div>

            <br />
            <br />


       
        <asp:SqlDataSource ID="SqlDataSourceNombre" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="Select nombre from Clientes where username=@username">
            <SelectParameters>
                <asp:ControlParameter ControlID="LabelUsuario" Name="username" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>



    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Column1" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridViewNombre" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceNombre">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
        </asp:GridView>



    
    
        <asp:SqlDataSource ID="SqlDataSourceAlta" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" InsertCommand="AltaReservacion" InsertCommandType="StoredProcedure" SelectCommand="AltaReservacion" SelectCommandType="StoredProcedure">
            
            <InsertParameters>
                <asp:ControlParameter ControlID="LabelID" Name="IDReservacion" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="LabelUsuario" Name="usuario" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LabelSucursal" Name="IDSucursal" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LabelMesa" Name="IDMesa" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LabelFecha" DbType="Date" Name="Fecha" PropertyName="Text" />
                <asp:ControlParameter ControlID="LabelHora" DbType="Time" Name="hora" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="select count(IDReservacion) from Reservacion">
        </asp:SqlDataSource>


          <script class="alert"></script>
    
        </div>
    
</asp:Content>




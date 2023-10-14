<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="YouChooseApp.Administrador" MasterPageFile="~/Plantilla.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container">
            <h1 class="center-block" style="color: #FFFFFF">Pagina de Administrador</h1>
    
        <div class="modal-dialog">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDReservacion" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IDReservacion" HeaderText="IDReservacion" ReadOnly="True" SortExpression="IDReservacion" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="IDSucursal" HeaderText="IDSucursal" SortExpression="IDSucursal" />
                    <asp:BoundField DataField="IDMesa" HeaderText="IDMesa" SortExpression="IDMesa" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>            <div class="modal-footer" style="background-color: #FFFFFF"> 

                <asp:Label ID="Label1" runat="server" Text="Numero de Reservacion"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-sm" Height="35px" Width="188px" TextMode="Number"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Eliminar" OnClick="Button1_Click" CssClass="btn-lg" /></div>
    
    </div>
           </div>
            
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="SELECT * FROM [Reservacion]" DeleteCommand="DELETE FROM [Reservacion] WHERE [IDReservacion] = @IDReservacion" InsertCommand="INSERT INTO [Reservacion] ([IDReservacion], [usuario], [IDSucursal], [IDMesa], [Fecha], [hora]) VALUES (@IDReservacion, @usuario, @IDSucursal, @IDMesa, @Fecha, @hora)" UpdateCommand="UPDATE [Reservacion] SET [usuario] = @usuario, [IDSucursal] = @IDSucursal, [IDMesa] = @IDMesa, [Fecha] = @Fecha, [hora] = @hora WHERE [IDReservacion] = @IDReservacion">
             <DeleteParameters>
                 <asp:Parameter Name="IDReservacion" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="IDReservacion" Type="Int32" />
                 <asp:Parameter Name="usuario" Type="String" />
                 <asp:Parameter Name="IDSucursal" Type="String" />
                 <asp:Parameter Name="IDMesa" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="Fecha" />
                 <asp:Parameter DbType="Time" Name="hora" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="usuario" Type="String" />
                 <asp:Parameter Name="IDSucursal" Type="String" />
                 <asp:Parameter Name="IDMesa" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="Fecha" />
                 <asp:Parameter DbType="Time" Name="hora" />
                 <asp:Parameter Name="IDReservacion" Type="Int32" />
             </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" DeleteCommand="Delete from Reservacion where IDReservacion=@IDReservacion" SelectCommand="Select  * from Reservacion where IDReservacion=@IDReservacion">
        
        <DeleteParameters>
            <asp:ControlParameter ControlID="Label2" Name="IDReservacion" PropertyName="Text" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="IDReservacion" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <script class="alert">
        function bien()
        {
            alert("Reservación Eliminada Correctamente");
        }
    </script>

    <script class="alert">
        function mal()
        {
            alert("No existe esa Reservación");
        }
    </script>
</asp:Content>




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta.aspx.cs" Inherits="YouChooseApp.Cuenta" MasterPageFile="~/Plantilla.Master" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div class="container">
          <div class="panel-default center-block">
              <div class="panel-heading center-block">
         <h1 class="text-center">Mi cuenta</h1></div>
    
              
                <asp:Label ID="LabelUsername" runat="server" Text="Label" Visible="false"></asp:Label>
            
          
              <div class="panel-body" style="background-color: #FFFFFF">
           
                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDReservacion" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDReservacion" HeaderText="IDReservacion" ReadOnly="True" SortExpression="IDReservacion" />
                        <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                        <asp:BoundField DataField="IDSucursal" HeaderText="IDSucursal" SortExpression="IDSucursal" />
                        <asp:BoundField DataField="IDMesa" HeaderText="IDMesa" SortExpression="IDMesa" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                  </asp:GridView>
                  </div>

            <span style="color: #FFFFFF">Cancelar Reservación</span>&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Eliminar" CssClass="btn-lg" OnClick="Button1_Click" />
            
              <asp:SqlDataSource ID="Eliminar" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" DeleteCommand="Delete from Reservacion where IDReservacion=@ID and usuario=@username" SelectCommand="Select from Reservacion where IDReservacion=@ID and usuario=@username">
                  
                  <DeleteParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" />
                      <asp:ControlParameter ControlID="LabelUsername" Name="username" PropertyName="Text" />
                  </DeleteParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" />
                      <asp:ControlParameter ControlID="LabelUsername" Name="username" PropertyName="Text" />
                  </SelectParameters>
              </asp:SqlDataSource>
            
            </div>




        </div>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="SELECT * FROM Reservacion where usuario = @username">
            <SelectParameters>
                <asp:ControlParameter ControlID="LabelUsername" Name="username" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

    <script class="alert">
        function mal()
        {
            alert("Esta Reservación no existe");
        }
    </script>

    <script class="alert">
        function bien()
        {
            alert("Reservación cancelada Correctamente");
        }
    </script>
</asp:Content>





<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="YouChooseApp.RegistroUsuario" MasterPageFile="~/Plantilla.Master" %>


<%@ Register assembly="Recaptcha" namespace="Recaptcha" tagprefix="recaptcha" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div class="container" style="padding-bottom:100px">
            <div class="row">
            
               <div class="panel-default" style="border-right-style: outset; border-bottom-style: outset; border-left-style: outset; border-width: thin; width:auto" >
                   <div class="panel-heading">
                       <h1 class="panel-heading">Registro de Usuarios</h1>
                   </div>

                   <div class="panel-body center-block" style="background-color: #FFFFFF">
                      

                       Elige user name
                        <asp:TextBox ID="TextBoxUserName" runat="server"  CssClass="form-control" CausesValidation="True" ></asp:TextBox>
                       

                       Elige Password 
                         <asp:TextBox ID="TextBoxPassword"  runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                         Confirma Password
                         <asp:TextBox ID="TextBoxPassword2" runat="server" CssClass="form-control" TextMode="Password" CausesValidation="True"></asp:TextBox>

                         Escribe Nombre Completo
                         <asp:TextBox ID="TextBoxNombre" runat="server"  CssClass="form-control" MaxLength="20"></asp:TextBox>

                         Escribe Correo Eectrónico
                        <asp:TextBox ID="TextBoxCorreo" runat="server"  CssClass="form-control" placeholder="Ejemplo: usuario@dominio.com"></asp:TextBox>
                  

                  </div>
                </div>

            <div class="row center-block">


               
            <a class="center-block" style="text-align: center"><asp:Button ID="ButtonAceptar" runat="server" Text="Aceptar" CssClass="btn-default btn-lg" OnClick="Button1_Click"  /> </a>
            
            </div>
        
            <script class="alert"> function Exitoso() { alert("Usuario Registrado de manera exitosa") } </script>

            <script class="alert"> function mal() { alert("Usuario no registrado, revisa los campos") }   </script>
           
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" InsertCommand="AltaClientes" InsertCommandType="StoredProcedure" SelectCommand="AltaClientes" SelectCommandType="StoredProcedure">
        
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBoxUserName" Name="username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxPassword" Name="password" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxNombre" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBoxCorreo" Name="correoElectronico" PropertyName="Text" Type="String" />
        </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="TextBoxUserName" Name="username" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="TextBoxPassword" Name="password" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="TextBoxNombre" Name="nombre" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="TextBoxCorreo" Name="correoElectronico" PropertyName="Text" Type="String" />
             </SelectParameters>
    </asp:SqlDataSource> 

         <script class="alert"> function NoCoinciden() { alert("Las Contraseñas no coinciden"); }

         </script>
        
</div>
          
        </div>
</asp:Content>






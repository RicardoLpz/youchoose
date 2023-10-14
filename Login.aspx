<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YouChooseApp.Login" MasterPageFile="~/Plantilla.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
 
     <div class="container">
       
            


    <div class="login-form">
     <h1>MAC RICK</h1>
     <div class="form-group ">
       <asp:TextBox ID="TextBoxUserName" runat="server" Height="42px" Width="317px" placeholder="Intrduce Usuario"></asp:TextBox>
       <i class="fa fa-use
       r"></i>
     </div>
     <div class="form-group log-status">
       <asp:TextBox ID="TextBoxPassword" runat="server" Height="44px" Width="312px" TextMode="Password" placeholder="Introduce Contraseña"></asp:TextBox>
       &nbsp;<i class="fa fa-lock"></i></div>
     <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" CssClass="btn-lg" OnClick="Button1_Click"  />
        <script class="alert"> function mal() { alert("No existe el usuario o bien, la contraseña es incorrecta") }

        </script>
 
     
               
<p class="center-block"> Si no tienes cuenta, Registrate <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="RegistroUsuario.aspx">Aqui</asp:HyperLink></p>
            </div>    


     


   
    
        

</div>
</asp:Content>



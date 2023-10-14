<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calificanos.aspx.cs" Inherits="YouChooseApp.Calificanos" MasterPageFile="~/Plantilla.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container" style="background-color: #FFFFFF">
        <div class="page-header"><h1 class="center-block">Calificanos</h1></div>
        <div class="panel-default center-block" style="background-color: #FFFFFF">
            <div class="panel-header"><h1> la Calificación que das a nuestro servicio</h1></div>
            <div class="panel-body" style="background-color: #FFFFFF">
               
                <asp:Label ID="LabelUsername" runat="server" Text="Label"></asp:Label>
  
    <span class="star-cb-group">
      <input type="radio" id="rating-5" name="rating" value="5" /><label for="rating-5" role="radio">5</label>
      <input type="radio" id="rating-4" name="rating" value="4" checked="checked" /><label for="rating-4">4</label>
      <input type="radio" id="rating-3" name="rating" value="3" /><label for="rating-3">3</label>
      <input type="radio" id="rating-2" name="rating" value="2" /><label for="rating-2">2</label>
      <input type="radio" id="rating-1" name="rating" value="1" /><label for="rating-1">1</label>
      <input type="radio" id="rating-0" name="rating" value="0" class="star-cb-clear" /><label for="rating-0">0</label>
    </span>

                

                
 <script>
     function variable() {
         var nombre = "";
         var cantidad = document.getElementsByName("rating");
         for (var i = 0; i < cantidad.length; i++) {
             if (cantidad[i].checked)
                 nombre = cantidad[i].value;
         }

         document.getElementById("log").innerHTML = nombre;
         document.getElementById("Label1").innerHTML = nombre
         
         return false;

         

     }

 </script>




                

                 
<div class="row">
    
    <asp:Button ID="Button2" runat="server" Text="Enviar" CssClass="btn-lg" OnClientClick="return variable();" OnClick="Button1_Click" />
    <div id="log" > <asp:Label ID="Label1" runat="server" Text="Label" Visible="true"></asp:Label>
                    
                </div>


    

                
                    



            &nbsp;</div>
            

        </div>

       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YouChooseConnectionString %>" SelectCommand="AltaCalificacion" InsertCommand="AltaCalificacion" SelectCommandType="StoredProcedure" InsertCommandType="StoredProcedure">
                
                
                
                
                <InsertParameters>
                    <asp:ControlParameter ControlID="LabelUsername" Name="usuario" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Label1" Name="calificacion" PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="LabelUsername" Name="usuario" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Label1" Name="calificacion" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

           
</div>
    
    </div>
    <link href="yc%20log/Estrellas.css" rel="stylesheet" />
</asp:Content>



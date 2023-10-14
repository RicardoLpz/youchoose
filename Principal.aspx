<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="YouChooseApp.Principal" MasterPageFile="~/Plantilla.Master" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
       <!---Carusel-->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img "img-responsive" src="img/cafe2.jpg" alt="..."/>
      <div class="carousel-caption">
        <h3>Comida</h3>
          <p><a class="btn btn-lg btn-primary" href="Reservacion.aspx" role="button">Haz Tu Reservacion Ahora</a></p>
            <!-- <p>la imagen 1</p> -->
   
      </div>
    </div>
    <div class="item">
      <img class="img-responsive" src="img/cafe2.jpg"  alt="..."/>
      <div class="carousel-caption">
        <h3>Pasteles</h3>
           <!-- <p>la imagen 1</p> -->
    
      </div>
    </div>
      <div class="item">
      <img "img-responsive" src="img/cafe2.jpg" alt="..."./>
      <div class="carousel-caption">
    <h3>Cafe</h3>
           <!-- <p>la imagen 1</p> -->
             </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>



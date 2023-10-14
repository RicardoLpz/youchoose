<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ubicanos.aspx.cs" Inherits="YouChooseApp.Ubicanos" MasterPageFile="~/Plantilla.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container" style="padding-bottom:100px">
  <div class="page-header" style="color: #000000; font-size: medium; background-color: #FFFFFF;"><h1>Ubicanos</h1>  </div>
   
         
    <p style="font-size: medium; color: #FFFFFF;">Aquí te ofrecemos venta de pasteles para llevar, tambien contamos con restaurante con los mejores desayunos, comidas y cenas. 
       Contamos además con una terraza exterior para que disfrutes al aire libre tu pastel favorito con un delicioso café o te. 
       Ven y disfruta con tus amigos de nuestro rico menú.</p> 
 

      
            
        

        
            <div class="row" style="padding-top:110px; color: #FFFFFF;">
                <div class="col-lg-4">
                    
                    <h3>Sucursal Chapultepec</h3>                
                        <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>
               
                <div class="col-lg-4">
                    <h3>Sucursal Plaza Rio</h3>
                    <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>

                <div class="col-lg-4">
                    <h3>Sucursal Otay</h3>
                    <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>
               
                <div class="col-lg-4">
                    <h3>Sucursal Matamoros</h3>
                    <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>

                <div class="col-lg-4">
                    <h3>Sucursal Las Palmas</h3>
                    <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>
               
                <div class="col-lg-4">
                    <h3>Sucursal Macroplaza</h3>
                    <a  href="#" data-toggle="modal" data-target="#palmas" class="thumbnail">
                        <img src="img/chapultepec.jpg" />
                    </a>
                </div>


                
                </div>

            </div>
        
        <!---Texto-->
    </form>
    
    <script>
        $("#palmas").mouseover(function () {
            $(this).css('height', '80px');
        });
    </script>


    <!---Modals-->
        <div class="modal fade" id="palmas" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Las Palmas</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#palmasmodal" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="palmasmodal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Las Palmas</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26919.55465311412!2d-116.984813!3d32.500917!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80d937ff7778e2b3%3A0x69c0a31e209cf0d4!2sAv+las+Palmas+5056%2C+Las+Palmas%2C+Tijuana%2C+B.C.%2C+Mexico!5e0!3m2!1sen!2sus!4v1460607435040" width="550" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="chapulte" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Chapultepec</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#modalchapulte" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="modalchapulte" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Chapultepec</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13458.10547144077!2d-117.013063!3d32.512086!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2ed6661d0e16404a!2sCaf%C3%A9+de+la+Flor+Chapultepec!5e0!3m2!1ses!2sus!4v1460540979957" style="zoom:0.60" width="99.6%" height="250" frameborder="0"></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

        <div class="modal fade" id="rio" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Plaza Rio</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#modalrio" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="modalrio" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Plaza Rio</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13458.10547144077!2d-117.013063!3d32.512086!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2ed6661d0e16404a!2sCaf%C3%A9+de+la+Flor+Chapultepec!5e0!3m2!1ses!2sus!4v1460540979957" style="zoom:0.60" width="99.6%" height="250" frameborder="0"></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="otay" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Otay</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#otaymodal" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="otaymodal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Otay</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13458.10547144077!2d-117.013063!3d32.512086!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2ed6661d0e16404a!2sCaf%C3%A9+de+la+Flor+Chapultepec!5e0!3m2!1ses!2sus!4v1460540979957" style="zoom:0.60" width="99.6%" height="250" frameborder="0"></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="mata" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Matamoros</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#matamodal" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="matamodal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Matamoros</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13458.10547144077!2d-117.013063!3d32.512086!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2ed6661d0e16404a!2sCaf%C3%A9+de+la+Flor+Chapultepec!5e0!3m2!1ses!2sus!4v1460540979957" style="zoom:0.60" width="99.6%" height="250" frameborder="0"></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

        <div class="modal fade" id="macro" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Macroplaza</h4>
                    </div>
                    <div class="modal-body">
                        <p>Horario:</p>
                        <p>Lunes a Viernes: 7:00 am a 8:00 pm</p>
                        <p>Sábado y Domingo: 8:00 am a 8:00 pm</p>                 
                        <p>Email: info@cafedelaflor.com</p>
                        <img src="img/chapultepec.jpg" /> 
                    </div>    
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#macromodal" data-dismiss="modal">Mapa</a>
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                       </div>
                </form>
            </div>
        </div>
    </div>

     <div class="modal fade" id="macromodal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Macroplaza</h4>
                    </div>
                    <div class="modal-body">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26919.55465311412!2d-116.984813!3d32.500917!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80d937ff7778e2b3%3A0x69c0a31e209cf0d4!2sAv+las+Palmas+5056%2C+Las+Palmas%2C+Tijuana%2C+B.C.%2C+Mexico!5e0!3m2!1sen!2sus!4v1460607435040" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>    
                    <div class="modal-footer">
                       <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Contacto" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal">
                    <div class="modal-header">
                        <h4>Contacta a Cafe de La Flor</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for = "contact-name" class="col-lg-2 control-label">Nombre:</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="contact-name" placeholder="Nombre Completo"/>
                            </div>
                        </div>    

                       <div class="form-group">
                            <label for = "contact-email" class="col-lg-2 control-label">Correo:</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="contact-email" placeholder="tucorreo@ejemplo.com"/>
                            </div>
                        </div>  
                          
                        <div class="form-group">
                            <label for = "contact-msg" class="col-lg-2 control-label">Mensaje:</label>
                            <div class="col-lg-10">
                                <textarea class="form-control" rows="8"></textarea>
                            </div>
                        </div>    

                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">Cerrar</a>
                        <a class="btn btn-primary" data-dismiss="submit">Enviar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!---Modals-->

</asp:Content>



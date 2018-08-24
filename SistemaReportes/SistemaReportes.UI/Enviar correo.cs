using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net.Mime;
using SistemaReportes.DATA;

namespace SistemaReportes.UI
{
    public class Enviar_correo
    {
        //enviar la contraseña

        public static void SendEmailPassword(Reportes re, int idCliente)
        {

            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            System.Net.NetworkCredential credentials =
            new System.Net.NetworkCredential("explorecr11@gmail.com", "proyecto1234");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("explorecr11@gmail.com");
            msg.To.Add(new MailAddress(re.email));

            msg.Subject = "Cambio de contraseña ExploreCR";
            msg.IsBodyHtml = true;
            //LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
            //LinkedImage.ContentId = "Logo";
            //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);
            AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
              "<div class='panel panel - default'><div class='panel - body'><h1><span>Combio Contraseña<h1><span></div></div>" + "<strong>Saludos cliente: " +
              re.NombreCliente + "</strong> <br /><br />" + "Por este medio le comunicamos que se realizó una solicitud para cambiar la contraseña " +
              "Su codigo de provicional para acceder al sistema es:  \r\n" + re.Codigo +
                " <br /><br />" +
                "<em>Nota: Este codigo le permitira cambiar inmediatamente la contraseña</em>" +
                "<br /><img src=cid:Logo></body>",
              null, "text/html");

            //htmlView.LinkedResources.Add(LinkedImage);
            msg.AlternateViews.Add(htmlView);
            try
            {
                client.Send(msg);

            }
            catch (Exception ex)
            {
                throw new Exception("Error: (" + ex.Message + ")");
            }
        }


        //enviar los reportes

        public static void SendEmailReportes(Reportes re)
        {

            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            System.Net.NetworkCredential credentials =
            new System.Net.NetworkCredential("explorecr11@gmail.com", "proyecto1234");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("explorecr11@gmail.com");
            msg.To.Add(new MailAddress(age.email));
            msg.Subject = "Reporte - ExploreCR";

            //Revisar link de la imagen dependiendo de la computadora
            //LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
            //LinkedImage.ContentId = "Logo";
            //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);

            //Cierro Tabla html
            AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
              "<div class='panel panel - default'><div class='panel - body'><h1><span>Cliente número " + re.IdCliente.ToString() + "<h1><span></div></div>" + "<strong>Saludos estimado " + re.NombreCliente + "</strong> <br /><br />" + "Por este medio le comunicamos que se realizó el reporte con la siguiente descripción: <br/> " +
             "<h3>Descripción general</h3>" +
              "<ul>" +
              "<li>Nombre del cliente: " + re.NombreCliente + "</li>" +
              "<li>Id cliente: " + re.IdCliente.ToString() + "</li>" +
              "<li>Tipo de servicio: " + re.TipoServicio.ToString() + "</li>" +
              "<li>Hora de inicio: " + re.HoraInicio.ToString() + "</li>" +
              "<li>Hora final: " + re.HoraFinal.ToString() + "</li>" +
              "<li>Descripcion: " + re.Descripcion + "</li>" +
              "<li>Comentario: " + re.Comentario.ToString() + "</li>" +
              "</ul> \r\n" +
                " <br /><br />" +
                "<em>Nota: Si tiene problemas con este correo por favor notificarlo a la empresa</em>" +
                "<br /><img src=cid:Logo></body>",
              null, "text/html");

            msg.AlternateViews.Add(htmlView);
            try
            {
                client.Send(msg);

            }
            catch (Exception ex)
            {
                throw new Exception("Error: (" + ex.Message + ")");
            }
        }
        


        
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net.Mime;

namespace SistemaReportes.UI
{
    public class EnviarCorreo
    {

        //public static void SendEmailPassword(Cliente cli, string codi)
        //{

        //    SmtpClient client = new SmtpClient();
        //    client.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    client.EnableSsl = true;
        //    client.Host = "smtp.gmail.com";
        //    client.Port = 587;

        //    System.Net.NetworkCredential credentials =
        //    new System.Net.NetworkCredential("explorecr11@gmail.com", "proyecto1234");
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = credentials;

        //    MailMessage msg = new MailMessage();
        //    msg.From = new MailAddress("explorecr11@gmail.com");
        //    msg.To.Add(new MailAddress(cli.email));

        //    msg.Subject = "Cambio de contraseña ExploreCR";
        //    msg.IsBodyHtml = true;
        //    //LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    //LinkedImage.ContentId = "Logo";
        //    //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
        //      "<div class='panel panel - default'><div class='panel - body'><h1><span>Combio Contraseña<h1><span></div></div>" + "<strong>Saludos cliente: " +
        //      cli.nombre + "</strong> <br /><br />" + "Por este medio le comunicamos que se realizó una solicitud para cambiar la contraseña " +
        //      "Su codigo de provicional para acceder al sistema es:  \r\n" + codi +
        //        " <br /><br />" +
        //        "<em>Nota: Este codigo le permitira cambiar inmediatamente la contraseña</em>" +
        //        "<br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    //htmlView.LinkedResources.Add(LinkedImage);
        //    msg.AlternateViews.Add(htmlView);
        //    try
        //    {
        //        client.Send(msg);

        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}


        //public static void SendEmailPasswordAgencia(AgenciaTuristica age, string codi)
        //{

        //    SmtpClient client = new SmtpClient();
        //    client.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    client.EnableSsl = true;
        //    client.Host = "smtp.gmail.com";
        //    client.Port = 587;

        //    System.Net.NetworkCredential credentials =
        //    new System.Net.NetworkCredential("explorecr11@gmail.com", "proyecto1234");
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = credentials;

        //    MailMessage msg = new MailMessage();
        //    msg.From = new MailAddress("explorecr11@gmail.com");
        //    msg.To.Add(new MailAddress(age.email));
        //    msg.Subject = "Cambio de contraseña ExploreCR";
        //    //LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    //LinkedImage.ContentId = "Logo";
        //    //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
        //      "<div class='panel panel - default'><div class='panel - body'><h1><span>Combio Contraseña<h1><span></div></div>" + "<strong>Saludos: " + age.nombreAgencia + "</strong> <br /><br />" + "Por este medio le comunicamos que se realizó una solicitud para cambiar la contraseña " +
        //      "Su codigo de provicional para acceder al sistema es:  \r\n" + codi +
        //        " <br /><br />" +
        //        "<em>Nota: Este codigo le permitira cambiar inmediatamente la contraseña</em>" +
        //        "<br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    //htmlView.LinkedResources.Add(LinkedImage);
        //    msg.AlternateViews.Add(htmlView);
        //    try
        //    {
        //        client.Send(msg);

        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}


        //public static void SendEmailReserva(Cliente cli, Reservacion res, Tour tou, MetodoPago pago, AgenciaTuristica age)
        //{

        //    SmtpClient client = new SmtpClient();
        //    client.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    client.EnableSsl = true;
        //    client.Host = "smtp.gmail.com";
        //    client.Port = 587;

        //    System.Net.NetworkCredential credentials =
        //    new System.Net.NetworkCredential("explorecr11@gmail.com", "proyecto1234");
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = credentials;

        //    MailMessage msg = new MailMessage();
        //    msg.From = new MailAddress("explorecr11@gmail.com");
        //    msg.To.Add(new MailAddress(age.email));
        //    msg.Subject = "Reservacion exitosa - ExploreCR";

        //    //Revisar link de la imagen dependiendo de la computadora
        //    //LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    //LinkedImage.ContentId = "Logo";
        //    //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);

        //    //Cierro Tabla html
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
        //      "<div class='panel panel - default'><div class='panel - body'><h1><span>Reservación número " + res.idReservacion.ToString() + "<h1><span></div></div>" + "<strong>Saludos estimado " + cli.nombre + "</strong> <br /><br />" + "Por este medio le comunicamos que se realizó reservación, con el detalle correspondiente: <br/> " +
        //     "<h3>Descripción general</h3>" +
        //      "<ul>" +
        //      "<li>Nombre del tour: " + tou.nombreTour + "</li>" +
        //      "<li>Cantidad de personas: " + res.cantidadPersonas.ToString() + "</li>" +
        //      "<li>Fecha reserva: " + res.fechaReservacion.ToString() + "</li>" +
        //      "<li>Monto a pagar: " + res.montoaPagar.ToString() + "</li>" +
        //      "<li>Fecha en que se realizo la reservación: " + res.fechaReserva + "</li>" +
        //      "</ul> \r\n" +
        //      "<h3>Información de Pago</h3>" +
        //      "<ul>" +
        //      "<li>Numero de la tarjeta: " + pago.numeroTarjeta.ToString() + "</li>" +
        //      "<li>Nombre en tarjeta: " + pago.nombreTarjeta + "</li>" +
        //      "</ul> \r\n" +
        //         "<h3>Direccion del tour</h3>" +
        //      "<ul>" +
        //      "<li>Dirección: " + tou.direccion + "</li>" +
        //      "</ul> \r\n" +
        //      "<h3>Contacto a la Agencia Turistica</h3>" +
        //      "<ul>" +
        //      "<li>Nombre de la agencia: " + age.nombreAgencia + "</li>" +
        //      "<li>Email: " + age.email + "</li>" +
        //      "<li>Telefono :" + age.telefono + "</li>" +
        //      "</ul> \r\n" +
        //        " <br /><br />" +
        //        "<em>Nota: Cualquier cancelacion de agun tour es directamente con la agencia turistica correspondiente y no de Explore CR</em>" +
        //        "<br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    msg.AlternateViews.Add(htmlView);
        //    try
        //    {
        //        client.Send(msg);

        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}
        //public static void SendEmailCalcelaRes(Cliente cli, Reservacion res, Tour tou, MetodoPago pago, AgenciaTuristica age)
        //{

        //    SmtpClient SmtpServer = new SmtpClient("smtp.live.com");
        //    var mail = new MailMessage();
        //    //Correo del profe
        //    mail.From = new MailAddress("fba9398@hotmail.com");
        //    mail.Subject = "Concelación de la reservación ExploreCR num. " + res.idReservacion.ToString();
        //    mail.To.Add(cli.email);
        //    //Revisar link de la imagen dependiendo de la computadora
        //    LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    LinkedImage.ContentId = "Logo";
        //    LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);

        //    //Cierro Tabla html
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" + "<strong><h3>Estimado Cliente " + cli.nombre + "</h3></strong> <br/> <br/>" +

        //      "<div class='panel panel - default'><div class='panel - body'></div></div>" + "<h4>Por este medio le comunicamos la cancelacion de la reservacion numero " + res.idReservacion.ToString() + " por parte de la agencia " + age.nombreAgencia + ". Con el siguiente detalle: </h4>" +
        //     "<h3>Descripción general</h3>" +
        //      "<ul>" +
        //      "<li>Nombre del tour: " + tou.nombreTour + "</li>" +
        //      "<li>Cantidad de personas: " + res.cantidadPersonas.ToString() + "</li>" +
        //      "<li>Fecha reserva: " + res.fechaReservacion.ToString() + "</li>" +
        //      "<li>Monto a pagar: " + res.montoaPagar.ToString() + "</li>" +
        //      "<li>Fecha en que se realizo la reservación: " + res.fechaReserva + "</li>" +
        //      "</ul> \r\n" +
        //      "<h3>Contacto a la Agencia Turistica</h3>" +
        //      "<ul>" +
        //      "<li>Nombre de la agencia: " + age.nombreAgencia + "</li>" +
        //      "<li>Email: " + age.email + "</li>" +
        //      "<li>Telefono :" + age.telefono + "</li>" +
        //      "</ul> \r\n" +
        //        " <br /><br />" +
        //        "<em>Nota: Cualquier inconveniente favor contactar a la empresa promotora del tour directamente.</em>" +
        //        "<br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    htmlView.LinkedResources.Add(LinkedImage);
        //    mail.AlternateViews.Add(htmlView);
        //    mail.IsBodyHtml = true;
        //    SmtpServer.Port = 587;
        //    SmtpServer.UseDefaultCredentials = false;
        //    SmtpServer.Credentials = new System.Net.NetworkCredential("fba9398@hotmail.com", "Office9398");
        //    SmtpServer.EnableSsl = true;
        //    try
        //    {
        //        SmtpServer.Send(mail);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}


        //public static void SendEmailSuspencion(AgenciaTuristica age)
        //{

        //    SmtpClient SmtpServer = new SmtpClient("smtp.live.com");
        //    var mail = new MailMessage();
        //    mail.From = new MailAddress("fba9398@hotmail.com");
        //    mail.Subject = "Suspencion temporal de ExploreCR";
        //    mail.To.Add(age.email);
        //    LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    LinkedImage.ContentId = "Logo";
        //    LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
        //      "<div class='panel panel - default'><div class='panel - body'><h1><span>Suspención Temporal<h1><span></div></div>" + "<strong>Saludos estimado " +
        //      age.nombreAgencia + "</strong> <br /><br />" + "Por este medio le comunicamos la suspención de su cuenta como agencia de viajes en la plataforma ExploreCR " +
        //      "por desición administrativa.  \r\n" +
        //        " <br />" +
        //        "<h4>Cualquir consulta o reclamo, favor contactarnos al email: exploreCR@gmail.com.</h4>" +
        //        "<br />" +
        //        "<em>Nota: Su contenido no será eliminado de la plataforma, lo único deshabilitado son sus publicaciones para el público</em>" +
        //        "<br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    htmlView.LinkedResources.Add(LinkedImage);
        //    mail.AlternateViews.Add(htmlView);
        //    mail.IsBodyHtml = true;
        //    SmtpServer.Port = 587;
        //    SmtpServer.UseDefaultCredentials = false;
        //    SmtpServer.Credentials = new System.Net.NetworkCredential("fba9398@hotmail.com", "Office9398");
        //    SmtpServer.EnableSsl = true;
        //    try
        //    {
        //        SmtpServer.Send(mail);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}

        //public static void SendEmailActivacion(AgenciaTuristica age)
        //{

        //    SmtpClient SmtpServer = new SmtpClient("smtp.live.com");
        //    var mail = new MailMessage();
        //    mail.From = new MailAddress("fba9398@hotmail.com");
        //    mail.Subject = "Activación de Cuenta ExploreCR";
        //    mail.To.Add(age.email);
        //    LinkedResource LinkedImage = new LinkedResource(@"C:\Users\simon\source\repos\Progra V\Proyecto\Avance II\Lec03\Lec03.UI\Imagenes/logo.jpg");
        //    LinkedImage.ContentId = "Logo";
        //    LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);
        //    AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<body>" +
        //      "<div class='panel panel - default'><div class='panel - body'><h1><span>Activación de Cuenta<h1><span></div></div>" + "<strong>Saludos estimado " +
        //      age.nombreAgencia + "</strong> <br /><br />" + "Por este medio le comunicamos la activación de su cuenta como agencia de viajes en la plataforma ExploreCR." +
        //        " <br />" +
        //        "<h4>Cualquir consulta , favor contactarnos al email: exploreCR@gmail.com.</h4>" +
        //        "<br />" +
        //        "<em>Nota: Su contenido no fur eliminado de la plataforma, y sus publicaciones ya están disponibles para el bublico</em>" +
        //        "<br /> <br /><img src=cid:Logo></body>",
        //      null, "text/html");

        //    htmlView.LinkedResources.Add(LinkedImage);
        //    mail.AlternateViews.Add(htmlView);
        //    mail.IsBodyHtml = true;
        //    SmtpServer.Port = 587;
        //    SmtpServer.UseDefaultCredentials = false;
        //    SmtpServer.Credentials = new System.Net.NetworkCredential("fba9398@hotmail.com", "Office9398");
        //    SmtpServer.EnableSsl = true;
        //    try
        //    {
        //        SmtpServer.Send(mail);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error: (" + ex.Message + ")");
        //    }
        //}
    }
}
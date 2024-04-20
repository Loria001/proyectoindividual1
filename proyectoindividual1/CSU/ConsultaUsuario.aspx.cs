using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using RestSharp;
using proyectoindividual1.CSD;

namespace proyectoindividual1.CSU
{
    public partial class ConsultaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            RestClient client = new RestClient("https://randomuser.me/api/");
            string respuesta;
            RestRequest request = new RestRequest();
            var response = client.Get(request);

            respuesta = response.Content;

            Resultados oResultado = JsonConvert.DeserializeObject<Resultados>(respuesta);
            Usuario oUsuario  = oResultado.results[0];

            imgUsuario.ImageUrl = oUsuario.picture.large;
           txtTitulo.Text = oUsuario.name.title;
            txtNombre.Text = oUsuario.name.first;
            txtApellido.Text = oUsuario.name.last;
            txtUsuario.Text = oUsuario.login.username;
            txtContraseña.Text = oUsuario.login.password;
        }
    }
}
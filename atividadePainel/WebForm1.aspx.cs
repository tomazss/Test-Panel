using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace atividadePainel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProximoinformacao_Click(object sender, EventArgs e)
        {
            if (!txtNome.Text.Equals("") && !txtSobrenome.Text.Equals("") && !txtGenero.Text.Equals("") && !txtCelular.Text.Equals("") )
            {
                lblResposta.Text = "";
                pnlInformacao.Visible = false;
                pnlDtEndereco.Visible = true;
                pnlLogin.Visible = false;
            }
            else
            {
                lblResposta.Text = " <p style = 'color : red;'> ERRO! Digite todos os campos</p> ";
            }
           
        }

        protected void btnVoltarEndereco_Click(object sender, EventArgs e)
        {
            lblResposta.Text = "";
            pnlInformacao.Visible = true;
            pnlDtEndereco.Visible = false;
            pnlLogin.Visible = false;
        }

        protected void btnProximoEndereco_Click(object sender, EventArgs e)
        { if(!txtEndereco.Text.Equals("") && !txtCidade.Text.Equals("")&& !txtCep.Text.Equals(""))
            {
                lblResposta.Text = "";
                pnlInformacao.Visible = false;
                pnlDtEndereco.Visible = false;
                pnlLogin.Visible = true;
            }
            else
            {
                lblResposta.Text = " <p style = 'color : red;'> ERRO! Digite todos os campos</p> ";
            }

        }


        protected void btnVoltarLogin_Click(object sender, EventArgs e)
        {
            lblResposta.Text = "";
            pnlInformacao.Visible = false;
            pnlDtEndereco.Visible = true;
            pnlLogin.Visible = false;
        }
        protected void btnEnviarLogin_Click(object sender, EventArgs e)
        {
            if(!txtUsuario.Text.Equals("") && !txtSenha.Text.Equals(""))
            {
                lblResposta.Text = " <p style = 'color : green;'> AVISO! Os seus dados foram enviados com sucesso</p> ";
            }
            else
            {
                lblResposta.Text = " <p style = 'color : red;'> ERRO! Digite todos os campos</p> ";
            }
           
        }

        
    }
}
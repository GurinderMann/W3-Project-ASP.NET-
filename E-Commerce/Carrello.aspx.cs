using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class Carrello1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Carrello> carrello = Session["Carrello"] as List<Carrello>;

                if (carrello != null)
                {
                    rptProdotti.DataSource = carrello;
                    rptProdotti.DataBind();
                }
            }
        }

        protected string CalcolaTotale()
        {
            List<Carrello> carrello = Session["Carrello"] as List<Carrello>;

            if (carrello != null)
            {
                double sommaTotale = carrello.Sum(item => item.Prezzo);
                return sommaTotale.ToString("C");
            }

            return "$0.00";
        }
        protected void btnSvuotaCarrello_Click(object sender, EventArgs e)
        {
        
            Session["Carrello"] = null;

         
            rptProdotti.DataSource = null;
            rptProdotti.DataBind();
        }
        protected void btnRimuovi_Click(object sender, EventArgs e)
        {
           
            Button btn = (Button)sender;
            int itemIndex = int.Parse(btn.CommandArgument.ToString());

        
            List<Carrello> carrello = Session["Carrello"] as List<Carrello>;

            if (carrello != null && itemIndex >= 0 && itemIndex < carrello.Count)
            {
                carrello.RemoveAt(itemIndex);

               
                rptProdotti.DataSource = carrello;
                rptProdotti.DataBind();
            }
        }
    }
    
}
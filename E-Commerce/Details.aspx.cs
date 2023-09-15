using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
        
                if (Request.QueryString["ID"] != null)
                {
                    int productId = Convert.ToInt32(Request.QueryString["ID"]);



                    List<Prodotti> listaProdotti = Session["ListaProdotti"] as List<Prodotti>;

                    if (listaProdotti != null)
                    {
                        Prodotti prodottoSelezionato = null;

                        foreach (var prodotto in listaProdotti)
                        {
                            if (prodotto.IdProdotto == productId)
                            {
                                prodottoSelezionato = prodotto;
                                break;
                            }
                        }

                        if (prodottoSelezionato != null)
                        {
                            nome.InnerText = prodottoSelezionato.Nome;
                            Descrizione.InnerText = prodottoSelezionato.Descrizione;
                            Prezzo.InnerText = prodottoSelezionato.Prezzo.ToString("C");
                            img.Src = prodottoSelezionato.Immagine;
                        }
                    }
                }
            }

        }

        protected void Aggiungi(object sender, EventArgs e)
        {
          
            bool prodottoAggiunto = false;

            int productId = Convert.ToInt32(Request.QueryString["ID"]);

            List<Carrello> carrello = Session["Carrello"] as List<Carrello>;

            if (carrello == null)
            {
                carrello = new List<Carrello>();
                Session["Carrello"] = carrello;
            }


            List<Prodotti> listaProdotti = Session["ListaProdotti"] as List<Prodotti>;

            if (listaProdotti != null)
            {
                Prodotti prodottoSelezionato = null;

                foreach (var prodotto in listaProdotti)
                {
                    if (prodotto.IdProdotto == productId)
                    {
                        prodottoSelezionato = prodotto;
                        break;
                    }
                }

                if (prodottoSelezionato != null)
                {
                    var item = new Carrello
                    {
                        Nome = prodottoSelezionato.Nome,
                        Prezzo = prodottoSelezionato.Prezzo
                    };
                
            
                    carrello.Add(item);

                 
                    prodottoAggiunto = true;

               
                    Session["Carrello"] = carrello;
                }
            }

            
            if (prodottoAggiunto)
            {

                lblMessaggio.Text = "Prodotto aggiunto al carrello con successo!";
                lblMessaggio.Visible = true;
            }
            else
            {
               
                lblMessaggio.Text = "Errore: Il prodotto non è stato aggiunto!";
                lblMessaggio.ForeColor = System.Drawing.Color.Red;
                lblMessaggio.Visible = true;
            }
        }

        
    }
}
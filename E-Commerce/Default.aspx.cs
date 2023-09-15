using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;

namespace E_Commerce
{
    public partial class Default : System.Web.UI.Page
    {
        private List<Prodotti> listaProdotti;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                listaProdotti = new List<Prodotti>
                {
                new Prodotti("Fnatic miniSTREAK", "Fnatic miniSTREAK layout Italiano", "Content/img/Fnatic.jpg", 120, 1),
                new Prodotti("HyperX Cloud II", "Suono surround virtuale basato sull'hardware,Confortevole con 100% memory foam su fascia e cuscini in finta pelle", "Content/img/HyperX.jpg", 80.99, 2),
                new Prodotti("Samsung Monitor Gaming Odyssey", "G5 (C34G55), Curvo (1000R), 34, 3440x1440 (Ultra WQHD), 21:9, HDR10, VA, 165 Hz, 1 ms, FreeSync Premium, HDMI, Display Port, Ingresso Audio, PBP, Flicker Free", "Content/img/Samsung.jpg", 370,3),
                new Prodotti("MSI Cyborg 15 A12VE-061IT, Notebook", "Gaming 15.6 FHD 144Hz, Intel i7-12650H, Nvidia RTX 4050 6GB GDDR6, RAM 16GB DDR5 4800MHz, 1TB SSDPCIe 4, WiFi 6, Win 11 Home, Layout e Garanzia ITA, Nero", "Content/img/MSI.jpg", 1119,4),
                new Prodotti("HP Workstation Z VR Backpack G2 - Zaino PC ", "1 x Core i7 8850H / 2.6GHz - RAM 16GB - SSD 256GB - NVMe, TLC - GF RTX 2080 - GigE - LAN Senza Fili: 802.11a/b/g/n/AC, Bluetooth 5.0 - Win 10 PRO 64", "Content/img/Hp.jpg", 2500,5),
                new Prodotti("PROCESSOR INTEL CORE I9-13900KF 5.8 GHZ LGA1700 ", "È un processore presentato nel 2022 e pensato per i PC gaming, basato su architettura Raptor Lake realizzata con processo Intel 7 (10nm). La CPU offre 24 core e 32 thread. La frequenza di clock base è pari a 3 GHz ma si spinge fino a 5,8 GHz.", "Content/img/Intel.jpg", 618,6),

                };

            };

                rptProdotti.DataSource = listaProdotti;
                rptProdotti.DataBind();

               
                Session["ListaProdotti"] = listaProdotti;

            }
        }
    }

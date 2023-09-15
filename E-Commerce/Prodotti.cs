using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce
{
    public class Prodotti
    {
        public string Nome { get; set; }
        public string Descrizione { get; set; }
        public string Immagine { get; set; }
        public double Prezzo { get; set; }
        public int IdProdotto { get; set; }
        public Prodotti() { }
        public Prodotti(string nome, string descrizione, string img, double prezzo, int idProdotto) 
        {   

            this.Nome = nome;
            this.Descrizione = descrizione;
            this.Immagine = img;
            this.Prezzo = prezzo;
            this.IdProdotto = idProdotto;
        }
    }
}
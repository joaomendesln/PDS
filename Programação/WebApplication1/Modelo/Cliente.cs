using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Modelo
{
    public class Cliente
    {
        public int idCliente { get; set; }
        public string nome { get; set; }
        public string telefones { get; set; }
        public string cidade { get; set; }
        public string estado { get; set; }
        public string endereco { get; set; }
        public bool pessoa { get; set; }
        public string certidao { get; set; }
        public string email { get; set; }

        public Cliente() 
        {
            this.idCliente = 0;
            this.nome = "";
            this.telefones = "";
            this.cidade = "";
            this.estado = "";
            this.endereco = "";
            this.pessoa = false;
            this.certidao = "";
            this.email = "";
        }

        public Cliente(int aidCliente, string anome, string atelefones, string acidade, string aestado, string aendereco, bool apessoa, string acertidado, string aemail)
        {
            this.idCliente = aidCliente;
            this.nome = anome;
            this.telefones = atelefones;
            this.cidade = acidade;
            this.estado = aestado;
            this.endereco = aendereco;
            this.pessoa = apessoa;
            this.certidao = acertidado;
            this.email = aemail;
        }

        public Cliente(string anome, bool apessoa, string acertidado, string aemail)
        {
            this.nome = anome;
            this.pessoa = apessoa;
            this.certidao = acertidado;
            this.email = aemail;
        }
    }
}
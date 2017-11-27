using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Modelo
{
    public class Funcionario
    {
        public int idFuncionario { get; set; }
        public string nome { get; set; }
        public string telefones { get; set; }
        public string identidade { get; set; }
        public string carteiraDeTrabalho { get; set; }
        public double salario { get; set; }
        public bool motorista { get; set; }
        public bool tecnico { get; set; }
        public string observacao { get; set; }

        public Funcionario() 
        {
            this.idFuncionario = 0;
            this.nome = "";
            this.telefones = "";
            this.identidade = "";
            this.carteiraDeTrabalho = "";
            this.salario = 0;
            this.motorista = false;
            this.tecnico = false;
            this.observacao = "";
        }

        public Funcionario(int aidFuncionario, string anome, string atelefones, string aidentidade, string acarteiraDeTrabalho, double asalario, bool amotorista, bool atecnico, string aobservacao)
        {
            this.idFuncionario = aidFuncionario;
            this.nome = anome;
            this.telefones = atelefones;
            this.identidade = aidentidade;
            this.carteiraDeTrabalho = acarteiraDeTrabalho;
            this.salario = asalario;
            this.motorista = amotorista;
            this.tecnico = atecnico;
            this.observacao = aobservacao;
        }

        public Funcionario(string anome, string atelefones, string aidentidade, string acarteiraDeTrabalho, double asalario, bool amotorista, bool atecnico, string aobservacao)
        {
            this.nome = anome;
            this.telefones = atelefones;
            this.identidade = aidentidade;
            this.carteiraDeTrabalho = acarteiraDeTrabalho;
            this.salario = asalario;
            this.motorista = amotorista;
            this.tecnico = atecnico;
            this.observacao = aobservacao;
        }

        public Funcionario(string anome, string acarteiraDeTrabalho, double asalario, bool amotorista, bool atecnico, string aobservacao)
        {
            this.nome = anome;
            this.carteiraDeTrabalho = acarteiraDeTrabalho;
            this.salario = asalario;
            this.motorista = amotorista;
            this.tecnico = atecnico;
            this.observacao = aobservacao;
        }
    }
}

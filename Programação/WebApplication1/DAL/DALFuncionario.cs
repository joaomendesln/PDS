using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.DAL
{
    public class DALFuncionario
    {
        string connectionString = "";

        public DALFuncionario() 
        {
            connectionString = ConfigurationManager.ConnectionStrings["ProjetoPDSConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Funcionario> SelectAll()
        {
            Modelo.Funcionario aFuncionario;
            List<Modelo.Funcionario> aListFuncionario = new List<Modelo.Funcionario>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * From Funcionario";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aFuncionario = new Modelo.Funcionario(
                        Convert.ToInt32(dr["idFuncionario"]),
                        dr["nome"].ToString(),
                        dr["telefones"].ToString(),
                        dr["identidade"].ToString(),
                        dr["carteiraDeTrabalho"].ToString(),
                        Convert.ToDouble(dr["salario"]),
                        Convert.ToBoolean(dr["motorista"]),
                        Convert.ToBoolean(dr["tecnico"]),
                        dr["observacao"].ToString()
                        );
                    aListFuncionario.Add(aFuncionario);
                }
            }
            dr.Close();
            conn.Close();
            return aListFuncionario;
        }
    }
}
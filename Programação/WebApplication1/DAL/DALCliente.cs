using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.DAL
{
    public class DALCliente
    {
        string connectionString = "";

        public DALCliente() 
        {
            connectionString = ConfigurationManager.ConnectionStrings["ProjetoPDSConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Cliente> SelectAll()
        {
            Modelo.Cliente aCliente;
            List<Modelo.Cliente> aListCliente = new List<Modelo.Cliente>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * From Cliente";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aCliente = new Modelo.Cliente(
                        dr["nome"].ToString(),
                        Convert.ToBoolean(dr["pessoa"]),
                        dr["certidao"].ToString(),
                        dr["email"].ToString()
                        );
                    aListCliente.Add(aCliente);
                }
            }
            dr.Close();
            conn.Close();
            return aListCliente;
        }
    }
}
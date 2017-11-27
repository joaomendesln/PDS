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

        // SELECIONAR TODOS OS CLIENTES
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
                        Convert.ToInt32(dr["idCliente"]),
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

        // SELECIONAR UM CLIENTE
        [DataObjectMethod(DataObjectMethodType.Select)]
        public Modelo.Cliente SelectOne(int id)
        {
            Modelo.Cliente aCliente = new Modelo.Cliente();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * From Cliente where idCliente = @idCliente";
            cmd.Parameters.AddWithValue("@idCliente", id);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aCliente = new Modelo.Cliente(
                        Convert.ToInt32(dr["idCliente"]),
                        dr["nome"].ToString(),
                        Convert.ToBoolean(dr["pessoa"]),
                        dr["certidao"].ToString(),
                        dr["email"].ToString()
                        );
                }
            }
            dr.Close();
            conn.Close();
            return aCliente;
        }

        // INSERIR CLIENTE
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void InsertCliente(Modelo.Cliente obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("INSERT INTO Cliente(nome, telefones, cidade, estado, endereco, pessoa, certidao, email) VALUES(@nome, @telefones, @cidade, @estado, @endereco, @pessoa, @certidao, @email)", conn);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@telefones", obj.telefones);
            cmd.Parameters.AddWithValue("@cidade", obj.cidade);
            cmd.Parameters.AddWithValue("@estado", obj.estado);
            cmd.Parameters.AddWithValue("@endereco", obj.endereco);
            cmd.Parameters.AddWithValue("@pessoa", obj.pessoa);
            cmd.Parameters.AddWithValue("@certidao", obj.certidao);
            cmd.Parameters.AddWithValue("@email", obj.email);

            cmd.ExecuteNonQuery();

        }
        
        //UPDATE CLIENTE
        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateCliente(Modelo.Cliente obj, int idCliente)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("UPDATE Filme set nome = @nome, telefones = @telefones, cidade = @cidade, estado = @estado, endereco = @endereco, pessoa = @pessoa, certidao = @certidao, email = @email where idCliente = @idCliente", conn);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@telefones", obj.telefones);
            cmd.Parameters.AddWithValue("@cidade", obj.cidade);
            cmd.Parameters.AddWithValue("@estado", obj.estado);
            cmd.Parameters.AddWithValue("@endereco", obj.endereco);
            cmd.Parameters.AddWithValue("@pessoa", obj.pessoa);
            cmd.Parameters.AddWithValue("@certidao", obj.certidao);
            cmd.Parameters.AddWithValue("@email", obj.email);
            cmd.Parameters.AddWithValue("@idCliente", idCliente);

            cmd.ExecuteNonQuery();
        }

        // DELETE CLIENTE
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void DeleteCliente(int idCliente)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "DELETE FROM Cliente where idCliente = @idCliente";
            cmd.Parameters.AddWithValue("@idCliente", idCliente);

            cmd.ExecuteNonQuery();
        }
    }
}

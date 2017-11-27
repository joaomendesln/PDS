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
                        dr["carteiraDeTrabalho"].ToString(),
                        Convert.ToDouble(dr["salario"]),
                        Convert.ToBoolean(dr["motorista"]),
                        Convert.ToBoolean(dr["tecnico"]),
                        );
                    aListFuncionario.Add(aFuncionario);
                }
            }
            dr.Close();
            conn.Close();
            return aListFuncionario;
        }

        // SELECIONAR UM FUNCIONÁRIO
        [DataObjectMethod(DataObjectMethodType.Select)]
        public Modelo.Funcionario SelectOne(int idFuncionario)
        {
            Modelo.Funcionario aFuncionario = new Modelo.Funcionario();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * From Funcionario where idFuncionario = @idFuncionario";
            cmd.Parameters.AddWithValue("@idFuncionario", id);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aFuncionario = new Modelo.Funcionario(
                        Convert.ToInt32(dr["idFuncionario"]),
                        dr["nome"].ToString(),
                        dr["carteiraDeTrabalho"].ToString(),
                        Convert.ToDouble(dr["salario"]),
                        Convert.ToBoolean(dr["amotorista"]),
                        Convert.ToBoolean(dr["tecnico"]),
                        );
                }
            }
            dr.Close();
            conn.Close();
            return aFuncionario;
        }

        // INSERIR FUNCIONÁRIO
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void InsertFuncionario(Modelo.Funcionario obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("INSERT INTO Funcionario(nome, telefones, identidade, carteiraDeTrabalho, salario, motorista, tecnico, observacao) VALUES(@nome, @telefones, @identidade, @carteiraDeTrabalho, @salario, @motorista, @tecnico, @observacao)", conn);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@telefones", obj.telefones);
            cmd.Parameters.AddWithValue("@identidade", obj.identidade);
            cmd.Parameters.AddWithValue("@carteiraDeTrabalho", obj.carteiraDeTrabalho);
            cmd.Parameters.AddWithValue("@salario", obj.salario);
            cmd.Parameters.AddWithValue("@motorista", obj.motorista);
            cmd.Parameters.AddWithValue("@tecnico", obj.tecnico);
            cmd.Parameters.AddWithValue("@observacao", obj.observacao);

            cmd.ExecuteNonQuery();

        }
        
        //UPDATE FUNCIONÁRIO
        [DataObjectMethod(DataObjectMethodType.Update)]
        public void UpdateFuncionario(Modelo.Funcionario obj, int idFuncionario)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("UPDATE Filme set nome = @nome, telefones = @telefones, identidade = @identidade, carteiraDeTrabalho = @carteiraDeTrabalho, salario = @salario, motorista = @motorista, tecnico = @tecnico, observacao = @observacao where idFuncionario = @idFuncionario", conn);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@telefones", obj.telefones);
            cmd.Parameters.AddWithValue("@identidade", obj.identidade);
            cmd.Parameters.AddWithValue("@carteiraDeTrabalho", obj.carteiraDeTrabalho);
            cmd.Parameters.AddWithValue("@salario", obj.salario);
            cmd.Parameters.AddWithValue("@motorista", obj.motorista);
            cmd.Parameters.AddWithValue("@tecnico", obj.tecnico);
            cmd.Parameters.AddWithValue("@observacao", obj.observacao);
            cmd.Parameters.AddWithValue("@idFuncionario", idFuncionario);

            cmd.ExecuteNonQuery();
        }

        // DELETE FUNCIONÁRIO
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void DeleteFuncionario(int idFuncionario)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "DELETE FROM Funcionario where idFuncionario = @idFuncionario";
            cmd.Parameters.AddWithValue("@idFuncionario", idFuncionario);

            cmd.ExecuteNonQuery();
        }
    }
}

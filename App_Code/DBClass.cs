using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

    public class DBClass
    {
        public SqlConnection conn;
        public DBClass()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        }
        public int ExecuteSql(string cmdtext)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand(cmdtext, conn);
            int x = comm.ExecuteNonQuery();
            conn.Close();
            return x;
        }
        public DataTable GetRecords(string sqltext)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqltext, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
    }

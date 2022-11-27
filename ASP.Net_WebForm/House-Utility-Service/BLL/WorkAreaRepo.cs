using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace House_Utility_Service.BLL
{
    public class WorkAreaRepo:IWorkAreaRepo,IDisposable
    {
        SqlConnection con;
        public WorkAreaRepo()
        {
            this.con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        }
        public void Delete(WorkAreaDTO dto)
        {
            string sql = "DELETE FROM workareas WHERE workareaid=@workareaid";
            using(SqlCommand cmd=new SqlCommand(sql, this.con))
            {
                cmd.Parameters.AddWithValue("@workareaid", dto.@workareaid);
                this.con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch(Exception ex)
                {
                    throw ex.InnerException;
                }
                this.con.Close();
            }
        }



        public WorkAreaDTO Get(int id)
        {
            throw new NotImplementedException();
        }

        public ICollection<WorkAreaDTO> GetAll()
        {
            List<WorkAreaDTO> workareas = new List<WorkAreaDTO>();
            DataTable dt = new DataTable();
            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM workareas", this.con))
            {
                da.Fill(dt);
                foreach (var r in dt.AsEnumerable())
                {
                    workareas.Add(new WorkAreaDTO
                    {
                        workareaid = r.Field<int>("workareaid"),
                        areaname = r.Field<string>("areaname"),
                        skill = r.Field<string>("skill"),
                        
                    });
                }
                return workareas;

            }
        }

        public int WorkAreaCount()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM workareas", this.con))
            {
                this.con.Open();
                int n = (int)cmd.ExecuteScalar();
                this.con.Close();
                return n;
            }
        }

        public void Insert(WorkAreaDTO dto)
        {
            string sql = @"INSERT INTO [workareas]
                           ([areaname]
                           ,[skill])
                            VALUES
                           (@areaname
                           ,@skill)";
            using (SqlCommand cmd = new SqlCommand(sql, this.con))
            {
                cmd.Parameters.AddWithValue("@areaname", dto.areaname);
                cmd.Parameters.AddWithValue("@skill", dto.skill);
                this.con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex.InnerException;
                }
                this.con.Close();
            }
        }

        public void Update(WorkAreaDTO dto)
        {
            string sql = @"Update[dbo].[workareas]
                        SET [areaname]=@areaname
                           ,[skill]=@skill
                    WHERE workareaid=@workareaid";
            using (SqlCommand cmd = new SqlCommand(sql, this.con))
            {
                cmd.Parameters.AddWithValue("@areaname", dto.areaname);
                cmd.Parameters.AddWithValue("@skill", dto.skill);
                cmd.Parameters.AddWithValue("@workareaid", dto.workareaid);
                this.con.Open();
                try
                {
                    int x = cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex.InnerException;
                }
                this.con.Close();
            }
        }
        public void Dispose()
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}
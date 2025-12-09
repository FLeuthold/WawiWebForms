using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Data.SqlClient;

namespace MauiApp1.Shared.Services
{
    internal static class AuftragService
    {
        public static List<Drucker> GetAllDrucker()
        {
            var druckerListe = new List<Drucker>();
            using (var conn = new SqlConnection("Data Source=.;Initial Catalog=wawi;Integrated Security=True;TrustServerCertificate=True"))
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT * FROM Drucker", conn))
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var drucker = new Drucker
                        {
                            Id = reader.GetInt32(0),
                            Name = reader.GetString(1)
                        };
                        druckerListe.Add(drucker);
                    }
                }
            }
            return druckerListe;
        }
        public static List<Auftrag>GetByDrucker(int druckerId)
        {
            var auftragListe = new List<Auftrag>();
            using (var conn = new SqlConnection("Data Source=.;Initial Catalog=wawi;Integrated Security=True;TrustServerCertificate=True"))
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT * FROM Auftrag where DruckerId = @DruckerId", conn))
                {
                    cmd.Parameters.AddWithValue("@DruckerId", druckerId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var drucker = new Auftrag
                            {
                                Id = reader.GetInt32(0),
                                DruckerId = reader.GetInt32(1),
                                ArtikelId = reader.GetInt32(2),
                                Status = reader.GetString(3)
                            };
                            auftragListe.Add(drucker);
                        }
                    }
                }
                
            }
            return auftragListe;
        }
    }

    internal class Drucker
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
    internal class Auftrag
    {
        public int Id { get; set; }
        public int DruckerId { get; set; }
        public int ArtikelId { get; set; }
        public string Status { get; set; }
    }
}

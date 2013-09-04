using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Text;
using Microsoft.SqlServer.Server;


public partial class UpdateYTDSponsors
{
    enum SponsorType
    {
        Sponsor = 0,
        Grandmother = 1,
        GreatGrandmother = 2,
        GreatGreatGrandmother = 3
    }

    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void procDistributor_YTD_CLR_UpdateSponsors(SqlInt32 distId, SqlInt32 motherId, SqlInt32 grandmotherId, SqlInt32 greatgrandmotherId, SqlInt32 greatgreatgrandmotherId)
    {
        int itr;
        int yr = DateTime.Now.Year;
        string mother = motherId.Value.ToString();
        string grandmother = grandmotherId.Value.ToString();
        string greatgrandmother = greatgrandmotherId.Value.ToString();
        string greatgreatgrandmother = greatgreatgrandmotherId.Value.ToString();
        StringBuilder qry = new StringBuilder();
        qry.Append("UPDATE dbo.DistributorYTDSales SET ");
        for (itr = DateTime.Now.Month; itr <= 12; itr++)
        {
            qry.Append(GetSponsorColumn(itr, SponsorType.Sponsor) + " = " + mother + ", ");
            qry.Append(GetSponsorColumn(itr, SponsorType.Grandmother) + " = " + grandmother + ", ");
            qry.Append(GetSponsorColumn(itr, SponsorType.GreatGrandmother) + " = " + greatgrandmother + ", ");
            qry.Append(GetSponsorColumn(itr, SponsorType.GreatGreatGrandmother) + " = " + greatgreatgrandmother);
            if (itr == 12)
            {
                qry.Append(" ");
            }
            else
            {
                qry.Append(", ");
            }
        }
        qry.Append("WHERE DistributorID = " + distId.Value.ToString());
        qry.Append(" AND YearID = '" + yr.ToString() + "'");
        using (SqlConnection con = new SqlConnection("context connection=true"))
        {
            SqlCommand cmd = new SqlCommand(qry.ToString(), con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    private static string GetSponsorColumn(int mth, SponsorType type)
    {
        string formatMth = mth.ToString();
        if (formatMth.Length == 1)
        {
            formatMth = "0" + formatMth;
        }

        return "Month" + formatMth + Convert.ToString(type) + "ID";
    }
};
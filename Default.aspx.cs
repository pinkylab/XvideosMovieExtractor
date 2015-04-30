using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Net;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonAnalyze_Click(object sender, EventArgs e)
    {
        string source_url = TextBoxURL.Text;
        string _html = "";
        WebClient wc = new WebClient();
        //UTF-8ならこれ1行でもOK
        if (source_url != null)
        {
            _html = wc.DownloadString(source_url);
        }

        TextBoxResult.Text = _html;
    }
}
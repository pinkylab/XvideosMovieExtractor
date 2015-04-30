using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class _Default : Page
{
    const string UA_iOS7_1_2 = "Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonAnalyze_Click(object sender, EventArgs e)
    {
        string source_url = TextBoxURL.Text;
        string _html = "";
        WebClient wc = new WebClient();

        // ユーザーエージェント指定
        wc.Headers.Add("User-Agent", UA_iOS7_1_2);

        if (source_url != null)
        {
            //UTF-8ならこれ1行でもOK
            _html = wc.DownloadString(source_url);
        }

        TextBoxResult.Text = _html;
    }
}
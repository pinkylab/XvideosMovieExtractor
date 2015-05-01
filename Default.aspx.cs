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
        string strResult = "動画URLの取得に性交しました。";
        try
        {
            string source_url = TextBoxURL.Text;
            string _html = "";
            WebClient wc = new WebClient();

            // ユーザーエージェント指定
            wc.Headers.Add("User-Agent", UA_iOS7_1_2);

            if (source_url != null)
            {
                // UTF-8ならこれ1行でもOK
                // 例外処理書く
                _html = wc.DownloadString(source_url);
            }

            // mobileReplacePlayerDivTwoQual関数の引数にmp4形式の動画URLの直リンクがある
            // 引数部分のみを正規表現で抜き出す
            System.Text.RegularExpressions.Regex r =
                new System.Text.RegularExpressions.Regex(
    @"mobileReplacePlayerDivTwoQual\((?<hikisu>.*)\)",
    System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            System.Text.RegularExpressions.Match m = r.Match(_html);

            string hikisu = "";
            while (m.Success)
            {
                //一致した対象が見つかったときキャプチャした部分文字列を表示
                hikisu = m.Groups["hikisu"].Value;

                m = m.NextMatch();
            }

            // 引数はカンマ区切りなので、カンマで分割する
            string[] strArr = hikisu.Split(',');

            int i = 0;
            foreach (string str in strArr)
            {
                // 文字列に「/mp4/」って文字があったら動画URLとする
                if (str.Contains(@"/mp4/"))
                {
                    break;
                }
                ++i;
            }

            // 前後の空白を消した後、シングルクォートも消す
            string resUrl = strArr[i].Trim().Trim('\'');
            // 結果の表示
            HyperLinkResult.Text = resUrl;
            HyperLinkResult.NavigateUrl = resUrl;
            HyperLinkResult.Target = "_blank";
        }
        catch(Exception ex)
        {
            // あばばばばばばばばばばば
            strResult = ex.ToString();
        }
        finally
        {
            TextBoxResult.Text = strResult;
        }
    }
}
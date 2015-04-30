<%@ Application Language="C#" %>
<%@ Import Namespace="xvvv" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // アプリケーションのスタートアップで実行するコードです
        AuthConfig.RegisterOpenAuth();
        RouteConfig.RegisterRoutes(RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  アプリケーションのシャットダウンで実行するコードです

    }

    void Application_Error(object sender, EventArgs e)
    {
        // ハンドルされていないエラーが発生したときに実行するコードです

    }

</script>

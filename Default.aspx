<%@ Page Title="エロ動画を観よう" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2>超便利エロ動画ゲッチュツール</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>使い方</h2>
    <p>下のテキストボックスにxvideosの動画URLを入れてください。「エロ動画をゲットする」ボタンを押すと、エロ動画へのリンクが表示されます。</p>
    <p>あとは煮るなり焼くなり好きにしてください。右クリックから「名前をつけて保存（ブラウザによって若干表記は違う）」で動画の保存ができます。</p>
    <h3>URLを入れてね</h3>
    <asp:TextBox ID="TextBoxURL" runat="server" Width="1000px"></asp:TextBox>
    <asp:Button ID="ButtonAnalyze" runat="server" Text="エロ動画をゲットする" OnClick="ButtonAnalyze_Click" />
    <h3>エロ動画への直リンク</h3>
    <asp:HyperLink ID="HyperLinkResult" runat="server"></asp:HyperLink>
    <h3>エラーログ</h3>
    <p>catchしたものを直接表示してるクソアンドクソ</p>
    <p>エラーが返ってくる場合は基本的に指定されたURLが間違ってる。</p>
    <asp:TextBox ID="TextBoxResult" runat="server" Height="250px" TextMode="MultiLine" Width="1000px"></asp:TextBox>
    
</asp:Content>
<%@ Page Title="Xvideos Movie Extractor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
            </hgroup>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>URLを入れてね</h2>
    <asp:TextBox ID="TextBoxURL" runat="server" Width="90%"></asp:TextBox>
    <asp:Button ID="ButtonAnalyze" runat="server" Text="動画をゲットする" OnClick="ButtonAnalyze_Click" />
    <h3>↓動画への直リンク↓</h3>
    <asp:HyperLink ID="HyperLinkResult" runat="server" Width="100%"></asp:HyperLink>
    <hr />
    <h2>使い方</h2>
    <p>テキストボックスにxvideosの動画URLを入れてください。「動画をゲットする」ボタンを押すと、動画へのリンクが表示されます。</p>
    <p>あとは煮るなり焼くなり好きにしてください。右クリックから「名前をつけて保存（ブラウザによって若干表記は違う）」で動画の保存ができます。</p>
    <h2>エラーログ</h2>
    <p>catchしたものをそのまま表示するクソアンドクソ</p>
    <p>エラーが返ってくる場合は基本的に指定されたURLが間違ってる。</p>
    <asp:TextBox ID="TextBoxResult" runat="server" Height="250px" TextMode="MultiLine" Width="90%"></asp:TextBox>
    
</asp:Content>
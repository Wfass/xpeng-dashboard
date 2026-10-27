.class Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->onBackPressed()V

    return-void
.end method

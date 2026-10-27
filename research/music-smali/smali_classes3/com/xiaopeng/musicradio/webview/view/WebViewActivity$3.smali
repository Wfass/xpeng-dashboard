.class Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->onStop()V
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

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->finish()V

    :cond_0
    return-void
.end method

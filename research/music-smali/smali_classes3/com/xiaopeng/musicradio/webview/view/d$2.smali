.class Lcom/xiaopeng/musicradio/webview/view/d$2;
.super Ljava/lang/Object;
.source "VipBuyWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/d;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/d$2;->a:Lcom/xiaopeng/musicradio/webview/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d$2;->a:Lcom/xiaopeng/musicradio/webview/view/d;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Lcom/xiaopeng/musicradio/webview/view/d;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "xpVipBuyBridge"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

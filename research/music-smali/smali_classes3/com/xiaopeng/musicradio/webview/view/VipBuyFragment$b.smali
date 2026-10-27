.class Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;
.super Landroid/webkit/WebChromeClient;
.source "VipBuyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 379
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 396
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

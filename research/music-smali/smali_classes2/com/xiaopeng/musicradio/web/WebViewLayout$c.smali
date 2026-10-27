.class Lcom/xiaopeng/musicradio/web/WebViewLayout$c;
.super Landroid/webkit/WebChromeClient;
.source "WebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/WebViewLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$c;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;Lcom/xiaopeng/musicradio/web/WebViewLayout$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout$c;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 268
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    .line 269
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

    .line 285
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

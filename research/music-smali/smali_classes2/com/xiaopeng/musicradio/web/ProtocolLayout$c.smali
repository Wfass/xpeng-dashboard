.class Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;
.super Landroid/webkit/WebChromeClient;
.source "ProtocolLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/web/ProtocolLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 239
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    .line 240
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

    .line 256
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

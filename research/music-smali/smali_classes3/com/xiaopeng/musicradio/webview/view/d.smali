.class public Lcom/xiaopeng/musicradio/webview/view/d;
.super Lcom/xiaopeng/musicradio/web/d;
.source "VipBuyWebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lbtl$a;
.implements Lcom/xiaopeng/musicradio/web/WebViewLayout$b;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/webkit/WebView;

.field private j:I

.field private k:Lbtl;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaopeng/musicradio/web/d;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->g:Ljava/lang/String;

    const-string v0, "https://iot-web.xiaopeng.com/car-service/media_vip_v2/home?mediaType="

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->c:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, ""

    .line 64
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xiaopeng/musicradio/web/d;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->g:Ljava/lang/String;

    const-string v0, "https://iot-web.xiaopeng.com/car-service/media_vip_v2/home?mediaType="

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    .line 65
    iput p3, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    .line 68
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lapo;->d(Landroid/content/Context;)Z

    move-result p2

    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&theme="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "night"

    goto :goto_0

    :cond_0
    const-string p2, "day"

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->c:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/webview/view/d;)Landroid/webkit/WebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->i:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->g()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->u_()Lcom/xiaopeng/musicradio/web/WebViewLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isDoTooManyRedirectsError(Z)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWebSetting: mTextZoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyWebViewDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->j:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setTextZoom(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->i:Landroid/webkit/WebView;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->i:Landroid/webkit/WebView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    new-instance v0, Lbtl;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbtl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->k:Lbtl;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->k:Lbtl;

    invoke-virtual {v0, p0}, Lbtl;->a(Lbtl$a;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->k:Lbtl;

    const-string/jumbo v2, "xpVipBuyBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/d$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/d$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/d;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setOnThemeChangeListener(Lcom/xiaopeng/musicradio/web/WebViewLayout$b;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setOnThemeChangeListener(Lcom/xiaopeng/musicradio/web/WebViewLayout$b;)V

    .line 140
    iput-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    .line 142
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 143
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/d$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/webview/view/d$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/d;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLoadingTip: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyWebViewDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 153
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "vipBuyCallBack"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/webview/view/d$3;-><init>(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "night"

    goto :goto_0

    :cond_0
    const-string p1, "day"

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->g:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChange: theme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyWebViewDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 172
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setMediaVipTheme"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected a()[I
    .locals 1

    const/4 v0, 0x2

    .line 202
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method

.method public b()V
    .locals 2

    const-string v0, "VipBuyWebViewDialog"

    const-string/jumbo v1, "\u652f\u4ed8\u6210\u529f,\u5bf9\u8bdd\u6846\u6d88\u5931"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$e;->vip_buy_success:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/musicradio/web/d;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrBuyUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyWebViewDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->c()V

    .line 160
    invoke-super {p0}, Lcom/xiaopeng/musicradio/web/d;->e()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/d;->k:Lbtl;

    invoke-virtual {v0, p1}, Lbtl;->onDismiss(Landroid/content/DialogInterface;)V

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/d;->h()V

    return-void
.end method

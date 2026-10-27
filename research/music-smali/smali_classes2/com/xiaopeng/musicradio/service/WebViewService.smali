.class public Lcom/xiaopeng/musicradio/service/WebViewService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "WebViewService.java"

# interfaces
.implements Lbtg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 39
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "titleEnable"

    const-string v3, "nightUrl"

    const-string v4, "dayUrl"

    const-string v5, "/webview/webview"

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v6

    .line 42
    invoke-virtual {v6, v5}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v4, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v3, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    const/16 p2, 0xa3

    .line 46
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v5}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v4, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v3, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public startFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "dayUrl"

    .line 61
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "nightUrl"

    .line 62
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "titleEnable"

    const/4 p2, 0x0

    .line 63
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "arguments"

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "/webview/webviewfragment"

    .line 65
    invoke-static {p1, v0}, Lbni;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public startVipBuy(I)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 73
    :goto_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaopeng/musicradio/service/WebViewService;->startVipBuy(Landroid/content/Context;II)V

    return-void
.end method

.method public startVipBuy(Landroid/content/Context;I)V
    .locals 1

    .line 80
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/service/WebViewService;->startVipBuy(Landroid/content/Context;II)V

    return-void
.end method

.method public startVipBuy(Landroid/content/Context;II)V
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/c;

    const-string v1, ""

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/xiaopeng/musicradio/webview/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    .line 96
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/webview/view/c;->a()V

    goto :goto_0

    .line 89
    :cond_0
    new-instance p3, Lcom/xiaopeng/musicradio/webview/view/d;

    const/16 v0, 0x64

    invoke-direct {p3, p1, p2, v0}, Lcom/xiaopeng/musicradio/webview/view/d;-><init>(Landroid/content/Context;II)V

    .line 91
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/webview/view/d;->e()V

    :goto_0
    return-void
.end method

.method public startVipSale(Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 104
    :goto_0
    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/e;

    invoke-direct {v1, v0, p1}, Lcom/xiaopeng/musicradio/webview/view/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/webview/view/e;->a()V

    return-void
.end method

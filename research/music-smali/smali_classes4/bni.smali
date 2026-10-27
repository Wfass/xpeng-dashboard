.class public Lbni;
.super Ljava/lang/Object;
.source "NavigationUIUtil.java"


# direct methods
.method public static a()V
    .locals 3

    const-string v0, "NavigationUIUtil"

    const-string v1, "toHome: ====== "

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v2, "com.xiaopeng.musicradio.home.view.HomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAV_KEY"

    const-string v2, "NAV_VALUE_HOME"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/page/PageNav;->nav(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/b;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/navigation/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/b;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/navigation/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arguments"

    .line 54
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-static {p0, p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/b;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/navigation/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lbni;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/home/home"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "path"

    .line 44
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "params"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method public static b()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-static {}, Lbni;->a()V

    :cond_1
    return-void
.end method

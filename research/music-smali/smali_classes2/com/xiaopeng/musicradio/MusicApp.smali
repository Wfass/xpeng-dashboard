.class public Lcom/xiaopeng/musicradio/MusicApp;
.super Lcom/xiaopeng/musicradio/a;
.source "MusicApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MusicApp"

    const-string v1, "attachBaseContext: ====="

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/a;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    sput-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 24
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->start()V

    .line 26
    invoke-static {}, Lbpv;->a()Lbpv;

    move-result-object p1

    invoke-virtual {p1}, Lbpv;->b()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/common/l;->b()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "MusicApp"

    if-nez v2, :cond_0

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/musicradio/a;->onCreate()V

    .line 35
    invoke-static {}, Lbpv;->a()Lbpv;

    move-result-object v2

    invoke-virtual {v2}, Lbpv;->d()V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: ========end(sub process):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_0
    sget v2, Lcom/xiaopeng/musicradio/main/a$g;->AppTheme:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/MusicApp;->setTheme(I)V

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/musicradio/a;->onCreate()V

    .line 41
    invoke-static {}, Lbpv;->a()Lbpv;

    move-result-object v2

    invoke-virtual {v2}, Lbpv;->c()V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: ========end:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/musicradio/a;->onLowMemory()V

    .line 55
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->onLowMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicApp"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/a;->onTrimMemory(I)V

    .line 49
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->onTrimMemory(I)V

    return-void
.end method

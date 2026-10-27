.class public Lcom/xiaopeng/musicradio/utils/as;
.super Ljava/lang/Object;
.source "MusicToast.java"


# direct methods
.method public static a()I
    .locals 2

    .line 95
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .line 40
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 41
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicToast"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 28
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicToast"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance p0, Lcom/xiaopeng/musicradio/utils/as$1;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/utils/as$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .line 60
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 64
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicToast"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicToast"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

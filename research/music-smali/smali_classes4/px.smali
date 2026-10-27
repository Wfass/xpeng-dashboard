.class public Lpx;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 6

    .line 25
    invoke-static {p0}, Lpx;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 27
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 28
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    const-string v4, "SP_AROUTER_CACHE"

    .line 30
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v4, 0x0

    const-string v5, "LAST_VERSION_NAME"

    .line 31
    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    const-string v5, "LAST_VERSION_CODE"

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    .line 33
    :cond_1
    :goto_0
    sput-object v2, Lpx;->a:Ljava/lang/String;

    .line 34
    sput v0, Lpx;->b:I

    :cond_2
    return v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 46
    sget-object v0, Lpx;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lpx;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SP_AROUTER_CACHE"

    .line 47
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lpx;->a:Ljava/lang/String;

    const-string v1, "LAST_VERSION_NAME"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lpx;->b:I

    const-string v1, "LAST_VERSION_CODE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    sget-object p0, Lpp;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v0, "ARouter::"

    const-string v1, "Get package info error."

    invoke-interface {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

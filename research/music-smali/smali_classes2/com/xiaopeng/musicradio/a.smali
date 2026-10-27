.class public Lcom/xiaopeng/musicradio/a;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field public static a:Landroid/app/Application;

.field public static b:Z


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lhw;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "App"

    const-string v1, "onConfigurationChanged1: ============"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lapo;->b(Landroid/content/Context;)I

    move-result v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: mThemeModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/a;->c:I

    if-ne v0, v1, :cond_0

    if-nez v1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Larv$c;

    invoke-direct {v0}, Larv$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 58
    :cond_1
    iput v1, p0, Lcom/xiaopeng/musicradio/a;->c:I

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    new-instance v0, Larv$b;

    invoke-direct {v0}, Larv$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 66
    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/a;->d:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    sput-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/a;->c:I

    return-void
.end method

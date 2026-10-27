.class public Lbkz;
.super Ljava/lang/Object;
.source "ReportFlowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkz$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Bundle;

.field private static b:Ljava/lang/Runnable;

.field private static c:Lbkz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lbkz$1;

    invoke-direct {v0}, Lbkz$1;-><init>()V

    sput-object v0, Lbkz;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Landroid/os/Bundle;
    .locals 1

    .line 14
    sget-object v0, Lbkz;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    sget-object v0, Lbkz;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    const-string v0, "voice_type"

    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 21
    sget-object v0, Lbkz;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v0, "voice_id"

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-object v2, Lbkz;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cache_new"

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 26
    sget-object v1, Lbkz;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lbkz;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lbkz;->d(Landroid/os/Bundle;)V

    .line 29
    sput-object p0, Lbkz;->a:Landroid/os/Bundle;

    goto :goto_0

    .line 32
    :cond_1
    sput-object p0, Lbkz;->a:Landroid/os/Bundle;

    .line 35
    :goto_0
    sget-object p0, Lbkz;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4e20

    invoke-static {p0, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 37
    :cond_2
    sget-object v0, Lbkz;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 38
    invoke-static {v0}, Lbkz;->d(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lbkz;->a:Landroid/os/Bundle;

    .line 41
    :cond_3
    invoke-static {p0}, Lbkz;->d(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static a(Lbkz$a;)V
    .locals 0

    .line 73
    sput-object p0, Lbkz;->c:Lbkz$a;

    return-void
.end method

.method static synthetic b(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lbkz;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 14
    sput-object p0, Lbkz;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method private static d(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "voice_type"

    .line 57
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "voice_id"

    .line 58
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "voice_name"

    .line 59
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "album_name"

    .line 60
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cache_type"

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cache_old"

    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cache_new"

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_length"

    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/NetUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "net_wifi"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p0, Lbkz;->c:Lbkz$a;

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0, v0}, Lbkz$a;->report(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

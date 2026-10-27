.class public Lcom/xiaopeng/musicradio/utils/bh;
.super Ljava/lang/Object;
.source "SPHelper.java"


# static fields
.field private static volatile a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

.field private static volatile b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bi;->a()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 3

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/xiaopeng/musicradio/utils/bh;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/xiaopeng/musicradio/utils/bh;->b:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SPHelper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaopeng/musicradio/utils/bh;->b:Landroid/os/Handler;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 73
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object p1, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez p1, :cond_1

    .line 21
    const-class p1, Lcom/xiaopeng/musicradio/utils/bh;

    monitor-enter p1

    .line 22
    :try_start_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 25
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;F)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/utils/bh$4;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/utils/bh$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 2

    .line 130
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/bh$3;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/utils/bh$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/utils/bh$5;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;F)F
    .locals 1

    .line 196
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 109
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    .line 120
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;J)J
    .locals 1

    .line 160
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b()V
    .locals 1

    .line 280
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->clear()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .line 215
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 149
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c()Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)Z
    .locals 1

    .line 236
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 254
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .line 258
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/utils/bh$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/utils/bh$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .line 273
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bh;->a:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

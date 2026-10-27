.class public Lcom/amap/api/services/a/ck;
.super Ljava/lang/Object;
.source "DynamicExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/amap/api/services/a/ck;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/a/bd;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/bd;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/amap/api/services/a/ck;->d:Lcom/amap/api/services/a/bd;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ck;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/services/a/bd;)Lcom/amap/api/services/a/ck;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/ck;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/ck;->a:Lcom/amap/api/services/a/ck;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/amap/api/services/a/ck;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/ck;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bd;)V

    sput-object v1, Lcom/amap/api/services/a/ck;->a:Lcom/amap/api/services/a/ck;

    .line 56
    :cond_0
    sget-object p0, Lcom/amap/api/services/a/ck;->a:Lcom/amap/api/services/a/ck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 64
    invoke-static {p2}, Lcom/amap/api/services/a/be;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 74
    const-string v1, "amapdynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "admic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    new-instance v1, Lcom/amap/api/services/a/bp;

    iget-object v2, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    .line 76
    const-string v2, "loc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v3, "loc"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_1
    const-string v2, "navi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v3, "navi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    :cond_2
    const-string v2, "sea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v3, "sea"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_3
    const-string v2, "2dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v3, "2dmap"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :cond_4
    const-string v2, "3dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v2, "3dmap"

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_5
    goto :goto_0

    .line 112
    :cond_6
    const-string v1, "com.autonavi.aps.amapapi.offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 113
    new-instance v0, Lcom/amap/api/services/a/bp;

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    .line 114
    iget-object v1, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v2, "OfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const-string v1, "com.data.carrier_v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    new-instance v0, Lcom/amap/api/services/a/bp;

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    .line 121
    iget-object v1, p0, Lcom/amap/api/services/a/ck;->c:Landroid/content/Context;

    const-string v2, "Collection"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_8
    :goto_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "DynamicExceptionHandler"

    const-string v2, "uncaughtException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 136
    :cond_9
    return-void
.end method

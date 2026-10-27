.class public Lcom/amap/api/services/a/r;
.super Lcom/amap/api/services/a/o;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/r$a;
    }
.end annotation


# static fields
.field private static eK:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private ei:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/l;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/amap/api/services/a/o;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/amap/api/services/a/r;->ei:Landroid/content/Context;

    .line 222
    new-instance p2, Lcom/amap/api/services/a/r$a;

    invoke-direct {p2, p1}, Lcom/amap/api/services/a/r$a;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-static {p2}, Lcom/amap/api/services/a/be;->a(Lcom/amap/api/services/a/bf;)V

    .line 224
    invoke-direct {p0}, Lcom/amap/api/services/a/r;->c()V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/r;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amap/api/services/a/r;->ei:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/services/a/l;)Lcom/amap/api/services/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    const-class v0, Lcom/amap/api/services/a/r;

    monitor-enter v0

    .line 34
    if-eqz p1, :cond_2

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 41
    :try_start_1
    sget-object v1, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/amap/api/services/a/r;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/r;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/l;)V

    sput-object v1, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amap/api/services/a/o;->c:Z

    .line 48
    :goto_0
    sget-object v1, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    sget-object v2, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    iget-boolean v2, v2, Lcom/amap/api/services/a/o;->c:Z

    invoke-virtual {v1, p0, p1, v2}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_1
    sget-object p0, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    check-cast p0, Lcom/amap/api/services/a/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 38
    :cond_1
    :try_start_3
    new-instance p0, Lcom/amap/api/services/a/au;

    const-string p1, "sdk name is invalid"

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_2
    new-instance p0, Lcom/amap/api/services/a/au;

    const-string p1, "sdk info is null"

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static declared-synchronized bn()Lcom/amap/api/services/a/r;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/r;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/o;->eH:Lcom/amap/api/services/a/o;

    check-cast v1, Lcom/amap/api/services/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized bo()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/r;

    monitor-enter v0

    .line 270
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/r;->eK:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amap/api/services/a/r;->eK:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amap/api/services/a/r;->eK:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    goto :goto_0

    .line 269
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    :goto_0
    sget-object v1, Lcom/amap/api/services/a/r;->eK:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 269
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method private c()V
    .locals 3

    .line 229
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 230
    iget-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 231
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 232
    iput-boolean v1, p0, Lcom/amap/api/services/a/r;->c:Z

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v2, "com.amap.api"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/r;->c:Z

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 239
    iput-boolean v1, p0, Lcom/amap/api/services/a/r;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V
    .locals 2

    .line 172
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/r;->bo()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/r$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/services/a/r$1;-><init>(Lcom/amap/api/services/a/r;Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    :goto_1
    return-void

    .line 211
    :catch_1
    move-exception p1

    .line 212
    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amap/api/services/a/r;->ei:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 257
    if-nez p1, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amap/api/services/a/r;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 126
    if-nez p2, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/amap/api/services/a/r;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/r;->eI:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    return-void
.end method

.class public Lcom/amap/api/services/a/t;
.super Lcom/amap/api/services/a/v;
.source "CrashLogProcessor.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/t;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    nop

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/a/m;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/amap/api/services/a/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 5

    .line 33
    sget-boolean v0, Lcom/amap/api/services/a/t;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    sput-boolean v1, Lcom/amap/api/services/a/t;->a:Z

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0

    .line 36
    :try_start_0
    new-instance v2, Lcom/amap/api/services/a/ai;

    invoke-direct {v2, p1}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;)V

    .line 38
    nop

    .line 39
    invoke-virtual {v2}, Lcom/amap/api/services/a/ai;->bp()Lcom/amap/api/services/a/aj;

    move-result-object p1

    .line 40
    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 41
    monitor-exit v0

    return v3

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/aj;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p1, v1}, Lcom/amap/api/services/a/aj;->a(Z)V

    .line 45
    nop

    .line 46
    invoke-virtual {v2, p1}, Lcom/amap/api/services/a/ai;->a(Lcom/amap/api/services/a/aj;)V

    .line 48
    monitor-exit v0

    return v3

    .line 50
    :cond_1
    monitor-exit v0

    return v1

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 54
    :cond_2
    return v1
.end method

.method protected h(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    const/4 p1, 0x0

    return-object p1
.end method

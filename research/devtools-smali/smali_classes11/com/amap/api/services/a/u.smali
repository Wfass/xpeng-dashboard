.class public Lcom/amap/api/services/a/u;
.super Lcom/amap/api/services/a/v;
.source "ExceptionLogProcessor.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/u;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Z
    .locals 5

    .line 33
    invoke-static {p1}, Lcom/amap/api/services/a/g;->s(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/amap/api/services/a/u;->a:Z

    if-eqz v0, :cond_2

    .line 35
    sput-boolean v2, Lcom/amap/api/services/a/u;->a:Z

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_0
    new-instance v3, Lcom/amap/api/services/a/ai;

    invoke-direct {v3, p1}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;)V

    .line 43
    nop

    .line 44
    invoke-virtual {v3}, Lcom/amap/api/services/a/ai;->bp()Lcom/amap/api/services/a/aj;

    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    monitor-exit v0

    return v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/aj;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {p1, v2}, Lcom/amap/api/services/a/aj;->b(Z)V

    .line 50
    nop

    .line 51
    invoke-virtual {v3, p1}, Lcom/amap/api/services/a/ai;->a(Lcom/amap/api/services/a/aj;)V

    .line 52
    monitor-exit v0

    return v1

    .line 54
    :cond_1
    monitor-exit v0

    return v2

    .line 56
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 58
    :cond_2
    return v2
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

    .line 70
    const/4 p1, 0x0

    return-object p1
.end method

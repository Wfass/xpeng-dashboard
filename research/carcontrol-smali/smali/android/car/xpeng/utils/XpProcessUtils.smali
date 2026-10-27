.class public Landroid/car/xpeng/utils/XpProcessUtils;
.super Ljava/lang/Object;
.source "XpProcessUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessUtils"

.field private static final sHandlerThreads:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/car/xpeng/utils/XpProcessUtils;->sHandlerThreads:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 4

    .line 17
    sget-object v0, Landroid/car/xpeng/utils/XpProcessUtils;->sHandlerThreads:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "ProcessUtils"

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting HandlerThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

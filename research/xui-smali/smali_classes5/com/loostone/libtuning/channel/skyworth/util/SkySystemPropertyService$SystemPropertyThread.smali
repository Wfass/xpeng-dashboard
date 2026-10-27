.class public final Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemPropertyThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;",
        "Ljava/lang/Thread;",
        "",
        "onPause",
        "()V",
        "pauseThread",
        "resumeThread",
        "run",
        "",
        "pause",
        "Z",
        "Ljava/lang/Object;",
        "lock",
        "Ljava/lang/Object;",
        "<init>",
        "(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pause:Z

.field public final synthetic this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final pauseThread()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->pause:Z

    return-void
.end method

.method public final resumeThread()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->pause:Z

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->access$getStartListen$p(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :goto_1
    iget-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->pause:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->onPause()V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->this$0:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->access$dealWithMute(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)V

    const-wide/16 v0, 0x3e8

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

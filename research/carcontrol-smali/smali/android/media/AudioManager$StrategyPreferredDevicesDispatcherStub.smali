.class final Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;
.super Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrategyPreferredDevicesDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 2115
    iput-object p1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .locals 0

    .line 2115
    invoke-direct {p0, p1}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchPrefDevicesChanged$0(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V
    .locals 0

    .line 2135
    iget-object p0, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    invoke-interface {p0, p1, p2}, Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;->onPreferredDevicesForStrategyChanged(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dispatchPrefDevicesChanged(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$100(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2124
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2127
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2130
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p1

    .line 2131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2133
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$PrefDevListenerInfo;

    .line 2134
    iget-object v4, v1, Landroid/media/AudioManager$PrefDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;

    invoke-direct {v5, v1, p1, p2}, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDevicesDispatcherStub$p4zJCrky2-4ttsniiANJYQmWQIw;-><init>(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2138
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    throw p1

    .line 2125
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 2128
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

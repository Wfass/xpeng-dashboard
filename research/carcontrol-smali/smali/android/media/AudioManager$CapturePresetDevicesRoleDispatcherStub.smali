.class final Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;
.super Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CapturePresetDevicesRoleDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 2477
    iput-object p1, p0, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .locals 0

    .line 2477
    invoke-direct {p0, p1}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchDevicesRoleChanged$0(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V
    .locals 0

    .line 2509
    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;

    invoke-interface {p0, p1, p2}, Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;->onPreferredDevicesForCapturePresetChanged(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public dispatchDevicesRoleChanged(IILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 2483
    iget-object v0, p0, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$900(Landroid/media/AudioManager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 2490
    :cond_1
    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    .line 2495
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$300(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2496
    :try_start_0
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2497
    monitor-exit p2

    return-void

    .line 2501
    :cond_2
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2502
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2507
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListenerInfo;

    .line 2508
    iget-object v3, v0, Landroid/media/AudioManager$DevRoleListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;

    invoke-direct {v4, v0, p1, p3}, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;-><init>(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2513
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2514
    throw p1

    :catchall_1
    move-exception p1

    .line 2502
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

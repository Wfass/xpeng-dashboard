.class final Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;
.super Landroid/media/ICommunicationDeviceDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommunicationDeviceDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 8340
    iput-object p1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .locals 0

    .line 8340
    invoke-direct {p0, p1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchCommunicationDeviceChanged$0(Landroid/media/AudioManager$CommDevListenerInfo;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 8358
    iget-object p0, p0, Landroid/media/AudioManager$CommDevListenerInfo;->mListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;->onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public dispatchCommunicationDeviceChanged(I)V
    .locals 6

    .line 8347
    iget-object v0, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$2900(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8348
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$3000(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$3000(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 8351
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$3000(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    .line 8353
    invoke-static {p1, v0}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    .line 8354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8356
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$CommDevListenerInfo;

    .line 8357
    iget-object v4, v1, Landroid/media/AudioManager$CommDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/-$$Lambda$AudioManager$CommunicationDeviceDispatcherStub$SQauMsYKW3c7F1ZuW-qt0YkUXkc;

    invoke-direct {v5, v1, p1}, Landroid/media/-$$Lambda$AudioManager$CommunicationDeviceDispatcherStub$SQauMsYKW3c7F1ZuW-qt0YkUXkc;-><init>(Landroid/media/AudioManager$CommDevListenerInfo;Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8361
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8362
    throw p1

    .line 8349
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 8352
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

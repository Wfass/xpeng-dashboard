.class final Landroid/media/AudioManager$ModeDispatcherStub;
.super Landroid/media/IAudioModeDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModeDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 3042
    iput-object p1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioModeDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .locals 0

    .line 3042
    invoke-direct {p0, p1}, Landroid/media/AudioManager$ModeDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchAudioModeChanged$0(Landroid/media/AudioManager$ModeListenerInfo;I)V
    .locals 0

    .line 3059
    iget-object p0, p0, Landroid/media/AudioManager$ModeListenerInfo;->mListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnModeChangedListener;->onModeChanged(I)V

    return-void
.end method


# virtual methods
.method public dispatchAudioModeChanged(I)V
    .locals 6

    .line 3049
    iget-object v0, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1000(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3050
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$1100(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$1100(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3053
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$1100(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3054
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3057
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$ModeListenerInfo;

    .line 3058
    iget-object v4, v1, Landroid/media/AudioManager$ModeListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;

    invoke-direct {v5, v1, p1}, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;-><init>(Landroid/media/AudioManager$ModeListenerInfo;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3062
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3063
    throw p1

    .line 3051
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 3054
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.class Landroid/media/AudioManager$5;
.super Landroid/media/IAudioServerStateDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 7553
    iput-object p1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioServerStateDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0

    .line 7568
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerUp()V

    return-void
.end method

.method static synthetic lambda$dispatchAudioServerStateChange$1(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0

    .line 7570
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerDown()V

    return-void
.end method


# virtual methods
.method public dispatchAudioServerStateChange(Z)V
    .locals 3

    .line 7559
    iget-object v0, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$2500(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7560
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$2600(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 7561
    iget-object v2, p0, Landroid/media/AudioManager$5;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->access$2700(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;

    move-result-object v2

    .line 7562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7568
    new-instance p1, Landroid/media/-$$Lambda$AudioManager$5$Gn6peNQObKCo5K61IAWTDoDl0xE;

    invoke-direct {p1, v2}, Landroid/media/-$$Lambda$AudioManager$5$Gn6peNQObKCo5K61IAWTDoDl0xE;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7570
    :cond_1
    new-instance p1, Landroid/media/-$$Lambda$AudioManager$5$TvXz9I8xmYqy_psgp1ytKPjyWPo;

    invoke-direct {p1, v2}, Landroid/media/-$$Lambda$AudioManager$5$TvXz9I8xmYqy_psgp1ytKPjyWPo;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7562
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

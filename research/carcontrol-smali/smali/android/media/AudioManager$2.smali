.class Landroid/media/AudioManager$2;
.super Landroid/media/IAudioFocusDispatcher$Stub;
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

    .line 4241
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 2

    .line 4244
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0, p2}, Landroid/media/AudioManager;->access$1300(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4246
    iget-object v1, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 4247
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4249
    iget-object v1, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4250
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1400(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    :goto_0
    const/4 v1, 0x0

    .line 4251
    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4254
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    .locals 2

    .line 4261
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1500(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4263
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    .line 4264
    invoke-static {v1}, Landroid/media/AudioManager;->access$1600(Landroid/media/AudioManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    if-eqz p2, :cond_0

    .line 4266
    invoke-virtual {p2, p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->notifyResult(I)V

    goto :goto_0

    :cond_0
    const-string p1, "AudioManager"

    const-string p2, "dispatchFocusResultFromExtPolicy found no result receiver"

    .line 4268
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

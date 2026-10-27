.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;
.super Landroid/media/session/MediaController$Callback;
.source "SessionMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 520
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 549
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 550
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "MediaController callback onMetadataChanged"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Landroid/media/MediaMetadata;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Landroid/media/session/MediaController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V

    .line 554
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 538
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 539
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaController callback onPlaybackStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    if-eqz p1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;I)Z

    move-result v0

    .line 542
    .local v0, "play":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V

    .line 543
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V

    .line 545
    .end local v0    # "play":Z
    :cond_1
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 524
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "MediaController callback onSessionDestroyed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;->onSessionDestroyed()V

    .line 529
    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 533
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaController callback onSessionEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &extras:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

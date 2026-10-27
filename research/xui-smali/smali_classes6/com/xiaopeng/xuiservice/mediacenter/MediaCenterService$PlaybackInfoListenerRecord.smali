.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;
.super Ljava/lang/Object;
.source "MediaCenterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaybackInfoListenerRecord"
.end annotation


# instance fields
.field public displayIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 631
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    .line 632
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    .line 633
    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->pid:I

    .line 634
    iput p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->uid:I

    .line 635
    return-void
.end method


# virtual methods
.method public addDisplayId(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_0
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public binderDied()V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 640
    :try_start_0
    const-string v1, "XUIManager.MEDIACENTER.MediaCenterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder died,pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 670
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onPlayStatusChanged(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "playStatus"    # I

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnPlaybackChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onPositionChanged(I[J)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "position"    # [J

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    .line 685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->listener:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    const/4 v0, 0x0

    aget-wide v3, p2, v0

    const/4 v0, 0x1

    aget-wide v5, p2, v0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->OnUpdatePosition(IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public removeDisplayId(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService$PlaybackInfoListenerRecord;->displayIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    :cond_0
    monitor-exit v0

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

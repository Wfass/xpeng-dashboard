.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 623
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 665
    if-nez p1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 668
    :cond_0
    return-void
.end method

.method public onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 626
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaInfoChanged displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &mediaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 628
    if-nez p1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPosition(I)[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    .line 630
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 631
    .local v0, "currentPkg":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isVideoPlayMode(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v1

    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->saveMediaPackageName(Ljava/lang/String;)V

    goto :goto_1

    .line 634
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->saveMediaPackageName(Ljava/lang/String;)V

    .line 637
    .end local v0    # "currentPkg":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 638
    return-void
.end method

.method public onPlayStatusChanged(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "newStatus"    # I

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onPlayStatusChanged(II)V

    .line 643
    if-nez p2, :cond_0

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$700(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->unMute(I)V

    .line 646
    :cond_0
    if-nez p1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPosition(I)[J

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    .line 649
    :cond_1
    return-void
.end method

.method public onPositionChanged(IJJ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .line 653
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    const/4 v2, 0x1

    aput-wide p4, v0, v2

    .line 656
    .local v0, "positions":[J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onPositionChanged(I[J)V

    .line 657
    if-nez p1, :cond_0

    .line 658
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    .line 660
    :cond_0
    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;
.super Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;
.source "IPCMediaController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPCMediaController"


# instance fields
.field private mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;-><init>()V

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    .line 24
    return-void
.end method

.method private sendPlaybackControlBroadcast(II)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 86
    const-string v0, "IPCMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPlaybackControlBroadcast cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.xuiservice.playbackControl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "playbackCmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "playbackParam"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public getCurrentPlayState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStyle()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyle()I

    move-result v0

    return v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getPlayStatus()I

    move-result v0

    return v0
.end method

.method public getPositions()[J
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getPositions()[J

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "com.xiaopeng.carmedia"

    return-object v0

    .line 82
    :cond_0
    const-string v0, "com.xiaopeng.musicradio"

    return-object v0
.end method

.method public playbackControl(III)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->playbackControl(III)Z

    move-result v0

    .line 29
    .local v0, "processed":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 30
    return v1

    .line 32
    :cond_0
    const-string v2, "IPCMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playbackControl cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isXuiProcessHelpLaunch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->sendPlaybackControlBroadcast(II)V

    .line 35
    return v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->playbackControl(II)Z

    move-result v1

    return v1
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 96
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    const-string v0, "TextValue"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "mode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 100
    .local v1, "value":I
    const-string v2, "single"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const-string v2, "order"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const/4 v1, 0x2

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "random"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    const/4 v1, 0x3

    .line 107
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v2, p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->playbackControl(II)Z

    .line 108
    goto :goto_1

    .line 111
    .end local v0    # "mode":Ljava/lang/String;
    .end local v1    # "value":I
    :cond_4
    const-string v0, "LongValue"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 112
    .local v0, "setTime":J
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->seekTo(J)V

    .line 113
    nop

    .line 118
    .end local v0    # "setTime":J
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public setFavorite(ZLjava/lang/String;)V
    .locals 3
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 48
    const-string v0, "IPCMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFavorite favorite:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " &id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->setFavorite(ZLjava/lang/String;)Z

    .line 50
    return-void
.end method

.method public switchSource(I)V
    .locals 3
    .param p1, "source"    # I

    .line 42
    const-string v0, "IPCMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSource source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->switchSource(I)V

    .line 44
    return-void
.end method

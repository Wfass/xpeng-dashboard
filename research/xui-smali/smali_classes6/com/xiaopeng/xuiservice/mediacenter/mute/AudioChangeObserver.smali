.class public Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;
.super Landroid/content/BroadcastReceiver;
.source "AudioChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MSAudioChangeObserver"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsXUIMuted:Z

.field private mListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mContext:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

    .line 22
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.EXTRA_HAS_MUSIC_RUNNING_FLAG"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "hasMusicActiveFlag":I
    const-string v3, "android.media.other_musicplaying.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "otherPlayPackages":Ljava/lang/String;
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 39
    .local v4, "streamType":I
    const-string v5, "android.media.EXTRA_AUTOVOLUME_FLAG"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 40
    .local v5, "xuiFlag":I
    const-string v6, "MSAudioChangeObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", hasMusicActiveFlag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", streemType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " &xuiFlag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v2

    .line 43
    .local v7, "isAuto":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 44
    return-void

    .line 46
    :cond_1
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 48
    :cond_2
    const/4 v8, 0x3

    if-ne v4, v8, :cond_6

    .line 49
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v8

    .line 50
    .local v8, "isMute":Z
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 51
    .local v9, "currentVolume":I
    const-string v10, "MSAudioChangeObserver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isMute:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " &currentVolume:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v2, v6

    .line 53
    .local v2, "isXUIMuted":Z
    :goto_2
    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mIsXUIMuted:Z

    if-eq v2, v6, :cond_5

    .line 54
    const-string v6, "MSAudioChangeObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMuteStatusChanged:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;

    invoke-interface {v6, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver$AudioStatusChangedListener;->onMuteStatusChanged(ZLjava/lang/String;)V

    .line 57
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mIsXUIMuted:Z

    .line 60
    .end local v2    # "isXUIMuted":Z
    .end local v8    # "isMute":Z
    .end local v9    # "currentVolume":I
    :cond_6
    return-void
.end method

.method public register()V
    .locals 2

    .line 26
    const-string v0, "MSAudioChangeObserver"

    const-string v1, "register RINGER_MODE_CHANGED_ACTION"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/AudioChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method

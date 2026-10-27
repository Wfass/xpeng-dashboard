.class public Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;,
        Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;
    }
.end annotation


# static fields
.field private static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final TAG:Ljava/lang/String; = "SoundManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static volatile sInstance:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mContext:Landroid/content/Context;

    .line 48
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    return-object v0
.end method

.method private isAVASEnable()Z
    .locals 3

    .line 86
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_speaker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public addOnVolumeChangedListener(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;-><init>(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;->register(Landroid/content/Context;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public adjustCurrentVolume(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "direction"    # I

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getCurrentVolumeType(I)I

    move-result v0

    .line 82
    .local v0, "streamType":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->adjustStreamVolume(III)V

    .line 83
    return-void
.end method

.method public adjustStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flag"    # I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 61
    return-void
.end method

.method public getCurrentVolumeType(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 92
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 v0, 0xd

    return v0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->isAVASEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v0, 0xb

    return v0

    .line 98
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method notifyVolumeChanged(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "preVolume"    # I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;

    .line 131
    .local v2, "l":Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;->onVolumeChanged(III)V

    .line 132
    .end local v2    # "l":Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;
    goto :goto_0

    .line 133
    :cond_0
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOnVolumeChangedListener(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;->unregister(Landroid/content/Context;)V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mReceiver:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;

    .line 125
    :cond_0
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentVolume(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "value"    # I

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getCurrentVolumeType(I)I

    move-result v0

    .line 77
    .local v0, "streamType":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->setStreamVolume(III)V

    .line 78
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 65
    .local v0, "max":I
    const/4 v1, 0x0

    .line 66
    .local v1, "min":I
    if-le p2, v0, :cond_0

    .line 67
    move p2, v0

    .line 69
    :cond_0
    if-ge p2, v1, :cond_1

    .line 70
    move p2, v1

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 73
    return-void
.end method

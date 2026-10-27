.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;
.super Ljava/lang/Object;
.source "SoundModel.java"

# interfaces
.implements Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/ISoundModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundModel"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRingtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic lambda$testTrack$0(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 122
    const-string v0, "SoundModel"

    const-string v1, " mMediaPlayer onPrepared"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 124
    return-void
.end method


# virtual methods
.method public destroy(I)V
    .locals 3
    .param p1, "preVol"    # I

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 157
    return-void
.end method

.method public getAudioPaStatus()Ljava/lang/String;
    .locals 4

    .line 88
    const-string v0, "/sys/audio/tda75610_diag"

    const-string v1, "   "

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/FileUtil;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "status":Ljava/lang/String;
    const-string v1, "SoundModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioPaStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-object v0
.end method

.method public getCurrentMediaVolume()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getTTSMaxVolume()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public onVolumeChanged(II)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "minVol"    # I

    .line 101
    const-string v0, "SoundModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minVol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    add-int v1, p1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 111
    :cond_1
    return-void
.end method

.method public setMediaVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 74
    return-void
.end method

.method public setTTSVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 84
    return-void
.end method

.method public testTrack(IZ)V
    .locals 4
    .param p1, "resid"    # I
    .param p2, "isMusic"    # Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 118
    const-string v1, "SoundModel"

    const-string v3, "testTrack mMediaPlayer == null "

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/-$$Lambda$SoundModel$bv3hz6NUPv5F04EaOdXeIulEkAQ;->INSTANCE:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/-$$Lambda$SoundModel$bv3hz6NUPv5F04EaOdXeIulEkAQ;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 127
    :cond_0
    const-string v1, "SoundModel"

    const-string v3, "testTrack mMediaPlayer != null "

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 132
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 133
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xc

    :goto_1
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/sound/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

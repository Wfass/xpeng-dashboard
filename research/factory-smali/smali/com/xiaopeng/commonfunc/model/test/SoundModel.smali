.class public Lcom/xiaopeng/commonfunc/model/test/SoundModel;
.super Ljava/lang/Object;
.source "SoundModel.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/model/test/ISoundModel;


# static fields
.field private static final AVAS_START:Ljava/lang/String; = "AVAS_OUTPUT=start"

.field private static final AVAS_STOP:Ljava/lang/String; = "AVAS_OUTPUT=stop"

.field private static final TAG:Ljava/lang/String; = "SoundModel"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAvasTest:Z

.field private final mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRingtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 36
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 40
    :cond_0
    const-string v1, "TEST_AVAS"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Case;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAvasTest:Z

    .line 41
    return-void
.end method

.method static synthetic lambda$testTrack$0(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 164
    const-string v0, "SoundModel"

    const-string v1, " mMediaPlayer onPrepared"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 166
    return-void
.end method

.method private startPlay()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 116
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy(I)V
    .locals 3
    .param p1, "preVol"    # I

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 199
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAvasTest:Z

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "SoundModel"

    const-string v1, "AVAS_OUTPUT=stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "AVAS_OUTPUT=stop"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 203
    :cond_2
    return-void
.end method

.method public getAudioPaStatus()Ljava/lang/String;
    .locals 4

    .line 85
    const-string v0, "PATH_AUDIO_EXTERNAL_PA"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "   "

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
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

    .line 88
    return-object v0
.end method

.method public getCurrentMediaVolume()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getTTSMaxVolume()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public onVolumeChanged(II)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "minVol"    # I

    .line 99
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

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    add-int v1, p1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->startPlay()V

    .line 102
    return-void
.end method

.method public setMediaVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    return-void
.end method

.method public setTTSVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 81
    return-void
.end method

.method public testTrack(I)V
    .locals 3
    .param p1, "resid"    # I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 123
    const-string v1, "SoundModel"

    const-string v2, "testTrack mMediaPlayer == null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAvasTest:Z

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "SoundModel"

    const-string v2, "AVAS_OUTPUT=start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "AVAS_OUTPUT=start"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 129
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/commonfunc/model/test/SoundModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/commonfunc/model/test/SoundModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/SoundModel;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 139
    :cond_1
    const-string v1, "SoundModel"

    const-string v2, "testTrack mMediaPlayer != null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 144
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public testTrack(IZ)V
    .locals 4
    .param p1, "resid"    # I
    .param p2, "isMusic"    # Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 156
    const-string v1, "SoundModel"

    const-string v3, "testTrack mMediaPlayer == null "

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAvasTest:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 158
    const-string v1, "SoundModel"

    const-string v3, "AVAS_OUTPUT=start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "AVAS_OUTPUT=start"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/xiaopeng/commonfunc/model/test/-$$Lambda$SoundModel$QlBcjOZDoGs1g5n14fZpoV8J9YI;->INSTANCE:Lcom/xiaopeng/commonfunc/model/test/-$$Lambda$SoundModel$QlBcjOZDoGs1g5n14fZpoV8J9YI;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "SoundModel"

    const-string v3, "testTrack mMediaPlayer != null "

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 174
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 175
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0xc

    :goto_1
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

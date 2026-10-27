.class public Lcom/xiaopeng/commonfunc/model/test/AudioTest;
.super Ljava/lang/Object;
.source "AudioTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioTest"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRingtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 36
    :cond_0
    return-void
.end method

.method private startPlay()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy(I)V
    .locals 3
    .param p1, "preVol"    # I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 137
    return-void
.end method

.method public getCurrentMediaVolume()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public onVolumeChanged(II)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "minVol"    # I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    add-int v1, p1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->startPlay()V

    .line 80
    return-void
.end method

.method public setMediaVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 69
    return-void
.end method

.method public testTrack(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "AudioTest"

    const-string v1, "testTrack mMediaPlayer == null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/AudioTest$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/model/test/AudioTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/AudioTest;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "AudioTest"

    const-string v1, "testTrack mMediaPlayer != null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 115
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.class public Lcom/xiaopeng/carcontrol/CapsuleMusicService;
.super Landroid/app/Service;
.source "CapsuleMusicService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;,
        Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;
    }
.end annotation


# static fields
.field public static final ALARM_REQUEST_CODE:I = 0xa0a00

.field public static final COMMAND_PAUSE:I = 0x1

.field public static final COMMAND_PLAY:I = 0x0

.field public static final COMMAND_RESUME:I = 0x2

.field public static final EXTRA_LOOP_MODE:Ljava/lang/String; = "extra_loop_mode"

.field public static final EXTRA_MEDIA_COMMAND:Ljava/lang/String; = "extra_media_command"

.field public static final EXTRA_MEDIA_SCREEN_ID:Ljava/lang/String; = "extra_media_screen_id"

.field public static final EXTRA_MEDIA_SOURCE:Ljava/lang/String; = "extra_media_source"

.field public static final EXTRA_MEDIA_TYPE:Ljava/lang/String; = "extra_media_type"

.field public static final LOOP_MODE_ALWAYS:I = 0x0

.field public static final LOOP_MODE_CUSTOM:I = 0x2

.field public static final LOOP_MODE_ONCE:I = 0x1

.field public static final MEDIA_ALARM_TYPE:I = 0x1

.field public static final MEDIA_MUSIC_SINGLE_TYPE:I = 0x2

.field public static final MEDIA_MUSIC_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CapsuleMusicService"


# instance fields
.field private mAlarmMediaSource:Ljava/lang/String;

.field private mAlarmPlayer:Landroid/media/MediaPlayer;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;

.field private mChoseMediaSource:Ljava/lang/String;

.field private final mDefaultCmd:I

.field private final mDefaultType:I

.field mDuckVolume:I

.field private mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

.field private mLoopCount:I

.field private mLoopMode:I

.field private mMediaType:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mDefaultCmd:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mDefaultType:I

    .line 47
    new-instance v1, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;-><init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mBinder:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mDuckVolume:I

    .line 53
    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    .line 55
    iput v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    .line 56
    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$4MIbH1Js9KDGquaKTkrbk7kLExE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$4MIbH1Js9KDGquaKTkrbk7kLExE;-><init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 76
    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resumeVolume()V

    return-void
.end method

.method private downVolume()V
    .locals 2

    const-string v0, "CapsuleMusicService"

    const-string v1, "downVolume... "

    .line 395
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method private initAlarmPlayer()V
    .locals 2

    .line 208
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    .line 209
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$UZ2T3A_dIzS5fIPMR9CFNdksXl8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$UZ2T3A_dIzS5fIPMR9CFNdksXl8;-><init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 2

    .line 158
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 159
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 160
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 161
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$n8UprEyR32jmVj8plJ8axGVWQ3M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$n8UprEyR32jmVj8plJ8axGVWQ3M;-><init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$zClQ5QOirwzK1nLcmPe9lq6zFjo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$zClQ5QOirwzK1nLcmPe9lq6zFjo;-><init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic lambda$initAlarmPlayer$4(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mediaPlayer on error what: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", extra: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapsuleMusicService"

    invoke-static {p1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$initMediaPlayer$1(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mediaPlayer on error what: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", extra: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapsuleMusicService"

    invoke-static {p1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private pauseByLossFocus()V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pause music due to loss audio focus! mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleMusicService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v0, :cond_2

    .line 340
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->pauseByLossAudioFocus()V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method private pauseMusic()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->abandonAudioFocus()V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->onPauseMusic()V

    :cond_0
    return-void
.end method

.method private play(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    const-string v0, "CapsuleMusicService"

    const-string v1, " play"

    .line 235
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 236
    iput v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    const-string v2, " initMediaPlayer"

    .line 238
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->initMediaPlayer()V

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resetMediaPlayer()V

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v1, "set data source occurs an exception,play failure"

    .line 247
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method private playMusic()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mChoseMediaSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mChoseMediaSource:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->play(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CapsuleMusicService"

    const-string v1, "mChoseMediaSource is empty!"

    .line 229
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestAlarmFocus()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private requestMusicFocus()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private resetMediaPlayer()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method private resumeByGainFocus()V
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume music due to gain audio focus again! mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleMusicService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 356
    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v0, :cond_2

    .line 364
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->resumeByGainAudioFocus()V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeMusic()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "CapsuleMusicService"

    const-string v1, " onStartMusic resume"

    .line 260
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v1, :cond_0

    const-string v1, " onStartMusic listener not null"

    .line 262
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->onStartMusic()V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->requestMusicFocus()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->playMusic()V

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeVolume()V
    .locals 2

    const-string v0, "CapsuleMusicService"

    const-string/jumbo v1, "resumeVolume... "

    .line 378
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method private stopAlarm()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->abandonAudioFocus()V

    return-void
.end method

.method private triggerAlarm()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->showAlarmDialog()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmMediaSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CapsuleMusicService"

    if-nez v0, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->pauseMusic()V

    .line 304
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->initAlarmPlayer()V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmMediaSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "set data source occurs an exception,play failure"

    .line 309
    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void

    :cond_1
    const-string v0, "mAlarmMediaSource is empty!"

    .line 316
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initAlarmPlayer$5$CapsuleMusicService(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mp"
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->requestAlarmFocus()V

    return-void
.end method

.method public synthetic lambda$initMediaPlayer$2$CapsuleMusicService(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mp"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string p1, "CapsuleMusicService"

    const-string v0, " onStartMusic"

    .line 171
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz v0, :cond_0

    const-string v0, " onStartMusic listener not null"

    .line 173
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->onStartMusic()V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->requestMusicFocus()V

    return-void
.end method

.method public synthetic lambda$initMediaPlayer$3$CapsuleMusicService(Landroid/media/MediaPlayer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mediaPlayer"
        }
    .end annotation

    .line 181
    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    const-string v1, ", loopMode:"

    const-string v2, "CapsuleMusicService"

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 182
    iget v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    if-ge v3, v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion, Replay, currentCount:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 186
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompletion, currentCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    if-eqz p1, :cond_1

    const-string p1, " onCompletion listener not null"

    .line 193
    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;->onCompletion()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$CapsuleMusicService(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio focus change...  focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleMusicService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resumeVolume()V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resumeByGainFocus()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->pauseByLossFocus()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->downVolume()V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mBinder:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "audio"

    .line 147
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->stopAndRelease()V

    .line 153
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleMusicService"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "extra_media_command"

    const/4 v2, -0x1

    .line 89
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "extra_media_type"

    .line 90
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    const-string v2, "extra_media_source"

    .line 91
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_loop_mode"

    const/4 v4, 0x0

    .line 94
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    .line 95
    iget v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    .line 97
    iput v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    .line 99
    :cond_1
    iget v3, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    if-gez v3, :cond_2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loop mode not support:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput v4, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", loopMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mLoopMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChoseMediaSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mChoseMediaSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    if-nez v1, :cond_5

    .line 108
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mChoseMediaSource:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    if-nez v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->playMusic()V

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resumeMusic()V

    goto :goto_0

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->pauseMusic()V

    goto :goto_0

    :cond_5
    if-ne v1, v5, :cond_8

    .line 118
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mChoseMediaSource:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    if-nez v0, :cond_6

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->playMusic()V

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_7

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->resumeMusic()V

    goto :goto_0

    .line 125
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->pauseMusic()V

    goto :goto_0

    .line 128
    :cond_8
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mAlarmMediaSource:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->triggerAlarm()V

    .line 131
    iget v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mMediaType:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayerType:I

    goto :goto_0

    .line 133
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->stopAlarm()V

    .line 136
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->stopAndRelease()V

    .line 435
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setMusicListener(Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    return-void
.end method

.method public stopAndRelease()V
    .locals 2

    const-string v0, "CapsuleMusicService"

    const-string/jumbo v1, "stop and release media."

    .line 287
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->stopAlarm()V

    return-void
.end method

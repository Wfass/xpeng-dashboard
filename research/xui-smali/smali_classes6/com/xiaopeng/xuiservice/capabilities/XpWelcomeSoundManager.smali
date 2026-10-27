.class public Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;,
        Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;,
        Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;,
        Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;,
        Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$XpWelcomeSoundManagerHolder;
    }
.end annotation


# static fields
.field private static final SoundResourceActived:Z

.field private static final TAG:Ljava/lang/String; = "XpWelcomeSoundManager"

.field private static mSourceListLock:Ljava/lang/Object;

.field private static mStreamType:I


# instance fields
.field private final WELCOME_MEDIA_PATH:Ljava/lang/String;

.field private final WELCOME_PATH:Ljava/lang/String;

.field private fadePadding:J

.field private hasCompleteListener:Z

.field private isError:Z

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayPos:I

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

.field private mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

.field private mTRunnable:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

.field private mTimeHandler:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

.field private mWelcomeAmpConfig:Ljava/lang/String;

.field private mWelcomeConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWelcomeSound:Ljava/lang/String;

.field private mWelcomeSoundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "persist.xiaopeng.soundresource.welcomeboot.active"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    .line 56
    const/4 v0, 0x3

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mStreamType:I

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSourceListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->fadePadding:J

    .line 50
    const-string v0, "/system/etc/xuiservice/welcome"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->WELCOME_PATH:Ljava/lang/String;

    .line 52
    const-string v0, "/system/media/audio/xiaopeng/cdu/boot"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->WELCOME_MEDIA_PATH:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->hasCompleteListener:Z

    .line 72
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    .line 73
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isError:Z

    .line 109
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 100
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->loadAllWelcomeSnd()V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->fadeOutAction(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel()V

    return-void
.end method

.method private channelChangeFade(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 16
    .param p1, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 534
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->filterAudios(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "filterAudios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 536
    return-void

    .line 539
    :cond_0
    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getChannelBits(Ljava/util/List;)I

    move-result v2

    .line 540
    .local v2, "fadeBits":I
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getPlayAudios()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getChannelBits(Ljava/util/List;)I

    move-result v3

    .line 541
    .local v3, "channelBits":I
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getFadeAudios()Ljava/util/ArrayList;

    move-result-object v4

    .line 542
    .local v4, "fadeAudios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "XpWelcomeSoundManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channelChangeFade fadeAudios = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v5, "XpWelcomeSoundManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channelChangeFade filterAudios = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {v0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getChannelBits(Ljava/util/List;)I

    move-result v5

    .line 545
    .local v5, "activeBits":I
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getFadeTime()J

    move-result-wide v6

    .line 546
    .local v6, "fadeTime":J
    iget-wide v8, v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->fadePadding:J

    div-long v8, v6, v8

    .line 547
    .local v8, "j":J
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    int-to-long v11, v10

    const-wide/16 v13, 0x1

    add-long/2addr v13, v8

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 548
    const-wide/16 v11, 0x64

    const/16 v13, 0x64

    mul-int/2addr v13, v10

    int-to-long v13, v13

    div-long/2addr v13, v8

    sub-long/2addr v11, v13

    long-to-int v11, v11

    .line 549
    .local v11, "volume":I
    or-int v12, v3, v5

    const/4 v13, 0x0

    invoke-direct {v0, v2, v12, v11, v13}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel(IIIZ)V

    .line 550
    iget-wide v12, v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->fadePadding:J

    const-wide/16 v14, 0x1e

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 547
    .end local v11    # "volume":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 552
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method private doParseXml(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .line 198
    const-string v0, ""

    .line 200
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 203
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 207
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 208
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 209
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->setAudioConfigs(Ljava/lang/String;)V

    .line 216
    :cond_1
    return-object v0
.end method

.method private doRealPlay()V
    .locals 2

    .line 436
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "doRealPlay()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    .line 439
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isError:Z

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->start()V

    .line 441
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel()V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 444
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "doRealPlay mediaplayer start"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 447
    :cond_1
    return-void
.end method

.method private fadeOutAction(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 1
    .param p1, "channelBean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 525
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->isFade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->channelChangeFade(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 531
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private filterAudios(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)Ljava/util/List;
    .locals 6
    .param p1, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v0, "filterList":Ljava/util/List;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getPlayAudios()Ljava/util/ArrayList;

    move-result-object v1

    .line 557
    .local v1, "playAudios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getFadeAudios()Ljava/util/ArrayList;

    move-result-object v2

    .line 558
    .local v2, "fadeAudios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 559
    .local v4, "one":Ljava/lang/Integer;
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 560
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v4    # "one":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 563
    :cond_1
    return-object v0
.end method

.method private forceChangeToAmpChannel()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->getAudioConfig()Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, "channelBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 453
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->needStop()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 454
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 455
    .local v2, "bean":Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
    const-string v3, "XpWelcomeSoundManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    .line 457
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->startRun(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    .line 458
    .end local v2    # "bean":Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
    goto :goto_0

    .line 459
    :cond_1
    const-string v2, "XpWelcomeSoundManager"

    const-string v3, "do end action"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v2, 0x64

    const/16 v3, 0xfff

    invoke-direct {p0, v3, v3, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel(IIIZ)V

    .line 462
    :goto_0
    return-void
.end method

.method private declared-synchronized forceChangeToAmpChannel(IIIZ)V
    .locals 4
    .param p1, "channelbits"    # I
    .param p2, "activebits"    # I
    .param p3, "vol"    # I
    .param p4, "restore"    # Z

    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v0, :cond_1

    .line 466
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isError:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/16 v3, 0xfff

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/media/audioConfig/AudioConfig;->forceChangeToAmpChannel(IIIZ)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/audioConfig/AudioConfig;->forceChangeToAmpChannel(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    .end local p1    # "channelbits":I
    .end local p2    # "activebits":I
    .end local p3    # "vol":I
    .end local p4    # "restore":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
    throw p1
.end method

.method private getChannelBits(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 567
    .local p1, "audios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 568
    .local v0, "channelBits":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 569
    .local v2, "audioId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 570
    .local v3, "exponent":I
    if-ltz v3, :cond_0

    .line 571
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 572
    .local v4, "bits":I
    add-int/2addr v0, v4

    .line 574
    .end local v2    # "audioId":Ljava/lang/Integer;
    .end local v3    # "exponent":I
    .end local v4    # "bits":I
    :cond_0
    goto :goto_0

    .line 575
    :cond_1
    return v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileAbsolutePath"    # Ljava/lang/String;

    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileName fileAbsolutePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "name":Ljava/lang/String;
    const-string v1, "XpWelcomeSoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileName name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$XpWelcomeSoundManagerHolder;->instance:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    return-object v0
.end method

.method private isHighConfig()Z
    .locals 1

    .line 618
    invoke-static {}, Landroid/media/audioConfig/AudioConfig;->isHighConfig()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$perpareMediaPlayer$0(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 383
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "perpareMediaPlayer onPrepared"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->doRealPlay()V

    .line 385
    return-void
.end method

.method private loadAllWelcomeSnd()V
    .locals 4

    .line 117
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSourceListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 119
    const-string v1, "/system/etc/xuiservice/welcome"

    const-string v2, "json"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->loadFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 123
    const-string v1, "/system/media/audio/xiaopeng/cdu/boot"

    const-string/jumbo v2, "wav"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->loadFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 125
    const-string v1, "XpWelcomeSoundManager"

    const-string v2, "loadAllWelcomeSnd,load from path null:/system/media/audio/xiaopeng/cdu/boot"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    const-string v2, "/system/media/audio/xiaopeng/cdu/boot"

    const-string v3, "mp3"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->loadFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    .line 138
    :cond_4
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFileList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 147
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 151
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "fileList":Ljava/util/List;
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$2;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    const/4 v4, 0x0

    .line 163
    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 164
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 165
    .local v5, "file_tmp":Ljava/io/File;
    const-string v6, "XpWelcomeSoundManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File path"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "fileName":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "filePrefix":Ljava/lang/String;
    const-string v8, "XpWelcomeSoundManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " filePrefix:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " prefix:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "filePrefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "fileList":Ljava/util/List;
    .end local v4    # "i":I
    .end local v5    # "file_tmp":Ljava/io/File;
    :cond_2
    goto :goto_2

    .line 148
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    :cond_3
    :goto_1
    const-string v3, "XpWelcomeSoundManager"

    const-string/jumbo v4, "\u7a7a\u76ee\u5f55"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v3, 0x0

    return-object v3

    .line 173
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpWelcomeSoundManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFileList ERROR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private parseJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "jsonPath"    # Ljava/lang/String;

    .line 221
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v1, "reader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 225
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->setAudioConfigs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_1
    return-object v3

    .line 235
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private parseXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "xmlPath"    # Ljava/lang/String;

    .line 181
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseXml "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "xmlFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 187
    .end local v1    # "xmlFile":Ljava/io/File;
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 189
    .local v1, "am":Landroid/content/res/AssetManager;
    const-string v2, "audioconfig.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 193
    .end local v1    # "am":Landroid/content/res/AssetManager;
    :goto_0
    goto :goto_2

    .line 191
    :goto_1
    nop

    .line 192
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->doParseXml(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private postDelayedForAction(JLcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 6
    .param p1, "delayMillis"    # J
    .param p3, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 490
    .local v0, "now":J
    add-long v2, v0, p1

    .line 491
    .local v2, "next":J
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getTimeHandler()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getTRunnable()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;->postAtTime(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;JLcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    .line 492
    return-void
.end method

.method private selectDefaultSndEffect(I)Z
    .locals 3
    .param p1, "sndId"    # I

    .line 325
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    .local v0, "configNum":I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeConfigList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    .line 332
    .end local v0    # "configNum":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 334
    .local v0, "sndNum":I
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 335
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSoundList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    .line 338
    .end local v0    # "sndNum":I
    :cond_2
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectDefaultSndEffect  ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWelcomeAmpConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mWelcomeSound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method private selectSndEffect(I)Z
    .locals 8
    .param p1, "sndId"    # I

    .line 290
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 291
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSourceListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    if-nez v2, :cond_1

    .line 294
    const-string v2, "XpWelcomeSoundManager"

    const-string v3, "selectSndEffect error mSoundResourceService == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 298
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v2

    .line 299
    .local v2, "mBootSoundResource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    if-nez v2, :cond_2

    .line 300
    const-string v0, "XpWelcomeSoundManager"

    const-string v4, "selectSndEffect error mBootSoundResource == null"

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->selectDefaultSndEffect(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 303
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->getResPath()[Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "resPath":[Ljava/lang/String;
    if-nez v4, :cond_3

    .line 305
    const-string v0, "XpWelcomeSoundManager"

    const-string v5, "selectSndEffect error resPath == null"

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->selectDefaultSndEffect(I)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    .line 308
    :cond_3
    :try_start_5
    const-string v5, "XpWelcomeSoundManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectSndEffect  ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " resPath.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    .line 310
    const-string v0, "XpWelcomeSoundManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectSndEffect  ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWelcomeSound:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    :try_start_6
    monitor-exit v1

    return v3

    .line 312
    .end local v2    # "mBootSoundResource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .end local v4    # "resPath":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XpWelcomeSoundManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectSndEffect ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 316
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->selectDefaultSndEffect(I)Z

    .line 318
    :goto_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectSndEffect  ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWelcomeSound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v3

    .line 318
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method private setAudioConfigs(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    .line 247
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "isLoop"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 249
    .local v1, "isLoop":Z
    const-string v2, "audioConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 250
    .local v2, "audiosArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 253
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$3;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 254
    .local v5, "channelBrans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;>;"
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v6, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->setLoop(Z)V

    .line 255
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->setAudioConfig(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "isLoop":Z
    .end local v2    # "audiosArray":Lorg/json/JSONArray;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "channelBrans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;>;"
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 259
    :goto_0
    return-void
.end method

.method private startRun(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 7
    .param p1, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getPlayAudios()Ljava/util/ArrayList;

    move-result-object v0

    .line 479
    .local v0, "playAudios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "XpWelcomeSoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay playAudios = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getChannelBits(Ljava/util/List;)I

    move-result v1

    .line 481
    .local v1, "channelBits":I
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->getPlayTime()J

    move-result-wide v2

    .line 482
    .local v2, "playTime":J
    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {p0, v1, v1, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel(IIIZ)V

    .line 483
    const-string v4, "XpWelcomeSoundManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPlay playTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|channelBits="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->postDelayedForAction(JLcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    .line 485
    return-void
.end method


# virtual methods
.method public checkSoundCanPlay(I)Z
    .locals 4
    .param p1, "sndId"    # I

    .line 352
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->selectSndEffect(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 353
    return v1

    .line 355
    :cond_0
    const-string v0, "XpWelcomeSoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSoundCanPlay  ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWelcomeAmpConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mWelcomeSound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getDuration()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getTRunnable()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTRunnable:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTRunnable:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTRunnable:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    return-object v0
.end method

.method public getTimeHandler()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTimeHandler:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTimeHandler:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mTimeHandler:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isWelcomeEnable()Z
    .locals 3

    .line 282
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "xmlFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "mediaFile":Ljava/io/File;
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    .line 286
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onCompletion()V
    .locals 2

    .line 579
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->stop()V

    .line 581
    return-void
.end method

.method public onError()V
    .locals 4

    .line 584
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isError:Z

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getTimeHandler()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getTRunnable()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/16 v2, 0x64

    const/16 v3, 0xfff

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/media/audioConfig/AudioConfig;->forceChangeToAmpChannel(IIIZ)V

    .line 590
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 598
    return-void
.end method

.method public perpareMediaPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "mediafile"    # Ljava/lang/String;

    .line 361
    :try_start_0
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perpareMediaPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget v1, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/high16 v1, 0x300000

    .line 368
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 370
    .local v0, "mAudioAttributes":Landroid/media/AudioAttributes;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 371
    const-string v1, "XpWelcomeSoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perpareMediaPlayer  flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->hasCompleteListener:Z

    if-nez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpWelcomeSoundManager$6o7WZ8SsNyVJDBM6OmJ4XLv_B7Q;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpWelcomeSoundManager$6o7WZ8SsNyVJDBM6OmJ4XLv_B7Q;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "mAudioAttributes":Landroid/media/AudioAttributes;
    :cond_2
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    :goto_0
    return-void
.end method

.method public play(I)V
    .locals 3
    .param p1, "sndId"    # I

    .line 393
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->selectSndEffect(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 397
    :cond_0
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play SoundResourceActived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHighConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isHighConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isHighConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->parseJson(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :cond_1
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWelcomeSound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mWelcomeAmpConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeAmpConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mWelcomeSound:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->perpareMediaPlayer(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "musicFile"    # Ljava/lang/String;
    .param p2, "jsonFile"    # Ljava/lang/String;

    .line 408
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-nez p1, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundResourceActived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHighConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isHighConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->SoundResourceActived:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isHighConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 414
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->parseJson(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    :cond_1
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " jsonFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->perpareMediaPlayer(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public release()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 602
    const/16 v0, 0x64

    const/4 v2, 0x1

    const/16 v3, 0xfff

    invoke-direct {p0, v3, v3, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel(IIIZ)V

    .line 603
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 607
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    .line 610
    return-void
.end method

.method public setCompleteListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->hasCompleteListener:Z

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 275
    sput p1, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mStreamType:I

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    if-eqz v0, :cond_1

    .line 427
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/16 v2, 0xfff

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->forceChangeToAmpChannel(IIIZ)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mChannelControl:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->stop()V

    .line 432
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->mCurrentPlayPos:I

    .line 433
    return-void
.end method

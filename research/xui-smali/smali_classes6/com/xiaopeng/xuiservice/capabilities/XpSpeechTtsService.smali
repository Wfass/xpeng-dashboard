.class public Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
.super Ljava/lang/Object;
.source "XpSpeechTtsService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechContants;,
        Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_DONE:I = 0x1

.field public static final EVENT_ERROR:I = 0x2

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x3

.field private static final KEY_DRIVERMODE:Ljava/lang/String; = "XpMainDriverMode"

.field private static final KEY_PARAM_AUDIOFOCUS:Ljava/lang/String; = "audioFocus"

.field private static final KEY_PARAM_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_PARAM_STREAM:Ljava/lang/String; = "streamType"

.field private static final KEY_PARAM_VOICE_POS:Ljava/lang/String; = "voicePosition"

.field private static final TAG:Ljava/lang/String; = "XpSpeechTtsService"

.field private static final TTS_ENGINE_MS:Ljava/lang/String; = "com.xiaopeng.xpspeechservice.ms"

.field private static final UUID_PREFIX:Ljava/lang/String; = "xuiservice"

.field private static hasBootCompleted:Z

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private hasDrivingMode:Z

.field private isDangerousAlertSpeech:Z

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mContext:Landroid/content/Context;

.field private mInstantTtsId:Ljava/lang/String;

.field private mListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mWaitQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasBootCompleted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWaitQueue:Ljava/util/Set;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDangerousAlertSpeech:Z

    .line 59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    .line 61
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWakeBinder:Landroid/os/Binder;

    .line 62
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    const-string v0, "XpSpeechTtsService"

    const-string v2, "init"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 110
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->registerObserver()V

    .line 127
    const-string v2, "1"

    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasBootCompleted:Z

    if-nez v2, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->initAudioConfig()V

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->initSpeech()V

    .line 130
    sput-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasBootCompleted:Z

    .line 132
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->unsetDangerousAlertSpeech()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasInstantSpeech(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->setDangerousAlertSpeech()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .locals 1

    .line 83
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$InstanceHolder;->access$100()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized hasInstantSpeech(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ttsId"    # Ljava/lang/String;
    .param p2, "status"    # I

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 288
    monitor-exit p0

    return v1

    .line 289
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWaitQueue:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWaitQueue:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 291
    if-nez p2, :cond_1

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit p0

    return v1

    .line 297
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 286
    .end local p1    # "ttsId":Ljava/lang/String;
    .end local p2    # "status":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw p1
.end method

.method private initAudioConfig()V
    .locals 2

    .line 301
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 302
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->unsetDangerousAlertSpeech()V

    .line 303
    return-void
.end method

.method private initSpeech()V
    .locals 4

    .line 375
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 378
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 379
    :catch_0
    move-exception v1

    .line 381
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSpeech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    if-nez v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->setTtsUtteranceProgressListener()V

    goto :goto_2

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 391
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->unsetDangerousAlertSpeech()V

    .line 393
    :cond_2
    :goto_2
    return-void

    .line 381
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerObserver()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XpMainDriverMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    .line 89
    const-string v0, "XpSpeechTtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerObserver, hasDrivingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "XpMainDriverMode"

    .line 92
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;

    new-instance v4, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Landroid/os/Handler;)V

    .line 91
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method private setDangerousAlertSpeech()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDangerousAlertSpeech:Z

    if-nez v0, :cond_0

    .line 164
    const-string v0, "XpSpeechTtsService"

    const-string v1, "setDangerousAlertSpeech"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWakeBinder:Landroid/os/Binder;

    const-string/jumbo v2, "\u5b89\u5168\u9a7e\u9a76"

    const-string v3, "sys.dialog.suspend.by.alarm"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audioConfig/AudioConfig;->setDangerousTtsStatus(I)V

    .line 170
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDangerousAlertSpeech:Z

    .line 172
    :cond_0
    return-void
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "XpSpeechTtsService"

    const-string v1, "setTtsUtteranceProgressListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 372
    :cond_0
    return-void
.end method

.method private declared-synchronized speak(Ljava/lang/String;IZII)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "isShutUp"    # Z
    .param p4, "streamType"    # I
    .param p5, "position"    # I

    monitor-enter p0

    .line 191
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 192
    .local v0, "hasInstant":Z
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xuiservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "ttsId":Ljava/lang/String;
    const-string v3, "XpSpeechTtsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speak, text:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", priority:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ttsId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isShutUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", streamType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", hasInstant="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasDrivingMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInitStatus()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 200
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v3, "params":Landroid/os/Bundle;
    xor-int/lit8 v5, p3, 0x1

    .line 203
    .local v5, "queue":I
    const-string v6, "priority"

    invoke-virtual {v3, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v6, "streamType"

    invoke-virtual {v3, v6, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const/16 v6, 0x9

    if-ne p4, v6, :cond_1

    if-nez v0, :cond_1

    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    if-eqz v6, :cond_1

    .line 206
    const-string v6, "audioFocus"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_1
    if-ltz p5, :cond_2

    .line 209
    const-string/jumbo v1, "voicePosition"

    invoke-virtual {v3, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1, v5, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 214
    .local v1, "res":I
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 215
    if-eqz p3, :cond_3

    .line 216
    const-string v6, "XpSpeechTtsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mInstantTtsId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mInstantTtsId:Ljava/lang/String;

    goto :goto_1

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWaitQueue:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    move-object v4, v2

    nop

    :cond_5
    monitor-exit p0

    return-object v4

    .line 226
    .end local v1    # "res":I
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v5    # "queue":I
    :cond_6
    monitor-exit p0

    return-object v4

    .line 190
    .end local v0    # "hasInstant":Z
    .end local v2    # "ttsId":Ljava/lang/String;
    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "priority":I
    .end local p3    # "isShutUp":Z
    .end local p4    # "streamType":I
    .end local p5    # "position":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 190
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw p1
.end method

.method private unsetDangerousAlertSpeech()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDangerousAlertSpeech:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "XpSpeechTtsService"

    const-string v1, "unsetDangerousAlertSpeech"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWakeBinder:Landroid/os/Binder;

    const-string/jumbo v2, "\u5b89\u5168\u9a7e\u9a76"

    const-string v3, "sys.dialog.resume.by.alarm"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1, v0}, Landroid/media/audioConfig/AudioConfig;->setDangerousTtsStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpSpeechTtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsetDangerousAlertSpeech e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDangerousAlertSpeech:Z

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "XpSpeechTtsService"

    const-string v1, "addSpeechTtsEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw p1
.end method

.method public getInitStatus()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    const-string v0, "XpSpeechTtsService"

    const-string v1, "getInitStatus failed, reinitializing speech..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->initSpeech()V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mStatus:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrivingMode()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasDrivingMode:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 397
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasBootCompleted:Z

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->initAudioConfig()V

    .line 401
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->initSpeech()V

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->hasBootCompleted:Z

    .line 404
    :cond_0
    return-void
.end method

.method public declared-synchronized removeSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "XpSpeechTtsService"

    const-string v1, "removeSpeechTtsEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw p1
.end method

.method public speakByImportant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 244
    const/4 v2, 0x2

    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByImportant(Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z
    .param p3, "streamType"    # I
    .param p4, "position"    # I

    .line 240
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 264
    const/4 v2, 0x4

    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByInstant(Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z
    .param p3, "streamType"    # I
    .param p4, "position"    # I

    .line 260
    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByNormal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 234
    const/4 v2, 0x1

    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByNormal(Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z
    .param p3, "streamType"    # I
    .param p4, "position"    # I

    .line 230
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByUrgent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 254
    const/4 v2, 0x3

    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByUrgent(Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z
    .param p3, "streamType"    # I
    .param p4, "position"    # I

    .line 250
    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speak(Ljava/lang/String;IZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized stopAllSpeech()V
    .locals 2

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "XpSpeechTtsService"

    const-string v1, "stopAllSpeech"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mWaitQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw v0
.end method

.method public declared-synchronized stopSpeech(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSpeech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->stop(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "ttsId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    throw p1
.end method

.class public Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
.super Ljava/lang/Object;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;,
        Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;,
        Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_DONE:I = 0x1

.field public static final EVENT_ERROR:I = 0x2

.field public static final EVENT_RESTART:I = 0x4

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x3

.field private static final FLAG_ALARM:I = 0x10

.field private static final MESSAGE_FINISH:I = 0x2

.field private static final MESSAGE_LOAD:I = 0x3

.field private static final MESSAGE_PLAY:I = 0x0

.field private static final MESSAGE_RELEASE:I = 0x4

.field private static final MESSAGE_STOP:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.media.vol_change.PACKAGE_NAME"

.field private static final STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final TAG:Ljava/lang/String; = "XpSoundPlayService"

.field private static final VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static mDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoopSoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;",
            ">;"
        }
    .end annotation
.end field

.field private static mSampleIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasTurnDownVolume:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSignal:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartTime:J

.field private mStreamId:I

.field private mStreamVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mDurationMap:Ljava/util/Map;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasTurnDownVolume:Z

    .line 46
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    .line 47
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    .line 48
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    .line 49
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStartTime:J

    .line 55
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    const-string v0, "XpSoundPlayService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XpSoundPlayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    .line 264
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->registerReceiver()V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mAudioManager:Landroid/media/AudioManager;

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    .line 268
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 270
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 271
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 274
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 275
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    .line 279
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpSoundPlayService$rY1VIqTegMTkwN2V3ss6f_Pa6YE;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpSoundPlayService$rY1VIqTegMTkwN2V3ss6f_Pa6YE;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasVolumePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasStreamMusic(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->handlePlay(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->handleStop(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->handleFinishAndRecovery(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->handleRelease()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .locals 1

    .line 228
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$InstanceHolder;->access$500()Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    move-result-object v0

    return-object v0
.end method

.method private getSoundDuration(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 293
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 296
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 297
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 297
    :goto_0
    return v1

    .line 302
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 298
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "XpSoundPlayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " duration failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    const/4 v2, 0x0

    .line 303
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 305
    goto :goto_1

    .line 304
    :catch_2
    move-exception v3

    .line 300
    :goto_1
    return v2

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 303
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 305
    goto :goto_3

    .line 304
    :catch_3
    move-exception v2

    .line 305
    :goto_3
    throw v1
.end method

.method private handleFinishAndRecovery(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;)V
    .locals 12
    .param p1, "stopSound"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    .line 402
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    if-ne v0, v1, :cond_8

    .line 403
    const-string v0, "XpSoundPlayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->shutUp:Z

    if-eqz v2, :cond_0

    const-string v2, "stop"

    goto :goto_0

    :cond_0
    const-string v2, "finish"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sound, streamId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->shutUp:Z

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 407
    const/4 v0, 0x3

    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->signal:I

    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    goto :goto_1

    .line 408
    :cond_1
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->signal:I

    if-eqz v0, :cond_2

    .line 409
    const/4 v0, 0x1

    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->signal:I

    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    .line 412
    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 413
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    .line 414
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    .line 415
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->turnUpVolume()V

    goto/16 :goto_3

    .line 417
    :cond_3
    const/4 v0, 0x0

    .line 419
    .local v0, "sound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 420
    .local v3, "signalId":Ljava/lang/Integer;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    .line 422
    .local v4, "it":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    if-eqz v0, :cond_4

    iget v5, v4, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    if-le v5, v6, :cond_5

    .line 423
    :cond_4
    move-object v0, v4

    .line 425
    .end local v3    # "signalId":Ljava/lang/Integer;
    .end local v4    # "it":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    :cond_5
    goto :goto_2

    .line 427
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    iget v5, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->leftVolume:F

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->rightVolume:F

    iget v7, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->position:I

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/media/SoundPool;->play(IFFIIFII)I

    move-result v2

    .line 431
    .local v2, "streamId":I
    if-nez v2, :cond_7

    .line 432
    const-string v3, "XpSoundPlayService"

    const-string v4, "replay sound failed, retry..."

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-direct {v3, v1, v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;-><init>(IIZ)V

    const/16 v1, 0xc8

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->sendFinishSound(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;I)V

    goto :goto_3

    .line 436
    :cond_7
    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    .line 437
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    .line 439
    const-string v1, "XpSoundPlayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replay sound(signal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), sampleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v1, 0x4

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-direct {p0, v1, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    .line 448
    .end local v0    # "sound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    .end local v2    # "streamId":I
    :cond_8
    :goto_3
    return-void
.end method

.method private handlePlay(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;)V
    .locals 13
    .param p1, "playSound"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    .line 310
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getSignalId(I)I

    move-result v0

    .line 312
    .local v0, "signalId":I
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    .line 313
    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    const/4 v3, 0x2

    if-gez v1, :cond_1

    .line 314
    const-string v1, "XpSoundPlayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play sound(signal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-direct {p0, v3, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    .line 317
    return-void

    .line 320
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getSignalId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 321
    const-string v1, "XpSoundPlayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop streamId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-virtual {v1, v4}, Landroid/media/SoundPool;->stop(I)V

    .line 326
    :cond_2
    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    if-ne v1, v2, :cond_3

    .line 327
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_3
    iget-boolean v1, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->hasDownVolume:Z

    if-eqz v1, :cond_4

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->turnDownVolume()V

    goto :goto_1

    .line 333
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->turnUpVolume()V

    .line 336
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    iget v6, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->leftVolume:F

    iget v7, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->rightVolume:F

    iget v8, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    iget v9, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->position:I

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/media/SoundPool;->play(IFFIIFII)I

    move-result v1

    .line 341
    .local v1, "streamId":I
    if-nez v1, :cond_6

    .line 342
    const-string v4, "XpSoundPlayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "play sound(signal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    if-nez v4, :cond_5

    .line 345
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->turnUpVolume()V

    .line 348
    :cond_5
    iget v4, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-direct {p0, v3, v4, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    goto/16 :goto_3

    .line 350
    :cond_6
    const-string v3, "XpSoundPlayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play sound(signal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), sampleId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", streamId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", volume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->leftVolume:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->rightVolume:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", loop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", hasDownVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->hasDownVolume:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    if-eqz v3, :cond_7

    .line 358
    const/4 v3, 0x3

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    .line 361
    :cond_7
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    .line 362
    iget v3, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    iput v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    .line 364
    iget v3, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_8

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStartTime:J

    goto :goto_2

    .line 367
    :cond_8
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mDurationMap:Ljava/util/Map;

    iget v3, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->loop:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0xc8

    .line 369
    .local v2, "delay":I
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 370
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_9
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    iget v5, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-direct {v3, v5, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;-><init>(IIZ)V

    invoke-direct {p0, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->sendFinishSound(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;I)V

    .line 375
    .end local v2    # "delay":I
    :goto_2
    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->signal:I

    invoke-direct {p0, v4, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->showPlaySoundStatus(III)V

    .line 377
    :goto_3
    return-void
.end method

.method private handleRelease()V
    .locals 5

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->unregisterReceiver()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 114
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "path":Ljava/lang/String;
    const-string v2, "XpSoundPlayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unload sampleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 117
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mDurationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    .line 124
    :cond_1
    return-void
.end method

.method private handleStop(I)V
    .locals 8
    .param p1, "signal"    # I

    .line 380
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getSignalId(I)I

    move-result v0

    .line 382
    .local v0, "signalId":I
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    .line 384
    .local v1, "sound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mDurationMap:Ljava/util/Map;

    iget v3, v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;->sampleId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 386
    .local v2, "duration":I
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mLoopSoundMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSignal:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getSignalId(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 390
    .local v3, "elapse":I
    rem-int v4, v3, v2

    sub-int v4, v2, v4

    .line 392
    .local v4, "delay":I
    const-string v5, "XpSoundPlayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop sound(signal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", streamId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v5, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    iget v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamId:I

    const/4 v7, 0x1

    invoke-direct {v5, p1, v6, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;-><init>(IIZ)V

    invoke-direct {p0, v5, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->sendFinishSound(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;I)V

    .line 399
    .end local v1    # "sound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    .end local v2    # "duration":I
    .end local v3    # "elapse":I
    .end local v4    # "delay":I
    :cond_0
    return-void
.end method

.method private hasStreamMusic(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 188
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasVolumePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/String;

    .line 182
    const-string v0, "com.xiaopeng.xuiservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng.carcontrol"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "xpaudio_btcall"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 182
    :goto_1
    return v0
.end method

.method static synthetic lambda$new$0(Landroid/media/SoundPool;II)V
    .locals 3
    .param p0, "soundPool"    # Landroid/media/SoundPool;
    .param p1, "sampleId"    # I
    .param p2, "status"    # I

    .line 280
    const-string v0, "XpSoundPlayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete, simpleId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 210
    const-string v0, "XpSoundPlayService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void
.end method

.method private sendFinishSound(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;I)V
    .locals 4
    .param p1, "stopSound"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;
    .param p2, "mdelay"    # I

    .line 170
    const-string v0, "XpSoundPlayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send finish sound(signal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->signal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", streamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;->streamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    return-void
.end method

.method private showPlaySoundStatus(III)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "signal"    # I
    .param p3, "streamId"    # I

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;

    .line 287
    .local v1, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;->onPlaySoundEventCallBack(III)V

    .line 288
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method private turnDownVolume()V
    .locals 7

    .line 127
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasTurnDownVolume:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    if-lez v0, :cond_1

    .line 128
    const-string v0, "XpSoundPlayService"

    const-string v1, "turnDownVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    div-int/2addr v0, v2

    .line 131
    .local v0, "volume":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 132
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasTurnDownVolume:Z

    .line 134
    .end local v0    # "volume":I
    :cond_1
    return-void
.end method

.method private turnUpVolume()V
    .locals 5

    .line 137
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasTurnDownVolume:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "XpSoundPlayService"

    const-string v1, "turnUpVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mStreamVolume:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->hasTurnDownVolume:Z

    .line 143
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 218
    const-string v0, "XpSoundPlayService"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    return-void
.end method


# virtual methods
.method public declared-synchronized addPlaySoundEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "XpSoundPlayService"

    const-string v1, "addPlaySoundEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw p1
.end method

.method public getSignalId(I)I
    .locals 2
    .param p1, "signal"    # I

    .line 162
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getSignalVal(I)I
    .locals 1
    .param p1, "signal"    # I

    .line 166
    const v0, 0xffff

    and-int/2addr v0, p1

    return v0
.end method

.method public handleLoad(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 460
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 465
    .local v1, "sampleId":I
    const-string v2, "XpSoundPlayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    const-string v4, " succeed!"

    goto :goto_0

    :cond_0
    const-string v4, " failed!"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-lez v1, :cond_1

    .line 468
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mSampleIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mDurationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getSoundDuration(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v1    # "sampleId":I
    :cond_1
    return-void
.end method

.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 451
    :try_start_0
    const-string v0, "XpSoundPlayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send load, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 455
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 450
    .end local v0    # "message":Landroid/os/Message;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw p1
.end method

.method public declared-synchronized play(ILjava/lang/String;FFIIIZ)V
    .locals 14
    .param p1, "signal"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "leftVolume"    # F
    .param p4, "rightVolume"    # F
    .param p5, "position"    # I
    .param p6, "priority"    # I
    .param p7, "loop"    # I
    .param p8, "hasDownVolume"    # Z

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 478
    :try_start_0
    const-string v2, "XpSoundPlayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send play, signal= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 481
    .local v2, "message":Landroid/os/Message;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "name":Ljava/lang/String;
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    move-object v5, v3

    move v7, v4

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;-><init>(Ljava/lang/String;IFFIIIZ)V

    .line 485
    .local v3, "playSound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/Message;->what:I

    .line 486
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 477
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "playSound":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;
    .end local v6    # "name":Ljava/lang/String;
    .end local p1    # "signal":I
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "leftVolume":F
    .end local p4    # "rightVolume":F
    .end local p5    # "position":I
    .end local p6    # "priority":I
    .end local p7    # "loop":I
    .end local p8    # "hasDownVolume":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw v0
.end method

.method protected declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    const-string v0, "XpSoundPlayService"

    const-string v1, "send release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw v0
.end method

.method public declared-synchronized removePlaySoundEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "XpSoundPlayService"

    const-string v1, "removePlaySoundEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw p1
.end method

.method public declared-synchronized stop(I)V
    .locals 3
    .param p1, "signal"    # I

    monitor-enter p0

    .line 491
    :try_start_0
    const-string v0, "XpSoundPlayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send stop, signal= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 495
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 496
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 490
    .end local v0    # "message":Landroid/os/Message;
    .end local p1    # "signal":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    throw p1
.end method

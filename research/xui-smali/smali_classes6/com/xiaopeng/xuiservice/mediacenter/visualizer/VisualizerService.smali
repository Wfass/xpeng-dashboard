.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
.super Ljava/lang/Object;
.source "VisualizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;,
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$VisualizerServiceHolder;
    }
.end annotation


# static fields
.field private static final INVALID_AUDIO_SESSION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VisualizerService"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

.field private mCurrentAudioSession:I

.field private mCurrentBluetoothAudioSessionId:I

.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFftDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mKaraokeVisualizerOn:Z

.field private mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

.field private mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mSDFftDataListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedDisplayEventListener:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

.field private mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

.field private mVisualizerHandler:Landroid/os/Handler;

.field private mVisualizerWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentBluetoothAudioSessionId:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentAudioSession:I

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    .line 325
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 357
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSharedDisplayEventListener:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VisualizerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerWorkThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$1;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStartAudioSessionInner(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStopAudioSessionInner(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findTargetListenerIndex(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)I
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    if-ne p1, v1, :cond_0

    .line 166
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$VisualizerServiceHolder;->access$100()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    move-result-object v0

    return-object v0
.end method

.method private initVisualizerControllers()V
    .locals 6

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 101
    .local v0, "controllerSize":I
    :goto_0
    new-array v1, v0, [Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 103
    new-instance v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;-><init>(I)V

    .line 104
    .local v2, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->setupWithParams(Landroid/media/AudioManager;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;Landroid/os/HandlerThread;)V

    .line 105
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->setListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 106
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    aput-object v2, v3, v1

    .line 102
    .end local v2    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private loadSpectrumParams()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method private notifyNewAudioSessionToListener(ILjava/lang/String;)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

    .line 310
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;->onNewAudioSession(ILjava/lang/String;)V

    .line 311
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;
    goto :goto_0

    .line 312
    :cond_0
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerListener()V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 321
    .local v3, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->setListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 320
    .end local v3    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method private registerSharedEventListener()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSharedDisplayEventListener:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method private setAmbientLightMusicEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 149
    .local v3, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->setAmbientLightMusicEnable(Z)V

    .line 148
    .end local v3    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method private triggerRestoreSession()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method private updateVisualizerRequest()V
    .locals 6

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "requestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    .line 349
    .local v3, "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    goto :goto_0

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 353
    .local v5, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    invoke-virtual {v5, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 352
    .end local v5    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    :cond_1
    return-void
.end method

.method private vendorStartAudioSessionInner(IILjava/lang/String;)V
    .locals 3
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 230
    const-string v0, "VisualizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorStartAudioSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentAudioSession:I

    if-ne v0, p1, :cond_0

    .line 232
    const-string v0, "VisualizerService"

    const-string v1, "not handle already session"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "com.android.bluetooth"

    .line 237
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentBluetoothAudioSessionId:I

    .line 240
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->notifyNewAudioSessionToListener(ILjava/lang/String;)V

    .line 241
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->getVisualizerController(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v0

    .line 243
    .local v0, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->vendorStartAudioSession(IILjava/lang/String;)V

    .line 247
    .end local v0    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    :cond_2
    return-void
.end method

.method private vendorStopAudioSessionInner(ILjava/lang/String;)V
    .locals 1
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->getVisualizerController(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v0

    .line 273
    .local v0, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->vendorStopAudioSession(ILjava/lang/String;)V

    .line 277
    .end local v0    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentAudioSession()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentAudioSession:I

    return v0
.end method

.method public getCurrentBluetoothAudioSessionId()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentBluetoothAudioSessionId:I

    return v0
.end method

.method public getVisualizerController(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    aget-object v0, v0, v1

    return-object v0

    .line 252
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getSharedId(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "sharedId":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    aget-object v1, v1, v0

    return-object v1

    .line 258
    .end local v0    # "sharedId":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->loadSpectrumParams()V

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->initVisualizerControllers()V

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->registerSharedEventListener()V

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->triggerRestoreSession()V

    .line 73
    return-void
.end method

.method public isBluetoothStreamActive()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mCurrentBluetoothAudioSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKaraokeVisualizerOn()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mKaraokeVisualizerOn:Z

    return v0
.end method

.method public isVisualizerEnable(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 60
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->isVisualizerEnable()Z

    .line 63
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public karaokeFftCapture([BI)V
    .locals 2
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;[BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public registerEventListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerFftDataListener(ILcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 154
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->findTargetListenerIndex(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)I

    move-result v0

    .line 155
    .local v0, "targetIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->registerDisplayId(I)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 159
    .local v1, "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    :goto_0
    return-void
.end method

.method public registerFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->setAmbientLightMusicEnable(Z)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->registerFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 134
    return-void
.end method

.method public registerFftDataListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 180
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->findTargetListenerIndex(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)I

    move-result v0

    .line 181
    .local v0, "targetIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->registerPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 185
    .local v1, "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
    :goto_0
    return-void
.end method

.method public registerFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public setKaraokeVisualizerOn(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 293
    const-string v0, "VisualizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKaraokeVisualizerOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mKaraokeVisualizerOn:Z

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public unregisterEventListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterFftDataListener(ILcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 173
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->findTargetListenerIndex(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)I

    move-result v0

    .line 174
    .local v0, "targetIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->unregisterDisplayId(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public unregisterFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->setAmbientLightMusicEnable(Z)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->unregisterFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 139
    return-void
.end method

.method public unregisterFftDataListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 190
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->findTargetListenerIndex(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)I

    move-result v0

    .line 191
    .local v0, "targetIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mSDFftDataListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->unregisterPackage(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public unregisterFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method

.method public updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mControllers:[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    .local v3, "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    invoke-virtual {v3, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 142
    .end local v3    # "controller":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 2
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 2
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->mVisualizerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

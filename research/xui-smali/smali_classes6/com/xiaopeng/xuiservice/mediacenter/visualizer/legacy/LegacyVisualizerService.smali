.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
.super Ljava/lang/Object;
.source "LegacyVisualizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;,
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerServiceHolder;
    }
.end annotation


# static fields
.field private static final INVALID_AUDIO_SESSION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VisualizerService"

.field private static isSpeechActive:Z

.field private static lastRatio:F


# instance fields
.field private final DELAY_SELF_START:I

.field private final MSG_RESTORE_SESSION:I

.field private final MSG_SELF_START:I

.field private final VISUALIZER_INIT_TIME:I

.field private lastFFTDataLogTime:J

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBanSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioSession:I

.field private mCurrentBluetoothAudioSessionId:I

.field mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFftDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mKaraokeVisulizerOn:Z

.field private mLastNotifyRatio:F

.field private mLastReleaseTime:J

.field private mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mPlayAudioPackage:Ljava/lang/String;

.field private mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mVisualizerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastRatio:F

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->isSpeechActive:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mKaraokeVisulizerOn:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    .line 40
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizerLock:Ljava/lang/Object;

    .line 45
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->DELAY_SELF_START:I

    .line 46
    const/16 v1, 0x81

    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->MSG_SELF_START:I

    .line 47
    const/16 v1, 0x82

    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->MSG_RESTORE_SESSION:I

    .line 48
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->VISUALIZER_INIT_TIME:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mPlayAudioPackage:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mBanSessions:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    .line 487
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
    .param p1, "x1"    # Landroid/media/audiofx/Visualizer;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->notifyFftData(Landroid/media/audiofx/Visualizer;[BI)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->selfStartAudioSession()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->restoreSession()V

    return-void
.end method

.method private addAudioSession(IZ)V
    .locals 2
    .param p1, "audioSession"    # I
    .param p2, "start"    # Z

    .line 223
    if-eqz p2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mBanSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    :goto_0
    return-void
.end method

.method private checkVisualizerEnable(ILjava/lang/String;)Z
    .locals 5
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 151
    .local v1, "info":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v1, :cond_0

    .line 152
    iget v2, v1, Lcom/xiaopeng/app/xpPackageInfo;->enableVisualizer:I

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mBanSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return v0

    .line 159
    .end local v1    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VisualizerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendorStartAudioSession exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mBanSessions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    return v0

    .line 163
    :cond_1
    return v0
.end method

.method private delaySelfStartAudioSession()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
    .locals 1

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerServiceHolder;->access$100()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    move-result-object v0

    return-object v0
.end method

.method private getMostRecentIndex([FF)I
    .locals 6
    .param p1, "sourcelist"    # [F
    .param p2, "target"    # F

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "ret":I
    const v1, 0x4b189680    # 1.0E7f

    .line 169
    .local v1, "minNum":F
    const v2, 0x4b189680    # 1.0E7f

    .line 170
    .local v2, "temp":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 171
    aget v4, p1, v3

    sub-float/2addr v4, p2

    .line 172
    .local v4, "deltaAbs":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 173
    neg-float v4, v4

    .line 175
    :cond_0
    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    .line 176
    move v2, v4

    .line 177
    move v0, v3

    .line 170
    .end local v4    # "deltaAbs":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "i":I
    :cond_2
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftTimeGap:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    return v3
.end method

.method private getValue([BI)F
    .locals 21
    .param p1, "bytes"    # [B
    .param p2, "samplingRate"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 184
    array-length v2, v1

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 185
    .local v2, "frequencyCounts":I
    new-array v5, v2, [B

    .line 186
    .local v5, "fft":[B
    const/4 v6, 0x0

    aget-byte v7, v5, v6

    const/16 v8, -0x80

    if-ne v8, v7, :cond_0

    .line 187
    const/16 v7, 0x7f

    aput-byte v7, v5, v6

    goto :goto_0

    .line 189
    :cond_0
    aget-byte v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 191
    :goto_0
    move v7, v4

    .local v7, "i":I
    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_1

    .line 192
    mul-int v8, v3, v7

    aget-byte v8, v1, v8

    int-to-double v8, v8

    mul-int v10, v3, v7

    add-int/2addr v10, v4

    aget-byte v10, v1, v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 194
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget-byte v8, v1, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 195
    move/from16 v7, p2

    div-int/lit16 v7, v7, 0x3e8

    .line 196
    .end local p2    # "samplingRate":I
    .local v7, "samplingRate":I
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    array-length v9, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 198
    .local v8, "frequencyEach":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 199
    .local v9, "result":F
    const/4 v10, 0x0

    .line 200
    .local v10, "index":I
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v11, v6}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaStyle(I)I

    move-result v11

    .line 201
    .local v11, "mediaType":I
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v12, v11}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getWeightValue(I)[D

    move-result-object v12

    .line 202
    .local v12, "K":[D
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v13, v11}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getFrequencyValue(I)[F

    move-result-object v13

    .line 203
    .local v13, "frequencyValue":[F
    move v14, v9

    move v9, v6

    .local v9, "i":I
    .local v14, "result":F
    :goto_2
    array-length v15, v5

    if-ge v9, v15, :cond_4

    .line 204
    int-to-float v15, v9

    mul-float/2addr v15, v8

    .line 205
    .local v15, "hz":F
    invoke-direct {v0, v13, v15}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->getMostRecentIndex([FF)I

    move-result v10

    .line 206
    const/4 v6, -0x1

    if-ne v10, v6, :cond_2

    .line 207
    nop

    .line 203
    move-object/from16 v16, v5

    move/from16 v19, v11

    goto :goto_3

    .line 209
    :cond_2
    if-gez v10, :cond_3

    .line 210
    neg-int v6, v10

    .line 211
    .end local v10    # "index":I
    .local v6, "index":I
    add-int/lit8 v10, v6, -0x2

    .line 214
    .end local v6    # "index":I
    .restart local v10    # "index":I
    :cond_3
    array-length v6, v12

    sub-int/2addr v6, v4

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 215
    .end local v10    # "index":I
    .restart local v6    # "index":I
    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 216
    aget-byte v3, v5, v9

    and-int/lit16 v3, v3, 0xff

    .line 217
    .local v3, "fftValue":I
    move-object/from16 v16, v5

    float-to-double v4, v14

    .end local v5    # "fft":[B
    .local v16, "fft":[B
    aget-wide v17, v12, v6

    move/from16 v19, v11

    int-to-double v10, v3

    .end local v11    # "mediaType":I
    .local v19, "mediaType":I
    mul-double v17, v17, v10

    add-double v4, v4, v17

    double-to-float v3, v4

    .line 203
    .end local v14    # "result":F
    .end local v15    # "hz":F
    .local v3, "result":F
    move v14, v3

    move v10, v6

    .end local v3    # "result":F
    .end local v6    # "index":I
    .restart local v10    # "index":I
    .restart local v14    # "result":F
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    move/from16 v11, v19

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 219
    .end local v9    # "i":I
    .end local v16    # "fft":[B
    .end local v19    # "mediaType":I
    .restart local v5    # "fft":[B
    .restart local v11    # "mediaType":I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v19, v11

    .end local v5    # "fft":[B
    .end local v11    # "mediaType":I
    .restart local v16    # "fft":[B
    .restart local v19    # "mediaType":I
    return v14
.end method

.method private isSpeechActive()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamActive(I)Z

    move-result v0

    .line 411
    .local v0, "speechActive":Z
    sget-boolean v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->isSpeechActive:Z

    if-eq v1, v0, :cond_0

    .line 412
    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->isSpeechActive:Z

    .line 414
    :cond_0
    return v0
.end method

.method private loadSpectrumParams()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method private notifyFftData(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 8
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "fft"    # [B
    .param p3, "samplingRate"    # I

    .line 418
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mKaraokeVisulizerOn:Z

    if-eqz v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->isSpeechActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    return-void

    .line 427
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->getValue([BI)F

    move-result v0

    .line 428
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    if-nez v1, :cond_2

    .line 429
    return-void

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->addValue(F)V

    .line 432
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMaxValue()F

    move-result v1

    .line 433
    .local v1, "maxValue":F
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMinValue()F

    move-result v2

    .line 434
    .local v2, "minValue":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    div-float v4, v0, v1

    .line 435
    .local v4, "ratio":F
    :goto_0
    cmpl-float v5, v1, v3

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    div-float v3, v2, v1

    .line 436
    .local v3, "minRatio":F
    :goto_1
    sget v5, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastRatio:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftaverageGap:F

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 437
    sget v4, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastRatio:F

    goto :goto_2

    .line 439
    :cond_5
    sput v4, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastRatio:F

    .line 441
    :goto_2
    const-string v5, "self"

    invoke-direct {p0, v5, v4, v3, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->printFFTDataLog(Ljava/lang/String;FF[B)V

    .line 442
    invoke-direct {p0, p2, p3, v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->notifyFftDataToListener([BIFF)V

    .line 443
    return-void
.end method

.method private notifyFftDataToListener([BIFF)V
    .locals 5
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;

    .line 456
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;->onFftDataCapture([BI)V

    .line 457
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;
    goto :goto_0

    .line 458
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaStyle(I)I

    move-result v1

    .line 460
    .local v1, "mediaType":I
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getRatioDeltaValue(I)F

    move-result v2

    .line 461
    .local v2, "currentRatioDelta":F
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mLastNotifyRatio:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 462
    return-void

    .line 464
    :cond_1
    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mLastNotifyRatio:F

    .line 465
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    monitor-enter v3

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;

    .line 467
    .local v4, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;
    invoke-interface {v4, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;->onRatioData(FF)V

    .line 468
    .end local v4    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;
    goto :goto_1

    .line 469
    :cond_2
    monitor-exit v3

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 458
    .end local v1    # "mediaType":I
    .end local v2    # "currentRatioDelta":F
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private notifyNewAudioSessionToListener(ILjava/lang/String;)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;

    .line 448
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;->onNewAudioSession(ILjava/lang/String;)V

    .line 449
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;
    goto :goto_0

    .line 450
    :cond_0
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private printFFTDataLog(Ljava/lang/String;FF[B)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ratio"    # F
    .param p3, "minRatio"    # F
    .param p4, "fft"    # [B

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 477
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastFFTDataLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    if-eqz p4, :cond_1

    array-length v2, p4

    if-lez v2, :cond_1

    .line 478
    array-length v2, p4

    .line 479
    .local v2, "size":I
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Fft_Print_Size:I

    if-ge v2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Fft_Print_Size:I

    .line 480
    .local v3, "printSize":I
    :goto_0
    new-array v4, v3, [B

    .line 481
    .local v4, "printFft":[B
    const/4 v5, 0x0

    invoke-static {p4, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 482
    const-string v5, "VisualizerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onFftDataCapture Ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", minRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " &printFft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->lastFFTDataLogTime:J

    .line 485
    .end local v2    # "size":I
    .end local v3    # "printSize":I
    .end local v4    # "printFft":[B
    :cond_1
    return-void
.end method

.method private restoreSession()V
    .locals 0

    .line 140
    return-void
.end method

.method private selfStartAudioSession()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 329
    .local v0, "audioSessionsSize":I
    if-gtz v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 333
    .local v1, "audioSession":I
    const-string v2, "VisualizerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selfStartAudioSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 341
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->release()V

    .line 343
    :cond_1
    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    .line 344
    new-instance v3, Landroid/media/audiofx/Visualizer;

    invoke-direct {v3, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 345
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 348
    :cond_2
    new-instance v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    sget v5, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DynamicExtremebufferLen:I

    invoke-direct {v3, v5}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;-><init>(I)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    .line 353
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    sget v5, Lcom/xiaopeng/xuiservice/mediacenter/Config;->CAPTURE_SIZE:I

    invoke-virtual {v3, v5}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v3, :cond_4

    .line 357
    const-string v3, "VisualizerService"

    const-string v4, "self alloc Visualizer failed. "

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    monitor-exit v2

    return-void

    .line 360
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 363
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v6}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 367
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VisualizerService"

    const-string v4, "selfStartAudioSession exception"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private triggerRestoreSession()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method


# virtual methods
.method public getCurrentAudioSession()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    return v0
.end method

.method public getCurrentBluetoothAudioSessionId()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    return v0
.end method

.method public getKaraokeVisualizerOn()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mKaraokeVisulizerOn:Z

    return v0
.end method

.method public init()V
    .locals 2

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 75
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->triggerRestoreSession()V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->loadSpectrumParams()V

    .line 79
    return-void
.end method

.method public isBluetoothStreamActive()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public karaokeFftCapture([BI)V
    .locals 6
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mKaraokeVisulizerOn:Z

    if-nez v0, :cond_1

    .line 379
    return-void

    .line 383
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->getValue([BI)F

    move-result v0

    .line 384
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    if-nez v1, :cond_2

    .line 386
    return-void

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->addValue(F)V

    .line 389
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMaxValue()F

    move-result v1

    .line 390
    .local v1, "maxValue":F
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMinValue()F

    move-result v2

    .line 391
    .local v2, "minValue":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    div-float v4, v0, v1

    .line 392
    .local v4, "ratio":F
    :goto_0
    cmpl-float v5, v1, v3

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    div-float v3, v2, v1

    .line 393
    .local v3, "minRatio":F
    :goto_1
    const-string v5, "karaoke"

    invoke-direct {p0, v5, v4, v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->printFFTDataLog(Ljava/lang/String;FF[B)V

    .line 394
    sget v5, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftkaraokeGap:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    .line 395
    return-void

    .line 397
    :cond_5
    int-to-float v5, p2

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->notifyFftDataToListener([BIFF)V

    .line 398
    return-void
.end method

.method public registerEventListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setKaraokeVisualizerOn(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mKaraokeVisulizerOn:Z

    .line 402
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    sget v1, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DynamicExtremebufferLen:I

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    .line 403
    return-void
.end method

.method public unregisterEventListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$EventListener;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$FftDataListener;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mFftDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 11
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "VisualizerService"

    const-string/jumbo v1, "visualizer service should be inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mPlayAudioPackage:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
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

    .line 240
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    if-ne v0, p1, :cond_1

    .line 241
    const-string v0, "VisualizerService"

    const-string v1, "not handle already session"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const-string v1, "com.android.bluetooth"

    .line 246
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    .line 249
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->notifyNewAudioSessionToListener(ILjava/lang/String;)V

    .line 251
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->checkVisualizerEnable(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    const-string v0, "VisualizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is forbbiden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 256
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->addAudioSession(IZ)V

    .line 257
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    .local v2, "currentTime":J
    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mLastReleaseTime:J

    sub-long v4, v2, v4

    .line 260
    .local v4, "elipseTime":J
    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 261
    const-string v8, "VisualizerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wait for a while:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 264
    :cond_4
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 267
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v6, v7}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 269
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v6}, Landroid/media/audiofx/Visualizer;->release()V

    .line 271
    :cond_5
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    .line 272
    new-instance v6, Landroid/media/audiofx/Visualizer;

    invoke-direct {v6, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 273
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v6, v7}, Landroid/media/audiofx/Visualizer;->setScalingMode(I)I

    .line 274
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v6, :cond_6

    .line 275
    const-string v0, "VisualizerService"

    const-string v6, "create Visualizer failed. "

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    monitor-exit v1

    return-void

    .line 278
    :cond_6
    new-instance v6, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    sget v8, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DynamicExtremebufferLen:I

    invoke-direct {v6, v8}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;-><init>(I)V

    iput-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    .line 283
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v6}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 284
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    sget v8, Lcom/xiaopeng/xuiservice/mediacenter/Config;->CAPTURE_SIZE:I

    invoke-virtual {v6, v8}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 286
    :cond_7
    sget v6, Lcom/xiaopeng/xuiservice/mediacenter/Config;->rateSpeed:I

    if-lez v6, :cond_8

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v6

    sget v8, Lcom/xiaopeng/xuiservice/mediacenter/Config;->rateSpeed:I

    div-int/2addr v6, v8

    goto :goto_0

    .line 287
    :cond_8
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v6

    .line 288
    .local v6, "caprate":I
    :goto_0
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-virtual {v8, v9, v6, v7, v0}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 289
    const-string v7, "VisualizerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MaxCaptureRate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | capturerate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v7, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 295
    .end local v2    # "currentTime":J
    .end local v4    # "elipseTime":J
    .end local v6    # "caprate":I
    monitor-exit v1

    .line 299
    goto :goto_1

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VisualizerService"

    const-string v2, "vendorStartAudioSession exception"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 4
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 304
    const-string v0, "VisualizerService"

    const-string/jumbo v1, "visualizer service should be inited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    const-string v0, "VisualizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorStopAudioSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->addAudioSession(IZ)V

    .line 308
    const-string v0, "com.android.bluetooth"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    if-ne v0, p1, :cond_1

    .line 309
    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentBluetoothAudioSessionId:I

    .line 311
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    if-ne p1, v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_2

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mLastReleaseTime:J

    .line 315
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->release()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 317
    iput v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mCurrentAudioSession:I

    .line 319
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->mAudioSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 321
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->delaySelfStartAudioSession()V

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 325
    :cond_3
    :goto_0
    return-void
.end method

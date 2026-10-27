.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
.super Ljava/lang/Object;
.source "SDVisualizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;
    }
.end annotation


# static fields
.field private static final INVALID_AUDIO_SESSION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SDVisualizer"


# instance fields
.field private final MSG_EVENT_START:I

.field private mAmbientLightMusicEnable:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCaptureRate:I

.field private mCurrentAudioSession:I

.field private mCurrentSessionPkg:Ljava/lang/String;

.field mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mDisplayId:I

.field private mDisplayIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

.field private mKaraokeVisualizerOn:Z

.field private mLastFFTDataLogTime:J

.field private mLastNotifyRatio:F

.field private mLastRatio:F

.field private mLastReleaseTime:J

.field private mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

.field private mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mVisualizerLock:Ljava/lang/Object;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Landroid/os/HandlerThread;

.field private mXpAudioSessionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizerLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastRatio:F

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayIds:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mPackages:Ljava/util/List;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->MSG_EVENT_START:I

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    .line 356
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 56
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    .line 57
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    sget v1, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DynamicExtremebufferLen:I

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    .line 58
    sget v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->rateSpeed:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v0

    sget v1, Lcom/xiaopeng/xuiservice/mediacenter/Config;->rateSpeed:I

    div-int/2addr v0, v1

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCaptureRate:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .param p1, "x1"    # Landroid/media/audiofx/Visualizer;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->notifyFftData(Landroid/media/audiofx/Visualizer;[BI)V

    return-void
.end method

.method private addVisualizerInfo(ZIILjava/lang/String;)V
    .locals 9
    .param p1, "add"    # Z
    .param p2, "sessionId"    # I
    .param p3, "usageType"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 251
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->findSessionIndexInList(I)I

    move-result v0

    .line 252
    .local v0, "targetIndex":I
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v2, v8

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/audio/xpAudioSessionInfo;-><init>(IIJLjava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_0
    if-nez p1, :cond_1

    if-eq v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    :cond_1
    :goto_0
    return-void
.end method

.method private checkVisualizerEnable(ILjava/lang/String;)Z
    .locals 4
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 289
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 291
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/xiaopeng/app/xpPackageInfo;->enableVisualizer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 296
    .end local v0    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_0
    goto :goto_1

    .line 292
    .restart local v0    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_1
    :goto_0
    return v1

    .line 294
    .end local v0    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDVisualizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpPackageInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private findSessionIndexInList(I)I
    .locals 3
    .param p1, "sessionId"    # I

    .line 260
    const/4 v0, -0x1

    .line 261
    .local v0, "index":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 264
    move v0, v1

    .line 265
    goto :goto_1

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private getMostRecentIndex([FF)I
    .locals 6
    .param p1, "sourcelist"    # [F
    .param p2, "target"    # F

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "ret":I
    const v1, 0x4b189680    # 1.0E7f

    .line 303
    .local v1, "minNum":F
    const v2, 0x4b189680    # 1.0E7f

    .line 304
    .local v2, "temp":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 305
    aget v4, p1, v3

    sub-float/2addr v4, p2

    .line 306
    .local v4, "deltaAbs":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 307
    neg-float v4, v4

    .line 309
    :cond_0
    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    .line 310
    move v2, v4

    .line 311
    move v0, v3

    .line 304
    .end local v4    # "deltaAbs":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
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

.method private getRequestIds(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 142
    .local p1, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 144
    .local v2, "displayId":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .end local v2    # "displayId":Ljava/lang/Integer;
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRequestPkgNames(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getValue([BI)F
    .locals 21
    .param p1, "bytes"    # [B
    .param p2, "samplingRate"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 318
    array-length v2, v1

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 319
    .local v2, "frequencyCounts":I
    new-array v5, v2, [B

    .line 320
    .local v5, "fft":[B
    const/4 v6, 0x0

    aget-byte v7, v5, v6

    const/16 v8, -0x80

    if-ne v8, v7, :cond_0

    .line 321
    const/16 v7, 0x7f

    aput-byte v7, v5, v6

    goto :goto_0

    .line 323
    :cond_0
    aget-byte v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 325
    :goto_0
    move v7, v4

    .local v7, "i":I
    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_1

    .line 326
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

    .line 325
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 328
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget-byte v8, v1, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 329
    move/from16 v7, p2

    div-int/lit16 v7, v7, 0x3e8

    .line 330
    .end local p2    # "samplingRate":I
    .local v7, "samplingRate":I
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    array-length v9, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 332
    .local v8, "frequencyEach":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 333
    .local v9, "result":F
    const/4 v10, 0x0

    .line 334
    .local v10, "index":I
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v11, v6}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaStyle(I)I

    move-result v11

    .line 335
    .local v11, "mediaType":I
    iget-object v12, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v12, v11}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getWeightValue(I)[D

    move-result-object v12

    .line 336
    .local v12, "K":[D
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v13, v11}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getFrequencyValue(I)[F

    move-result-object v13

    .line 337
    .local v13, "frequencyValue":[F
    move v14, v9

    move v9, v6

    .local v9, "i":I
    .local v14, "result":F
    :goto_2
    array-length v15, v5

    if-ge v9, v15, :cond_4

    .line 338
    int-to-float v15, v9

    mul-float/2addr v15, v8

    .line 339
    .local v15, "hz":F
    invoke-direct {v0, v13, v15}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getMostRecentIndex([FF)I

    move-result v10

    .line 340
    const/4 v6, -0x1

    if-ne v10, v6, :cond_2

    .line 341
    nop

    .line 337
    move-object/from16 v16, v5

    move/from16 v19, v11

    goto :goto_3

    .line 343
    :cond_2
    if-gez v10, :cond_3

    .line 344
    neg-int v6, v10

    .line 345
    .end local v10    # "index":I
    .local v6, "index":I
    add-int/lit8 v10, v6, -0x2

    .line 348
    .end local v6    # "index":I
    .restart local v10    # "index":I
    :cond_3
    array-length v6, v12

    sub-int/2addr v6, v4

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 349
    .end local v10    # "index":I
    .restart local v6    # "index":I
    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 350
    aget-byte v3, v5, v9

    and-int/lit16 v3, v3, 0xff

    .line 351
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

    .line 337
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

    .line 353
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

.method private initHandler()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    .line 96
    :cond_0
    return-void
.end method

.method private isEnable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayIds:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mPackages:Ljava/util/List;

    .line 239
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mAmbientLightMusicEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSpeechActive()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamActive(I)Z

    move-result v0

    return v0
.end method

.method private notifyFftData(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 8
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "fft"    # [B
    .param p3, "samplingRate"    # I

    .line 373
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getValue([BI)F

    move-result v0

    .line 374
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    if-nez v1, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->addValue(F)V

    .line 378
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMaxValue()F

    move-result v1

    .line 379
    .local v1, "maxValue":F
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMinValue()F

    move-result v2

    .line 380
    .local v2, "minValue":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    div-float v4, v0, v1

    .line 381
    .local v4, "ratio":F
    :goto_0
    cmpl-float v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    div-float v3, v2, v1

    .line 382
    .local v3, "minRatio":F
    :goto_1
    iget v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastRatio:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftaverageGap:F

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 383
    iget v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastRatio:F

    goto :goto_2

    .line 385
    :cond_3
    iput v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastRatio:F

    .line 387
    :goto_2
    const-string v5, "self"

    invoke-direct {p0, v5, v4, v3, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->printFFTDataLog(Ljava/lang/String;FF[B)V

    .line 388
    invoke-direct {p0, p2, p3, v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->notifyFftDataToListener([BIFF)V

    .line 389
    return-void
.end method

.method private notifyFftDataToListener([BIFF)V
    .locals 5
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 412
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mKaraokeVisualizerOn:Z

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaStyle(I)I

    move-result v0

    .line 420
    .local v0, "mediaType":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getRatioDeltaValue(I)F

    move-result v1

    .line 421
    .local v1, "currentRatioDelta":F
    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastNotifyRatio:F

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 422
    return-void

    .line 424
    :cond_2
    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastNotifyRatio:F

    .line 425
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    if-eqz v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onRatioData(ILjava/lang/String;FF)V

    .line 428
    :cond_3
    return-void
.end method

.method private notifyKaraokeFftDataToListener([BIFF)V
    .locals 5
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 431
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mKaraokeVisualizerOn:Z

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    const-string v2, "karaokeService"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    .line 437
    :cond_1
    const/4 v0, -0x1

    .line 438
    .local v0, "mediaType":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getRatioDeltaValue(I)F

    move-result v1

    .line 439
    .local v1, "currentRatioDelta":F
    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastNotifyRatio:F

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 440
    return-void

    .line 442
    :cond_2
    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastNotifyRatio:F

    .line 443
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    if-eqz v2, :cond_3

    .line 444
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    const-string v4, "karaokeService"

    invoke-interface {v2, v3, v4, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onRatioData(ILjava/lang/String;FF)V

    .line 446
    :cond_3
    return-void
.end method

.method private printFFTDataLog(Ljava/lang/String;FF[B)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ratio"    # F
    .param p3, "minRatio"    # F
    .param p4, "fft"    # [B

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 396
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastFFTDataLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    if-eqz p4, :cond_1

    array-length v2, p4

    if-lez v2, :cond_1

    .line 397
    array-length v2, p4

    .line 398
    .local v2, "size":I
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Fft_Print_Size:I

    if-ge v2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Fft_Print_Size:I

    .line 399
    .local v3, "printSize":I
    :goto_0
    new-array v4, v3, [B

    .line 400
    .local v4, "printFft":[B
    const/4 v5, 0x0

    invoke-static {p4, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 401
    const-string v5, "SDVisualizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " disId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " &seId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " &pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", minRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " &printFft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastFFTDataLogTime:J

    .line 405
    .end local v2    # "size":I
    .end local v3    # "printSize":I
    .end local v4    # "printFft":[B
    :cond_1
    return-void
.end method

.method private restoreVisualizer()V
    .locals 7

    .line 124
    const-string v0, "SDVisualizer"

    const-string v1, "restoreVisualizer"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    .line 127
    .local v0, "audioSessionInfo":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    const-string v1, "SDVisualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreVisualizer audioSessionInfo id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getSharedId(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    if-eq v1, v3, :cond_0

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;

    .line 136
    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getUsageType()I

    move-result v5

    invoke-virtual {v0}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;IILjava/lang/String;)V

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    .end local v0    # "audioSessionInfo":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentAudioSession()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    return v0
.end method

.method public getCurrentPackage()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    return-object v0
.end method

.method public isVisualizerEnable()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mKaraokeVisualizerOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public karaokeFftCapture([BI)V
    .locals 6
    .param p1, "fft"    # [B
    .param p2, "samplingRate"    # I

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getValue([BI)F

    move-result v0

    .line 163
    .local v0, "value":F
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    if-nez v1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->addValue(F)V

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMaxValue()F

    move-result v1

    .line 169
    .local v1, "maxValue":F
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDynamicExtreme:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->getMinValue()F

    move-result v2

    .line 170
    .local v2, "minValue":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    div-float v4, v0, v1

    .line 171
    .local v4, "ratio":F
    :goto_0
    cmpl-float v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    div-float v3, v2, v1

    .line 172
    .local v3, "minRatio":F
    :goto_1
    const-string v5, "karaoke"

    invoke-direct {p0, v5, v4, v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->printFFTDataLog(Ljava/lang/String;FF[B)V

    .line 173
    sget v5, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftkaraokeGap:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    .line 174
    return-void

    .line 176
    :cond_3
    int-to-float v5, p2

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->notifyKaraokeFftDataToListener([BIFF)V

    .line 177
    return-void
.end method

.method public setAmbientLightMusicEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 110
    const-string v0, "SDVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMusicEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mAmbientLightMusicEnable:Z

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->restoreVisualizer()V

    .line 113
    return-void
.end method

.method public setKaraokeVisualizerOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 247
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mKaraokeVisualizerOn:Z

    .line 248
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 100
    return-void
.end method

.method public setupWithParams(Landroid/media/AudioManager;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;Landroid/os/HandlerThread;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "paramsLoader"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mSpectrumParamsLoader:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 66
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandlerThread:Landroid/os/HandlerThread;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->initHandler()V

    .line 68
    return-void
.end method

.method public triggerRestoreSession(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    const-string v0, "SDVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerRestoreSession with displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->getRestoreSession(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mXpAudioSessionInfoList:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->restoreVisualizer()V

    .line 78
    return-void
.end method

.method public updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 103
    .local p1, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SDVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisualizerRequest ids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getRequestIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &pkgNames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getRequestPkgNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayIds:Ljava/util/List;

    .line 105
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mPackages:Ljava/util/List;

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->restoreVisualizer()V

    .line 107
    return-void
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 9
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->addVisualizerInfo(ZIILjava/lang/String;)V

    .line 189
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->isEnable(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "isEnable":Z
    const-string v2, "SDVisualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendorStartAudioSession displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &audioSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &isEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz v1, :cond_6

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    .line 195
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    if-ne v2, p1, :cond_1

    .line 196
    const-string v0, "SDVisualizer"

    const-string v2, "not handle already session"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->checkVisualizerEnable(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    const-string v0, "SDVisualizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "check permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "is not enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastReleaseTime:J

    sub-long/2addr v2, v4

    .line 207
    .local v2, "interval":J
    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 208
    const-string v6, "SDVisualizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wait for a while to avoid native mutex_lock error interval:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 211
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 214
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v4, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 216
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v4}, Landroid/media/audiofx/Visualizer;->release()V

    .line 217
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 219
    :cond_4
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    .line 220
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    .line 221
    new-instance v4, Landroid/media/audiofx/Visualizer;

    invoke-direct {v4, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 222
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v4, v5}, Landroid/media/audiofx/Visualizer;->setScalingMode(I)I

    .line 223
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v4, :cond_5

    .line 224
    const-string v0, "SDVisualizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "create Visualizer failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    .line 227
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    iget v7, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCaptureRate:I

    invoke-virtual {v4, v6, v7, v5, v0}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 230
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v4, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2    # "interval":J
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SDVisualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visualizer create exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 193
    :cond_6
    :goto_1
    return-void
.end method

.method public vendorStartAudioSessionBySharedEvent(IILjava/lang/String;)V
    .locals 4
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 180
    const-string v0, "SDVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorStartAudioSessionBySharedEvent displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &audioSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 3
    .param p1, "audioSession"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 273
    const-string v0, "SDVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorStopAudioSession displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &audioSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->addVisualizerInfo(ZIILjava/lang/String;)V

    .line 276
    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mLastReleaseTime:J

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentAudioSession:I

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->mCurrentSessionPkg:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->restoreVisualizer()V

    .line 285
    :cond_0
    return-void
.end method

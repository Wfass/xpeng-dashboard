.class public Lcom/android/car/intelligent/CarDrivingScene;
.super Ljava/lang/Object;
.source "CarDrivingScene.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;,
        Lcom/android/car/intelligent/CarDrivingScene$STATUS;
    }
.end annotation


# static fields
.field private static final REQUIRED_PROPERTIES:[I

.field private static final SCENE_RADAR_COUNT:I = 0x6

.field private static final SCENE_TRIGGER_RADAR_MIN_VALUE:I = 0x0

.field private static final SCENE_TRIGGER_RADAR_THRESHOLD_VALUE:I = 0x14

.field private static final SCENE_TRIGGER_SPEED_VALUE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "CarDrivingScene"

.field private static final sRadarCalibrationFront1:[F

.field private static final sRadarCalibrationFront2:[F

.field private static final sRadarCalibrationFront3:[F

.field private static final sRadarCalibrationRear1:[F

.field private static final sRadarCalibrationRear2:[F

.field private static final sRadarCalibrationRear3:[F


# instance fields
.field private mAVH:I

.field private mAvmWorkSt:I

.field private mCDUType:Ljava/lang/String;

.field private final mCacheRadarFront:[F

.field private final mCacheRadarRear:[F

.field private mCarSpeed:F

.field private final mContext:Landroid/content/Context;

.field private final mDispatchHandler:Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

.field private mEventHandler:Landroid/os/Handler;

.field private mGearLevel:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIgData:I

.field private mIsAVMSupport:Z

.field private mIsNEDCBlock:Z

.field private mLevel:I

.field private mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

.field private mNEDCSt:I

.field private volatile mNotifyAction:I

.field private final mPropertyService:Lcom/android/car/CarPropertyService;

.field private mRadarCalibrationFront:[F

.field private mRadarCalibrationRear:[F

.field private volatile mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/intelligent/CarDrivingScene;->REQUIRED_PROPERTIES:[I

    .line 72
    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront1:[F

    .line 73
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear1:[F

    .line 74
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront2:[F

    .line 75
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear2:[F

    .line 76
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront3:[F

    .line 77
    new-array v0, v0, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear3:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x2161261c
        0x2161261d
        0x21601225
        0x21401205
        0x21402403
        0x21401409
        0x21403807
        0x21403410
    .end array-data

    :array_1
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42480000    # 50.0f
    .end array-data

    :array_2
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_3
    .array-data 4
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x428c0000    # 70.0f
        0x42700000    # 60.0f
    .end array-data

    :array_4
    .array-data 4
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data

    :array_5
    .array-data 4
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42aa0000    # 85.0f
        0x42aa0000    # 85.0f
        0x42960000    # 75.0f
    .end array-data

    :array_6
    .array-data 4
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x6

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    .line 71
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    .line 78
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront2:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    .line 79
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear2:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    .line 80
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    .line 82
    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAVH:I

    .line 83
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    iput-object v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    .line 84
    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNotifyAction:I

    .line 85
    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mLevel:I

    .line 86
    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNEDCSt:I

    .line 88
    iput-boolean v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsAVMSupport:Z

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsNEDCBlock:Z

    .line 90
    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    .line 92
    new-instance v0, Lcom/android/car/intelligent/CarDrivingScene$1;

    invoke-direct {v0, p0}, Lcom/android/car/intelligent/CarDrivingScene$1;-><init>(Lcom/android/car/intelligent/CarDrivingScene;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 131
    iput-object p1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 133
    iput-object p3, p0, Lcom/android/car/intelligent/CarDrivingScene;->mEventHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

    iget-object v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;-><init>(Lcom/android/car/intelligent/CarDrivingScene;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mDispatchHandler:Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/intelligent/CarDrivingScene;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarDrivingScene;

    .line 38
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/intelligent/CarDrivingScene;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/intelligent/CarDrivingScene;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarDrivingScene;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/intelligent/CarDrivingScene;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/intelligent/CarDrivingScene;
    .param p1, "x1"    # Landroid/car/intelligent/CarSceneEvent;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventChanged(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method private checkAVHChanged(J)V
    .locals 9
    .param p1, "timestamp"    # J

    .line 324
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAVH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v2, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v2, :cond_0

    .line 325
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 326
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/car/intelligent/CarSceneEvent;->setExitReason(I)Landroid/car/intelligent/CarSceneEvent;

    .line 327
    const-string v2, "CarDrivingScene"

    const-string v3, "checkAVHChanged: mAVH:%s sceneEvent:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAVH:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 330
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_0
    return-void
.end method

.method private checkAvmWorkStChanged(J)V
    .locals 9
    .param p1, "timestamp"    # J

    .line 342
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v2, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v2, :cond_0

    .line 344
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 345
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const-string v2, "CarDrivingScene"

    const-string v3, "checkAvmWorkStChanged: mAvmWorkSt:%s sceneEvent=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 348
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_0
    return-void
.end method

.method private checkCarSpeedChanged(J)V
    .locals 8
    .param p1, "timestamp"    # J

    .line 297
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v1, :cond_1

    .line 298
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 299
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/car/intelligent/CarSceneEvent;->setExitReason(I)Landroid/car/intelligent/CarSceneEvent;

    .line 300
    const-string v1, "CarDrivingScene"

    const-string v2, "checkCarSpeedChanged: mCarSpeed:%s sceneEvent:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 303
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_1
    return-void
.end method

.method private checkGearLevelChanged(J)V
    .locals 11
    .param p1, "timestamp"    # J

    .line 306
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v4, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v4, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v4, :cond_2

    .line 312
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v0

    move-wide v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 313
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const-string v4, "CarDrivingScene"

    const-string v5, "checkGearLevelChanged: mGearLevel:%s sceneEvent:%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    goto :goto_1

    .line 307
    :cond_1
    :goto_0
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v0

    move-wide v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 308
    .restart local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    invoke-virtual {v0, v2}, Landroid/car/intelligent/CarSceneEvent;->setExitReason(I)Landroid/car/intelligent/CarSceneEvent;

    .line 309
    const-string v4, "CarDrivingScene"

    const-string v5, "checkGearLevelChanged: mGearLevel:%s sceneEvent:%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 311
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    nop

    .line 316
    :cond_2
    :goto_1
    return-void
.end method

.method private checkIgStateChanged(J)V
    .locals 9
    .param p1, "timestamp"    # J

    .line 351
    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v2, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v2, :cond_0

    .line 353
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 354
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const-string v2, "CarDrivingScene"

    const-string v3, "checkIgStateChanged: mIgData:%s sceneEvent=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 357
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_0
    return-void
.end method

.method private checkNEDCChanged(J)V
    .locals 8
    .param p1, "timestamp"    # J

    .line 333
    iget-boolean v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsNEDCBlock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNEDCSt:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne v0, v1, :cond_0

    .line 335
    new-instance v0, Landroid/car/intelligent/CarSceneEvent;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 336
    .local v0, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const-string v1, "CarDrivingScene"

    const-string v2, "checkNEDCChanged: mNEDCSt:%s sceneEvent=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNEDCSt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {p0, v1, v0}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 339
    .end local v0    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_0
    return-void
.end method

.method private checkRadarChanged(J)V
    .locals 15
    .param p1, "timestamp"    # J

    move-object v0, p0

    .line 233
    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mLevel:I

    if-lez v1, :cond_10

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    if-lez v1, :cond_10

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto/16 :goto_6

    .line 236
    :cond_0
    iget-boolean v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mIsNEDCBlock:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mNEDCSt:I

    if-eqz v1, :cond_1

    .line 238
    return-void

    .line 240
    :cond_1
    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    if-eq v1, v2, :cond_2

    .line 242
    return-void

    .line 244
    :cond_2
    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    if-ne v1, v3, :cond_f

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_f

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    if-ne v1, v3, :cond_f

    iget v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mAVH:I

    if-ne v1, v3, :cond_3

    goto/16 :goto_5

    .line 247
    :cond_3
    iget-object v1, v0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    sget-object v4, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v1, v4, :cond_9

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "enterState":Z
    move v4, v8

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_7

    .line 252
    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget v9, v9, v4

    iget-object v10, v0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    aget v10, v10, v4

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 253
    const/4 v1, 0x1

    .line 254
    goto :goto_1

    .line 256
    :cond_4
    if-eqz v4, :cond_5

    if-ne v4, v5, :cond_6

    .line 258
    :cond_5
    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget v9, v9, v4

    iget-object v10, v0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    aget v10, v10, v4

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_6

    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_1

    .line 250
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    .end local v4    # "i":I
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 265
    new-instance v4, Landroid/car/intelligent/CarSceneEvent;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    move-wide/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 266
    .local v4, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const-string v5, "CarDrivingScene"

    const-string v6, "checkRadarChanged: mCacheRadarFront:%s mCacheRadarRear:%s sceneEvent:%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    invoke-static {v9}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    iget-object v8, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    aput-object v4, v2, v7

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v2, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->ENTER:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {v0, v2, v4}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 269
    .end local v1    # "enterState":Z
    .end local v4    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_8
    goto :goto_4

    .line 271
    :cond_9
    const/4 v1, 0x0

    .line 272
    .restart local v1    # "enterState":Z
    move v4, v8

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_d

    .line 274
    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget v9, v9, v4

    iget-object v10, v0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    aget v10, v10, v4

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_a

    .line 275
    const/4 v1, 0x1

    .line 276
    goto :goto_3

    .line 278
    :cond_a
    if-eqz v4, :cond_b

    if-ne v4, v5, :cond_c

    .line 280
    :cond_b
    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget v9, v9, v4

    iget-object v10, v0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    aget v10, v10, v4

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c

    .line 281
    const/4 v1, 0x1

    .line 282
    goto :goto_3

    .line 272
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 286
    .end local v4    # "i":I
    :cond_d
    :goto_3
    if-nez v1, :cond_e

    .line 287
    new-instance v4, Landroid/car/intelligent/CarSceneEvent;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v4

    move-wide/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    .line 288
    .local v4, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    invoke-virtual {v4, v7}, Landroid/car/intelligent/CarSceneEvent;->setExitReason(I)Landroid/car/intelligent/CarSceneEvent;

    .line 289
    const-string v5, "CarDrivingScene"

    const-string v6, "checkRadarChanged: mCacheRadarFront:%s mCacheRadarRear:%s sceneEvent:%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    invoke-static {v9}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    iget-object v8, v0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    aput-object v4, v2, v7

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v2, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-direct {v0, v2, v4}, Lcom/android/car/intelligent/CarDrivingScene;->dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V

    .line 294
    .end local v1    # "enterState":Z
    .end local v4    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_e
    :goto_4
    return-void

    .line 245
    :cond_f
    :goto_5
    return-void

    .line 234
    :cond_10
    :goto_6
    return-void
.end method

.method private dispatchEventChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 3
    .param p1, "sceneEvent"    # Landroid/car/intelligent/CarSceneEvent;

    .line 225
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNotifyAction:I

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 226
    const-string v0, "CarDrivingScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEventChanged: mNotifyAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNotifyAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sceneEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v0

    iput v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNotifyAction:I

    .line 228
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    invoke-interface {v0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;->onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    .line 230
    :cond_0
    return-void
.end method

.method private dispatchEventMessage(Lcom/android/car/intelligent/CarDrivingScene$STATUS;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 4
    .param p1, "status"    # Lcom/android/car/intelligent/CarDrivingScene$STATUS;
    .param p2, "sceneEvent"    # Landroid/car/intelligent/CarSceneEvent;

    .line 211
    iput-object p1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mStatus:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    .line 212
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mDispatchHandler:Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->removeMessages(I)V

    .line 213
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/android/car/intelligent/CarDrivingScene$STATUS;->EXIT_DELAY:Lcom/android/car/intelligent/CarDrivingScene$STATUS;

    if-ne p1, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mDispatchHandler:Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mDispatchHandler:Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    :goto_0
    return-void
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 363
    monitor-exit p0

    return-void

    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 366
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 367
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 368
    .local v2, "timestamp":J
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v1, :sswitch_data_0

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_0

    .line 385
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Float;

    .line 386
    .local v11, "data":[Ljava/lang/Float;
    if-eqz v11, :cond_1

    array-length v12, v11

    if-ne v12, v4, :cond_1

    .line 387
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v12, v11, v10

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v4, v10

    .line 388
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v10, v11, v9

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v4, v9

    .line 389
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v9, v11, v8

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v4, v8

    .line 390
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v8, v11, v7

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v4, v7

    .line 391
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v7, v11, v6

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v6

    .line 392
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarRear:[F

    aget-object v6, v11, v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v5

    .line 393
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkRadarChanged(J)V

    .line 396
    .end local v11    # "data":[Ljava/lang/Float;
    :cond_1
    goto/16 :goto_0

    .line 371
    :sswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Float;

    .line 372
    .restart local v11    # "data":[Ljava/lang/Float;
    if-eqz v11, :cond_2

    array-length v12, v11

    if-ne v12, v4, :cond_2

    .line 373
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v12, v11, v10

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v4, v10

    .line 374
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v10, v11, v9

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v4, v9

    .line 375
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v9, v11, v8

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v4, v8

    .line 376
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v8, v11, v7

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v4, v7

    .line 377
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v7, v11, v6

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v6

    .line 378
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCacheRadarFront:[F

    aget-object v6, v11, v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v5

    .line 379
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkRadarChanged(J)V

    .line 382
    .end local v11    # "data":[Ljava/lang/Float;
    :cond_2
    goto :goto_0

    .line 399
    :sswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCarSpeed:F

    .line 400
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkCarSpeedChanged(J)V

    .line 401
    goto :goto_0

    .line 418
    :sswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mNEDCSt:I

    .line 419
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkNEDCChanged(J)V

    .line 420
    goto :goto_0

    .line 422
    :sswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAvmWorkSt:I

    .line 423
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkAvmWorkStChanged(J)V

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto :goto_0

    .line 409
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_5
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mAVH:I

    .line 410
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkAVHChanged(J)V

    .line 411
    goto :goto_0

    .line 414
    :sswitch_6
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    .line 415
    iget v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIgData:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/android/car/intelligent/CarDrivingScene;->checkIgStateChanged(J)V

    .line 416
    goto :goto_0

    .line 404
    :sswitch_7
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mGearLevel:I

    .line 405
    invoke-direct {p0, v2, v3}, Lcom/android/car/intelligent/CarDrivingScene;->checkGearLevelChanged(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    nop

    .line 428
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    :goto_0
    goto :goto_1

    .line 360
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 426
    .restart local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 360
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarDrivingScene;
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x21401205 -> :sswitch_7
        0x21401409 -> :sswitch_6
        0x21402403 -> :sswitch_5
        0x21403410 -> :sswitch_4
        0x21403807 -> :sswitch_3
        0x21601225 -> :sswitch_2
        0x2161261c -> :sswitch_1
        0x2161261d -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 169
    :try_start_0
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 170
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/intelligent/CarDrivingScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarDrivingScene;
    throw v0
.end method


# virtual methods
.method public init(Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    .line 138
    const-string v0, "persist.sys.xiaopeng.AVM"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsAVMSupport:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsAVMSupport:Z

    if-nez v0, :cond_1

    .line 140
    const-string v0, "CarDrivingScene"

    const-string v1, "init: cannot support AVM, cannot run CarDrivingScene!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 143
    :cond_1
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 144
    const-string v0, "Q1"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Q2"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Q3"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Q5"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Q6"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Q3A"

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mCDUType:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mIsNEDCBlock:Z

    .line 152
    const-string v0, "CarDrivingScene"

    const-string v1, "init: nedc cannot block CarDrivingScene!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.car.VALUE_USER_SWITCH_CAR_DRIVING_SCENE_NRA_LEVEL"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "level":I
    invoke-virtual {p0, v0}, Lcom/android/car/intelligent/CarDrivingScene;->setCarDrivingSceneNRALevel(I)V

    .line 157
    invoke-direct {p0}, Lcom/android/car/intelligent/CarDrivingScene;->subscribeToProperties()V

    .line 158
    iput-object p1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    .line 159
    return-void
.end method

.method public injectCarSceneCalibrationData([F[F)V
    .locals 5
    .param p1, "front"    # [F
    .param p2, "rear"    # [F

    .line 196
    const-string v0, "CarDrivingScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectCarSceneCalibrationData: front:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-ne v0, v1, :cond_2

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 199
    aget v2, p1, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    aget v4, p1, v0

    aput v4, v2, v0

    .line 202
    :cond_0
    aget v2, p2, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    aget v3, p1, v0

    aput v3, v2, v0

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public release()V
    .locals 6

    .line 162
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 163
    .local v3, "property":I
    iget-object v4, p0, Lcom/android/car/intelligent/CarDrivingScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/intelligent/CarDrivingScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 162
    .end local v3    # "property":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    .line 166
    return-void
.end method

.method public setCarDrivingSceneNRALevel(I)V
    .locals 3
    .param p1, "level"    # I

    .line 175
    iput p1, p0, Lcom/android/car/intelligent/CarDrivingScene;->mLevel:I

    .line 176
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront3:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    .line 189
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear3:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront2:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    .line 185
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear2:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    .line 186
    goto :goto_0

    .line 180
    :pswitch_2
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationFront1:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    .line 181
    sget-object v0, Lcom/android/car/intelligent/CarDrivingScene;->sRadarCalibrationRear1:[F

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    .line 182
    goto :goto_0

    .line 178
    :pswitch_3
    nop

    .line 192
    :goto_0
    const-string v0, "CarDrivingScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarDrivingSceneNRALevel: level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " front:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationFront:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarDrivingScene;->mRadarCalibrationRear:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MOVE_DELTA:I = 0x1e

.field private static final MSG_CONFIG_UPDATED:I = 0x14

.field private static final MSG_CONGIFS_CHANGED:I = 0x13

.field private static final MSG_JOYSTICK_MOTION_EVENT:I = 0x12

.field private static final MSG_KEY_EVENT:I = 0x11

.field private static final TAG:Ljava/lang/String; = "EventProcessor"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;


# instance fields
.field private mCurrentAppKeyArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentKeyConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPkgName:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private volatile mJoystickDowned:Z

.field private mJoystickEnable:Z

.field private mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

.field private mNaviRect:Landroid/graphics/Rect;

.field private mStringSparseArrayHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickDowned:Z

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mStringSparseArrayHashMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventProcessor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processKeyCodeInner(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processJoystickMotionEventInner(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processConfigsChanged(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processConfigUpdated(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .line 231
    nop

    .line 232
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 233
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v1

    .line 236
    .local v1, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    .line 238
    .local v2, "value":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 239
    return v2

    .line 242
    .end local v1    # "flat":F
    .end local v2    # "value":F
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .locals 2

    .line 77
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    return-object v0
.end method

.method private isDirectionKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 405
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 406
    .local v0, "keycode":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private mockDirectionTouchEvent(Landroid/graphics/Point;Landroid/view/KeyEvent;)V
    .locals 17
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 347
    move-object/from16 v2, p2

    const-string v3, "EventProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mockDirectionTouchEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 349
    .local v3, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 350
    .local v4, "action":I
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getMoveDeltaValue(Landroid/view/KeyEvent;)[I

    move-result-object v5

    .line 351
    .local v5, "deltas":[I
    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 352
    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 353
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    iget v14, v1, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget v15, v1, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 353
    invoke-virtual {v8, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 357
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    iget v14, v1, Landroid/graphics/Point;->x:I

    aget v7, v5, v7

    add-int/2addr v14, v7

    int-to-float v14, v14

    iget v7, v1, Landroid/graphics/Point;->y:I

    aget v6, v5, v6

    add-int/2addr v7, v6

    int-to-float v15, v7

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 357
    invoke-virtual {v8, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 361
    :cond_0
    if-lez v3, :cond_2

    .line 362
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    iget v14, v1, Landroid/graphics/Point;->x:I

    aget v7, v5, v7

    add-int/2addr v14, v7

    int-to-float v14, v14

    iget v7, v1, Landroid/graphics/Point;->y:I

    aget v6, v5, v6

    add-int/2addr v7, v6

    int-to-float v15, v7

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 362
    invoke-virtual {v8, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :cond_1
    if-ne v4, v6, :cond_2

    .line 368
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    iget v12, v1, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v1, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    .line 368
    invoke-virtual {v6, v7}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 373
    :cond_2
    :goto_0
    return-void
.end method

.method private mockNormalTouchEvent(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v5

    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v5

    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v5

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 344
    return-void
.end method

.method private mockTouchEvent(Landroid/graphics/Point;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 328
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->isDirectionKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mockDirectionTouchEvent(Landroid/graphics/Point;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mockNormalTouchEvent(Landroid/graphics/Point;)V

    .line 333
    :goto_0
    return-void
.end method

.method private mockTouchEventWithAxis(FF)V
    .locals 21
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 263
    move/from16 v3, p2

    const-string v0, "EventProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mockTouchEventWithAxis axisX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " &axisY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 268
    .local v4, "width":I
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 269
    .local v5, "height":I
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 270
    .local v6, "centerX":I
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 271
    .local v7, "centerY":I
    int-to-float v0, v4

    mul-float/2addr v0, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    float-to-int v9, v0

    .line 272
    .local v9, "deltaX":I
    int-to-float v0, v5

    mul-float/2addr v0, v3

    div-float/2addr v0, v8

    float-to-int v8, v0

    .line 273
    .local v8, "deltaY":I
    add-int v10, v6, v9

    .line 274
    .local v10, "motionX":I
    add-int v0, v7, v8

    move v11, v0

    .line 276
    .local v11, "motionY":I
    const/4 v0, 0x0

    cmpl-float v12, v2, v0

    if-nez v12, :cond_1

    cmpl-float v0, v2, v0

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickDowned:Z

    .line 278
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0x1

    int-to-float v2, v10

    int-to-float v3, v11

    const/16 v19, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 283
    :cond_1
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickDowned:Z

    if-nez v0, :cond_2

    .line 284
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    add-int v2, v6, v9

    int-to-float v2, v2

    add-int v3, v7, v8

    int-to-float v3, v3

    const/16 v19, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickDowned:Z

    .line 290
    :cond_2
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0x2

    int-to-float v2, v10

    int-to-float v3, v11

    const/16 v19, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 290
    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EventProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mockTouchEventWithAxis exception:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private postMultiTouch(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 26
    .param p1, "first"    # Landroid/graphics/Point;
    .param p2, "second"    # Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 300
    move-object/from16 v2, p2

    const/4 v3, 0x2

    new-array v15, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 301
    .local v15, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object v14, v4

    .line 302
    .local v14, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 303
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 304
    const/16 v19, 0x0

    aput-object v14, v15, v19

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v13, 0x1

    new-array v10, v13, [I

    aput v19, v10, v19

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v11, v15

    move v3, v13

    move/from16 v13, v16

    move-object/from16 v24, v14

    move/from16 v14, v17

    .end local v14    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    .local v24, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v25, v15

    move/from16 v15, v18

    .end local v15    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .local v25, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-static/range {v4 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 307
    .local v15, "event":Landroid/view/MotionEvent;
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v15}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 309
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object v14, v4

    .line 310
    .end local v24    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v14    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 311
    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 312
    aput-object v14, v25, v3

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x2

    new-array v10, v8, [I

    fill-array-data v10, :array_0

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v25

    move-object/from16 v22, v14

    move/from16 v14, v16

    .end local v14    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    .local v22, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v23, v15

    move/from16 v15, v17

    .end local v15    # "event":Landroid/view/MotionEvent;
    .local v23, "event":Landroid/view/MotionEvent;
    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-static/range {v4 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 315
    .end local v23    # "event":Landroid/view/MotionEvent;
    .restart local v15    # "event":Landroid/view/MotionEvent;
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v15}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 317
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v20

    .line 318
    .local v20, "delta":I
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object v14, v4

    .line 319
    .end local v22    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v14    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    iget v4, v1, Landroid/graphics/Point;->x:I

    add-int v4, v4, v20

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 320
    iget v4, v1, Landroid/graphics/Point;->y:I

    add-int v4, v4, v20

    int-to-float v4, v4

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 321
    aput-object v14, v25, v19

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    new-array v10, v3, [I

    aput v19, v10, v19

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v14

    move v14, v3

    .end local v14    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    .local v21, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    move-object v3, v15

    move/from16 v15, v16

    .end local v15    # "event":Landroid/view/MotionEvent;
    .local v3, "event":Landroid/view/MotionEvent;
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-static/range {v4 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 324
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 325
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private processConfigUpdated(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 5
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 114
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/util/ParserUtil;->parseKeyConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;

    move-result-object v0

    .line 115
    .local v0, "eventMap":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->getNaviTouchArea()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->getSelectKeyMap()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentKeyConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 118
    .local v2, "config":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    .line 120
    const/4 v3, 0x1

    iput v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    goto :goto_1

    .line 122
    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 124
    :goto_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->saveConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 125
    .end local v2    # "config":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method private processConfigsChanged(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;)V
    .locals 5
    .param p1, "keyConfigsWrapper"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;

    .line 155
    const-string v0, "EventProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processConfigsChanged mCurrentPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  &configPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentPkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mKeyConfigs:Ljava/util/List;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentKeyConfigs:Ljava/util/List;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "selectConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mKeyConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 160
    .local v2, "config":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    iget v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 161
    move-object v0, v2

    .line 162
    goto :goto_1

    .line 164
    .end local v2    # "config":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mKeyConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 166
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mKeyConfigs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 168
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processKeyConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 170
    .end local v0    # "selectConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :cond_3
    return-void
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 209
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 213
    .local v1, "x":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    .line 214
    const/16 v3, 0xf

    invoke-static {p1, v0, v3, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 216
    :cond_1
    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    .line 217
    const/16 v3, 0xb

    invoke-static {p1, v0, v3, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v1

    .line 219
    :cond_2
    const/4 v3, 0x1

    invoke-static {p1, v0, v3, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 220
    .local v3, "y":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_3

    .line 221
    const/16 v4, 0x10

    invoke-static {p1, v0, v4, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 223
    :cond_3
    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    .line 224
    const/16 v2, 0xe

    invoke-static {p1, v0, v2, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 226
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mockTouchEventWithAxis(FF)V

    .line 227
    return-void
.end method

.method private processJoystickMotionEventAxis(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 189
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 191
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 192
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 197
    .end local v0    # "id":I
    .end local v2    # "historySize":I
    :cond_1
    return-void
.end method

.method private processJoystickMotionEventInner(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 246
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->processJoystickMotionEventAxis(Landroid/view/MotionEvent;)V

    .line 247
    return-void
.end method

.method private processKeyCodeInner(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 252
    .local v0, "point":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mockTouchEvent(Landroid/graphics/Point;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 255
    :cond_0
    const-string v1, "EventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the point is null with keycode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0    # "point":Landroid/graphics/Point;
    :goto_0
    goto :goto_1

    .line 258
    :cond_1
    const-string v0, "EventProcessor"

    const-string v1, "mCurrentAppKeyArray is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_1
    return-void
.end method

.method private processKeyConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 4
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/util/ParserUtil;->parseKeyConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;

    move-result-object v0

    .line 175
    .local v0, "eventMap":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->getNaviTouchArea()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->getSelectKeyMap()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    .line 177
    const-string v1, "EventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processKeyEvent mNaviRect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mNaviRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &mCurrentAppKeyArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentAppKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "eventMap":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentKeyConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentKeyConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getMoveDeltaValue(Landroid/view/KeyEvent;)[I
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 376
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 377
    .local v0, "deltas":[I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, -0x1e

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0
    aput v3, v0, v5

    .line 385
    aput v5, v0, v4

    .line 386
    goto :goto_0

    .line 379
    :pswitch_1
    aput v2, v0, v5

    .line 380
    aput v5, v0, v4

    .line 381
    goto :goto_0

    .line 394
    :pswitch_2
    aput v5, v0, v5

    .line 395
    aput v3, v0, v4

    .line 396
    goto :goto_0

    .line 389
    :pswitch_3
    aput v5, v0, v5

    .line 390
    aput v2, v0, v4

    .line 391
    nop

    .line 401
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isJoystickEnable()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickEnable:Z

    return v0
.end method

.method public onOctopusAppEnter(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 92
    const-string v0, "EventProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOctopusAppEnter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mCurrentPkgName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getKeyConfigs(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onUserUpdateConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 2
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method

.method public processJoystickMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 144
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->isDirectionKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const-string v0, "EventProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->isDirectionKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    return-void

    .line 136
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 139
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method public setJoystickEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mJoystickEnable:Z

    .line 428
    return-void
.end method

.method public setupConfigManager(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;)V
    .locals 0
    .param p1, "configManager"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->mKeyConfigManager:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    .line 89
    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;
.super Ljava/lang/Object;
.source "InputEventUtil.java"


# static fields
.field public static final INPUT_EVENT_DELAY:J = 0x32L

.field public static final INPUT_EVENT_SHORT_INTERVAL:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "InputEventUtil"

.field private static mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Instrumentation;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public static dispatchJoystickMotionEvent(FF)V
    .locals 22
    .param p0, "axisX"    # F
    .param p1, "axisY"    # F

    .line 129
    const/4 v0, 0x1

    new-array v15, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 130
    .local v15, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v14, 0x0

    aput-object v1, v15, v14

    .line 131
    aget-object v1, v15, v14

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 132
    aget-object v1, v15, v14

    iput v14, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 133
    new-array v13, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 134
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v13, v14

    .line 135
    aget-object v1, v13, v14

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 136
    aget-object v1, v13, v14

    move/from16 v12, p0

    invoke-virtual {v1, v14, v12}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 137
    aget-object v1, v13, v14

    move/from16 v11, p1

    invoke-virtual {v1, v0, v11}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x1000010

    const/16 v20, 0x0

    move-object v7, v15

    move-object v8, v13

    move v11, v0

    move/from16 v12, v16

    move-object v0, v13

    move/from16 v13, v17

    .end local v13    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v0, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v14, v18

    move-object/from16 v17, v15

    move/from16 v15, v19

    .end local v15    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .local v17, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move/from16 v16, v20

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 140
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 141
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 142
    return-void
.end method

.method public static dispatchKey(I)V
    .locals 3
    .param p0, "keyCode"    # I

    .line 26
    const-string v0, "InputEventUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->sendDownAndUpKeyEvents(II)V

    .line 28
    return-void
.end method

.method public static dispatchKey(II)V
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "displayId"    # I

    .line 31
    const-string v0, "InputEventUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->sendDownAndUpKeyEvents(II)V

    .line 33
    return-void
.end method

.method public static dispatchMotionEvent(FF)V
    .locals 22
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 101
    .local v14, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 103
    .local v16, "eventTime":J
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v0, v14

    move-wide/from16 v2, v16

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v10, p0

    move/from16 v11, p1

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v13

    .line 104
    .local v13, "eventDown":Landroid/view/MotionEvent;
    const v12, 0x1000010

    invoke-virtual {v13, v12}, Landroid/view/MotionEvent;->setSource(I)V

    .line 105
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v13, v11}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 106
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 109
    const/4 v4, 0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-wide v0, v14

    move-wide/from16 v2, v16

    move/from16 v11, p1

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v19

    .end local v13    # "eventDown":Landroid/view/MotionEvent;
    .local v18, "eventDown":Landroid/view/MotionEvent;
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v13

    .line 110
    .local v13, "eventMove":Landroid/view/MotionEvent;
    const v12, 0x1000010

    invoke-virtual {v13, v12}, Landroid/view/MotionEvent;->setSource(I)V

    .line 111
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v13, v11}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 112
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 115
    const/4 v4, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-wide v0, v14

    move-wide/from16 v2, v16

    move/from16 v11, p1

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v20

    .end local v13    # "eventMove":Landroid/view/MotionEvent;
    .local v19, "eventMove":Landroid/view/MotionEvent;
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 116
    .local v0, "eventUp":Landroid/view/MotionEvent;
    const v1, 0x1000010

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 117
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 118
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 119
    return-void
.end method

.method public static dispatchTouchEvent(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public static sendCarHomeKeyEvent(I)V
    .locals 32
    .param p0, "displayId"    # I

    .line 36
    move/from16 v0, p0

    const-string v1, "InputEventUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCarHomeKeyEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/xiaopeng/input/xpInputManager;->setInputPolicy(I)V

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 41
    .local v15, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long v30, v1, v3

    .line 42
    .local v30, "upTime":J
    const/4 v1, 0x0

    .line 43
    .local v1, "keyCode":I
    if-nez v0, :cond_1

    const/4 v2, -0x2

    :goto_0
    move v11, v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x3

    goto :goto_0

    .line 45
    .local v11, "deviceId":I
    :goto_1
    new-instance v17, Landroid/view/KeyEvent;

    const-wide/16 v18, 0x32

    add-long v5, v15, v18

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x40

    const/16 v14, 0x101

    move-object/from16 v2, v17

    move-wide v3, v15

    move v8, v1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 47
    .local v2, "downEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 49
    new-instance v3, Landroid/view/KeyEvent;

    add-long v20, v30, v18

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x40

    const/16 v29, 0x101

    move-object/from16 v17, v3

    move-wide/from16 v18, v30

    move/from16 v23, v1

    move/from16 v26, v11

    invoke-direct/range {v17 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 51
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 53
    return-void
.end method

.method private static sendDownAndUpKeyEvents(II)V
    .locals 21
    .param p0, "keyCode"    # I
    .param p1, "displayId"    # I

    .line 57
    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 58
    .local v15, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x40

    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v2, v15

    move-wide v4, v15

    move/from16 v7, p0

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 61
    .local v14, "down":Landroid/view/KeyEvent;
    invoke-virtual {v14, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 62
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v14, v13}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 64
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 68
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 73
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 74
    .local v17, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x40

    const/16 v0, 0x101

    const/16 v19, 0x0

    move-wide v2, v15

    move-wide/from16 v4, v17

    move/from16 v7, p0

    move v13, v0

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    .end local v14    # "down":Landroid/view/KeyEvent;
    .local v20, "down":Landroid/view/KeyEvent;
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 77
    .local v0, "up":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 78
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 80
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 81
    return-void
.end method

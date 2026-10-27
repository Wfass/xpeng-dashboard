.class public Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
.super Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.source "XAppGameModeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppGameModeEngine"


# instance fields
.field private isUserSelectWheelControl:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field mCarEpsSteerEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

.field private mCarKeyControlEnable:Z

.field mGameControlListener:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

.field private mGameHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;

.field private mGameModeEnable:Z

.field mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

.field private volatile mKeyMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyNameCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mKeyPointMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPackagePidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSteeringWheelControlEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyPointMaps:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isUserSelectWheelControl:Z

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mSteeringWheelControlEnable:Z

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarKeyControlEnable:Z

    .line 336
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    .line 344
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarEpsSteerEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    .line 352
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameControlListener:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->initKeyNameCodeMap()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->handleEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->notifyKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->notifyEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isUserSelectWheelControl:Z

    return p1
.end method

.method private getKeyCodeFromString(Ljava/lang/String;)I
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 160
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 312
    const/4 v0, -0x1

    .line 313
    .local v0, "pid":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mActivityManager:Landroid/app/ActivityManager;

    .line 314
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 316
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 318
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPointFromArrayString(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "newValue":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "array":[Ljava/lang/String;
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private handleEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 11
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 290
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 291
    .local v0, "angle":F
    sget v1, Lcom/xiaopeng/xuiservice/xapp/Config;->GAME_ANGLE_M:I

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v1, v2

    .line 293
    .end local v0    # "angle":F
    .local v1, "angle":F
    const v0, 0x3a83126f    # 0.001f

    .line 294
    .local v0, "x":F
    const v3, 0x3a83126f    # 0.001f

    .line 295
    .local v3, "y":F
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getEpsType()I

    move-result v4

    .line 296
    .local v4, "epsType":I
    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    if-nez v4, :cond_0

    .line 297
    add-float/2addr v2, v1

    float-to-double v9, v2

    mul-double/2addr v9, v7

    div-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    goto :goto_0

    .line 298
    :cond_0
    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    .line 299
    float-to-double v9, v1

    mul-double/2addr v9, v7

    div-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 301
    :cond_1
    :goto_0
    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchMotionEvent(FF)V

    .line 302
    const-string v2, "XAppGameModeEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMotionEvent angle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "x":F
    .end local v3    # "y":F
    .end local v4    # "epsType":I
    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    .line 305
    :goto_1
    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 229
    const-string v0, "XAppGameModeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old keyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 236
    .local v0, "oldCode":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isDownAction(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyPointMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyPointMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 239
    .local v1, "point":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchTouchEvent(II)V

    .line 240
    .end local v1    # "point":Landroid/graphics/Point;
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 242
    .local v1, "newCode":I
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 243
    const-string v2, "XAppGameModeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new tranKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v1    # "newCode":I
    :cond_2
    :goto_0
    return-void
.end method

.method private initKeyNameCodeMap()V
    .locals 3

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_ICM_UP"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_ICM_DOWN"

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_ICM_LEFT"

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_ICM_RIGHT"

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_CAR_VOLUME_UP"

    const/16 v2, 0x3f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_CAR_VOLUME_DOWN"

    const/16 v2, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_CAR_MEDIA_PREVIOUS"

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyNameCodeMap:Ljava/util/Map;

    const-string v1, "KEYCODE_CAR_MEDIA_NEXT"

    const/16 v2, 0x3f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private isCarKeyControlEnable()Z
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    return v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->executeMode:I

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1
.end method

.method private isDownAction(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 249
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHasKeyMap(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyPointMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

.method private isNeedEpsEvent()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mSteeringWheelControlEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isUserSelectWheelControl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 221
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarKeyControlEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isUserSelectWheelControl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isHasKeyMap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNewApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, "mLastPid":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->getPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "mCurrentPid":Ljava/lang/String;
    const-string v2, "XAppGameModeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mLastPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &mCurrentPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const/4 v2, 0x0

    return v2

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mLastPackagePidMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const/4 v2, 0x1

    return v2
.end method

.method private isSteeringWheelControlEnable()Z
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->executeMode:I

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1
.end method

.method private isSupportFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadKeyMaps()V
    .locals 7

    .line 139
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarKeyControlEnable:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->keyEvent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->keyEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 143
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, "keyName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "mapCode":Ljava/lang/String;
    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyPointMaps:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->getKeyCodeFromString(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 147
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->getPointFromArrayString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .line 146
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyMaps:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->getKeyCodeFromString(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "mapCode":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 154
    .end local v0    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private notifyEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isNeedEpsEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 278
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 279
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 280
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private notifyKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 212
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isNeedKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 214
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setInputDispatchMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 308
    invoke-static {p1}, Lcom/xiaopeng/app/xpPackageInfo;->setXpGameModeEnable(Z)V

    .line 309
    return-void
.end method

.method private setupEventListener()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameControlListener:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->addControlChangedListener(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameControlListener:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->removeControlChangedListener(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;)V

    .line 126
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mSteeringWheelControlEnable:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarEpsSteerEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->addEpsSteerEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarEpsSteerEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeEpsSteerEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;)V

    .line 131
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarKeyControlEnable:Z

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->addKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V

    goto :goto_2

    .line 134
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V

    .line 136
    :goto_2
    return-void
.end method

.method private setupInputEventMode()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/Global;->setGameModeEnable(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->setInputDispatchMode(Z)V

    .line 108
    return-void
.end method

.method private showGamePrompt()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isNewApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showGameDialog(Lcom/xiaopeng/app/xpPackageInfo;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissGameDialog()V

    .line 118
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized handleAppInfoChange()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isCurrentModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mGameModeEnable:Z

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isSteeringWheelControlEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mSteeringWheelControlEnable:Z

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isCarKeyControlEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarKeyControlEnable:Z

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->isWSControlEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isUserSelectWheelControl:Z

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->setupEventListener()V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->setupInputEventMode()V

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->showGamePrompt()V

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->loadKeyMaps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
    throw v0
.end method

.method protected handleEnableChange()V
    .locals 0

    .line 209
    return-void
.end method

.method protected initCarListener()V
    .locals 0

    .line 269
    return-void
.end method

.method protected isCurrentModeEnable()Z
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->executeMode:I

    if-ne v0, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    .line 174
    :cond_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isSupportFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 175
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->isSupportFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    move v1, v3

    goto :goto_0

    .line 175
    :cond_2
    nop

    .line 174
    :goto_0
    return v1

    .line 177
    :cond_3
    return v1
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 273
    const-string v0, "XAppGameModeEngine"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 258
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 262
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mCarEpsSteerEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeEpsSteerEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;)V

    .line 263
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->mKeyEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->removeKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V

    .line 264
    return-void
.end method

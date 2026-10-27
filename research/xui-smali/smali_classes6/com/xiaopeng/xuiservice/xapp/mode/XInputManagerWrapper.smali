.class public Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
.super Ljava/lang/Object;
.source "XInputManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;,
        Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;,
        Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;,
        Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPMotionListener;,
        Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XInputManagerWrapper"

.field private static volatile sXInputManagerWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;


# instance fields
.field private mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

.field private mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 30
    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->notifyKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->notifyEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->notifyJoystickMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->sXInputManagerWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->sXInputManagerWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->sXInputManagerWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->sXInputManagerWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    return-object v0
.end method

.method private notifyEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    .line 125
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;->onEpsSteerEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 126
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;
    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method private notifyJoystickMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    .line 116
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 117
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;
    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method private notifyKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    .line 107
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 108
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public addEpsSteerEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    return-void
.end method

.method public addKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    .line 63
    const-string v0, "XInputManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addKeyEventListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPKeyListener;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;)V

    const-string/jumbo v2, "xp.key.gamemode.flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/input/InputManager;->registerListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;Z)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    return-void
.end method

.method public addMotionEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPMotionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$XPMotionListener;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;)V

    const-string/jumbo v2, "xp.key.gamemode.flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/input/InputManager;->registerMotionListener(Lcom/xiaopeng/IXPMotionListener;Ljava/lang/String;Z)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method

.method public removeEpsSteerEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$CarEpsSteerEventListener;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsSteerEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 100
    :cond_1
    return-void
.end method

.method public removeKeyEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;

    .line 74
    const-string v0, "XInputManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeKeyEventListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 81
    return-void
.end method

.method public removeMotionEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$MotionEventListener;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->mMotionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 60
    return-void
.end method

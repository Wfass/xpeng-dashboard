.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;
.super Ljava/lang/Object;
.source "SyntheticJoystickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;,
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SyntheticJoystickHandler"

.field private static volatile mSyntheticJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

.field private mOnJoystickNavigationEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JoystickHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mOnJoystickNavigationEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;
    .locals 2

    .line 37
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mSyntheticJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mSyntheticJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mSyntheticJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;

    return-object v0

    .line 41
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public processMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 50
    const-string v0, "SyntheticJoystickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mJoystickHandler:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$JoystickHandler;->process(Landroid/view/MotionEvent;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setJoystickNavigationEventListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler;->mOnJoystickNavigationEventListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/SyntheticJoystickHandler$OnJoystickNavigationEvent;

    .line 47
    return-void
.end method

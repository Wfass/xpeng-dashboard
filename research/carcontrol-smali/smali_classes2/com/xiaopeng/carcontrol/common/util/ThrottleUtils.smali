.class public Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;
.super Ljava/lang/Object;
.source "ThrottleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;,
        Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THROTTLE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ThrottleUtils"


# instance fields
.field private callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isAllowedLog:Z

.field private isThrottling:Z

.field private lastProgress:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private throttleDelay:I

.field private throttleRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(ILcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throttleDelay",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isThrottling:Z

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->isAllowedLog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isAllowedLog:Z

    .line 54
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;-><init>(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleRunnable:Ljava/lang/Runnable;

    .line 22
    iput p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleDelay:I

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(ILcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;-><init>(ILcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isAllowedLog:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;)Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isThrottling:Z

    return p1
.end method

.method private startThrottling()V
    .locals 4

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isAllowedLog:Z

    if-eqz v0, :cond_0

    const-string v0, "ThrottleUtils"

    const-string/jumbo v1, "startThrottling: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public interruptRequest()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isAllowedLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptRequest: onSendRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThrottleUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->throttleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isThrottling:Z

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;->onSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public sendRequest(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isAllowedLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThrottleUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->lastProgress:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isThrottling:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->isThrottling:Z

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;->startThrottling()V

    :cond_1
    return-void
.end method

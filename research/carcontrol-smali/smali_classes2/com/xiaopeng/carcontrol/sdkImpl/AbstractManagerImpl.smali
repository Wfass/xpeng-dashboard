.class public abstract Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.super Ljava/lang/Object;
.source "AbstractManagerImpl.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile isInit:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->isInit:Z

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->init()V

    return-void
.end method

.method private final init()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->initInternal()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->isInit:Z

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->observeData()V

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setLiveDataObserver$0(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected abstract initInternal()V
.end method

.method protected abstract observeData()V
.end method

.method protected final setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

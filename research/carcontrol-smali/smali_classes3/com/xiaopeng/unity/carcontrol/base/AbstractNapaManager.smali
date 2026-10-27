.class public abstract Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.super Ljava/lang/Object;
.source "AbstractNapaManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Lcom/xiaopeng/unity/carcontrol/base/INapaListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/unity/carcontrol/base/INapaManager<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile isInit:Z

.field protected mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->isInit:Z

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->init()V

    return-void
.end method

.method static synthetic lambda$setLiveDataObserver$1(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
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

    .line 41
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected final callback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "params"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dataLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    return-void
.end method

.method public final init()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$AbstractNapaManager$__jGQPOmlyqchEo_ZrGd7R6KP64;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$AbstractNapaManager$__jGQPOmlyqchEo_ZrGd7R6KP64;-><init>(Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract initInternal()V
.end method

.method public synthetic lambda$init$0$AbstractNapaManager()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->TAG:Ljava/lang/String;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->initInternal()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->isInit:Z

    .line 30
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$xe5G7W2v2nubat74kYqxfyTJcgI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$xe5G7W2v2nubat74kYqxfyTJcgI;-><init>(Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->TAG:Ljava/lang/String;

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract observeData()V
.end method

.method public final onCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->isInit:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->TAG:Ljava/lang/String;

    const-string p2, "onCall failed without init"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dataLog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "enterScene"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "exitScene"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 79
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->dataLog(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->enterScene(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->exitScene(Ljava/lang/String;)V

    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52528df2 -> :sswitch_2
        -0x3178576c -> :sswitch_1
        0x5605233a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation
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

    .line 41
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$AbstractNapaManager$wYfOK17X0eXAQJDPLwFaFFntxGI;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$AbstractNapaManager$wYfOK17X0eXAQJDPLwFaFFntxGI;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    :cond_0
    return-void
.end method

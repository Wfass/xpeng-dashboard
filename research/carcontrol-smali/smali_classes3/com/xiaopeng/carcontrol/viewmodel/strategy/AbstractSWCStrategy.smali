.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;
.super Ljava/lang/Object;
.source "AbstractSWCStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;,
        Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;
    }
.end annotation


# static fields
.field private static final FLAG_ENTER:I = 0x1

.field private static final FLAG_EXIT:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;",
            "Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayResetUserControlTask:Ljava/lang/Runnable;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mUserControlListener:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$1EGCqKXEtqrpNE4wWX4Ntx2NgE4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$1EGCqKXEtqrpNE4wWX4Ntx2NgE4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mDelayResetUserControlTask:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->exitScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mDelayResetUserControlTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancelOppositeTask(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->opposite()Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->stop()V

    :cond_1
    return-void
.end method

.method private checkSameSideTaskRunning(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v2

    if-eq v2, p1, :cond_1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSameSideTaskRunning target direction:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", running direction:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private handleDownKeyEvent(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownKeyEvent::keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    return v2

    .line 81
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 72
    :pswitch_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 69
    :pswitch_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 66
    :pswitch_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 63
    :pswitch_6
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x4c4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUpKeyEvent(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpKeyEvent::keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch p1, :pswitch_data_0

    return v2

    .line 114
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 105
    :pswitch_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 102
    :pswitch_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 99
    :pswitch_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 96
    :pswitch_6
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 93
    :pswitch_7
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x4c4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$1EGCqKXEtqrpNE4wWX4Ntx2NgE4(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->resetUserControlFlag()V

    return-void
.end method

.method static synthetic lambda$cancel$0(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "direction",
            "task"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->stop()V

    :cond_0
    return-void
.end method

.method private resetUserControlFlag()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    .line 200
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->updateUserControlFlag(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method protected cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", task="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->stop()V

    :cond_0
    return-void
.end method

.method protected control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->cancelOppositeTask(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->checkSameSideTaskRunning(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "control direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->newSession()V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final enterScene()V
    .locals 3

    .line 219
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->getScene()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 219
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final exitScene()V
    .locals 3

    .line 224
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->getScene()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 224
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected abstract getScene()Ljava/lang/String;
.end method

.method public onKey(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->handleDownKeyEvent(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->handleUpKeyEvent(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onPendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const-wide/16 v0, 0x32

    .line 185
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->TAG:Ljava/lang/String;

    const-string v1, "onPendingHoldOn"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract pendingControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method protected final pendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->onPendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method public final setUserControlListener(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mUserControlListener:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->updateUserControlFlag(Z)V

    return-void
.end method

.method protected abstract startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method protected abstract stopControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method protected updateUserControlFlag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mUserControlListener:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;->onUserControl(Z)V

    :cond_0
    return-void
.end method

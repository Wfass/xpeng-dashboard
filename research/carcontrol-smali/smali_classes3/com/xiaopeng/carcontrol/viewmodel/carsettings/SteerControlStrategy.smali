.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;
.super Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;
.source "SteerControlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;
    }
.end annotation


# static fields
.field private static final STEER_CONTROL_INTERVAL:J = 0x32L

.field private static final STEER_CONTROL_MAX_TIMES:I = 0x5

.field private static final STEER_CONTROL_TIMES:I = 0x2


# instance fields
.field private final isSupportSTWVR:Z

.field private final mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$yVr9vwazwSOBrxgKry9btAyYFpY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$yVr9vwazwSOBrxgKry9btAyYFpY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string v0, "isSupportSTWVR"

    .line 31
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->isSupportSTWVR:Z

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->pendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->pendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic lambda$cancelControl$0(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "direction",
            "controlTask"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->stop()V

    return-void
.end method

.method public static synthetic lambda$yVr9vwazwSOBrxgKry9btAyYFpY(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->resetUserControlFlag()V

    return-void
.end method

.method private realControl(ILcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readControl---->controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p2, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlVerSteer(II)V

    goto :goto_1

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p2, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlInOutSteer(II)V

    :goto_1
    return-void
.end method

.method private resetUserControlFlag()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;

    .line 161
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->updateUserControlFlag(Z)V

    :cond_2
    return-void
.end method

.method private stopTask(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;

    .line 137
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 138
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->stop()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->stop()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public cancelControl()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method protected getScene()Ljava/lang/String;
    .locals 1

    const-string v0, "key_xp_steering_flag"

    return-object v0
.end method

.method public onSteerControl(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSteerControl keyCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    goto :goto_0

    .line 99
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    goto :goto_0

    .line 96
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    goto :goto_0

    .line 93
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    :goto_0
    if-eqz p1, :cond_8

    .line 108
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->isSupportSTWVR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->updateUserControlFlag(Z)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;

    if-nez v0, :cond_5

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->stopTask(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 116
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->setRunning()V

    .line 118
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mControlTaskCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isLooping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->increase()V

    goto :goto_1

    .line 123
    :cond_6
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 124
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->stopTask(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->setRunning()V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method protected pendingControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x2

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->realControl(ILcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method protected startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->realControl(ILcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method protected stopControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->realControl(ILcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void
.end method

.method protected updateUserControlFlag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUserControl"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;
.super Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;
.source "MirrorControlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;
    }
.end annotation


# static fields
.field private static final MIRROR_CONTROL_INTERVAL:J = 0x32L

.field private static final MIRROR_CONTROL_TIMES:I = 0x2

.field private static final MIRROR_SIDE_LEFT:I = 0x1

.field private static final MIRROR_SIDE_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MirrorControlStrategy"


# instance fields
.field private final isNewSteer:Z

.field private final isSupportSTWVR:Z

.field protected final mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

.field private final mMirrorAdjustHandler:Landroid/os/Handler;

.field private volatile mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

.field private final mTaskCacheOld:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;-><init>()V

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    .line 40
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    .line 365
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isNewSteerKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isNewSteer:Z

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isSupportSTWVR:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/util/SparseArray;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Z)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->updateUserControlFlag(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isNewSteer:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Z)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->updateUserControlFlag(Z)V

    return-void
.end method

.method private controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "controlType",
            "direction"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    const-string v2, "MirrorControlStrategy"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 385
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->toBcmDirection()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftMirrorMove(II)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->toBcmDirection()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightMirrorMove(II)V

    .line 389
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isNewSteer:Z

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x32

    .line 390
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 393
    invoke-static {v2, p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    .line 378
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "controlMirrorMove: can not control mirror when "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    .line 379
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 378
    invoke-static {v2, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private convertDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 239
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p1

    .line 236
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p1

    .line 233
    :pswitch_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p1

    .line 230
    :pswitch_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private convertImsDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x3

    return p1
.end method

.method private handleHorKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->cancel(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleImsVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->convertImsDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->convertImsDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsVisionCtrl(II)V

    :cond_1
    return-void
.end method

.method private handleOldDownKeyEvent(II)Z
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 170
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOldDownKeyEvent::keyCode = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MirrorControlStrategy"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    return v0

    .line 218
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 209
    :pswitch_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 206
    :pswitch_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 203
    :pswitch_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 200
    :pswitch_6
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 197
    :pswitch_7
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 194
    :pswitch_8
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 191
    :pswitch_9
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 188
    :pswitch_a
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 185
    :pswitch_b
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 182
    :pswitch_c
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 179
    :pswitch_d
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 176
    :pswitch_e
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    goto :goto_0

    .line 173
    :pswitch_f
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {p0, p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    :goto_0
    return p2

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3fc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x407
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    if-eqz p2, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->updateUserControlFlag(Z)V

    return-void
.end method


# virtual methods
.method protected control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Reversing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->Recovering:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->control(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    return-void

    .line 53
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "control: can not control mirror when "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    .line 54
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MirrorControlStrategy"

    .line 53
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "direction",
            "isLongControl"
        }
    .end annotation

    const-string v0, "MirrorControlStrategy"

    if-nez p2, :cond_0

    const-string p1, "controlMirrorMoveOld: direction is null"

    .line 323
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 327
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "left"

    const-string v8, "right"

    if-eqz p1, :cond_2

    move-object v9, v7

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    const/4 v10, 0x0

    aput-object v9, v6, v10

    aput-object p2, v6, v2

    .line 330
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v1

    const-string v9, "controlMirrorMoveOld: control mirror : side is %s, target direction is %s, long control is %s"

    .line 328
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v10}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v4, :cond_3

    .line 332
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;IZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    .line 333
    invoke-virtual {v0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->setLongControl(Z)V

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    new-array v6, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    move-object v9, v7

    goto :goto_2

    :cond_4
    move-object v9, v8

    :goto_2
    aput-object v9, v6, v10

    .line 339
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v1

    const-string v9, "controlMirrorMoveOld: control task existed: side is %s, current direction is %s, long control is %s"

    .line 337
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v10}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 340
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object v6

    if-ne v6, p2, :cond_5

    const-string p1, "controlMirrorMove: same direction, add pending time"

    .line 341
    invoke-static {v0, p1, v10}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    invoke-virtual {v4, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->setLongControl(Z)V

    .line 343
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->increase()V

    goto :goto_4

    :cond_5
    new-array v5, v5, [Ljava/lang/Object;

    .line 347
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v7, v8

    :goto_3
    aput-object v7, v5, v10

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "controlMirrorMoveOld: different direction, stop current task: side is %s, target direction is %s, long control is %s"

    .line 345
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;

    invoke-direct {v1, p0, v4, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;IZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    .line 356
    invoke-virtual {v0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->setLongControl(Z)V

    .line 357
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mTaskCacheOld:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    :goto_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mDelayResetUserControlTask:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->cancel()V

    .line 362
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->updateUserControlFlag(Z)V

    return-void
.end method

.method protected getScene()Ljava/lang/String;
    .locals 1

    const-string v0, "key_xp_mirror_flag"

    return-object v0
.end method

.method public synthetic lambda$controlMirrorMoveOld$0$MirrorControlStrategy(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "finalTask",
            "direction"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mMirrorAdjustHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Z

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
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

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isSupportSTWVR:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4c6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4c7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4ca

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4cb

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleHorKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleHorKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 88
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleHorKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 85
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleHorKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 106
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 103
    :cond_5
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 100
    :cond_6
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 97
    :cond_7
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 113
    :cond_8
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->isNewSteer:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->onKey(II)Z

    move-result p1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleOldDownKeyEvent(II)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public onKeyIms(II)Z
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

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 129
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleImsVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleImsVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 123
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleImsVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    goto :goto_0

    .line 120
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->handleImsVerKeyEvent(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected pendingControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->convertDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
.end method

.method protected startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->convertDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
.end method

.method protected stopControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->isLeft()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->convertDirection(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMove(ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
.end method

.method updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverseState"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReverseState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorControlStrategy"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->mReverseState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;

    return-void
.end method

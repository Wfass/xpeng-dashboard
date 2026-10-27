.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;
.super Ljava/lang/Object;
.source "MirrorBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;


# static fields
.field private static final RECOVER_MIRROR_SPEED_THRESHOLD:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "MirrorBaseViewModel"


# instance fields
.field final mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

.field protected final mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

.field private final mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

.field private final mMirrorAdjustHandler:Landroid/os/Handler;

.field private mMirrorFoldState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

.field private mShouldRecoverMirror:Z

.field private final mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMirrorFoldState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMirrorAdjustHandler:Landroid/os/Handler;

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mShouldRecoverMirror:Z

    .line 43
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    .line 173
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    .line 176
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v1, "xp_vcu"

    .line 178
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 180
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    .line 181
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    .line 183
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$XEZO-uP9ZlEXTICbqr8Jrbv8ztI;

    invoke-direct {v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$XEZO-uP9ZlEXTICbqr8Jrbv8ztI;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->setReverseStateListener(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;)V

    .line 184
    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$-FJZ_dnfSeXF2srCmEe5FCYy7o8;

    invoke-direct {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$-FJZ_dnfSeXF2srCmEe5FCYy7o8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->setUserControlListener(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    return-object p0
.end method


# virtual methods
.method public cancelAllControlMirror()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->cancel()V

    return-void
.end method

.method public cancelPendingTask()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->cancel()V

    return-void
.end method

.method public checkCurPos()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->checkCurPos()Z

    move-result v0

    return v0
.end method

.method public checkRecoverMirror(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-eq v0, v1, :cond_0

    const-string v0, "shouldRecoverMirror"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mShouldRecoverMirror:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const-string p1, "MirrorBaseViewModel"

    const-string v0, "Recover mirror position as speed > 10km/h"

    const/4 v1, 0x0

    .line 358
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->recoverMirror()V

    .line 360
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mShouldRecoverMirror:Z

    :cond_0
    return-void
.end method

.method public controlMirror(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isSupportFramelessMirror"

    if-eqz p1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->mirror_state_unable_with_running:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 201
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMirrorFoldState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    goto :goto_2

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlMirror(Z)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "foldMirror"

    goto :goto_0

    :cond_1
    const-string v2, "unfoldMirror"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "MirrorBaseViewModel"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    .line 209
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorBaseViewModel$JskBPZDVJdmLmp6jjJgBwFjARis;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorBaseViewModel$JskBPZDVJdmLmp6jjJgBwFjARis;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;Z)V

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->getMirrorWaitTimeout()J

    move-result-wide v1

    .line 209
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 216
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    const-string v1, "mirror_fold"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V
    .locals 1
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

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V

    return-void
.end method

.method protected convertMirrorOutputSt([I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 635
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 638
    aget v2, p1, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    aget v2, p1, v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    aget v0, p1, v0

    if-eq v0, v1, :cond_3

    aget p1, p1, v3

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 644
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p1

    .line 642
    :cond_3
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Unfolding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p1

    .line 639
    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Folding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p1

    .line 636
    :cond_5
    :goto_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    return-object p1
.end method

.method protected convertMirrorPosSt(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftState",
            "rightState"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p1

    .line 629
    :cond_2
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p1

    .line 626
    :cond_3
    :goto_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object p1
.end method

.method public enterScene()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->enterScene()V

    return-void
.end method

.method public exitScene()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->exitScene()V

    return-void
.end method

.method public getCmsAutoBrightSw()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsAutoBrightSw()Z

    move-result v0

    return v0
.end method

.method public getCmsBright()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsBright()I

    move-result v0

    return v0
.end method

.method public getCmsHighSpdAssistSw()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsHighSpdAssistSw()Z

    move-result v0

    return v0
.end method

.method public getCmsLowSpdAssistSw()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLowSpdAssistSw()Z

    move-result v0

    return v0
.end method

.method public getCmsObjectRecognizeSw()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsObjectRecognizeSw()Z

    move-result v0

    return v0
.end method

.method public getCmsReverseAssistSw()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsReverseAssistSw()Z

    move-result v0

    return v0
.end method

.method public getCmsTurnAssistSw()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsTurnAssistSw()Z

    move-result v0

    return v0
.end method

.method public getCmsViewAngle()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsViewAngle()I

    move-result v0

    return v0
.end method

.method public getImsAutoVisionSw()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsAutoVisionSw()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getImsBrightLevel()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsBrightLevel()I

    move-result v0

    return v0
.end method

.method public getImsHighSpeedAutoVisionSw()Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsHighSpeedAutoVisionSt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getImsMode()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsMode()I

    move-result v0

    return v0
.end method

.method public getImsSystemSt()I
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsSystemSt()I

    move-result v0

    return v0
.end method

.method public getImsVisionAngleLevel()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsVisionAngleLevel()I

    move-result v0

    return v0
.end method

.method public getImsVisionVerticalLevel()I
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsVisionVerticalLevel()I

    move-result v0

    return v0
.end method

.method public getLMReverseSw()Z
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getLeftRearMirrorPosStatus()I
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftRearMirrorPosStatus()I

    move-result v0

    return v0
.end method

.method public getLeftRightRearMirrorFoldOutputStatus()[I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftRightRearMirrorFoldOutputStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getMirrorFoldOutputState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->getLeftRightRearMirrorFoldOutputStatus()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->convertMirrorOutputSt([I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    move-result-object v0

    return-object v0
.end method

.method public getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
    .locals 2

    const-string v0, "isSupportFramelessMirror"

    .line 223
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftRearMirrorPosStatus()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightRearMirrorPosStatus()I

    move-result v1

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->convertMirrorPosSt(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMirrorFoldState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    return-object v0
.end method

.method protected getMirrorWaitTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getRMReverseSw()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->fromBcmMirrorState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    return-object v0
.end method

.method public getRightRearMirrorPosStatus()I
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightRearMirrorPosStatus()I

    move-result v0

    return v0
.end method

.method protected abstract handleAutoFoldStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsAutoBrightSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsBrightChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method protected abstract handleCmsHighSpdSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsLowSpdSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsObjectRecognizeSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsReverseSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsTurnSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleCmsViewAngleChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation
.end method

.method protected handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 525
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMirrorFoldState:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    :cond_0
    return-void
.end method

.method protected abstract handleImsAutoVisionSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleImsBrightLevelChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method protected abstract handleImsHighSpeedAutoVisionSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleImsModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleImsSystemStChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleImsVisionAngleLevelChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method protected abstract handleImsVisionVerticalLevelChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method protected abstract handleLeftMirrorPosStChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected abstract handleMirrorAutoDownChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleMirrorOutputStChange([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation
.end method

.method protected abstract handleRearScreenStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleReverseModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleRightMirrorPosStChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public isMirrorAutoDown()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isMirrorAutoDown()Z

    move-result v0

    return v0
.end method

.method public isMirrorAutoFoldEnable()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isMirrorAutoFoldEnable()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$controlMirror$0$MirrorBaseViewModel(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isFold"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 210
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "foldMirror"

    goto :goto_1

    :cond_1
    const-string p1, "unfoldMirror"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MirrorBaseViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onKey(II)Z
    .locals 3
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

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorBaseViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->onKey(II)Z

    move-result p1

    return p1
.end method

.method public onKeyIms(II)Z
    .locals 3
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

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyIms keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorBaseViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mControlStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->onKeyIms(II)Z

    move-result p1

    return p1
.end method

.method public recoverMirror()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->recoverMirror()V

    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public resetRecoverMirrorFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mShouldRecoverMirror:Z

    return-void
.end method

.method public reverseMirror()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->reverseMirror()V

    return-void
.end method

.method public setCmsAutoBrightSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsAutoBrightSw(Z)V

    return-void
.end method

.method public setCmsBright(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsBright(I)V

    return-void
.end method

.method public setCmsHighSpdAssistSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsHighSpdAssistSw(Z)V

    return-void
.end method

.method public setCmsLowSpdAssistSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsLowSpdAssistSw(Z)V

    return-void
.end method

.method public setCmsObjectRecognizeSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsObjectRecognizeSw(Z)V

    return-void
.end method

.method public setCmsReverseAssistSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsReverseAssistSw(Z)V

    return-void
.end method

.method public setCmsTurnAssistSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsTurnAssistSw(Z)V

    return-void
.end method

.method public setCmsViewAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsViewAngle(I)V

    return-void
.end method

.method public setCmsViewRecovery(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsViewRecovery(Z)V

    return-void
.end method

.method public setImsAutoModeReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsAutoModeReq(I)V

    return-void
.end method

.method public setImsAutoVisionSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsAutoVisionSw(I)V

    return-void
.end method

.method public setImsBrightLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsBrightLevel(I)V

    return-void
.end method

.method public setImsHighSpeedAutoVisionSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsHighSpeedAutoVisionSw(I)V

    return-void
.end method

.method public setImsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsMode(I)V

    return-void
.end method

.method public setImsResetReq()V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsResetReq()V

    return-void
.end method

.method public setImsVisionCtrl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsVisionCtrl(II)V

    return-void
.end method

.method public setLMReverseSw(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    const-string v1, "MirrorBaseViewModel"

    if-nez v0, :cond_0

    const-string p1, "Can not set Mirror reverse mode in none main process"

    .line 259
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isUserAdjusting()Z

    move-result v2

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLMReverseSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userAdjusting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v4, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_4

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v0, 0x0

    xor-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMirrorAutoDown(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorAutoDown(Z)V

    return-void
.end method

.method public setMirrorAutoFoldEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorAutoFoldEnable(Z)V

    return-void
.end method

.method public setRMReverseSw(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    const-string v1, "MirrorBaseViewModel"

    if-nez v0, :cond_0

    const-string p1, "Can not set Mirror reverse mode in none main process"

    .line 284
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    .line 288
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->isUserAdjusting()Z

    move-result v2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRMReverseSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userAdjusting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_4

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v4, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v0, 0x0

    xor-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setReverseMirrorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MirrorBaseViewModel"

    const-string v0, "Can not set Mirror reverse mode in none main process"

    .line 250
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(I)V

    return-void
.end method

.method public shouldReverseMirror()Z
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public syncAccountMirrorPos(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mirrorPosition",
            "needMoveMirror"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mMemoryStrategy:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method

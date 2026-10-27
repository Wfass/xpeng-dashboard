.class public final Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;
.super Ljava/lang/Object;
.source "CabinSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CabinSmartControl"


# instance fields
.field private mCurrentPrevent:Z

.field private mHandler:Landroid/os/Handler;

.field private mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

.field private mPreventRunnable:Ljava/lang/Runnable;

.field private mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mPreventRunnable:Ljava/lang/Runnable;

    .line 50
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mPreventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mCurrentPrevent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkIfMirrorControlPanelAvailable()Z
    .locals 5

    .line 114
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    .line 115
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CabinSmartControl"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    return v3

    .line 120
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    .line 121
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->isCruiseActive()Z

    move-result v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CruiseState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkRecoverMirror(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->checkRecoverMirror(F)V

    return-void
.end method

.method public controlMirrorFold(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method public handleHighSpeed()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->isHighSpdCloseWinEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isHighSpdCloseWinFuncAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->isWindowOpened()Z

    move-result v0

    const-string v1, "CabinSmartControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "All windows are closed, no need to close window for high speed"

    .line 80
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Window lock is active, do not close win for high speed"

    .line 85
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isWinLockTipAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->high_spd_close_win_failed_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setWinLockTipTs(J)V

    :cond_1
    return-void

    .line 93
    :cond_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->high_spd_close_win_tts_hint:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->high_spd_close_win_hint_new:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(I)V

    .line 97
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$CabinSmartControl$9psaBmiP2q9yUkzu8kmLEBMO_SE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$CabinSmartControl$9psaBmiP2q9yUkzu8kmLEBMO_SE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)V

    const-wide/16 v3, 0x1f40

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public handleReverseMirror(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRearGear"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->reverseMirror()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->recoverMirror()V

    :goto_0
    return-void
.end method

.method public initTrunkState()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->initTrunkState()V

    return-void
.end method

.method public synthetic lambda$handleHighSpeed$0$CabinSmartControl()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->controlWindowAuto(Z)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setHighSpdCloseWinTs(J)V

    return-void
.end method

.method public resetRecoverMirrorFlag()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->resetRecoverMirrorFlag()V

    return-void
.end method

.method public setWinHighSpdSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->setHighSpdCloseWin(Z)V

    return-void
.end method

.method public syncAccountMirrorPos(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mirrorData",
            "needMoveMirror"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    return-void
.end method

.method public unlockTrunk()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method public declared-synchronized updateSdcRunningState(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "state"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CabinSmartControl"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSdcRunningState, left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCurrentPrevent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mCurrentPrevent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne p2, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 137
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result p2

    if-ne p2, v0, :cond_1

    :goto_1
    move p2, v1

    goto :goto_3

    :cond_1
    move p2, v2

    goto :goto_3

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mWindowViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result p1

    if-ne p1, v0, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-ne p2, v0, :cond_1

    goto :goto_1

    :goto_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    move v2, v1

    .line 143
    :cond_5
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mCurrentPrevent:Z

    if-ne v2, p1, :cond_6

    const-string p1, "CabinSmartControl"

    const-string p2, "TargetPreventState == CurrentPreventState, do nothing"

    .line 144
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 147
    :cond_6
    :try_start_1
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mCurrentPrevent:Z

    if-eqz v2, :cond_7

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mPreventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 151
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->mPreventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

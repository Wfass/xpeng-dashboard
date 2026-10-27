.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;
.super Ljava/lang/Object;
.source "SeatNotifyDrvMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$SingleHolder;
    }
.end annotation


# static fields
.field private static final MEMORY_NEW_COUNT_MAX:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private isLogin:Z

.field protected mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mContext:Landroid/content/Context;

.field mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field protected mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatNotifyDrvMenu"

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$SeatNotifyDrvMenu$VBTt8BzG4wQfqEjVJqAR_H0_HY0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$SeatNotifyDrvMenu$VBTt8BzG4wQfqEjVJqAR_H0_HY0;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->onInitViewModel()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;-><init>()V

    return-void
.end method

.method private checkChairMovable(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVuiAction"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_speed_error:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_door_error:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result p1

    if-nez p1, :cond_2

    .line 165
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->smart_chair_driver_error:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;
    .locals 1

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doMirrorAction()V
    .locals 3

    .line 91
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_notify_mirror:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    const/16 v2, 0xbc0

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    return-void
.end method

.method public doRecoverAction()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    return-void
.end method

.method public doSaveAction()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    .line 59
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mContext:Landroid/content/Context;

    const/16 v4, 0x64

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    iget-boolean v6, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    const-string/jumbo v3, "xpCarControl_Seat"

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createSaveDoneNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public doSaveAsAction()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentHabitSum()I

    move-result v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "habitSum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatNotifyDrvMenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 78
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_memory_new_over_limit:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_memory_new_over_limit:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->groupName:Ljava/lang/String;

    return-void
.end method

.method public doSteerAction()V
    .locals 3

    .line 99
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_notify_steer:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    const/16 v2, 0xbc0

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$new$0$SeatNotifyDrvMenu(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->groupName:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 145
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 146
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected final setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
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

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected show()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->onInitViewModel()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mContext:Landroid/content/Context;

    const/16 v4, 0x64

    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->isLogin:Z

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 113
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v6, v0

    const-string/jumbo v3, "xpCarControl_Seat"

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createDrvSeatNotification(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

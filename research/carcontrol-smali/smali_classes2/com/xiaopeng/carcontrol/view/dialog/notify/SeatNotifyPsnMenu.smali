.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;
.super Ljava/lang/Object;
.source "SeatNotifyPsnMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu$SingleHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatNotifyDrvMenu"

    .line 13
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->onInitViewModel()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doRecoverAction()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public doSaveAction()V
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryPsnSeatData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mContext:Landroid/content/Context;

    const/16 v5, 0x64

    const/4 v7, 0x1

    const-string/jumbo v4, "xpCarControl_Seat"

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createPsnSeatNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-void
.end method

.method protected show()V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->onInitViewModel()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedPsnHabit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->mContext:Landroid/content/Context;

    const/16 v5, 0x64

    const/4 v7, 0x0

    const-string/jumbo v4, "xpCarControl_Seat"

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createPsnSeatNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

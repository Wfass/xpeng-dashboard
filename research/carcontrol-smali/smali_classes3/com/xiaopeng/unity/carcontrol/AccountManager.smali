.class public Lcom/xiaopeng/unity/carcontrol/AccountManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "AccountManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/AccountManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/AccountListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IAccountManager;"
    }
.end annotation


# instance fields
.field private accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AccountManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/AccountManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AccountManager$Holder;->access$100()Lcom/xiaopeng/unity/carcontrol/AccountManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkLogin()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    return v0
.end method

.method public getCurrentSyncUserInfo()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHabitList()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleUserBindTime()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getVehicleUserBindTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initInternal()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 32
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 34
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isOwnerAccount()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isOwnerAccount()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$AccountManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AccountListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountListener;->onAccountUserInfoChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$AccountManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AccountListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountListener;->onAccountHabitListChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$AccountManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AccountListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountListener;->onOwnerAccountChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$AccountManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AccountListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountListener;->onHabitGroupStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$AccountManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AccountListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountListener;->onHabitRestoreIconStateChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getUserInfoData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$Qrqkl6lICnYl8MpJia62PI1hP74;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$Qrqkl6lICnYl8MpJia62PI1hP74;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitListData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$khQU72R5VhuNY8kcn1CV9dSvVdA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$khQU72R5VhuNY8kcn1CV9dSvVdA;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getOwnerAccountData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$sG6PRakjAxQt7Wmku_XdaZ4xeGY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$sG6PRakjAxQt7Wmku_XdaZ4xeGY;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitGroupStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$5RN0c2wSsjux7wG-AxbmOK8D_vY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$5RN0c2wSsjux7wG-AxbmOK8D_vY;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitRestoreIconStateData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$6Gjwibn6fOwTCZjZj14HXYUviNg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AccountManager$6Gjwibn6fOwTCZjZj14HXYUviNg;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "requestLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "requestLogout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isOwnerAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getVehicleUserBindTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "requestDeleteSyncGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "checkLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "requestCreateNewSyncGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "getCurrentSyncUserInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "requestRenameSyncGroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "requestSelectSyncGroupIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v3, v2

    goto :goto_0

    :sswitch_a
    const-string v0, "getHabitList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestLogin()V

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestLogout()V

    goto :goto_1

    .line 130
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->isOwnerAccount()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->getVehicleUserBindTime()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 115
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestDeleteSyncGroup(I)V

    goto :goto_1

    .line 127
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->checkLogin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 101
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestCreateNewSyncGroup()V

    goto :goto_1

    .line 121
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->getCurrentSyncUserInfo()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_8
    if-eqz p2, :cond_b

    const-string p1, ","

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 109
    array-length p2, p1

    if-le p2, v2, :cond_b

    .line 110
    aget-object p2, p1, v1

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestRenameSyncGroup(ILjava/lang/String;)V

    goto :goto_1

    .line 104
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->requestSelectSyncGroupIndex(I)V

    :cond_b
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 118
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->getHabitList()Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_c

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6e9d2284 -> :sswitch_a
        -0x436ff427 -> :sswitch_9
        -0x3d7e0789 -> :sswitch_8
        -0x34bfe449 -> :sswitch_7
        -0x30d13d11 -> :sswitch_6
        -0x1ff300bf -> :sswitch_5
        0x2c8394aa -> :sswitch_4
        0x333f37ab -> :sswitch_3
        0x34d54244 -> :sswitch_2
        0x47698cf9 -> :sswitch_1
        0x4ca04e1a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public requestCreateNewSyncGroup()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    return-void
.end method

.method public requestDeleteSyncGroup(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestDeleteSyncGroup(I)V

    return-void
.end method

.method public requestLogin()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->TAG:Ljava/lang/String;

    const-string v1, "requestLogin"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestLogin()V

    return-void
.end method

.method public requestLogout()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->TAG:Ljava/lang/String;

    const-string v1, "requestLogout"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestLogout()V

    return-void
.end method

.method public requestRenameSyncGroup(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "rename"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestRenameSyncGroup(ILjava/lang/String;)V

    return-void
.end method

.method public requestSelectSyncGroupIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->accountViewModel:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestSelectSyncGroupIndex(I)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->cancelDrvDropDown()V

    return-void
.end method

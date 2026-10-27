.class public Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SeatMirrorMenuManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISeatMirrorMenuManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISeatMirrorMenuManager;"
    }
.end annotation


# instance fields
.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkChairMovable()Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f1103a1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039e

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039f

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public initInternal()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 33
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isLogin()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$SeatMirrorMenuManager(Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "spd"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;->onCarSpdChanged(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$SeatMirrorMenuManager(Ljava/lang/Integer;)V
    .locals 2
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

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;->onCreateNewGroup(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMirrorMenuManager$uIsHFX4TKRTkjRJddEXRqoaHdIk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMirrorMenuManager$uIsHFX4TKRTkjRJddEXRqoaHdIk;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMirrorMenuManager$vLzKx7xJvyKohlTZtGsfUkIK1eA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMirrorMenuManager$vLzKx7xJvyKohlTZtGsfUkIK1eA;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "isLogin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "checkChairMovable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "restoreDrvSeatPos"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "saveDrvSeatData"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "requestCreateNewSyncGroup"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "getGroupName"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->TAG:Ljava/lang/String;

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

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->isLogin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->checkChairMovable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 54
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->restoreDrvSeatPos()V

    goto :goto_1

    .line 51
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->saveDrvSeatData()V

    goto :goto_1

    .line 57
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->requestCreateNewSyncGroup()V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 63
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->getGroupName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_6

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x58fa010c -> :sswitch_5
        -0x30d13d11 -> :sswitch_4
        -0x2e0b90a6 -> :sswitch_3
        -0x2546d38b -> :sswitch_2
        0x21f50911 -> :sswitch_1
        0x7b0e9c5f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    return-void
.end method

.method public restoreDrvSeatPos()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    return-void
.end method

.method public saveDrvSeatData()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    return-void
.end method

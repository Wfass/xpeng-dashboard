.class public Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "PGearMenuManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IPGearMenuManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/PGearMenuListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IPGearMenuManager;"
    }
.end annotation


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;-><init>()V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeTrunk()V
    .locals 2

    const-string v0, "isSupportElcTrunk"

    .line 83
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Close:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

    :cond_0
    return-void
.end method

.method public initInternal()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 43
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 44
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$PGearMenuManager$VoTbq5v_3iNlUuFVfA8wn3Hd200;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$PGearMenuManager$VoTbq5v_3iNlUuFVfA8wn3Hd200;-><init>(Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$initInternal$0$PGearMenuManager()V
    .locals 2

    const-string v0, "dismiss"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected observeData()V
    .locals 0

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

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "openTrunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "setPGearRemindUnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "openChargePort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "setEasyLoading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "closeTrunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->TAG:Ljava/lang/String;

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

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->openTrunk()V

    goto :goto_1

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->setPGearRemindUnable()V

    goto :goto_1

    .line 57
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->openChargePort(Z)V

    goto :goto_1

    .line 60
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->setEasyLoading()V

    goto :goto_1

    .line 54
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->closeTrunk()V

    :goto_1
    const-string p1, ""

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b7c9564 -> :sswitch_4
        -0x164056e8 -> :sswitch_3
        0x172ee33f -> :sswitch_2
        0x33f3ac55 -> :sswitch_1
        0x5b8f858a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openChargePort(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    return-void
.end method

.method public openTrunk()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method public setEasyLoading()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void

    .line 100
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f11003f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method public setPGearRemindUnable()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f11027e

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setPGearRemindUnable()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/PGearMenuListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/carcontrol/PGearMenuListener;->dismiss()V

    :cond_0
    return-void
.end method

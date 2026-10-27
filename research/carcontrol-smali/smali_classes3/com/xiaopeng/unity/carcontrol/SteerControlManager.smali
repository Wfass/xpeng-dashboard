.class public Lcom/xiaopeng/unity/carcontrol/SteerControlManager;
.super Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager;
.source "SteerControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISteerControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;,
        Lcom/xiaopeng/unity/carcontrol/SteerControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager<",
        "Lcom/xiaopeng/unity/carcontrol/SteerControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISteerControlManager;"
    }
.end annotation


# instance fields
.field private final KEYS:[I

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private final mKeyListener:Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->KEYS:[I

    .line 25
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;-><init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mKeyListener:Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x3e9
        0x3f3
        0x3f4
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private dismissSteerControlPanel()V
    .locals 2

    .line 137
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SteerControlManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$Holder;->access$100()Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    move-result-object v0

    return-object v0
.end method

.method private showSteerControlPanel()V
    .locals 3

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public cancelControl()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->cancelAllControlSteer()V

    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->enterSteerScene()V

    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->exitSteerScene()V

    return-void
.end method

.method public getColumnTravelAdjEnableSt()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getColumnTravelAdjEnableSt()Z

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 38
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$SteerControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SteerControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SteerControlListener;->onColumnTravelAdjStatusChange(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getColumnTravelAdjData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SteerControlManager$I8Vw7WfvJfllPwnzFDIB2KGklwM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SteerControlManager$I8Vw7WfvJfllPwnzFDIB2KGklwM;-><init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onKey(II)V
    .locals 0
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

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->onSteerControl(I)Z

    :cond_0
    return-void
.end method

.method public onKeyIms(II)V
    .locals 0
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

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "getColumnTravelAdjEnableSt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "dismissSteerControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "onSteerControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "showSteerControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "setColumnTravelAdjEnableSt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 124
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->TAG:Ljava/lang/String;

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

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->getColumnTravelAdjEnableSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 112
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->dismissSteerControlPanel()V

    goto :goto_1

    .line 121
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->onSteerControl(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 109
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->showSteerControlPanel()V

    goto :goto_1

    .line 115
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->setColumnTravelAdjEnableSt(Z)V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6e6539e7 -> :sswitch_4
        0x1aee999b -> :sswitch_3
        0x1fe039cb -> :sswitch_2
        0x28632dae -> :sswitch_1
        0x7b6ae0a5 -> :sswitch_0
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

.method public onSteerControl(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->onSteerControl(I)Z

    move-result p1

    return p1
.end method

.method public setColumnTravelAdjEnableSt(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setColumnTravelAdjEnableSt(Z)V

    return-void
.end method

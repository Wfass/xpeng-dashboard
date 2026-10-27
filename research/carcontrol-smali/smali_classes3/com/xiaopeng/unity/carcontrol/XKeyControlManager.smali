.class public Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "XKeyControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IXKeyControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IXKeyControlManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XKeyControlManager"


# instance fields
.field protected mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getWheelKeyProtectSw()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->isWheelKeyProtectEnabled()Z

    move-result v0

    return v0
.end method

.method public getXKeyValue()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xkey_control_xkey_function:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyForCustomer()I

    move-result v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXKeyValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XKeyControlManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 35
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$XKeyControlManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "xKeyForCustomer"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;->onXKeyChanged(I)V

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onXKeyChanged, value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "XKeyControlManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$1$XKeyControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;->onWheelKeyProtectSwChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$XKeyControlManager$ZBwtwZCZMCAK_P5F6HdjOaA96GA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$XKeyControlManager$ZBwtwZCZMCAK_P5F6HdjOaA96GA;-><init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getWheelKeyProtectSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$XKeyControlManager$m3c6nBsIFo_nLMGFOwEnS6AAVGo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$XKeyControlManager$m3c6nBsIFo_nLMGFOwEnS6AAVGo;-><init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "getWheelKeyProtectSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "showXKeySettingsPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "setWheelKeyProtectSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "setXKeyValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "showDoorKeySettingsPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "getXKeyValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XKeyControlManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->getWheelKeyProtectSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 58
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->showXKeySettingsPanel()V

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->setWheelKeyProtectSw(Z)V

    goto :goto_1

    .line 67
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->setXKeyValue(I)V

    goto :goto_1

    .line 61
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->showDoorKeySettingsPanel()V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 64
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->getXKeyValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_6

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f4cfbcc -> :sswitch_5
        -0x476b6613 -> :sswitch_4
        -0x2f93b58 -> :sswitch_3
        0x498418ad -> :sswitch_2
        0x5f6c129d -> :sswitch_1
        0x6dee0c39 -> :sswitch_0
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

.method public setWheelKeyProtectSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setWheelKeyProtectSw(Z)V

    return-void
.end method

.method public setXKeyValue(I)V
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->xkey_control_xkey_function:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXKeyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XKeyControlManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomer(I)V

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "xkey_control_xkey_function"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showDoorKeySettingsPanel()V
    .locals 3

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CUSTOM_DOOR_KEY_PANEL"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public showXKeySettingsPanel()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.intent.action.xkey.user"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

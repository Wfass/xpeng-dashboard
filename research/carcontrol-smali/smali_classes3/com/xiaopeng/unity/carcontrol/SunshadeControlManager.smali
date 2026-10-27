.class public Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SunshadeControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISunshaControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SunshadeControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISunshaControlManager;"
    }
.end annotation


# instance fields
.field private mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;-><init>()V

    return-void
.end method

.method private closeSunshade()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->closeSunShade()V

    return-void
.end method

.method private getSunshadePos()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v0

    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;

    move-result-object v0

    return-object v0
.end method

.method private openSunshade()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openSunShade()V

    return-void
.end method

.method private resetSunshade()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->resetSunShade()V

    return-void
.end method

.method private setSunshadePos(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSunShadePos(I)V

    return-void
.end method

.method private showSunshadeControlPanel()V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SUNSHADE_CONTROL_PANEL"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopSunshade()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->stopSunShade()V

    return-void
.end method


# virtual methods
.method public initInternal()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

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

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "stopSunshade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "resetSunshade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "openSunshade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "showSunshadeControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "getSunshadePos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "closeSunshade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "setSunshadePos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 53
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->stopSunshade()V

    goto :goto_2

    .line 56
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->resetSunshade()V

    goto :goto_1

    .line 47
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->openSunshade()V

    goto :goto_2

    .line 44
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->showSunshadeControlPanel()V

    goto :goto_2

    .line 58
    :goto_1
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->getSunshadePos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 50
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->closeSunshade()V

    goto :goto_2

    .line 61
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;->setSunshadePos(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const-string p1, ""

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f29f28f -> :sswitch_6
        -0x1bc69687 -> :sswitch_5
        -0x158f6603 -> :sswitch_4
        -0xcee0bb -> :sswitch_3
        0x2deb3fcb -> :sswitch_2
        0x4f9c61d0 -> :sswitch_1
        0x53abe983 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

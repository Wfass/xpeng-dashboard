.class public Lcom/xiaopeng/carcontrol/direct/support/XPilot3CheckAction;
.super Ljava/lang/Object;
.source "XPilot3CheckAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "XPilot3CheckAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSupport()Z
    .locals 4

    const-string v0, "isSupportXpu"

    .line 20
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    .line 24
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->isXpuXpilotActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v3, :cond_0

    .line 25
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XPilot3CheckAction"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return v1
.end method

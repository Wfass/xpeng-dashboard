.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;
.super Ljava/lang/Object;
.source "ScuBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController$Callback;


# static fields
.field private static final LSS_STATE_SW:Ljava/lang/String; = "lcc_ldw_type"

.field private static final SOURCE_DIRECT:I = 0x0

.field private static final SOURCE_RELATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScuBaseViewModel"


# instance fields
.field private mDependenceState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomainBsdLock:Ljava/lang/Object;

.field private final mDomainBsdStTask:Ljava/lang/Runnable;

.field private final mDomainDowLock:Ljava/lang/Object;

.field private final mDomainDowStTask:Ljava/lang/Runnable;

.field private final mDomainRctaLock:Ljava/lang/Object;

.field private final mDomainRctaStTask:Ljava/lang/Runnable;

.field private final mDomainRcwLock:Ljava/lang/Object;

.field private final mDomainRcwStTask:Ljava/lang/Runnable;

.field private final mIsSupportDomainXpu:Z

.field mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

.field mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "isSupportXpuDomainCtrl"

    .line 42
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mIsSupportDomainXpu:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainBsdLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$Y4DBIdkDeLyvFYy2DYw08_-DXEM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$Y4DBIdkDeLyvFYy2DYw08_-DXEM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainBsdStTask:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainDowLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$YtpQ0U3rMUmGg5TpYr8ZHhWMK-Y;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$YtpQ0U3rMUmGg5TpYr8ZHhWMK-Y;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainDowStTask:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRcwLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$d9-nuComQAM6_GTjES8I2CUgrts;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$d9-nuComQAM6_GTjES8I2CUgrts;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRcwStTask:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRctaLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$Ahxl2ibahpiCrDGphY5iLjBnqTE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/-$$Lambda$ScuBaseViewModel$Ahxl2ibahpiCrDGphY5iLjBnqTE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRctaStTask:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDependenceState:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_scu"

    .line 95
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const-string/jumbo v1, "xp_xpu"

    .line 97
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    return-void
.end method

.method private checkDsmActivated()Z
    .locals 2

    .line 1434
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getDsmState()Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    move-result-object v0

    .line 1435
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->On:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private checkIfXpuAvailable()Z
    .locals 4

    .line 1409
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNedcSwitchStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return v2

    .line 1417
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail_xpu_turning_on:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 1413
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail_xpu_off:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1
.end method

.method private checkXpuNedcActivated()Z
    .locals 3

    const-string v0, "isSupportXpuNedc"

    .line 1426
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNedcSwitchStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private convertDDAWStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private convertIslaState(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slaSt",
            "islaSt"
        }
    .end annotation

    .line 722
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_1

    .line 723
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p2, p1, :cond_0

    .line 724
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p1

    .line 726
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p1

    .line 728
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_3

    .line 729
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p2, p1, :cond_2

    .line 730
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p1

    .line 732
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p1

    .line 735
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p1
.end method

.method private convertSpecialSasState(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slif",
            "islc"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, 0x3

    if-eq p2, v0, :cond_3

    if-eq p2, v4, :cond_3

    if-eq p2, p1, :cond_3

    if-eq p2, v2, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :cond_3
    return p1

    :cond_4
    return v4

    :cond_5
    if-eq p1, v3, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    return v2
.end method

.method private setAlcEnable(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    const-string v0, "isSupportRelatedSwitchV5"

    .line 806
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    const-string v0, "ScuBaseViewModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string p1, "setAlcEnable: \u8054\u52a8\u5173\u95edngp"

    .line 810
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 811
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_0

    .line 812
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->putRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;Ljava/lang/Boolean;)V

    .line 813
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpEnable(ZI)V

    move v1, v2

    :cond_0
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 818
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_1
    const-string p1, "setAlcEnable: \u6062\u590dngp"

    .line 821
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 822
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 824
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->clearRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)V

    .line 825
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpEnable(ZI)V

    move v1, v2

    :cond_2
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 830
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clearRestoreState()V
    .locals 3

    const-string v0, "ScuBaseViewModel"

    const-string v1, "clear all restore Map"

    const/4 v2, 0x0

    .line 87
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDependenceState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected clearRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuBaseViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDependenceState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeMrrByUser(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reason for closing MRR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScuBaseViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1152
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->mrr_close_safe_tip:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    .line 1153
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setMrrEnable(Z)V

    :goto_0
    return-void
.end method

.method protected convertLssState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 378
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcc_ldw_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 388
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object p1

    .line 386
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object p1

    .line 384
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object p1

    .line 382
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object p1
.end method

.method protected convertOverseasElkState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 334
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcc_ldw_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 344
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    return-object p1

    .line 342
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    return-object p1

    .line 340
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->All:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    return-object p1

    .line 338
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    return-object p1
.end method

.method protected convertOverseasLkaState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 301
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    return-object p1

    .line 299
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    return-object p1

    .line 297
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    return-object p1

    .line 295
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    return-object p1
.end method

.method public getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getAccStateForMirror()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getAlcState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getApaSafeExamResult()Z
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getApaSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getAutoParkSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getBsdState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDDAWStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDDAWStatus()I

    move-result v0

    .line 1099
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertDDAWStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDowState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDrivingSafeExamResult(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDrivingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDrivingSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getDsmState()Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;
    .locals 1

    .line 1070
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->checkXpuNedcActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    return-object v0

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDsmSwStatus()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    move-result-object v0

    return-object v0
.end method

.method public getDsmTiredDistractionManualStatus()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDsmTiredDistractionManualSw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getDsmTiredDistractionSensitivity()I
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDsmTiredDistractionSensitivity()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDsmTiredDistractionSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDsmTiredDistractionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getFcwSensitivity()Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getFcwSensitivity()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object v0

    return-object v0
.end method

.method public getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getFcwState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFreeNgpSafeExamResult()Z
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getFreeNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIhbState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getImageRetentionState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getIslaConfirmMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIslaConfirmMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getIslaSpdRange()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIslaSpdRange()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    move-result-object v0

    return-object v0
.end method

.method public getIslaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIslaState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getKeyParkSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLccSafeExamResult()Z
    .locals 2

    const-string v0, "isSupportCNgp"

    .line 675
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isSupportLidarSafeExam"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSuperLccExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSuperLccExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLccWorkSt()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccWorkSt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLdwState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLssMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLssMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertLssState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    move-result-object v0

    return-object v0
.end method

.method public getMemParkSafeExamResult()Z
    .locals 2

    const-string v0, "isSupportCNgp"

    .line 858
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isSupportLidarSafeExam"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSuperVpaExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemParkExamResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSuperVpaExamResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getMemParkSafeExamResultV2()Z
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemParkSafeExamResultV2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemoryParkSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNgpAflFunctionVisibility()Z
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpAflFunctionVisibility()Z

    move-result v0

    return v0
.end method

.method public getNgpAflState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpAflState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNgpMode()I
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpModeStatus()I

    move-result v0

    return v0
.end method

.method public getNgpNewAflState()Z
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpNewAflState()Z

    move-result v0

    return v0
.end method

.method public getNgpRemindMode()I
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpRemindMode()I

    move-result v0

    return v0
.end method

.method public getNgpSafeExamResult()Z
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNgpSafeExamResultV2(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpWithLidarSafeExamResultV2(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResultV2(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNgpTipsMode()I
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpTipsMode()I

    move-result v0

    return v0
.end method

.method public getNgpTruckOffsetSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpTruckOffsetSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpVoiceChangeLane()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getOverseasElkMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getOverseasElkMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertOverseasElkState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    move-result-object v0

    return-object v0
.end method

.method public getOverseasIslaMode()I
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSlaState()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIslaState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertSpecialSasState(II)I

    move-result v0

    return v0
.end method

.method public getOverseasLkaMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getOverseasLkaMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertOverseasLkaState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    move-result-object v0

    return-object v0
.end method

.method public getParkSoundEffect()I
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getParkSoundEffect()I

    move-result v0

    return v0
.end method

.method public getParkingSafeExamResult(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lidar"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 693
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getParkingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getParkingSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getPhoneParkSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getRctaState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getRcwState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDependenceState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRestoreState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScuBaseViewModel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getSdcLeftRadarDisLevel()I
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSdcLeftRadarDisLevel()I

    move-result v0

    return v0
.end method

.method public getSdcRightRadarDisLevel()I
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSdcRightRadarDisLevel()I

    move-result v0

    return v0
.end method

.method public getSlaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSlaState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getWogState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getWogState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getXpuXpilotState()I
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getXpuXpilotState()I

    move-result v0

    return v0
.end method

.method abstract handleAccStateForMirrorChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleAlcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleAutoParkStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleBsdStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleDDAWStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method abstract handleDomesticIslaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleDowStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleDsmStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromScuState"
        }
    .end annotation
.end method

.method abstract handleDsmTiredDistractionSensitivityChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleFcwSenChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleFcwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromScuState"
        }
    .end annotation
.end method

.method abstract handleHintModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method handleIhbStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method abstract handleImageRetentionSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method abstract handleIslaConfirmModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmMode"
        }
    .end annotation
.end method

.method abstract handleIslaSpdRangeChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdRange"
        }
    .end annotation
.end method

.method abstract handleIslcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleKeyParkSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleLccStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleLdwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromScuState"
        }
    .end annotation
.end method

.method abstract handleLssStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleMemParkStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleNgpRemindModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method abstract handleNgpStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleNgpTipModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleNgpTruckOffsetChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method abstract handleNgpVoiceChangeLane(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method abstract handleOverseasElkStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleOverseasIslaStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleOverseasLkaStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handlePhoneParkSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleRctaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleRcwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleTiredDistractionManualStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method abstract handleTiredDistractionStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method abstract handleWogStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method abstract handleXpuXPilotStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public isCngpRunning()Z
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpModeStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMemParkVideoWatched()Z
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->isMemParkVideoWatched()Z

    move-result v0

    return v0
.end method

.method public isNgpRunning()Z
    .locals 4

    const-string v0, "isSupportNewNgpArch"

    .line 999
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpModeStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpModeStatus()I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isXpuXpilotActivated()Z
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->isXpuXpilotActivated()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ScuBaseViewModel()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleBsdStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public synthetic lambda$new$1$ScuBaseViewModel()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDowStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public synthetic lambda$new$2$ScuBaseViewModel()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleRcwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public synthetic lambda$new$3$ScuBaseViewModel()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleRctaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public moveToExhibitionPos()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setIhbState(Z)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwState(Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwSensitivity(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setBsdState(Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDowSw(ZZ)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRctaState(Z)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRcwState(Z)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLssMode(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpRemindMode(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpTipsMode(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setPhoneParkSw(Z)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setWogSw(Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setParkSoundEffect(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setImageRetentionEnable(Z)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setRaebState(Z)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNraSwEnable(Z)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLssSensitivity(I)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setTurnAssistantEnable(Z)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpOvertakeMode(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpActivateModeEnable(Z)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccTrafficLightSw(Z)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccCrossBarriersSw(Z)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSimpleSasSw(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedMode(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedKph(I)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedPercent(I)V

    return-void
.end method

.method public onAccStateForMirrorChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1270
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleAccStateForMirrorChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onAutoParkSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1344
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleAutoParkStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onBsdStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1200
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mIsSupportDomainXpu:Z

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainBsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainBsdStTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1203
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainBsdStTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1204
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1206
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleBsdStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    :goto_0
    return-void
.end method

.method public onDowSwChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1213
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mIsSupportDomainXpu:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainDowLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1215
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainDowStTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1216
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainDowStTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1217
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1219
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDowStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    :goto_0
    return-void
.end method

.method public onDsmSwStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1384
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->checkXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDsmStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmState;)V

    :cond_0
    return-void
.end method

.method public onDsmTiredDistractionManualChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1396
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleTiredDistractionManualStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onFcwSenChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .line 1195
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleFcwSenChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V

    return-void
.end method

.method public onFcwSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1185
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleFcwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onHintModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1369
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleHintModeChanged(I)V

    return-void
.end method

.method public onIhbStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1379
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleIhbStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onImageRetentionSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1374
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleImageRetentionSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onIslaConfirmModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmMode"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1303
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleIslaConfirmModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onIslaSpdRangeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdRange"
        }
    .end annotation

    .line 1298
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleIslaSpdRangeChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;)V

    return-void
.end method

.method public onIslaStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportSpecialSas"

    .line 1289
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getSlaState()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertSpecialSasState(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleOverseasIslaStateChanged(I)V

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getSlaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertIslaState(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDomesticIslaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V

    :goto_0
    return-void
.end method

.method public onIslcSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1275
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleIslcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onKeyParkSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1359
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleKeyParkSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onLccStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1265
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleLccStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onLcsStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1308
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleAlcStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onLdwSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .line 1190
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleLdwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onLssSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleLssStateChanged(I)V

    return-void
.end method

.method public onMemParkSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1354
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleMemParkStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onNgpRemindModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1339
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleNgpRemindModeChanged(I)V

    return-void
.end method

.method public onNgpStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1318
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleNgpStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onNgpTipModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1323
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleNgpTipModeChanged(I)V

    return-void
.end method

.method public onNgpTruckOffsetChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1328
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleNgpTruckOffsetChanged(I)V

    return-void
.end method

.method public onNgpVoiceChangeLaneChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1334
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleNgpVoiceChangeLane(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onOverseasElkSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1230
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleOverseasElkStateChanged(I)V

    return-void
.end method

.method public onOverseasLkaSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1235
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleOverseasLkaStateChanged(I)V

    return-void
.end method

.method public onPhoneParkSwChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1364
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handlePhoneParkSwChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onRctaSwChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1240
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mIsSupportDomainXpu:Z

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRctaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRctaStTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1243
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRctaStTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1244
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1246
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleRctaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    :goto_0
    return-void
.end method

.method public onRcwSwChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportXpuDomainCtrl"

    .line 1252
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRcwLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRcwStTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1255
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDomainRcwStTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1256
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1258
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleRcwStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    :goto_0
    return-void
.end method

.method public onSlaStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportSpecialSas"

    .line 1280
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getIslaState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertSpecialSasState(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleOverseasIslaStateChanged(I)V

    goto :goto_0

    .line 1283
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getIslaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->convertIslaState(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDomesticIslaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V

    :goto_0
    return-void
.end method

.method public onTiredDistractionSensitivityChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1405
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDsmTiredDistractionSensitivityChanged(I)V

    return-void
.end method

.method public onTiredDistractionStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1391
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleTiredDistractionStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onWogSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1349
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleWogStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onXpuDDAWStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1401
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleDDAWStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method

.method public onXpuXPilotStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1313
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->handleXpuXPilotStateChanged(I)V

    return-void
.end method

.method public openMrrByUser(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason for opening MRR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ScuBaseViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1166
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setMrrEnable(Z)V

    :goto_0
    return-void
.end method

.method protected putRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuBaseViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mDependenceState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public setAlcEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setAlcEnable(ZI)V

    return-void
.end method

.method public setAutoParkSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setAutoParkSw(ZI)V

    return-void
.end method

.method public setAutoParkSw(ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    const-string v0, "isSupportRelatedSwitchV5"

    .line 514
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isSupportMemPark"

    const-string v1, "isSupportKeyPark"

    const-string v2, "ScuBaseViewModel"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    const-string p1, "setAutoParkSw: \u8054\u52a8\u5173\u95edkey park"

    .line 516
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 517
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v1, :cond_0

    .line 518
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setKeyParkSw(Z)V

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const-string v1, "setAutoParkSw: \u8054\u52a8\u5173\u95edvpa"

    .line 522
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_1

    .line 524
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_mem_park:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->putRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;Ljava/lang/Boolean;)V

    .line 525
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setMemoryParkSw(ZI)V

    add-int/lit8 p1, p1, 0x1

    :cond_1
    if-lez p1, :cond_5

    if-nez p2, :cond_5

    .line 530
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    :cond_2
    const-string p1, "setAutoParkSw: \u8054\u52a8\u6253\u5f00key park"

    .line 533
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 534
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getKeyParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v1, :cond_3

    .line 535
    invoke-virtual {p0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setKeyParkSw(Z)V

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    const-string v1, "setAutoParkSw: \u6062\u590dvpa"

    .line 539
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 540
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_mem_park:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)Ljava/lang/Boolean;

    move-result-object v1

    .line 541
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 542
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_mem_park:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->clearRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)V

    .line 543
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setMemoryParkSw(ZI)V

    add-int/lit8 p1, p1, 0x1

    :cond_4
    if-lez p1, :cond_5

    if-nez p2, :cond_5

    .line 548
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setBsdEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 396
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    .line 397
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setBsdState(Z)V

    return-void
.end method

.method public setDDAWSwitchStatus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDDAWStatus()I

    move-result v0

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DDAWStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuBaseViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1111
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_ddaw_force_open_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDDAWSwitchStatus(Z)V

    return-void
.end method

.method public setDistractionSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDistractionSwitch(Z)V

    return-void
.end method

.method public setDowEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setDowEnable(ZZ)Z

    return-void
.end method

.method protected setDowEnable(ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSp"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 420
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x0

    return p1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDowSw(ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDsmSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmSw(Z)V

    return-void
.end method

.method public setDsmTiredDistractionManualSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmTiredDistractionManualSw(Z)V

    return-void
.end method

.method public setDsmTiredDistractionSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmTiredDistractionSensitivity(I)V

    goto :goto_0

    .line 1123
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmTiredDistractionSensitivity(I)V

    goto :goto_0

    .line 1120
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmTiredDistractionSensitivity(I)V

    :goto_0
    return-void
.end method

.method public setDsmTiredDistractionSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmTiredDistractionStatus(Z)V

    return-void
.end method

.method public setFcwEnable()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 145
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 154
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwState(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwState(Z)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwState(Z)V

    :goto_0
    return-void
.end method

.method public setFcwSensitivity(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->toXpuCmd(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwSensitivity(I)V

    return-void
.end method

.method public setIhbEnable(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "checkAndToast"
        }
    .end annotation

    if-eqz p2, :cond_5

    const-string v0, "isIhbDependOnXPilot"

    .line 439
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isSupportSrrMiss"

    if-eqz v0, :cond_4

    .line 440
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_srr_missed_open_fail:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getXpuXpilotState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_xpilot_st_not_activated:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 449
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_purchase_help_1:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 446
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_xpilot_st_init:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 459
    :cond_4
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_srr_missed_open_fail2:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 466
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    if-eqz p2, :cond_6

    .line 467
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_6

    .line 468
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 469
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->checkIfXpuAvailable()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 488
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_switch_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 489
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setIhbState(Z)V

    goto :goto_1

    .line 491
    :cond_8
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->ihb_switch_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setIhbState(Z)V

    :goto_1
    return-void
.end method

.method public setImageRetentionEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setImageRetentionEnable(Z)V

    return-void
.end method

.method public setIslaConfirmMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setIslaConfirmMode(Z)V

    return-void
.end method

.method public setIslaSpdRange(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdRange"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->toScuCmd()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setIslaSpdRange(I)V

    return-void
.end method

.method public setKeyParkSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setKeyParkSw(Z)V

    return-void
.end method

.method public setLccEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setLccEnable(ZI)V

    return-void
.end method

.method public setLccEnable(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    const-string v0, "isSupportRelatedSwitchV5"

    .line 643
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    const-string v0, "ScuBaseViewModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string p1, "setLccEnable: \u8054\u52a8\u5173\u95edlcc\u5b50\u9879"

    .line 647
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 648
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_0

    .line 649
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setAlcEnable(ZI)V

    move v1, v2

    :cond_0
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 653
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_1
    const-string p1, "setLccEnable: \u8054\u52a8\u6253\u5f00alc"

    .line 656
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 657
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v0, :cond_2

    .line 658
    invoke-direct {p0, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setAlcEnable(ZI)V

    move v1, v2

    :cond_2
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 662
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLdwEnable()V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getLdwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLdwEnable currentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuBaseViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 182
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 194
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLdwState(Z)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLdwState(Z)V

    const-string v0, "isSupportXpilotLccBindLdw"

    .line 185
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setLccEnable(Z)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLdwState(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLssMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lssMode"
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLssMode(I)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLssMode(I)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLssMode(I)V

    const-string p1, "isSupportXpilotLccBindLss"

    .line 353
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v1, :cond_3

    .line 354
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setLccEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMemParkVideoWatched(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemParkVideoWatched(Z)V

    return-void
.end method

.method public setMemoryParkSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setMemoryParkSw(ZI)V

    return-void
.end method

.method public setMemoryParkSw(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    const-string v0, "isSupportRelatedSwitchV5"

    .line 580
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ScuBaseViewModel"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string p1, "setMemoryParkSw: \u8054\u52a8\u5173\u95ed\u589e\u5f3a\u9065\u63a7"

    .line 582
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_0

    .line 584
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setPhoneParkSw(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 588
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    :cond_1
    const-string p1, "setMemoryParkSw: \u8054\u52a8\u6253\u5f00enhanced park"

    .line 591
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getPhoneParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v0, :cond_2

    .line 593
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setPhoneParkSw(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-lez v1, :cond_3

    if-nez p2, :cond_3

    .line 600
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setNgpAflEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpAflEnable(Z)V

    return-void
.end method

.method public setNgpEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 866
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpEnable(ZI)V

    return-void
.end method

.method public setNgpEnable(ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    const-string v0, "isSupportRelatedSwitchV5"

    .line 876
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "isSupportCNgp"

    const-string v1, "ScuBaseViewModel"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3

    const-string p1, "setNgpEnable: \u8054\u52a8\u5173\u95edngp\u5b50\u9879"

    .line 878
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 879
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getNgpTruckOffsetSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v1, :cond_0

    .line 880
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_truck_offset:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->putRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;Ljava/lang/Boolean;)V

    .line 881
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpTruckOffsetSw(Z)V

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 885
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getNgpTipsMode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_tips_mode:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->putRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;Ljava/lang/Boolean;)V

    .line 887
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpTipsMode(I)V

    add-int/lit8 p1, p1, 0x1

    .line 891
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_2

    .line 892
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpVoiceChangeLane(Z)V

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lez p1, :cond_7

    if-nez p2, :cond_7

    .line 897
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_close:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    :cond_3
    const-string p1, "setNgpEnable: \u6062\u590dngp\u5b50\u9879"

    .line 900
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 901
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_truck_offset:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 903
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_truck_offset:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->clearRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)V

    .line 904
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpTruckOffsetSw(Z)V

    move v2, v3

    .line 908
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_tips_mode:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 909
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;->xpilot_ngp_tips_mode:Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->clearRestoreState(Lcom/xiaopeng/carcontrol/viewmodel/scu/BtnID;)V

    .line 911
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpTipsMode(I)V

    add-int/lit8 v2, v2, 0x1

    .line 915
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getNgpVoiceChangeLane()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v0, :cond_6

    .line 916
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setNgpVoiceChangeLane(Z)V

    add-int/lit8 v2, v2, 0x1

    :cond_6
    if-lez v2, :cond_7

    if-nez p2, :cond_7

    .line 921
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->toast_related_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setNgpNewAflEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpNewAflEnable(Z)V

    return-void
.end method

.method public setNgpRemindMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpRemindMode(I)V

    return-void
.end method

.method public setNgpTipsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpTipsMode(I)V

    return-void
.end method

.method public setNgpTruckOffsetSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpTruckOffsetSw(Z)V

    return-void
.end method

.method public setNgpVoiceChangeLane(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    return-void
.end method

.method public setOverseasElkMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elkMode"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasElkMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasElkMode(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasElkMode(I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasElkMode(I)V

    const-string p1, "isSupportXpilotLccBindLss"

    .line 310
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-eq p1, v1, :cond_3

    .line 311
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->setLccEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOverseasIslaMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setSpecialSasMode(I)V

    return-void
.end method

.method public setOverseasLkaMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lkaMode"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasLkaMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasLkaMode(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasLkaMode(I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasLkaMode(I)V

    :goto_0
    return-void
.end method

.method public setParkSoundEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParkSoundEffect with invalid effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ScuBaseViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1017
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setParkSoundEffect(I)V

    :goto_1
    return-void
.end method

.method public setPhoneParkSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setPhoneParkSw(Z)V

    return-void
.end method

.method public setRctaEnable()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 242
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 253
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRctaState(Z)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRctaState(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRctaState(Z)V

    :goto_0
    return-void
.end method

.method public setRcwEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 213
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 224
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRcwState(Z)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRcwState(Z)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRcwState(Z)V

    :goto_0
    return-void
.end method

.method public setWogSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setWogSw(Z)V

    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method

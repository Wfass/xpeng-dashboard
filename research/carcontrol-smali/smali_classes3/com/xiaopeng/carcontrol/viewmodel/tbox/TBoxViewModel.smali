.class public Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;
.super Ljava/lang/Object;
.source "TBoxViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/tbox/ITboxViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBoxViewModel"


# instance fields
.field private digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

.field private digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

.field private final mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDigitalKeyExistData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoldierSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mSoldierSwData:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mDigitalKeyExistData:Landroidx/lifecycle/MutableLiveData;

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_tbox"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    .line 36
    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic lambda$startSMSVerification$0()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/IpcRouterService;->startSMSVerification()V

    return-void
.end method

.method private showDigitalKeyUnregisterFailedDialog()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x360

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v2

    const/16 v3, 0x320

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 115
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 116
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->dialog_digital_key_unregister_failed:I

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_retry:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$TyAkhmAbuMOeym3NTg83Ochv8Cc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$TyAkhmAbuMOeym3NTg83Ochv8Cc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    return-void
.end method

.method private showDigitalKeyUnregisterSuccessDialog()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x360

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v2

    const/16 v3, 0x320

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->dp2px(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 100
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 101
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->dialog_digital_key_unregister_success:I

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->btn_complete:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$GHp5X5FOEzLhh6_PH8RPM46HO5c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$GHp5X5FOEzLhh6_PH8RPM46HO5c;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    return-void
.end method


# virtual methods
.method public getDigitalKeyExistData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mDigitalKeyExistData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSoldierSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mSoldierSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSoldierSwStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->getSoldierSwStatus()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$showDigitalKeyUnregisterFailedDialog$2$TBoxViewModel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->setTboxDigitalKeyAllDelete()V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogFailed:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showDigitalKeyUnregisterSuccessDialog$1$TBoxViewModel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->digitalKeyUnregisterDialogSuccess:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method

.method public onDigitalKeyExistStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exist"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mDigitalKeyExistData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDigitalKeyUnregisterStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->showDigitalKeyUnregisterSuccessDialog()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->showDigitalKeyUnregisterFailedDialog()V

    :goto_0
    return-void
.end method

.method public onSoldierStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mSoldierSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setNetWorkType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setNetWorkType(I)V

    return-void
.end method

.method public setSoldierSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setSoldierSw(I)V

    return-void
.end method

.method public setTboxDigitalKeyAllDelete()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setTboxDigitalKeyAllDelete()V

    return-void
.end method

.method public setTboxDigitalKeyExistQuery()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setTboxDigitalKeyExistQuery()V

    return-void
.end method

.method public startSMSVerification()V
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$SD-m3LbHc_CPhvgLL5LuZPJoiJc;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/tbox/-$$Lambda$TBoxViewModel$SD-m3LbHc_CPhvgLL5LuZPJoiJc;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

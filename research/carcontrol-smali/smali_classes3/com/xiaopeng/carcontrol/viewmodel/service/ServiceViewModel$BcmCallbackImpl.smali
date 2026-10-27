.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BcmCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4347
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 4347
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCwcChargeErrorStateChanged$0$ServiceViewModel$BcmCallbackImpl()V
    .locals 2

    .line 4484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1802(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    return-void
.end method

.method public synthetic lambda$onCwcFRChargeErrorStateChanged$1$ServiceViewModel$BcmCallbackImpl()V
    .locals 2

    .line 4542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    return-void
.end method

.method public onAsEasyLoadingModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    return-void
.end method

.method public onAsMaintainModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 4776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsMaintainModeChanged: previous mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4778
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 4779
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveMode(I)V

    .line 4781
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2702(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method

.method public onBackDefrostChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 4434
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_back_defrost"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onBcmBrkPedalStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const-string v0, "isSupportMcuKeyOpenFailed"

    .line 4661
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4664
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2102(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void

    .line 4670
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 4671
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBcmReadyEnableState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 4679
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBcmBrkPedalStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreBrkPedalStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4681
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkBrkPedalStatus(I)V

    return-void

    .line 4674
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    .line 4675
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2102(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method

.method public onBcmReadyStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const-string v0, "isSupportMcuKeyOpenFailed"

    .line 4686
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4691
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    const-string p1, "ServiceViewModel"

    const-string v1, "Bcm ready enable, dismiss [ready disable] dialog"

    .line 4692
    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4693
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    goto :goto_0

    .line 4695
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    :goto_0
    return-void
.end method

.method public onBonnetStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkBonnetOpened(I)V

    return-void
.end method

.method public onCentralLockStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 4405
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "central_lock"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onChildLockChanged(I)V
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

.method public onCwcChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCwcChargeErrorStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 4483
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1802(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    .line 4484
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$PkskL3j_JPYRa_KPvD8mGT-Mvuo;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$PkskL3j_JPYRa_KPvD8mGT-Mvuo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;)V

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "isSupportCwcFR"

    .line 4474
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4475
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingabnormal:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fl_err:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_1

    .line 4478
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingabnormal:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_err:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCwcChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCwcChargeStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFindingKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4441
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const-string v1, "isSupportCwcFR"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4453
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4454
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingcompleted:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fl_charge_done:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_0

    .line 4457
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingcompleted:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_charge_done:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_0

    .line 4444
    :cond_2
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4445
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdcharging:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fl_charging:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_0

    .line 4448
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdcharging:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_charging:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCwcFRChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCwcFRChargeErrorStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 4541
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    .line 4542
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$f_WU8j99E3XH8EdsDuvatZ94ZQQ;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$f_WU8j99E3XH8EdsDuvatZ94ZQQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;)V

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 4537
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingabnormal:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fr_err:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCwcFRChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCwcFRChargeStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFindingKeyForPsn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4521
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdchargingcompleted:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fr_charge_done:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_0

    .line 4517
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdcharging:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->cwc_fr_charging:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDoorStateChanged([I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 4350
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 4353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoorStateChanged mIsDrvDoorOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPsnDoorOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", door state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4354
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    .line 4353
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportWelcomeMode"

    .line 4355
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;[I)V

    :cond_1
    const-string v0, "isSupportPsnWelcomeMode"

    .line 4358
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDoorStateChanged mIsPsnDoorOpened="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;[I)V

    .line 4362
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    if-eqz v0, :cond_3

    aget v0, p1, v2

    if-nez v0, :cond_3

    .line 4364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    .line 4366
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleRearMirrorWhenGoOn()V

    .line 4368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Drv Seat Will Move to the Target Pos in Exhibition Mode When FL_Door Closed without Drv Seat occupation"

    .line 4369
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v4, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    sget v6, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    sget v7, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_LEG:I

    sget v8, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    .line 4374
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    aget v0, p1, v3

    if-nez v0, :cond_4

    .line 4376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Psn Seat Will Move to the Target Pos in Exhibition Mode When FR_Door Closed without Psn Seat occupation"

    .line 4377
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    sget v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    sget v4, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    sget v5, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    sget v6, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    invoke-interface {v0, v1, v4, v5, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIII)V

    .line 4382
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    aget v1, p1, v2

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    .line 4383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    aget v1, p1, v3

    if-ne v1, v3, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    const-string v0, "isSupportSdc"

    .line 4386
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onDoorsStateChanged([I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onDrvBeltWaringChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4422
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    :cond_0
    return-void
.end method

.method public onDrvSeatOccupiedChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 4428
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drv_occupied"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onElcTrunkStateChanged(I)V
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

.method public onHighSpdCloseWinChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 4656
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;ZF)V

    return-void
.end method

.method public onLeftChildLockChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    return-void
.end method

.method public onLeftSdcDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4753
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onLeftSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public onLeftSdcSysRunningStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4736
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->updateSdcRunningState(ZI)V

    .line 4737
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4738
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onLeftSdcSysStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onMirrorReverseModeChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needMove"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 4398
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p2, p2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 4399
    invoke-interface {p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4398
    :goto_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->handleReverseMirror(Z)V

    :cond_1
    return-void
.end method

.method public onRightChildLockChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    return-void
.end method

.method public onRightSdcDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 4761
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4762
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onRightSdcDoorPosChanged(I)V

    :cond_0
    return-void
.end method

.method public onRightSdcSysRunningStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 4744
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->updateSdcRunningState(ZI)V

    .line 4745
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4746
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onRightSdcSysStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onSunShadeInitializationChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialized"
        }
    .end annotation

    .line 4768
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4769
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initialized:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 4771
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2602(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z

    return-void
.end method

.method public onTrunkStateChanged(I)V
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

.method public onTtmLampConnectStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4803
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const/16 v0, 0xbc0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onUnlockReqSrcChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqSrc"
        }
    .end annotation

    const-string v0, "isSupportMcuKeyOpenFailed"

    .line 4715
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnlockReqSrcChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4721
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2402(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    .line 4722
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUnlockReqSrc(I)V

    goto :goto_0

    .line 4725
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2402(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    .line 4726
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUnlockReqSrc(I)V

    :goto_0
    return-void
.end method

.method public onWiperIntervalChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiper"
        }
    .end annotation

    return-void
.end method

.method public onWiperSensitivityChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    return-void
.end method

.method public onWiperSensitivityKeyDown()V
    .locals 4

    .line 4637
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWiperSensitivity()I

    move-result v0

    .line 4638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWiperSensitivityKeyDown, currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 4640
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWiperSensitivity(IZ)V

    .line 4641
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWiperSensitivity(I)V

    :cond_0
    return-void
.end method

.method public onWiperSensitivityKeyUp()V
    .locals 4

    .line 4627
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWiperSensitivity()I

    move-result v0

    .line 4628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWiperSensitivityKeyUp, currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 4630
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    add-int/2addr v0, v1

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWiperSensitivity(IZ)V

    .line 4631
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWiperSensitivity(I)V

    :cond_0
    return-void
.end method

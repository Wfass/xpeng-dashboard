.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EspCallbackImpl"
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

    .line 5379
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5379
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public onAvhFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5443
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    :cond_0
    return-void
.end method

.method public onAvhStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5422
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5423
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhSw()Z

    move-result v0

    .line 5424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvhChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", avhSw="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAvhSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 5434
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    .line 5435
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "avh_sw_notify"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onEspChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 5382
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5385
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getLastEspMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5386
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->esp_auto_on_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 5390
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspSw()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 5391
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspSw(Z)V

    .line 5394
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setLastEspMode(Z)V

    :cond_2
    return-void
.end method

.method public onEspFaultChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5412
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkEspCondition()V

    .line 5413
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5414
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "esp_sw_notify"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public onEspSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 5400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspFault()Z

    move-result v0

    .line 5401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEspSwChanged: isEspFault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    .line 5404
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "esp_sw_notify"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public onHbcRequestStatusChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHbcRequestStatusChanged: status="

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

    if-ne p1, v0, :cond_1

    const-string p1, "isSupportEpbWarning"

    .line 5460
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5461
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5463
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->isIbtFault()Z

    move-result p1

    .line 5464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHbcRequestStatusChanged: isIgOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isIbtFault="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5467
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    :cond_1
    return-void
.end method

.method public onHdcChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public onHdcFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    return-void
.end method

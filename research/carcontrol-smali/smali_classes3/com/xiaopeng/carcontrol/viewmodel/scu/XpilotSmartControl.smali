.class public Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;
.super Ljava/lang/Object;
.source "XpilotSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XpilotSmartControl"


# instance fields
.field private mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const-string/jumbo v1, "xp_vcu"

    .line 33
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v1, "xp_mcu"

    .line 35
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl$Holder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismissCloseMrrDialog()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->dismissCloseMrrDialog()V

    return-void
.end method

.method public enterTelescopeRange()V
    .locals 3

    const-string v0, "XpilotSmartControl"

    const-string v1, "enterTelescopeRange"

    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 42
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setGeoFenceStatus(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isTelescopeRemindAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->showCloseMrrDialog()V

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setTelescopeRemindTs(J)V

    :cond_1
    return-void
.end method

.method public exitTelescopeRange()V
    .locals 3

    const-string v0, "XpilotSmartControl"

    const-string v1, "exitTelescopeRange"

    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setGeoFenceStatus(Z)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->dismissCloseMrrDialog()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->openMrrByUser(I)V

    return-void
.end method

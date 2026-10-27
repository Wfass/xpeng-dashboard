.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsmCallbackImpl"
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

    .line 5473
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5473
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public onDrvBeltWaringChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    :cond_0
    if-nez p1, :cond_1

    .line 5488
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    if-eqz v0, :cond_1

    .line 5489
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5490
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    if-nez p1, :cond_2

    .line 5491
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    .line 5492
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkWelcomeModeGoOff()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDrvSeatLumberSwitchPressStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrvSeatLumberSwitchPressStateChanged status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    return-void

    .line 5514
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDriverSeatLumberSwitchMode()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5521
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_legreset_adjustment:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osddrvlegrestadjustment:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_legreset_adjustment_description:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    goto :goto_0

    .line 5517
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_lumbar_adjustment:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osddrvlumbaradjustment:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_lumbar_adjustment_description:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :goto_0
    return-void
.end method

.method public onPsnBeltWaringChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "isSupportPsnWelcomeMode"

    .line 5498
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 5499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    if-eqz v0, :cond_0

    .line 5500
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5501
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    if-nez p1, :cond_1

    .line 5502
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    .line 5503
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkPsnWelcomeModeGoOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPsnOnSeatChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 5477
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psn_occupied"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onPsnSeatLumberSwitchPressStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPsnSeatLumberSwitchPressStateChanged status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    return-void

    .line 5535
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPassengerSeatLumberSwitchMode()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5542
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_legreset_adjustment:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdpsnlegrestadjustment:I

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_legreset_adjustment_description:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;IIII)V

    goto :goto_0

    .line 5538
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_lumbar_adjustment:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdpsnlumbaradjustment:I

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->seat_lumbar_adjustment_description:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;IIII)V

    :goto_0
    return-void
.end method

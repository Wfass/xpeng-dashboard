.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LluCallbackImpl"
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

    .line 5561
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5561
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public onLluEnableChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 5565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 5567
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluWakeWaitSw()Z

    move-result v2

    invoke-interface {p1, v2, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 5568
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluSleepSw()Z

    move-result v2

    invoke-interface {p1, v2, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 5569
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluChargingSw()Z

    move-result v2

    invoke-interface {p1, v2, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5571
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 5572
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 5573
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

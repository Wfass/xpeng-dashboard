.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 270
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v4, v4, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getApbSystemStatus()I

    move-result v4

    if-ne v4, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 272
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGearChange to park, handleEpb: isIgOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCarStop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEpbReleased="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ServiceViewModel"

    invoke-static {v5, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 275
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->epb_title:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdparking:I

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->pull_epb_desc:I

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_3
    return-void
.end method

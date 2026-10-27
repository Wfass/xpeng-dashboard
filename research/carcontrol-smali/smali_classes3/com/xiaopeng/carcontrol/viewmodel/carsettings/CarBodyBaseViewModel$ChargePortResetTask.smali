.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;
.super Ljava/lang/Object;
.source "CarBodyBaseViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargePortResetTask"
.end annotation


# instance fields
.field private final isLeft:Z

.field private mRepeatCount:I

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "isLeft"
        }
    .end annotation

    .line 998
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 996
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    .line 999
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;ZLcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;)V
    .locals 0

    .line 994
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1004
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1005
    :goto_0
    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    const-wide/16 v4, 0x1770

    const-string v6, ", repeatCount: "

    const-string v7, "CarBodyBaseViewModel"

    if-nez v3, :cond_1

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargePortResetTask: unlock, isLeft: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChargePortUnlock(II)V

    .line 1008
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    goto/16 :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargePortResetTask: lock, isLeft: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChargePortUnlock(II)V

    .line 1013
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->mRepeatCount:I

    goto :goto_1

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-object v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    if-eqz v4, :cond_3

    move v1, v2

    :cond_3
    invoke-interface {v3, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getChargePortUnlock(I)I

    move-result v1

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChargePortResetTask: result state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLeft: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_5

    .line 1022
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    invoke-static {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;Z)V

    move v1, v3

    .line 1024
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->isLeft:Z

    invoke-interface {v0, v3, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;->onChargePortChanged(ZIZ)V

    .line 1026
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortResetTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

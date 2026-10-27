.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;
.super Ljava/lang/Object;
.source "CarBodyBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArsWorkModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleArsWorkModeChanged(I)V

    return-void
.end method

.method public onChargePortChanged(ZIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "state",
            "isMock"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChargePortChanged:isLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isMock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CarBodyBaseViewModel"

    invoke-static {v0, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p1, "onChargePortChanged: ChargePortResetTask is Running, can not update UI"

    .line 165
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-ne p2, p3, :cond_3

    .line 171
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "onChargePortChanged: start ChargePortTimeoutTask"

    .line 172
    invoke-static {v0, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortTimeoutTask;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    const/4 v2, 0x0

    invoke-direct {p3, v0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortTimeoutTask;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;ZLcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32c8

    invoke-virtual {v0, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p3, "onChargePortChanged: ChargePortTimeoutTask is running"

    .line 177
    invoke-static {v0, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$ChargePortTimeoutTask;

    if-eqz p3, :cond_4

    const-string v2, "onChargePortChanged: remove ChargePortTimeoutTask"

    .line 182
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 188
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {p3, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleChargePortChanged(ZI)V

    return-void
.end method

.method public onChildLockChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;I)V

    return-void
.end method

.method public onChildModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleChildModeChanged(Z)V

    return-void
.end method

.method public onColumnTravelAdjStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleColumnTravelAdjStatusChange(Z)V

    return-void
.end method

.method public onCwcChargeErrorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcChargeErrorStateChanged(I)V

    return-void
.end method

.method public onCwcChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcChargeStateChanged(I)V

    return-void
.end method

.method public onCwcFRChargeErrorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcFRChargeErrorStateChanged(I)V

    return-void
.end method

.method public onCwcFRChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcFRChargeStateChanged(I)V

    return-void
.end method

.method public onCwcFRSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcFRSwChanged(Z)V

    return-void
.end method

.method public onCwcRLChargeErrorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRLChargeErrorStateChanged(I)V

    return-void
.end method

.method public onCwcRLChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRLChargeStateChanged(I)V

    return-void
.end method

.method public onCwcRLSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRLSwChanged(Z)V

    return-void
.end method

.method public onCwcRRChargeErrorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRRChargeErrorStateChanged(I)V

    return-void
.end method

.method public onCwcRRChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRRChargeStateChanged(I)V

    return-void
.end method

.method public onCwcRRSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcRRSwChanged(Z)V

    return-void
.end method

.method public onCwcSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleCwcSwChanged(Z)V

    return-void
.end method

.method public onDriveAutoLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleDriveLockChanged(Z)V

    return-void
.end method

.method public onEnvironmentModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleEnvironmentModeChange(I)V

    return-void
.end method

.method public onLeaveAutoLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleLeaveAutoLock(Z)V

    return-void
.end method

.method public onLeftChildLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleLeftChildLockChanged(Z)V

    return-void
.end method

.method public onLeftDoorHotKeyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleLeftHotKeyChanged(Z)V

    return-void
.end method

.method public onLockResponseNewChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleLockTypeNewChanged(I)V

    return-void
.end method

.method public onNearAutoUnlockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleNearAutoUnlock(Z)V

    return-void
.end method

.method public onNfcStopSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleNfcStopSwChanged(Z)V

    return-void
.end method

.method public onParkingAutoUnlockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleParkUnlockChanged(Z)V

    return-void
.end method

.method public onPhoneRemindSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handlePhoneRemindSwChanged(Z)V

    return-void
.end method

.method public onPollingOpenCfgChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleInductionLock(Z)V

    return-void
.end method

.method public onRearWiperRepairModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleRearWiperRepairModeChanged(Z)V

    return-void
.end method

.method public onRightChildLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleRightChildLockChanged(Z)V

    return-void
.end method

.method public onRightDoorHotKeyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleRightHotKeyChanged(Z)V

    return-void
.end method

.method public onStealthModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleStealModeChanged(Z)V

    return-void
.end method

.method public onUnLockResponseNewChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleUnLockTypeNewChanged(I)V

    return-void
.end method

.method public onUnlockResponseChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleUnlockTypeChanged(I)V

    return-void
.end method

.method public onWiperIntervalChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiper"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleWiperIntervalModeChanged(I)V

    return-void
.end method

.method public onWiperRepairModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleWiperRepairModeChanged(Z)V

    return-void
.end method

.method public onWiperSensitivityChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleWiperSensitivityChanged(I)V

    return-void
.end method

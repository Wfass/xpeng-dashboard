.class Lcom/xiaopeng/unity/capsule/CapsuleManager$4;
.super Ljava/lang/Object;
.source "CapsuleManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/capsule/ICapsuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/capsule/CapsuleManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpConnectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onA2dpConnectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAvailableMileageChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAvailableMileageChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBtDeviceNameChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onBtDeviceNameChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCapsuleSeatStatusChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCapsuleSeatStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDatetimeChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onDatetimeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvHeadrestStatusChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvHeadrestStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvSeatOccupiedChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDvrVipSeatStatusChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDvrVipSeatStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onElectricityPercentChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onElectricityPercentChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAcModeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHvacAcModeChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAutoModeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHvacAutoModeChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacCirculationModeChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHvacCirculationModeChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDriverTempChange(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHvacDriverTempChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacPowerModeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHvacPowerModeChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onInDcChargeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inDcChargeChange"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onInDcChargeChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPauseByLossAudioFocus()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onPauseByLossAudioFocus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPauseMusic()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onPauseMusic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnHeadrestStatusChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnHeadrestStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatOccupiedChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnSeatOccupiedChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnVipSeatStatusChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnVipSeatStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearSeatStatusChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearSeatStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResumeByGainAudioFocus()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onResumeByGainAudioFocus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlOnSeatChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRlOnSeatChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRmOnSeatChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRmOnSeatChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrOnSeatChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRrOnSeatChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSfsEnableChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSfsEnableChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowAlarmDialog()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onShowAlarmDialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSleepSecSeatStatusChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSleepSecSeatStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechEnd()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onSpeechEnd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechStart()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onSpeechStart"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartMusic()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onStartMusic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$2800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeStop()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onTimeStop"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTtsPlayEnd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tts"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string v1, "onTtsPlayEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateTime(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainingTime"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onUpdateTime"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWindowStateChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$1700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

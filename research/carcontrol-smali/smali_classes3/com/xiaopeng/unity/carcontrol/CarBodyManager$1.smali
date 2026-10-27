.class Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;
.super Ljava/lang/Object;
.source "CarBodyManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/CarBodyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArsWorkModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onArsWorkModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$2300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBonnetStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isClosed"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBonnetStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$500(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBrakeLightChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBrakeLightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$2100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCarLicensePlateCallback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "license"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    const-string v1, "onCarLicensePlateCallback"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCentralLockStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCentralLockStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$700(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onChargePortStateChanged(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "isClosed"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChargePortStateChanged"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDaytimeRunningLightChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDaytimeRunningLightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$2200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoorChanged(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isClosed"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDoorChanged"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$600(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoubleFlashBeamChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDoubleFlashBeamChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$800(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onElcTrunkPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onElcTrunkPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEnvironmentModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEnvironmentModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$2400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHighBeamChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHighBeamChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onInnerPositionBeamStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onInnerPositionBeamStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSdcDoorPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftSdcDoorPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1700(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLowBeamChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLowBeamChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$900(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOuterPositionBeamStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOuterPositionBeamStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPositionBeamChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPositionBeamChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearFogLampChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearFogLampChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReverseLampChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onReverseLampChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1600(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSdcDoorPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightSdcDoorPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1800(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaberModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSaberModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcLeftRadarDisLevelChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcLeftRadarDisLevelChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$1900(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcRightRadarDisLevelChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcRightRadarDisLevelChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$2000(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isClosed"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrunkStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->access$300(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/xiaopeng/unity/carcontrol/SituationManager$1;
.super Ljava/lang/Object;
.source "SituationManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SituationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SituationManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirSuspensionRepairModeChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAirSuspensionRepairModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAllFaultCodeUpdate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onAllFaultCodeUpdate"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoSelfCheckStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoSelfCheckStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDigitalKeyExistStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasDigitalKey"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDigitalKeyExistStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFaultDetailUpdate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onFaultDetailUpdate"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyrePressureChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onFrontLeftTyrePressureChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreSensorWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontLeftTyreSensorWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreTempChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontLeftTyreTempChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreTempWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontLeftTyreTempWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontLeftTyreWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreWarningStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontLeftTyreWarningStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyrePressureChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onFrontRightTyrePressureChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreSensorWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontRightTyreSensorWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreTempChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontRightTyreTempChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreTempWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontRightTyreTempWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontRightTyreWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreWarningStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onFrontRightTyreWarningStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMobilePhoneUpdate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onMobilePhoneUpdate"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyrePressureChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onRearLeftTyrePressureChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1600(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreSensorWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLeftTyreSensorWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreTempChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLeftTyreTempChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreTempWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLeftTyreTempWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLeftTyreWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreWarningStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearLeftTyreWarningStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyrePressureChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onRearRightTyrePressureChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreSensorWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearRightTyreSensorWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreTempChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearRightTyreTempChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreTempWarningChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearRightTyreTempWarningChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$2500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearRightTyreWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreWarningStatusChanged(I)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearRightTyreWarningStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearWiperRepairModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearWiperRepairModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReserveRemoteDiagnoseUpdate(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onReserveRemoteDiagnoseUpdate"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3700(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSelfCheckProgressChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onSelfCheckProgressChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSelfCheckStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSelfCheckStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$4100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowAllFaultView(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onShowAllFaultView"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3800(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowFaultDetailView(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onShowFaultDetailView"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3900(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTotalMileageChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "onTotalMileageChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTpmsCalibrationStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onTpmsCalibrationStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3000(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWiperRepairModeChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWiperRepairModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$3100(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ontMileageAChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "ontMileageAChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$400(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ontMileageBChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "ontMileageBChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$500(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ontMileageSinceChargeChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "ontMileageSinceChargeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ontMileageSinceStartChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SituationManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const-string v1, "ontMileageSinceStartChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->access$300(Lcom/xiaopeng/unity/carcontrol/SituationManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

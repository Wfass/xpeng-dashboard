.class Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SettingsManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsWelcomeModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsWelcomeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoEasyLoadModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoEasyLoadModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoPowerOffConfigStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoPowerOffConfigStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoWindowLockSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoWindowLockSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasLowSpdEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAvasLowSpdEffectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasLowSpdEnableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAvasLowSpdEnableChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAvhSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAvhSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAwdSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAwdSettingChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBackBeltWaringChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBackBeltWaringChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onBootEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBootEffectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCarpetLightWelcomeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCarpetLightWelcomeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcFRSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCwcFRSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRLSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCwcRLSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRRSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCwcRRSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCwcSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoorHandleSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDoorHandleSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoorKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDoorKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDsmStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDsmStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEasyLoadingModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEasyLoadingModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEpbStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEpbStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEsbModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEsbModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEspBpfModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEspBpfModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEspCstSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEspCstSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEspSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEspSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHdcSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHdcSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHighSpdCloseWinSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHighSpdCloseWinSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeaveLockStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeaveLockStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftChildLockChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftChildLockChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSlideDoorModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftSlideDoorModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLockResponseNewChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLockResponseNewChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMicrophoneMuteSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMicrophoneMuteSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNGearWarningSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNGearWarningSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNearUnlockStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNearUnlockStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onParkDropdownMenuChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onParkDropdownMenuChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onParkingAutoUnlockSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onParkingAutoUnlockSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneRemindChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remind"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPhoneRemindChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPollingLightWelcomeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPollingLightWelcomeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSrsStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnSrsStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnWelcomeModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnWelcomeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearSeatWelcomeModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearSeatWelcomeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightChildLockChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightChildLockChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSlideDoorModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightSlideDoorModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRwsModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRwsModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcBrakeCloseDoorCfgChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcBrakeCloseDoorCfgChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcKeyCfgChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcKeyCfgChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcMaxDoorOpeningAngleChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcMaxDoorOpeningAngleChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSdcWinAutoDown(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSdcWinAutoDown"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecLeftBeltWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecLeftBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecMidBeltWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecMidBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRightBeltWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRightBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSnowModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSnowModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStopNfcSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onStopNfcSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrailerModeStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrailerModeStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5000(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdLeftBeltWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdLeftBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdMidBeltWarningStateChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdMidBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRightBeltWarningStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRightBeltWarningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3600(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkFullOpenPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrunkFullOpenPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2500(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkSensorSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrunkSensorSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$2400(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTtmLampConnectStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connect"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTtmLampConnectStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTtmStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTtmStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTtmSysErrStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isErr"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTtmSysErrStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$5200(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUnLockResponseNewChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onUnLockResponseNewChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$300(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUnlockResponseChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onUnlockResponseChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onVMCSystemStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onVMCSystemStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6800(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWelcomeModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWelcomeModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWiperSensitivityChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWiperSensitivityChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$3900(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$4700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onZwalkModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onZwalkModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->access$6700(Lcom/xiaopeng/unity/carcontrol/SettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

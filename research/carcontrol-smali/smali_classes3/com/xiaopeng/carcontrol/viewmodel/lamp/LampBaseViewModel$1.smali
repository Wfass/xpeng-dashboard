.class Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;
.super Ljava/lang/Object;
.source "LampBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLampHeightChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleAutoLampHeightChanged(Z)V

    return-void
.end method

.method public onCarpetLightWelcomeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleCarpetLightWelcomeStateChange(Z)V

    return-void
.end method

.method public onDaytimeRunningLightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleDaytimeRunningLightChanged(I)V

    return-void
.end method

.method public onDomeLightBrightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->parseDomeLightBrightness(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleDomeLightBrightness(I)V

    return-void
.end method

.method public onDomeLightStChanged(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lightType",
            "status"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDomeLightStChanged pos: %1d, status: %2d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleDomeLightState(Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-static {v4, p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 182
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDomeLightStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleDomeLightState(I)V

    return-void
.end method

.method public onHeadLampModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleHeadLampModeChanged(I)V

    return-void
.end method

.method public onHighBeamLampStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleHighBeamLampChanged(Z)V

    return-void
.end method

.method public onInnerParkingLampStatesChanged([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 164
    array-length p1, p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 168
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onLampHeightLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLampHeightLevelChanged(I)V

    return-void
.end method

.method public onLightMeHomeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLightMeHomeChanged(Z)V

    return-void
.end method

.method public onLightMeHomeTimeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCfg"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLightMeHomeTime(I)V

    return-void
.end method

.method public onLowBeamLampStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLowBeamLampChanged(Z)V

    return-void
.end method

.method public onLowBeamOffConfirmStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivated"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLowBeamOffConfirmStateChanged(Z)V

    return-void
.end method

.method public onOuterParkingLampStatesChanged([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 154
    array-length p1, p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 158
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onParkLightFmbChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleParkLightRelatedFMBLightState(I)V

    return-void
.end method

.method public onParkingLampStatesChanged([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleParkingLampStatesChanged([I)V

    return-void
.end method

.method public onPollingLightWelcomeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handlePollingWelcomeStateChange(Z)V

    return-void
.end method

.method public onPositionLampStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handlePositionLampChanged(Z)V

    return-void
.end method

.method public onRearFogLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleRearFogLampChanged(Z)V

    return-void
.end method

.method public onRearLogoLightStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleRearLogoLightStatusChanged(Z)V

    return-void
.end method

.method public onRearLogoLightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleRearLogoLightSwChanged(Z)V

    return-void
.end method

.method public onTurnLampStateChanged([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->fromBcmStatus([I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleTurnLampChanged(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V

    return-void
.end method

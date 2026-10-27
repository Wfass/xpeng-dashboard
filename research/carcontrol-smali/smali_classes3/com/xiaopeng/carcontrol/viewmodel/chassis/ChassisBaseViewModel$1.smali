.class Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;
.super Ljava/lang/Object;
.source "ChassisBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsCampingModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsCampingModeChanged(Z)V

    return-void
.end method

.method public onAsEasyLoadingModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsEasyLoadingModeChanged(Z)V

    return-void
.end method

.method public onAsHeightModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsHeightModeChanged(I)V

    return-void
.end method

.method public onAsLevlingModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsLevlingModeChanged(I)V

    return-void
.end method

.method public onAsMaintainModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsRepairModeChanged(Z)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsEngineerModeChanged(I)V

    return-void
.end method

.method public onAsSoftModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsSoftModeChanged(I)V

    return-void
.end method

.method public onAsWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleAsWelcomeModeChanged(Z)V

    return-void
.end method

.method public onEbwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleEbwChanged(Z)V

    return-void
.end method

.method public onTrailerHitchStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mInTtmRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "ChassisViewModel"

    const-string v0, "In TtmRunning, Do not report Middle error"

    .line 107
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    :goto_0
    return-void
.end method

.method public onTrailerModeStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTrailerModeChanged(Z)V

    return-void
.end method

.method public onTtmHookMotorStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmHookMotorStatusChanged(I)V

    return-void
.end method

.method public onTtmSysErrStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isErr"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSysErrStatusChanged(Z)V

    return-void
.end method

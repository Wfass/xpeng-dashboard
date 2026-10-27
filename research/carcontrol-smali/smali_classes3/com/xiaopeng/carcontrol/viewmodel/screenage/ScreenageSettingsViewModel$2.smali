.class Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;
.super Ljava/lang/Object;
.source "ScreenageSettingsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrivingGuardDataChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->DrivingGuardDataChanged(Z)V

    return-void
.end method

.method public onDrivingGuardPerspectiveSeg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->DrivingGuardPerspectiveSeg(I)V

    return-void
.end method

.method public onNarPerspectiveSelectionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->NarPerspectiveSelectionChanged(I)V

    return-void
.end method

.method public onSentinelModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->SentinelModeChanged(Z)V

    return-void
.end method

.method public onSteeringImageFullSelectionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->SteeringImageFullSelectionChanged(I)V

    return-void
.end method

.method public onSteeringImageFullStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->SteeringImageFullStateChanged(Z)V

    return-void
.end method

.method public onTransCarbodyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->TransCarbodyChanged(Z)V

    return-void
.end method

.method public onTransChassisChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->TransChassisChanged(Z)V

    return-void
.end method

.method public onTurnSignalActivateRearVideoChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->TurnSignalActivateRearSideVideoChanged(Z)V

    return-void
.end method

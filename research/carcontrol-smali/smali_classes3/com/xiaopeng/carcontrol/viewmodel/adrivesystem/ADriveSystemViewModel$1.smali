.class Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;
.super Ljava/lang/Object;
.source "ADriveSystemViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyFaultIndicationChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->BodyFaultIndicationChanged(Z)V

    return-void
.end method

.method public onDrivingRiskWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->DrivingRiskWarningChanged(Z)V

    return-void
.end method

.method public onGreenLightRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->GreenLightRemindStateChanged(Z)V

    return-void
.end method

.method public onIntelligentOverspeedRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->IntelligentOverspeedRemindStateChanged(Z)V

    return-void
.end method

.method public onStartRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->StartRemindStateChanged(Z)V

    return-void
.end method

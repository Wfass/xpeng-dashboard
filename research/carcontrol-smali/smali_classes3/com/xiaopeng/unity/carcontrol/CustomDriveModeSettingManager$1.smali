.class Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;
.super Ljava/lang/Object;
.source "CustomDriveModeSettingManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsHeightModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsHeightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$100(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAsSoftModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsSoftModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$200(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCdcModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdcMode"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCdcModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$600(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDriveSubConfigChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    const-string v1, "onDriveSubConfigChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$700(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEnergyRecycleGradeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEnergyRecycleGradeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$400(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPowerResponseChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPowerResponseChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$300(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSteeringEpsModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSteeringEpsModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->access$500(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

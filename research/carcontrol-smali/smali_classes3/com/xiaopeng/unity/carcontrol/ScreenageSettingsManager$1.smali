.class Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;
.super Ljava/lang/Object;
.source "ScreenageSettingsManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrivingGuardDataChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrivingGuardDataChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrivingGuardPerspectiveSegChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrivingGuardPerspectiveSegChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNarPerspectiveSelectionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNarPerspectiveSelectionChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$900(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNraStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNraStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNraSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNraSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$700(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSteeringImageFullSelectionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSteeringImageFullSelectionChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSteeringImageFullStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSteeringImageFullStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTransCarbodyChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTransCarbodyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTransChassisChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTransChassisChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTurnAssistChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTurnAssistChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$600(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTurnSignalActivateRearVideoChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTurnSignalActivateRearVideoChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->access$800(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

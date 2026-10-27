.class Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;
.super Ljava/lang/Object;
.source "ScenarioManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ScenarioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCinemaModeEnd(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCinemaModeEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$800(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCinemaModeStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    const-string v1, "onCinemaModeStart"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$700(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeditationModeEnd(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMeditationModeEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeditationModeStart(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onMeditationModeStart"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRescueModeEnd()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    const-string v1, "onRescueModeEnd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRescueModeStart()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    const-string v1, "onRescueModeStart"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSleepModeEnd(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSleepModeEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$600(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSleepModeStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    const-string v1, "onSleepModeStart"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onViceMeditationModeEnd(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onViceMeditationModeEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onViceMeditationModeStart(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onViceMeditationModeStart"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onVipSeatModeEnd(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onVipSeatModeEnd"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onVipSeatModeStart(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVoiceSource"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onVipSeatModeStart"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->access$900(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

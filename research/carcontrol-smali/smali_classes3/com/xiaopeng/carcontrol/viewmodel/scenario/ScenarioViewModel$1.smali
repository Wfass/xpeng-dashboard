.class Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;
.super Ljava/lang/Object;
.source "ScenarioViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeditationModeStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;Z)V

    return-void
.end method

.method public onSpaceCapsuleCinemaStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;Z)V

    return-void
.end method

.method public onSpaceCapsuleSleepStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;Z)V

    return-void
.end method

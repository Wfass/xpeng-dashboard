.class Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;
.super Ljava/lang/Object;
.source "SeatControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SeatControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountGroupChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    const-string v1, "onAccountGroupChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvCushionPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvCushionPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvHorPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvHorPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvLegPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatAntiFatigueStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvSeatAntiFatigueStatus"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatLumberControlEnableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvSeatLumberControlEnableChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvTiltPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvTiltPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvVerPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDrvVerPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnHabitChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitId"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnHabitChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnHorPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnHorPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnLegPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatLumberControlEnableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnSeatLumberControlEnableChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnTiltPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnTiltPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnVerPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPsnVerPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRLHabitChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitId"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRLHabitChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRRHabitChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitId"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRRHabitChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRlSeatLegPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRlSeatPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlVipSeatStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRlVipSeatStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatLegPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRrSeatLegPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRrSeatPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrVipSeatStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRrVipSeatStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSeatLumberControlViewShow(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSeatLumberControlViewShow"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLTEasyErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLTEasyErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLTZeroErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLTZeroErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtEzOrZeroGStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtEzOrZeroGStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatHeReHeigPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatHeReHeigPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatHeReHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatHeReHorzPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatHorzPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatLeSuHeigPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatLeSuHeigPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatMoveStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatMoveStatus"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5400(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatZeroGravPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowLtSeatZeroGravPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRTEasyErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRTEasyErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRTZeroErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRTZeroErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtEzOrZeroGStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtEzOrZeroGStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatHeReHeigPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatHeReHeigPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatHeReHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatHeReHorzPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatHorzPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatHorzPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatLeSuHeigPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatLeSuHeigPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$2700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatMoveStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatMoveStatus"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5500(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatZeroGravPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSecRowRtSeatZeroGravPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    const-string v1, "onShow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$1900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSaveBtn(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drv",
            "isShow"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowSaveBtn"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSaveBtn(ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "drvSide",
            "rlSide",
            "rrSide",
            "isShow"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowSaveBtn"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLTFoldErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowLTFoldErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtFoldStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowLtFoldStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3600(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtFoldSuccessChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowLtFoldSuccessChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtSeatHeadVerticalPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowLtSeatHeadVerticalPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtSeatTiltPosChangedpos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowLtSeatTiltPosChangedpos"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowMidSeatHeadVerticalPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowMidSeatHeadVerticalPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5300(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRTFoldErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowRTFoldErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtFoldStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowRtFoldStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3700(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtFoldSuccessChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowRtFoldSuccessChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4100(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtSeatHeadVerticalPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowRtSeatHeadVerticalPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5200(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtSeatTiltPosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowRtSeatTiltPosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$5000(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowStowErr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowStowErr"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$4800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowStowStatusChanged(I)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowStowStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3800(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowStowSuccessChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrdRowStowSuccessChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->access$3900(Lcom/xiaopeng/unity/carcontrol/SeatControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

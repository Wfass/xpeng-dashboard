.class Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;
.super Ljava/lang/Object;
.source "MainControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/MainControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/MainControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoShowModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAutoShowModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$800(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onChargePortChanged(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "state"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChargePortChanged"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSdcSysRunningStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftSdcSysRunningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSlideDoorStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftSlideDoorStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSdcSysRunningStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightSdcSysRunningStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSlideDoorStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightSlideDoorStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$700(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkStateChanged(I)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrunkStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXPedalModeChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXPedalModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

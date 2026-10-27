.class Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;
.super Ljava/lang/Object;
.source "ChildModeManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ChildModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onChildModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftChildLockChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftChildLockChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftDoorHotKeyChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLeftDoorHotKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightChildLockChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightChildLockChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightDoorHotKeyChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRightDoorHotKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

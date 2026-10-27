.class Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;
.super Ljava/lang/Object;
.source "WindowControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/WindowControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$700(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    const-string v1, "onShow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSunShadeLoadingChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSunShadeLoadingChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSunShadePosChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSunShadePosChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowLockStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWindowLockStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowPosChanged(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "pos"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onWindowPosChanged"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWindowStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

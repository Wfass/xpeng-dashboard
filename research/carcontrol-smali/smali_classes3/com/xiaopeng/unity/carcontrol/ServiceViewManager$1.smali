.class Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;
.super Ljava/lang/Object;
.source "ServiceViewManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterGoOffScene()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    const-string v1, "onEnterGoOffScene"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$800(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterGoOnScene(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEnterGoOnScene"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$600(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onExitChargeScene(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onExitChargeScene"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$1000(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onExitGoOffScene(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onExitGoOffScene"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$900(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onExitGoOnScene(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onExitGoOnScene"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$700(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onGearChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onGearChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIgStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onIgStateChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowDialog(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "show"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowDialog"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowDialogWithDisplayId(Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "show",
            "displayId"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowDialogWithDisplayId"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowDropDownMenu(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "show"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowDropDownMenu"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSmartControlElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage",
            "element"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowSmartControlElement"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$1300(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSmartControlSubTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "subIndex"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onShowSmartControlSubTab"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$1200(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSmartControlTab(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onShowSmartControlTab"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->access$1100(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

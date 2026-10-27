.class Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;
.super Ljava/lang/Object;
.source "AsHeightControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/AsHeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsCampingModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsCampingModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAsEngineerStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsEngineerStatusChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAsHeightChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsHeightChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAsSaveResultChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAsSaveResultChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

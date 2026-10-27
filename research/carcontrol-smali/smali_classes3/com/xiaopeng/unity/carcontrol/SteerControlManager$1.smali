.class Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;
.super Ljava/lang/Object;
.source "SteerControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SteerControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)V
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
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColumnTravelAdjStatusChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onColumnTravelAdjStatusChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    const-string v1, "onShow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

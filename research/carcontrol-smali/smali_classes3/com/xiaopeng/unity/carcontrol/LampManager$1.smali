.class Lcom/xiaopeng/unity/carcontrol/LampManager$1;
.super Ljava/lang/Object;
.source "LampManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/LampListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/LampManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/LampManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/LampManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LampManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadLampModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHeadLampModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->access$100(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluPreviewStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluPreviewStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->access$300(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearFogLampChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LampManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRearFogLampChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->access$200(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

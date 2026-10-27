.class Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;
.super Ljava/lang/Object;
.source "XKeyControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;)V
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
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelKeyProtectSwChanged(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onWheelKeyProtectSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$1;
.super Ljava/lang/Object;
.source "DoorKeyControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/DoorKeyControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoorKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDoorKeyChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;
.super Ljava/lang/Object;
.source "ScuController.java"

# interfaces
.implements Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carPropertyValue"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "errorCode"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 60
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    :cond_0
    return-void
.end method

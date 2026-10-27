.class Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;
.super Ljava/lang/Object;
.source "EspController.java"

# interfaces
.implements Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;)V
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
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carPropertyValue"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EspController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
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

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "EspController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;I)V

    :cond_0
    return-void
.end method

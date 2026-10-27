.class Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController$1;
.super Ljava/lang/Object;
.source "TboxController.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;

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

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TboxController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
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

    return-void
.end method

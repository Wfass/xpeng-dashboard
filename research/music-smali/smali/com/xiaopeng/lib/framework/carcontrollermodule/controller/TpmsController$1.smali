.class Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController$1;
.super Ljava/lang/Object;
.source "TpmsController.java"

# interfaces
.implements Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->registerCanEventMsg(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->postEventBusMsg(Ljava/lang/Class;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " zone = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

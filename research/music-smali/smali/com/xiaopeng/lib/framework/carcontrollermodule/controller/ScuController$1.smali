.class Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;
.super Ljava/lang/Object;
.source "ScuController.java"

# interfaces
.implements Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->registerCanEventMsg(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->postEventBusMsg(Ljava/lang/Class;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "propertyId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " zone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->mPropertyTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;->postErrorEventBusMsg(Ljava/lang/Class;I)V

    return-void
.end method

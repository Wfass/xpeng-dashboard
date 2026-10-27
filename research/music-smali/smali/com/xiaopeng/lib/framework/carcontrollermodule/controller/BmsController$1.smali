.class Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController$1;
.super Ljava/lang/Object;
.source "BmsController.java"

# interfaces
.implements Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->registerCanEventMsg(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->postEventBusMsg(Ljava/lang/Class;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method

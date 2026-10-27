.class Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->registerCanEventMsg(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 105
    new-instance v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    iget-object v2, v2, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;-><init>(ILjava/lang/Object;)V

    .line 107
    new-instance p1, Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->getCode()I

    move-result v0

    invoke-direct {p1, v0, v1}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->mPropertyTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;->postEventBusMsg(Ljava/lang/Class;Landroid/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "propertyId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " zone = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

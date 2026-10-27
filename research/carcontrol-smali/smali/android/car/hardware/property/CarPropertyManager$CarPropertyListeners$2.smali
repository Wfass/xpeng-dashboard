.class Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field final synthetic val$value:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 4

    .line 1055
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1056
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-object v1, v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v1}, Landroid/car/hardware/property/CarPropertyManager;->access$500(Landroid/car/hardware/property/CarPropertyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-object v1, v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v1}, Landroid/car/hardware/property/CarPropertyManager;->access$300(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorEvent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    .line 1058
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCode: "

    .line 1059
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1052
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method

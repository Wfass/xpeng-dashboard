.class Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$3;
.super Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;
.source "VcuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->registerCarCondition(Landroid/car/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-direct {p0}, Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;-><init>()V

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

    .line 184
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401218

    if-eq v0, v1, :cond_1

    const v1, 0x21601225

    const-string v2, "VcuController"

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;F)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;I)V

    :goto_0
    return-void
.end method

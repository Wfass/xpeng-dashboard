.class Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;
.super Ljava/lang/Object;
.source "SmartSeatService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

.field final synthetic val$strIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartSeatService;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;->val$strIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 51
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->access$002(Z)Z

    .line 54
    const-string v0, "SmartSeatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ON"

    goto :goto_1

    :cond_1
    const-string v2, "OFF, stop massager and vibrate"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartSeatService;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;->val$strIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->stopMassager(Ljava/util/List;)I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartSeatService;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->stopVibrate()I

    .line 63
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 67
    return-void
.end method

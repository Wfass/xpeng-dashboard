.class Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;
.super Ljava/lang/Object;
.source "SmartMakeupService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 65
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$002(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;Z)Z

    .line 68
    const-string v0, "SmartMakeupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ON"

    goto :goto_1

    :cond_1
    const-string v2, "OFF"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getMakeupAvailable()I

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setMakeupLightStatus(Z)I

    .line 74
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 78
    return-void
.end method

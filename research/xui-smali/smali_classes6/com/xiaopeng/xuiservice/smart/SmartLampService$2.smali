.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 119
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_3

    .line 120
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
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$202(Z)Z

    .line 122
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ON"

    goto :goto_1

    :cond_1
    const-string v2, "OFF, suspendEffect"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    goto :goto_2

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->suspendEffect()V

    .line 130
    :cond_3
    :goto_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 134
    return-void
.end method

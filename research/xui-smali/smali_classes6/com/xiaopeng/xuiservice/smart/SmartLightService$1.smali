.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;
.super Ljava/lang/Object;
.source "SmartLightService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLightService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 367
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 370
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 372
    .local v0, "signalId":I
    const v1, 0x21401409

    if-ne v0, v1, :cond_2

    .line 373
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
    move v1, v2

    .line 375
    .local v1, "status":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 376
    const-string v2, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeEvent, hasIgOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mEnvironment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 377
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz v1, :cond_1

    .line 381
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    goto :goto_1

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    .line 384
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    .line 385
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    .line 387
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2402(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z

    .line 390
    .end local v1    # "status":Z
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 393
    return-void
.end method

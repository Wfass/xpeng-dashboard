.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;
.super Ljava/lang/Object;
.source "SmartLightService.java"

# interfaces
.implements Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


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

    .line 396
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21403809

    if-ne v0, v1, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 402
    .local v0, "lux":I
    if-lez v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    move-result v1

    .line 405
    .local v1, "brightness":I
    const-string v2, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeEvent, lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V

    .line 408
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$3100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V

    .line 411
    .end local v0    # "lux":I
    .end local v1    # "brightness":I
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 415
    return-void
.end method

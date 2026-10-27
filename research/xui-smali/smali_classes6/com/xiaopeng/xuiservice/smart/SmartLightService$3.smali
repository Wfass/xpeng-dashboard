.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;
.super Ljava/lang/Object;
.source "SmartLightService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


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

    .line 418
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401cc2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 422
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    .line 426
    .local v0, "lux":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$502(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 428
    const-string v1, "SmartLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeEvent(bcm), mEnvironment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCurrentDay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 429
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1902(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z

    .line 434
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1802(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 435
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$902(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 436
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 437
    if-lez v0, :cond_1

    .line 438
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    .line 443
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 444
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V

    .line 447
    .end local v0    # "lux":I
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 451
    return-void
.end method

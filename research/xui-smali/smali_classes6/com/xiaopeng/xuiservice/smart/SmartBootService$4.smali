.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 428
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 431
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_1

    const v1, 0x2140143e

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 434
    :cond_0
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMcuManager.CarMcuEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;I)V

    .line 437
    goto :goto_1

    .line 439
    :cond_1
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMcuIgStatusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 442
    .local v0, "status":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1300()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 443
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1302(Z)Z

    .line 444
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const-string v1, "SmartBootService"

    const-string v2, "missing IgOn event for debug"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 454
    .end local v0    # "status":Z
    :cond_4
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 458
    const-string v0, "SmartBootService"

    const-string v1, "CarMcuManager.CarMcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

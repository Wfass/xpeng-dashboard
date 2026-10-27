.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


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

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 465
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBcmManager.CarBcmEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21411c19

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v0

    .line 470
    .local v0, "driverDoor":I
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 471
    .local v1, "values":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-le v2, v0, :cond_2

    aget-object v2, v1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 472
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    aget-object v3, v1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleDriverDoorOpen(Z)V

    .line 478
    .end local v0    # "driverDoor":I
    .end local v1    # "values":[Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 482
    return-void
.end method

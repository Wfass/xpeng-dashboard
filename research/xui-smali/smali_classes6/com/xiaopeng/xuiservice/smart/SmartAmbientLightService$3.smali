.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 270
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c07

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x21411c19

    if-eq v0, v1, :cond_0

    .line 296
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled BCM event id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_BCM_DOOR_STATE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 276
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 277
    .local v1, "result":[I
    if-eqz v0, :cond_4

    .line 278
    array-length v3, v0

    new-array v1, v3, [I

    .line 279
    aget-object v3, v0, v2

    .line 280
    .local v3, "objValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 281
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    .line 282
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    aget v2, v1, v2

    invoke-static {v4, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V

    .line 284
    .end local v3    # "objValue":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 289
    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "result":[I
    :cond_2
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_BCM_DRIVERSEAT_OCCUPIED : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;Z)V

    .line 292
    nop

    .line 299
    :cond_4
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 303
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addLluManagerCallback()V
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

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 278
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLluChangeEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401449

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x2140144f

    if-eq v0, v1, :cond_4

    const v1, 0x2140145d

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 292
    :cond_1
    nop

    .line 293
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    move v0, v2

    .line 295
    .local v0, "active":Z
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMcuEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v3, "active, stopEffect"

    goto :goto_0

    :cond_3
    const-string v3, "inactive"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz v0, :cond_8

    .line 298
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    goto :goto_2

    .line 302
    .end local v0    # "active":Z
    :cond_4
    const-string v0, "SmartLampService"

    const-string v2, "onChargingSwitch"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->generateBigPictureStyleNotification(I)V

    goto :goto_2

    .line 284
    :cond_5
    nop

    .line 285
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    move v2, v3

    nop

    :cond_6
    move v0, v2

    .line 287
    .local v0, "enable":Z
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLightEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v3, "enable"

    goto :goto_1

    :cond_7
    const-string v3, "disable"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->setLightEffectEnable(Z)V

    .line 290
    nop

    .line 308
    .end local v0    # "enable":Z
    :cond_8
    :goto_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 312
    return-void
.end method

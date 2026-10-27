.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 275
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 276
    .local v0, "BcmPropId":I
    const v1, 0x21411c19

    if-ne v0, v1, :cond_1

    .line 277
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarBcmManager.CarBcmEventCallback onChangeEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 279
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 280
    .local v2, "result":[I
    if-eqz v1, :cond_0

    .line 281
    array-length v3, v1

    new-array v2, v3, [I

    .line 282
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 286
    .end local v1    # "values":[Ljava/lang/Object;
    .end local v2    # "result":[I
    :cond_0
    goto/16 :goto_0

    :cond_1
    const v1, 0x21401ca0

    if-ne v0, v1, :cond_2

    .line 287
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarBcmManager.CarBcmEventCallback onChangeEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 289
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onPsdMoto(I)V

    goto :goto_0

    .line 291
    :cond_2
    const v1, 0x21401c07

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onDriverSeatStatus(I)V

    goto :goto_0

    .line 295
    :cond_3
    const v1, 0x21401c71

    if-ne v0, v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 297
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onDeviceChargeStatus(I)V

    goto :goto_0

    .line 299
    :cond_4
    const v1, 0x21401c28

    if-eq v0, v1, :cond_5

    const v1, 0x21401c17

    if-eq v0, v1, :cond_5

    const v1, 0x21401c18

    if-ne v0, v1, :cond_6

    .line 302
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onBcmLightMode(II)V

    .line 306
    :cond_6
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 310
    return-void
.end method

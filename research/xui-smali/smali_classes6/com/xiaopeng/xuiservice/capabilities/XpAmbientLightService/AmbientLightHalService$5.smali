.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;
.super Ljava/lang/Object;
.source "AmbientLightHalService.java"

# interfaces
.implements Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 367
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 14
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 370
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x15600503

    const/16 v2, 0x13

    const/16 v3, 0x12

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/high16 v10, 0x42040000    # 33.0f

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v12, 0x41700000    # 15.0f

    if-eq v0, v1, :cond_9

    const v1, 0x21401a20

    if-eq v0, v1, :cond_5

    const v1, 0x21601a02

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 424
    :cond_0
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CarHvacEventCallback CarPropertyValue:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v1

    sub-float v1, v10, v1

    div-float/2addr v1, v12

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v10, v1

    div-float/2addr v10, v12

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v1

    sub-float v1, v10, v1

    div-float/2addr v1, v12

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v10, v1

    div-float/2addr v10, v12

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v1

    sub-float/2addr v1, v6

    mul-float/2addr v1, v11

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v6

    mul-float/2addr v11, v1

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_3
    :goto_0
    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->handleException(Ljava/lang/Exception;)V

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hvacDriverBright:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hvacPsnBright:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    int-to-byte v1, v1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v0, v3, v1, v4, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IBBB)V

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    int-to-byte v1, v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v0, v2, v1, v3, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IBBB)V

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    goto/16 :goto_5

    .line 373
    :cond_5
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarHvacEventCallback CarPropertyValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_2

    .line 377
    :cond_6
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_7

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_2

    .line 379
    :cond_7
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 382
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    .line 383
    goto/16 :goto_5

    .line 387
    :cond_9
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CarHvacEventCallback CarPropertyValue:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v10, v1

    div-float/2addr v1, v12

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v1

    sub-float/2addr v10, v1

    div-float/2addr v10, v12

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_3

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v9, :cond_b

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v10, v1

    div-float/2addr v1, v12

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v1

    sub-float/2addr v10, v1

    div-float/2addr v10, v12

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    goto :goto_3

    .line 399
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v6

    mul-float/2addr v1, v11

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v1

    sub-float/2addr v1, v6

    mul-float/2addr v11, v1

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    :cond_c
    :goto_3
    goto :goto_4

    .line 404
    :catch_1
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->handleException(Ljava/lang/Exception;)V

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hvacDriverBright:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hvacPsnBright:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    .line 415
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    int-to-byte v1, v1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v0, v3, v1, v4, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IBBB)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    int-to-byte v1, v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v0, v2, v1, v3, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IBBB)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    .line 462
    :cond_e
    :goto_5
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 466
    const-string v0, "AmbientLightHalService"

    const-string v1, "CarHvacManager.CarHvacEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.class Lcom/android/car/hal/HalClient$OnPropertyEventValue;
.super Ljava/lang/Object;
.source "HalClient.java"

# interfaces
.implements Lcom/android/car/hal/HalClient$HalCallBackValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPropertyEventValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/HalClient;

.field private final timestamp:J

.field private final vehiclePropValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/HalClient;JLjava/util/ArrayList;)V
    .locals 0
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p4, "vehiclePropValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    iput-object p1, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->this$0:Lcom/android/car/hal/HalClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-wide p2, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->timestamp:J

    .line 486
    iput-object p4, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    .line 487
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 491
    iget-object v0, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 496
    .local v0, "firstValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 497
    .local v1, "firstPropertyId":I
    iget-wide v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 498
    .local v2, "firstSendTimestamp":J
    iget-object v4, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 500
    .local v4, "arraySize":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 501
    .local v5, "receiveTimestamp":J
    const-wide/32 v7, 0xf4240

    div-long v7, v2, v7

    sub-long v7, v5, v7

    .line 502
    .local v7, "timeCost":J
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$700()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 503
    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "propertyDescription":Ljava/lang/String;
    const-string v10, "CAR.HAL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive props["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", timestamp:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " from hal and handler cost too much time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-wide v10, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->timestamp:J

    sub-long v10, v5, v10

    .line 510
    .local v10, "deliverTimeCost":J
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$400()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    .line 511
    const-string v12, "CAR.HAL"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deliver props["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", timestamp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " callback cost too much time:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v9    # "propertyDescription":Ljava/lang/String;
    .end local v10    # "deliverTimeCost":J
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v9}, Lcom/android/car/hal/HalClient;->access$800(Lcom/android/car/hal/HalClient;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/android/car/hal/HalClient$OnPropertyEventValue;->vehiclePropValueList:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertyEvent(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v9

    .line 521
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "CAR.HAL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "call onPropertyEvent failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 525
    .end local v7    # "timeCost":J
    .local v9, "timeCost":J
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$900()J

    move-result-wide v7

    cmp-long v7, v9, v7

    if-lez v7, :cond_2

    .line 526
    const-string v7, "CAR.HAL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatch props["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", timestamp:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " cost too much time:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 526
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_2
    return-void

    .line 492
    .end local v0    # "firstValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v1    # "firstPropertyId":I
    .end local v2    # "firstSendTimestamp":J
    .end local v4    # "arraySize":I
    .end local v5    # "receiveTimestamp":J
    .end local v9    # "timeCost":J
    :cond_3
    :goto_1
    return-void
.end method

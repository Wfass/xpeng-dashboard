.class Lcom/android/car/hal/HalClient$VehicleCallback;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VehicleCallback"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 431
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    .line 433
    return-void
.end method


# virtual methods
.method public onPropertyEvent(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 437
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 439
    .local v0, "currentTimestamp":J
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 440
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-wide v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 441
    .local v3, "sendTimestamp":J
    const-wide/32 v5, 0xf4240

    div-long v5, v3, v5

    sub-long v5, v0, v5

    .line 442
    .local v5, "timeCost":J
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$500()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 443
    const-string v7, "CAR.HAL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 444
    invoke-static {v9}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", timestamp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " callback cost too much time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v7, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    new-instance v10, Landroid/util/Pair;

    .line 450
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v10, v11, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 452
    .end local v5    # "timeCost":J
    .local v7, "timeCost":J
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$600()J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-lez v5, :cond_1

    .line 453
    const-string v5, "CAR.HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send message: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 454
    invoke-static {v9}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", timestamp:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " cost too much time:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "currentTimestamp":J
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "sendTimestamp":J
    .end local v7    # "timeCost":J
    :cond_1
    return-void
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 3
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 463
    iget-object v0, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 469
    iget-object v0, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/hal/HalClient$PropertySetError;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/car/hal/HalClient$PropertySetError;-><init>(III)V

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

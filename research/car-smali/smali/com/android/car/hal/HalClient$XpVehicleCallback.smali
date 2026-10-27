.class Lcom/android/car/hal/HalClient$XpVehicleCallback;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XpVehicleCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/HalClient;


# direct methods
.method private constructor <init>(Lcom/android/car/hal/HalClient;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/HalClient;
    .param p2, "x1"    # Lcom/android/car/hal/HalClient$1;

    .line 569
    invoke-direct {p0, p1}, Lcom/android/car/hal/HalClient$XpVehicleCallback;-><init>(Lcom/android/car/hal/HalClient;)V

    return-void
.end method


# virtual methods
.method public onPropertyEvent(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v0}, Lcom/android/car/hal/HalClient;->access$1000(Lcom/android/car/hal/HalClient;)Ljava/util/concurrent/LinkedTransferQueue;

    move-result-object v0

    new-instance v1, Lcom/android/car/hal/HalClient$OnPropertyEventValue;

    iget-object v2, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/car/hal/HalClient$OnPropertyEventValue;-><init>(Lcom/android/car/hal/HalClient;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send onPropertyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 4
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v0}, Lcom/android/car/hal/HalClient;->access$1000(Lcom/android/car/hal/HalClient;)Ljava/util/concurrent/LinkedTransferQueue;

    move-result-object v0

    new-instance v1, Lcom/android/car/hal/HalClient$OnPropertySetValue;

    iget-object v2, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-direct {v1, v2, p1}, Lcom/android/car/hal/HalClient$OnPropertySetValue;-><init>(Lcom/android/car/hal/HalClient;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send onPropertySet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v0}, Lcom/android/car/hal/HalClient;->access$1000(Lcom/android/car/hal/HalClient;)Ljava/util/concurrent/LinkedTransferQueue;

    move-result-object v0

    new-instance v1, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;

    iget-object v2, p0, Lcom/android/car/hal/HalClient$XpVehicleCallback;->this$0:Lcom/android/car/hal/HalClient;

    new-instance v3, Lcom/android/car/hal/HalClient$PropertySetError;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/car/hal/HalClient$PropertySetError;-><init>(III)V

    invoke-direct {v1, v2, v3}, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;-><init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$PropertySetError;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send onPropertySetError propId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

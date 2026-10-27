.class Lcom/android/car/hal/HalClient$CallbackHandler;
.super Landroid/os/Handler;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final MSG_ON_PROPERTY_EVENT:I = 0x2

.field private static final MSG_ON_PROPERTY_SET:I = 0x1

.field private static final MSG_ON_SET_ERROR:I = 0x3


# instance fields
.field private final mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 385
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 386
    iput-object p2, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 387
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 391
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 394
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 420
    const-string v0, "CAR.HAL"

    goto/16 :goto_0

    .line 416
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/car/hal/HalClient$PropertySetError;

    .line 417
    .local v0, "obj":Lcom/android/car/hal/HalClient$PropertySetError;
    iget-object v1, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    iget v2, v0, Lcom/android/car/hal/HalClient$PropertySetError;->errorCode:I

    iget v3, v0, Lcom/android/car/hal/HalClient$PropertySetError;->propId:I

    iget v4, v0, Lcom/android/car/hal/HalClient$PropertySetError;->areaId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySetError(III)V

    .line 418
    goto/16 :goto_1

    .line 396
    .end local v0    # "obj":Lcom/android/car/hal/HalClient$PropertySetError;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 398
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 399
    .local v1, "timeCost":J
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 400
    .local v3, "vehiclePropValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-static {}, Lcom/android/car/hal/HalClient;->access$400()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 401
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 402
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 403
    .local v5, "propertyId":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-wide v6, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 404
    .local v6, "sendTimeStamp":J
    const-string v4, "CAR.HAL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliver: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", timestamp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " callback cost too much time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-static {v4, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v5    # "propertyId":I
    .end local v6    # "sendTimeStamp":J
    :cond_0
    iget-object v4, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    invoke-interface {v4, v3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertyEvent(Ljava/util/ArrayList;)V

    .line 411
    goto :goto_1

    .line 413
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;>;"
    .end local v1    # "timeCost":J
    .end local v3    # "vehiclePropValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-interface {v0, v1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 414
    goto :goto_1

    .line 420
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_1
    goto :goto_2

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

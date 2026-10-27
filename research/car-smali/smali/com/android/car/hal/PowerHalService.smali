.class public Lcom/android/car/hal/PowerHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "PowerHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/PowerHalService$PowerState;,
        Lcom/android/car/hal/PowerHalService$PowerEventListener;
    }
.end annotation


# static fields
.field public static final BATT_NORMAL:I = 0x4

.field public static final BATT_ONE_LEVEL_LOW:I = 0x3

.field public static final BATT_ONE_LEVEL_OVER:I = 0x5

.field public static final BATT_TWO_LEVEL_LOW:I = 0x2

.field public static final BATT_TWO_LEVEL_OVER:I = 0x6

.field public static final BOOT_INVALID:I = -0x1

.field public static final BOOT_REASON_REMOTE_WAKE_FOR_CAMERA:I = 0x5

.field public static final BOOT_REASON_REMOTE_WAKE_FOR_LAMP:I = 0x6

.field public static final BOOT_REASON_REMOTE_WAKE_FOR_OTA:I = 0x9

.field public static final BOOT_REASON_REMOTE_WAKE_FOR_SCU:I = 0xa

.field public static final BOOT_REASON_SOLDIER_MODE:I = 0xb

.field public static final BOOT_REASON_THERMAL_RUNAWAY_WK:I = 0xd

.field public static final BOOT_REASON_TIMER:I = 0x2

.field public static final BOOT_REASON_USER_POWER_ON:I = 0x4

.field public static final BOOT_REASON_USER_POWER_ON_ET1:I = 0x0

.field public static final BOOT_REASON_USER_UNLOCK:I = 0x1

.field public static final BOOT_REASON_VEHICLE_CHARGING:I = 0x7

.field public static final BOOT_REASON_VEHICLE_LAMP:I = 0x8

.field public static final BOOT_REASON_WIFI_KEY_WK:I = 0xc

.field public static final MAX_BRIGHTNESS:I = 0x64

.field private static final MAX_LOG:I = 0xc

.field public static final PARAM_CAN_SLEEP:I = 0x2

.field public static final SET_BOOT_COMPLETE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_DEEP_SLEEP_ENTRY:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_DEEP_SLEEP_EXIT:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_DISPLAY_OFF:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_DISPLAY_ON:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_POSTPONE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_START:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_CAN_SLEEP:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_IMMEDIATELY:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_ONLY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_DEEP_SLEEP:I = 0x4

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON_DISP_OFF:I = 0x2

.field public static final STATE_ON_FULL:I = 0x1

.field public static final STATE_SHUTDOWN_PREPARE:I = 0x3


# instance fields
.field private mBatState:I

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

.field private mLogControl:Landroid/util/SparseIntArray;

.field private mMaxDisplayBrightness:I

.field private mPowerParam:I

.field private mPowerState:I

.field private final mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuedEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 2
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 199
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 106
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/car/hal/PowerHalService;->mPowerState:I

    .line 107
    iput v0, p0, Lcom/android/car/hal/PowerHalService;->mPowerParam:I

    .line 108
    iput v0, p0, Lcom/android/car/hal/PowerHalService;->mBatState:I

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    .line 196
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/hal/PowerHalService;->mLogControl:Landroid/util/SparseIntArray;

    .line 200
    iput-object p1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 201
    return-void
.end method

.method private canPrintLog(I)Z
    .locals 3
    .param p1, "prop"    # I

    .line 540
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mLogControl:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 541
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mLogControl:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    return v2

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mLogControl:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    const/4 v1, 0x0

    return v1
.end method

.method private dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V
    .locals 10
    .param p2, "listener"    # Lcom/android/car/hal/PowerHalService$PowerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;",
            "Lcom/android/car/hal/PowerHalService$PowerEventListener;",
            ")V"
        }
    .end annotation

    .line 447
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 448
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto/16 :goto_4

    .line 460
    .restart local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :sswitch_0
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 461
    .local v2, "batState":I
    iget v5, p0, Lcom/android/car/hal/PowerHalService;->mBatState:I

    if-eq v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    .line 462
    .local v3, "isBatChange":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 463
    const-string v4, "CAR.POWER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Battery state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    iput v2, p0, Lcom/android/car/hal/PowerHalService;->mBatState:I

    .line 466
    invoke-direct {p0, v2, p2}, Lcom/android/car/hal/PowerHalService;->handleBatteryEvent(ILcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 467
    goto/16 :goto_4

    .line 470
    .end local v2    # "batState":I
    .end local v3    # "isBatChange":Z
    :sswitch_1
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 471
    .local v2, "state":I
    iget-object v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 472
    .local v5, "param":I
    const v6, 0x21701403

    invoke-direct {p0, v6}, Lcom/android/car/hal/PowerHalService;->canPrintLog(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v2, v5}, Lcom/android/car/hal/PowerHalService;->isMcuStateChanged(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 473
    :cond_2
    const-string v7, "CAR.POWER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received AP_POWER_STATE_REQ(MCU_PM_STATE)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " param="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_3
    const/16 v7, 0x8

    new-array v7, v7, [B

    .line 477
    .local v7, "respond":[B
    iget-object v8, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v8, v8, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v7, v4

    .line 479
    :try_start_0
    iget-object v8, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v8, v6, v4}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to([B)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_2

    .line 480
    :catch_0
    move-exception v4

    .line 481
    .local v4, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v6, "CAR.POWER"

    const-string v8, "feeback to mcu failed!"

    invoke-static {v6, v8, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    .end local v4    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_2
    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->getBatteryState()I

    move-result v4

    .line 484
    .local v4, "batteryStatus":I
    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    if-ne v2, v3, :cond_4

    if-ne v5, v6, :cond_4

    .line 486
    const-string v3, "CAR.POWER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "batteryStatus="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but req on full"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v3, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v6, 0x2

    const/4 v8, -0x1

    invoke-direct {v3, v6, v8}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v3}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 489
    goto/16 :goto_4

    .line 491
    :cond_4
    new-instance v3, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v3, v2, v5}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v3}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 492
    goto/16 :goto_4

    .line 503
    .end local v2    # "state":I
    .end local v4    # "batteryStatus":I
    .end local v5    # "param":I
    .end local v7    # "respond":[B
    :sswitch_2
    monitor-enter p0

    .line 504
    :try_start_1
    iget v2, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    .line 505
    .local v2, "maxBrightness":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    iget-object v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    mul-int/2addr v3, v4

    div-int/2addr v3, v2

    .line 507
    .local v3, "brightness":I
    if-gez v3, :cond_5

    .line 508
    const-string v4, "CAR.POWER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", set to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v3, 0x0

    goto :goto_3

    .line 510
    :cond_5
    if-le v3, v4, :cond_6

    .line 511
    const-string v5, "CAR.POWER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid brightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v3, 0x64

    .line 515
    :cond_6
    :goto_3
    const-string v4, "CAR.POWER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received DISPLAY_BRIGHTNESS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface {p2, v3}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onDisplayBrightnessChange(I)V

    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "maxBrightness":I
    .end local v3    # "brightness":I
    goto :goto_4

    .line 505
    .restart local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 450
    :sswitch_3
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 458
    .local v2, "reason":I
    nop

    .line 520
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "reason":I
    :goto_4
    goto/16 :goto_0

    .line 521
    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11400a02 -> :sswitch_3
        0x11400a03 -> :sswitch_2
        0x21701403 -> :sswitch_1
        0x21701408 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryEvent(ILcom/android/car/hal/PowerHalService$PowerEventListener;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "listener"    # Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 413
    const/4 v0, -0x1

    .line 414
    .local v0, "pmState":I
    const/4 v1, -0x1

    move v2, v1

    .line 416
    .local v2, "pmParam":I
    :try_start_0
    iget-object v3, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v4, 0x21701403

    invoke-virtual {v3, v4}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v3

    .line 417
    .local v3, "pmValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    move v0, v4

    .line 418
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 422
    .end local v3    # "pmValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    nop

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 441
    const-string v1, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unkonw Battery Event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 438
    :pswitch_0
    new-instance v1, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v1, v0, v2}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v1}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 439
    goto :goto_0

    .line 432
    :pswitch_1
    if-ne v0, v5, :cond_0

    .line 433
    new-instance v3, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v3}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    goto :goto_0

    .line 427
    :pswitch_2
    new-instance v1, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v5}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v1}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 428
    nop

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "CAR.POWER"

    const-string v4, "handleBatteryEvent failed!"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isCarPowerManagerEnabled()Z
    .locals 2

    .line 329
    const-string v0, "persist.car.lpm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isConfigFlagSet(I)Z
    .locals 4
    .param p1, "flag"    # I

    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v1, 0x21701403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    monitor-exit p0

    return v1

    .line 341
    :cond_0
    :try_start_1
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 342
    monitor-exit p0

    return v1

    .line 344
    :cond_1
    :try_start_2
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    move v1, v3

    nop

    :cond_2
    monitor-exit p0

    return v1

    .line 337
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p1    # "flag":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    throw p1
.end method

.method private isMcuStateChanged(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "param"    # I

    .line 524
    iget v0, p0, Lcom/android/car/hal/PowerHalService;->mPowerState:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/car/hal/PowerHalService;->mPowerParam:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 525
    .local v0, "isChanged":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 526
    iput p1, p0, Lcom/android/car/hal/PowerHalService;->mPowerState:I

    .line 527
    iput p2, p0, Lcom/android/car/hal/PowerHalService;->mPowerParam:I

    .line 529
    :cond_2
    return v0
.end method

.method private setPowerState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "additionalParam"    # I

    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 278
    .local v0, "values":[I
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 534
    const-string v0, "*Power HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPowerStateSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->isPowerStateSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDeepSleepAllowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->isDeepSleepAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public getBatteryState()I
    .locals 4

    .line 318
    const/4 v0, -0x1

    .line 320
    .local v0, "batteryState":I
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x21701408

    invoke-virtual {v1, v2}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 321
    .local v1, "pmValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 324
    .end local v1    # "pmValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.POWER"

    const-string v3, "get battery status failed!"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return v0
.end method

.method public getCurrentPowerState()Lcom/android/car/hal/PowerHalService$PowerState;
    .locals 4

    .line 295
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const-class v2, [B

    const v3, 0x21701403

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 302
    .local v0, "state":[B
    nop

    .line 301
    nop

    .line 303
    new-instance v1, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    return-object v1

    .line 299
    .end local v0    # "state":[B
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CAR.POWER"

    const-string v3, "Cannot get MCU_PM_STATE"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-object v0

    .line 296
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 297
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.POWER"

    const-string v3, "Cannot get MCU_PM_STATE"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    return-object v0
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 405
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 408
    .local v0, "listener":Lcom/android/car/hal/PowerHalService$PowerEventListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/android/car/hal/PowerHalService;->dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 410
    return-void

    .line 408
    .end local v0    # "listener":Lcom/android/car/hal/PowerHalService$PowerEventListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 358
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-static {v1}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v2, p0, v3}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 361
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v1, 0x11400a03

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 363
    .local v0, "brightnessProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-eqz v0, :cond_3

    .line 364
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 365
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    nop

    :cond_2
    iput v2, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    .line 366
    iget v1, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    if-gtz v1, :cond_3

    .line 367
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max display brightness from vehicle HAL is invalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_3
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "brightnessProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    throw v0
.end method

.method public isDeepSleepAllowed()Z
    .locals 1

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/car/hal/PowerHalService;->isConfigFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isPowerStateSupported()Z
    .locals 2

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v1, 0x21701403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 334
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/car/hal/PowerHalService;->isCarPowerManagerEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 332
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    throw v0
.end method

.method public isTimedWakeupAllowed()Z
    .locals 1

    .line 352
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/car/hal/PowerHalService;->isConfigFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    throw v0
.end method

.method public sendBootComplete()V
    .locals 2

    .line 219
    const-string v0, "CAR.POWER"

    const-string v1, "send boot complete"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 221
    return-void
.end method

.method public sendDisplayBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 248
    if-gez p1, :cond_0

    .line 249
    const/4 p1, 0x0

    goto :goto_0

    .line 250
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 251
    const/16 p1, 0x64

    .line 255
    :cond_1
    :goto_0
    return-void
.end method

.method public sendDisplayOff()V
    .locals 2

    .line 271
    const-string v0, "CAR.POWER"

    const-string v1, "send display off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 273
    return-void
.end method

.method public sendDisplayOn()V
    .locals 2

    .line 266
    const-string v0, "CAR.POWER"

    const-string v1, "send display on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 268
    return-void
.end method

.method public sendShutdownPostpone(I)V
    .locals 3
    .param p1, "postponeTimeMs"    # I

    .line 234
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send shutdown postpone, time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 236
    return-void
.end method

.method public sendShutdownStart(I)V
    .locals 2
    .param p1, "wakeupTimeSec"    # I

    .line 239
    const-string v0, "CAR.POWER"

    const-string v1, "send shutdown start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 241
    return-void
.end method

.method public sendSleepEntry()V
    .locals 2

    .line 224
    const-string v0, "CAR.POWER"

    const-string v1, "send sleep entry"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 226
    return-void
.end method

.method public sendSleepExit()V
    .locals 2

    .line 229
    const-string v0, "CAR.POWER"

    const-string v1, "send sleep exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 231
    return-void
.end method

.method public setListener(Lcom/android/car/hal/PowerHalService$PowerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "eventsToDispatch":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 206
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 207
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    move-object v0, v1

    .line 210
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0, v0, p1}, Lcom/android/car/hal/PowerHalService;->dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 216
    :cond_1
    return-void

    .line 211
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    monitor-enter p0

    .line 382
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 383
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    sparse-switch v2, :sswitch_data_0

    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_1

    .line 389
    .restart local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :sswitch_0
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :goto_1
    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 381
    .end local p1    # "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11400a02 -> :sswitch_0
        0x11400a03 -> :sswitch_0
        0x11410a01 -> :sswitch_0
        0x21701403 -> :sswitch_0
        0x21701408 -> :sswitch_0
    .end sparse-switch
.end method

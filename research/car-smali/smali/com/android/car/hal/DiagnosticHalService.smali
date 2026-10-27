.class public Lcom/android/car/hal/DiagnosticHalService;
.super Lcom/android/car/hal/SensorHalServiceBase;
.source "DiagnosticHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;,
        Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    }
.end annotation


# static fields
.field static final OBD2_SELECTIVE_FRAME_CLEAR:I = 0x1


# instance fields
.field private final mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

.field private mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

.field private final mEventsToDispatch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVehiclePropertyToConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/car/hal/SensorHalServiceBase;-><init>(Lcom/android/car/hal/VehicleHal;)V

    .line 85
    new-instance v0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-direct {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    .line 91
    return-void
.end method

.method private createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 8
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const v1, 0x11e00d01

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 180
    .local v0, "isFreezeFrame":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 181
    invoke-static {}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->newFreezeFrameBuilder()Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    goto :goto_1

    .line 182
    :cond_2
    invoke-static {}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->newLiveFrameBuilder()Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    :goto_1
    iget-wide v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 183
    invoke-virtual {v1, v3, v4}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->atTimestamp(J)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    .line 185
    .local v1, "builder":Landroid/car/diagnostic/CarDiagnosticEvent$Builder;
    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v3

    .line 187
    .local v3, "bitset":Ljava/util/BitSet;
    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v4}, Lcom/android/car/hal/DiagnosticHalService;->getNumIntegerSensors(I)I

    move-result v4

    .line 188
    .local v4, "numIntegerProperties":I
    iget v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v5}, Lcom/android/car/hal/DiagnosticHalService;->getNumFloatSensors(I)I

    move-result v5

    .line 190
    .local v5, "numFloatProperties":I
    move v6, v2

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_4

    .line 191
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    iget-object v7, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withIntValue(II)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 190
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    .end local v6    # "i":I
    :cond_4
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_6

    .line 197
    add-int v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 198
    iget-object v6, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withFloatValue(IF)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 196
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    .end local v2    # "i":I
    :cond_6
    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withDtc(Ljava/lang/String;)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 204
    invoke-virtual {v1}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->build()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v2

    return-object v2
.end method

.method private getNumFloatSensors(I)I
    .locals 7
    .param p1, "halPropId"    # I

    .line 160
    const/16 v0, 0x47

    .line 161
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfigArray(I)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "configArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 163
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v4, "property 0x%x does not specify the number of vendor-specific properties.assuming 0."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 163
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 170
    :goto_0
    return v0
.end method

.method private getNumIntegerSensors(I)I
    .locals 7
    .param p1, "halPropId"    # I

    .line 146
    const/16 v0, 0x20

    .line 147
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfigArray(I)Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, "configArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 149
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v4, "property 0x%x does not specify the number of vendor-specific properties.assuming 0."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 149
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    :goto_0
    return v0
.end method

.method private getPropConfig(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .locals 2
    .param p1, "halPropId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    return-object v0
.end method

.method private getPropConfigArray(I)Ljava/util/List;
    .locals 2
    .param p1, "halPropId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfig(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    move-result-object v0

    .line 142
    .local v0, "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    return-object v1
.end method


# virtual methods
.method public varargs clearFreezeFrames([J)V
    .locals 4
    .param p1, "timestamps"    # [J

    .line 336
    const v0, 0x11e00d03

    invoke-static {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v0

    .line 338
    .local v0, "builder":Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    invoke-virtual {v0, p1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setInt64Value([J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "illegal argument trying to write OBD2_FREEZE_FRAME_CLEAR"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "timeout trying to write OBD2_FREEZE_FRAME_CLEAR"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    nop

    .line 347
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 249
    const-string v0, "*Diagnostic HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method protected fixSamplingRateForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)F
    .locals 2
    .param p1, "prop"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "carSensorManagerRate"    # I

    .line 255
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    .line 260
    .local v0, "rate":F
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 264
    goto :goto_0

    .line 266
    :cond_1
    const/high16 v0, 0x40a00000    # 5.0f

    .line 267
    nop

    .line 271
    :goto_0
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 272
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 274
    :cond_2
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 275
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 277
    :cond_3
    return v0

    .line 257
    .end local v0    # "rate":F
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 4

    .line 287
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x11e00d00

    invoke-virtual {v1, v2}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 288
    .local v1, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v1}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 292
    .end local v1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "illegal argument trying to read OBD2_LIVE_FRAME"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    return-object v0

    .line 289
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "timeout trying to read OBD2_LIVE_FRAME"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v0
.end method

.method public getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    return-object v0
.end method

.method public getDiagnosticListener()Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    return-object v0
.end method

.method public getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 5
    .param p1, "timestamp"    # J

    .line 319
    const v0, 0x11e00d01

    invoke-static {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v0

    .line 321
    .local v0, "builder":Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setInt64Value([J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    .line 323
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 324
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v2}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 328
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CAR.DIAGNOSTIC"

    const-string v4, "illegal argument trying to read OBD2_FREEZE_FRAME"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return-object v1

    .line 325
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 326
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "CAR.DIAGNOSTIC"

    const-string v4, "timeout trying to read OBD2_FREEZE_FRAME"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v1
.end method

.method public getFreezeFrameTimestamps()[J
    .locals 6

    .line 301
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x11e00d02

    invoke-virtual {v1, v2}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 302
    .local v1, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 303
    .local v2, "timestamps":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 304
    iget-object v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 310
    .end local v1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "timestamps":[J
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "illegal argument trying to read OBD2_FREEZE_FRAME_INFO"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    return-object v0

    .line 307
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 308
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.DIAGNOSTIC"

    const-string v3, "timeout trying to read OBD2_FREEZE_FRAME_INFO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v0
.end method

.method protected getTokenForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)I
    .locals 6
    .param p1, "propConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 95
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 126
    const/4 v0, -0x1

    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v3}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 113
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v3, "configArray for OBD2_FREEZE_FRAME_CLEAR is %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 116
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v3, "property 0x%x does not specify whether it supports selective clearing of freeze frames. assuming it does not."

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 116
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-virtual {v0, v2}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 124
    :cond_1
    :goto_0
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    return v0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 110
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    return v0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v3}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 104
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v3, "configArray for OBD2_FREEZE_FRAME is %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v2

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v3}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 98
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v3, "configArray for OBD2_LIVE_FRAME is %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x11e00d00
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 223
    .local v1, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v1}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v2

    .line 224
    .local v2, "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    if-eqz v2, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 230
    .local v0, "listener":Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    move-object v0, v1

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;->onDiagnosticEvents(Ljava/util/List;)V

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 237
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-super {p0}, Lcom/android/car/hal/SensorHalServiceBase;->release()V

    .line 133
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/DiagnosticHalService;
    throw v0
.end method

.method public declared-synchronized setDiagnosticListener(Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    monitor-enter p0

    .line 240
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 239
    .end local p1    # "listener":Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/DiagnosticHalService;
    throw p1
.end method

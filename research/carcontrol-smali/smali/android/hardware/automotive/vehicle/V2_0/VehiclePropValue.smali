.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
.super Ljava/lang/Object;
.source "VehiclePropValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    }
.end annotation


# instance fields
.field public areaId:I

.field public prop:I

.field public status:I

.field public timestamp:J

.field public txPid:I

.field public value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 370
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 375
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 374
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 380
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    .line 381
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 382
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 407
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 409
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 410
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 411
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 412
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 414
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    mul-int/lit8 v5, v4, 0x78

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 416
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 419
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    if-eq v2, v3, :cond_2

    return v1

    .line 310
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 311
    iget-wide v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    iget-wide v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 314
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    if-eq v2, v3, :cond_4

    return v1

    .line 317
    :cond_4
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    if-eq v2, v3, :cond_5

    return v1

    .line 320
    :cond_5
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    if-eq v2, v3, :cond_6

    return v1

    .line 323
    :cond_6
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    if-eq v2, v3, :cond_7

    return v1

    .line 326
    :cond_7
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object p1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 334
    iget-wide v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 335
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 340
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 334
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 391
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 392
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 393
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 394
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 395
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    .line 396
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    const-wide/16 v1, 0x18

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x78

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 365
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".timestamp = "

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-wide v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .areaId = "

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .prop = "

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .status = "

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .txPid = "

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .value = "

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 424
    iget-wide v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 425
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 426
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 427
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 428
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 429
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    const-wide/16 v1, 0x18

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 400
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 401
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 402
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

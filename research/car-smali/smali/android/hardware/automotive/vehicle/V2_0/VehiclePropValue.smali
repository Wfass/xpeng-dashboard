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

.field public final value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
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

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 367
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 368
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 369
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 368
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 372
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 374
    new-instance v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v5}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 375
    .local v5, "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    mul-int/lit8 v6, v4, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 376
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v5    # "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 403
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 404
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 405
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 406
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x78

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 407
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 408
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    mul-int/lit8 v5, v2, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 413
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 414
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 295
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 296
    return v0

    .line 298
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 299
    return v1

    .line 301
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    if-eq v2, v3, :cond_2

    .line 302
    return v1

    .line 304
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 305
    .local v2, "other":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-wide v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    iget-wide v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 306
    return v1

    .line 308
    :cond_3
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    if-eq v3, v4, :cond_4

    .line 309
    return v1

    .line 311
    :cond_4
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    if-eq v3, v4, :cond_5

    .line 312
    return v1

    .line 314
    :cond_5
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    if-eq v3, v4, :cond_6

    .line 315
    return v1

    .line 317
    :cond_6
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    if-eq v3, v4, :cond_7

    .line 318
    return v1

    .line 320
    :cond_7
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 321
    return v1

    .line 323
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 328
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 329
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 334
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 328
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 385
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 386
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 387
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 388
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    .line 389
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    .line 390
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 391
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 358
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 359
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 360
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, ".timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-wide v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", .areaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, ", .prop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ", .txPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 418
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 419
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 420
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 421
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 422
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->txPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 423
    iget-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 424
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 394
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 395
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 397
    return-void
.end method

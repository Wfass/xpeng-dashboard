.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
.super Ljava/lang/Object;
.source "VehiclePropValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawValue"
.end annotation


# instance fields
.field public final bytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final doubleValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final floatValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final int32Values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final int64Values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 101
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 102
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 103
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 102
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 106
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 108
    new-instance v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-direct {v5}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;-><init>()V

    .line 109
    .local v5, "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    mul-int/lit8 v6, v4, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v5    # "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 203
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 204
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 205
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 206
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x60

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 207
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 208
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    mul-int/lit8 v5, v2, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 213
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 33
    return v1

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    if-eq v2, v3, :cond_2

    .line 36
    return v1

    .line 38
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 39
    .local v2, "other":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 40
    return v1

    .line 42
    :cond_3
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 43
    return v1

    .line 45
    :cond_4
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 46
    return v1

    .line 48
    :cond_5
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 49
    return v1

    .line 51
    :cond_6
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 52
    return v1

    .line 54
    :cond_7
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 55
    return v1

    .line 57
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 63
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    .line 64
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    .line 65
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    .line 66
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    .line 67
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 62
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 120
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 121
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, p3, v2

    add-long/2addr v13, v2

    .line 121
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 125
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v4, :cond_0

    .line 128
    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 129
    .local v10, "_hidl_vec_element":I
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v10    # "_hidl_vec_element":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x10

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 134
    .local v9, "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x4

    int-to-long v12, v10

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 134
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 138
    .local v4, "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    move v5, v8

    .local v5, "_hidl_index_0":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 141
    mul-int/lit8 v10, v5, 0x4

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v10

    .line 142
    .local v10, "_hidl_vec_element":F
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v10    # "_hidl_vec_element":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v4, 0x20

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 147
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x8

    int-to-long v12, v10

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 147
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 151
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 152
    move v5, v8

    .restart local v5    # "_hidl_index_0":I
    :goto_2
    if-ge v5, v9, :cond_2

    .line 154
    mul-int/lit8 v10, v5, 0x8

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v10

    .line 155
    .local v10, "_hidl_vec_element":D
    iget-object v12, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v10    # "_hidl_vec_element":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 159
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v4, 0x30

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 160
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x8

    int-to-long v12, v10

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v4, p3, v4

    add-long v16, v4, v2

    const/16 v18, 0x1

    .line 160
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 164
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    move v5, v8

    .restart local v5    # "_hidl_index_0":I
    :goto_3
    if-ge v5, v9, :cond_3

    .line 167
    mul-int/lit8 v10, v5, 0x8

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    .line 168
    .local v10, "_hidl_vec_element":J
    iget-object v12, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v10    # "_hidl_vec_element":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 172
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_3
    const-wide/16 v4, 0x40

    add-long v9, p3, v4

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 173
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v10, v7

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    const/16 v16, 0x1

    .line 173
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 177
    .restart local v4    # "childBlob":Landroid/os/HwBlob;
    iget-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 178
    nop

    .local v8, "_hidl_index_0":I
    :goto_4
    move v5, v8

    .end local v8    # "_hidl_index_0":I
    .restart local v5    # "_hidl_index_0":I
    if-ge v5, v6, :cond_4

    .line 180
    mul-int/lit8 v7, v5, 0x1

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    .line 181
    .local v7, "_hidl_vec_element":B
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v7    # "_hidl_vec_element":B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    goto :goto_4

    .line 184
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    .end local v8    # "_hidl_index_0":I
    :cond_4
    const-wide/16 v4, 0x50

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    .line 186
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    .line 187
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    const/4 v14, 0x0

    .line 186
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 191
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 92
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 93
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ".int32Values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .floatValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .doubleValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .int64Values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .stringValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 219
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 220
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 221
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 222
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 223
    .local v5, "childBlob":Landroid/os/HwBlob;
    move v6, v11

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 224
    mul-int/lit8 v12, v6, 0x4

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v12, v13, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 226
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v3

    add-long/2addr v11, v3

    invoke-virtual {v1, v11, v12, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 229
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 230
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v11, p2, v5

    add-long/2addr v11, v7

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    add-long v11, p2, v5

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 233
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_1
    if-ge v12, v2, :cond_1

    .line 234
    mul-int/lit8 v13, v12, 0x4

    int-to-long v9, v13

    iget-object v13, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11, v9, v10, v13}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 233
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_1

    .line 236
    .end local v12    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    .end local v2    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 240
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v9, p2, v5

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    add-long v9, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 242
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x8

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 243
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_2
    if-ge v10, v2, :cond_2

    .line 244
    mul-int/lit8 v11, v10, 0x8

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->doubleValues:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v9, v11, v12, v7, v8}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 243
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x8

    goto :goto_2

    .line 246
    .end local v10    # "_hidl_index_0":I
    :cond_2
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 249
    .end local v2    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x30

    add-long v7, p2, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x8

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_3
    if-ge v8, v2, :cond_3

    .line 254
    mul-int/lit8 v9, v8, 0x8

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 253
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 256
    .end local v8    # "_hidl_index_0":I
    :cond_3
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 259
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 260
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x40

    add-long v7, p2, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 263
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    nop

    .local v13, "_hidl_index_0":I
    :goto_4
    move v8, v13

    .end local v13    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    if-ge v8, v2, :cond_4

    .line 264
    mul-int/lit8 v9, v8, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 263
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "_hidl_index_0":I
    .restart local v13    # "_hidl_index_0":I
    goto :goto_4

    .line 266
    .end local v13    # "_hidl_index_0":I
    :cond_4
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 268
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 269
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 194
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 195
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 197
    return-void
.end method

.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
.super Ljava/lang/Object;
.source "VehiclePropConfig.java"


# instance fields
.field public access:I

.field public final areaConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;",
            ">;"
        }
    .end annotation
.end field

.field public attribute:I

.field public changeMode:I

.field public final configArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final configPara:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public configString:Ljava/lang/String;

.field public maxSampleRate:F

.field public minSampleRate:F

.field public prop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 144
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 145
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 146
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 145
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 149
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 151
    new-instance v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    invoke-direct {v5}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;-><init>()V

    .line 152
    .local v5, "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 153
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 226
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 228
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 229
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 230
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 231
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    mul-int/lit8 v5, v2, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 236
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 237
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 49
    return v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 52
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    if-eq v2, v3, :cond_2

    .line 55
    return v1

    .line 57
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 58
    .local v2, "other":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    if-eq v3, v4, :cond_3

    .line 59
    return v1

    .line 61
    :cond_3
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    if-eq v3, v4, :cond_4

    .line 62
    return v1

    .line 64
    :cond_4
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 65
    return v1

    .line 67
    :cond_5
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    if-eq v3, v4, :cond_6

    .line 68
    return v1

    .line 70
    :cond_6
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    if-eq v3, v4, :cond_7

    .line 71
    return v1

    .line 73
    :cond_7
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 74
    return v1

    .line 76
    :cond_8
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 77
    return v1

    .line 79
    :cond_9
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 80
    return v1

    .line 82
    :cond_a
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    .line 83
    return v1

    .line 85
    :cond_b
    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    .line 86
    return v1

    .line 88
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 93
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    .line 96
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    .line 99
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 100
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 101
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 102
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 103
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 162
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 163
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    .line 165
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 166
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x4

    int-to-long v9, v7

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 166
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 170
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 171
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 173
    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 174
    .local v10, "_hidl_vec_element":I
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v10    # "_hidl_vec_element":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 177
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 178
    const-wide/16 v6, 0x1c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 180
    const-wide/16 v6, 0x20

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 181
    .local v9, "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x28

    int-to-long v12, v10

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v6, p3, v6

    add-long v16, v6, v2

    const/16 v18, 0x1

    .line 181
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 185
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 186
    move v7, v8

    .local v7, "_hidl_index_0":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 187
    new-instance v10, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    invoke-direct {v10}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;-><init>()V

    .line 188
    .local v10, "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    mul-int/lit8 v11, v7, 0x28

    int-to-long v11, v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v6, v11, v12}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 189
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v10    # "_hidl_vec_element":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 193
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_1
    move-object/from16 v13, p1

    const-wide/16 v6, 0x30

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 194
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v5, p3, v6

    add-long v18, v5, v2

    const/16 v20, 0x1

    .line 194
    move-wide v14, v9

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 198
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 199
    nop

    .local v8, "_hidl_index_0":I
    :goto_2
    move v6, v8

    .end local v8    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_2

    .line 201
    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v7

    .line 202
    .local v7, "_hidl_vec_element":I
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v7    # "_hidl_vec_element":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    goto :goto_2

    .line 205
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_2
    const-wide/16 v4, 0x40

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 207
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 208
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    const/16 v20, 0x0

    .line 207
    move-object/from16 v13, p1

    move-wide v14, v6

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 212
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v2

    iput v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 213
    const-wide/16 v2, 0x54

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v2

    iput v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 214
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 135
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 136
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ".prop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .attribute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .configPara = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .access = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyAccess;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .changeMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyChangeMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .areaConfigs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .configArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .configString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .minSampleRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .maxSampleRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
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

    .line 241
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 242
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 244
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 245
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 246
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 247
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 248
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 249
    mul-int/lit8 v12, v8, 0x4

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v12, v13, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 248
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 251
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v5

    add-long/2addr v11, v2

    invoke-virtual {v1, v11, v12, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 253
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 254
    const-wide/16 v7, 0x1c

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 256
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 257
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x20

    add-long v11, p2, v7

    add-long/2addr v11, v5

    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 258
    add-long v11, p2, v7

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 259
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 260
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_1
    if-ge v12, v4, :cond_1

    .line 261
    iget-object v13, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    mul-int/lit8 v9, v12, 0x28

    int-to-long v9, v9

    invoke-virtual {v13, v11, v9, v10}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 260
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_1

    .line 263
    .end local v12    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 266
    .end local v4    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 267
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x30

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 268
    add-long v5, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v6, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 269
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 270
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v13, "_hidl_index_0":I
    :goto_2
    move v6, v13

    .end local v13    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_2

    .line 271
    mul-int/lit8 v9, v6, 0x4

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 270
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v13    # "_hidl_index_0":I
    goto :goto_2

    .line 273
    .end local v13    # "_hidl_index_0":I
    :cond_2
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 275
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x40

    add-long v2, p2, v2

    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 276
    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 277
    const-wide/16 v2, 0x54

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 278
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 217
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 218
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 219
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 220
    return-void
.end method

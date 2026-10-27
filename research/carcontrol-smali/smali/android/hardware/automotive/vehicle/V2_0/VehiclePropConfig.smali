.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
.super Ljava/lang/Object;
.source "VehiclePropConfig.java"


# instance fields
.field public access:I

.field public areaConfigs:Ljava/util/ArrayList;
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

.field public configArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public configPara:Ljava/util/ArrayList;
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

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 149
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 148
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 154
    new-instance v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    invoke-direct {v4}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    .line 155
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 156
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
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)V"
        }
    .end annotation

    .line 227
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 230
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 231
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 236
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    if-eq v2, v3, :cond_2

    return v1

    .line 60
    :cond_2
    check-cast p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 61
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    if-eq v2, v3, :cond_3

    return v1

    .line 64
    :cond_3
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    if-eq v2, v3, :cond_4

    return v1

    .line 67
    :cond_4
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 70
    :cond_5
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    if-eq v2, v3, :cond_6

    return v1

    .line 73
    :cond_6
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    if-eq v2, v3, :cond_7

    return v1

    .line 76
    :cond_7
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 79
    :cond_8
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 82
    :cond_9
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 85
    :cond_a
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b

    return v1

    .line 88
    :cond_b
    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    iget p1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    .line 99
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    .line 102
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    .line 103
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 104
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 105
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 106
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 96
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 165
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 166
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    .line 168
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 169
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 173
    iget-object v7, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_0

    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    .line 176
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 177
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    .line 180
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    const-wide/16 v8, 0x1c

    add-long v8, p3, v8

    .line 181
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 183
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x28

    int-to-long v12, v10

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 184
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 188
    iget-object v9, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_1
    if-ge v9, v6, :cond_1

    .line 190
    new-instance v10, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    invoke-direct {v10}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;-><init>()V

    mul-int/lit8 v11, v9, 0x28

    int-to-long v11, v11

    move-object/from16 v14, p1

    .line 191
    invoke-virtual {v10, v14, v8, v11, v12}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    iget-object v11, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p1

    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 196
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v5, v5

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v18, v8, v2

    const/16 v20, 0x1

    move-object/from16 v13, p1

    move-wide v14, v5

    .line 197
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 201
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_2
    if-ge v7, v4, :cond_2

    mul-int/lit8 v6, v7, 0x4

    int-to-long v8, v6

    .line 204
    invoke-virtual {v5, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 205
    iget-object v8, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 211
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v18, v4, v2

    const/16 v20, 0x0

    move-object/from16 v13, p1

    .line 210
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    .line 215
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v2

    iput v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    const-wide/16 v2, 0x54

    add-long v2, p3, v2

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v1

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x58

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 139
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".prop = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .attribute = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .configPara = "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .access = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyAccess;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .changeMode = "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyChangeMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .areaConfigs = "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .configArray = "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .configString = "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .minSampleRate = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSampleRate = "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 244
    iget v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 245
    iget v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->attribute:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 247
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 248
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 249
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 250
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_0
    if-ge v12, v4, :cond_0

    mul-int/lit8 v14, v12, 0x4

    int-to-long v14, v14

    .line 252
    iget-object v13, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configPara:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    add-long/2addr v7, v2

    .line 254
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    .line 256
    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x1c

    add-long v7, p2, v7

    .line 257
    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 259
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long v11, v7, v5

    .line 260
    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 261
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_1

    .line 264
    iget-object v12, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    mul-int/lit8 v14, v13, 0x28

    int-to-long v14, v14

    invoke-virtual {v12, v11, v14, v15}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-long/2addr v7, v2

    .line 266
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 269
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 270
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v5, 0x0

    .line 271
    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 272
    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v5

    :goto_2
    if-ge v13, v4, :cond_2

    mul-int/lit8 v5, v13, 0x4

    int-to-long v9, v5

    .line 274
    iget-object v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v9, v10, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    add-long/2addr v7, v2

    .line 276
    invoke-virtual {v1, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x40

    add-long v2, p2, v2

    .line 278
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    .line 279
    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v2, 0x54

    add-long v2, p2, v2

    .line 280
    iget v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 220
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

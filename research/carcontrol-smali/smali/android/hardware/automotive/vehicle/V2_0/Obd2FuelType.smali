.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;
.super Ljava/lang/Object;
.source "Obd2FuelType.java"


# static fields
.field public static final BIFUEL_RUNNING_CNG:I = 0xd

.field public static final BIFUEL_RUNNING_DIESEL:I = 0x17

.field public static final BIFUEL_RUNNING_ELECTRIC:I = 0xf

.field public static final BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION:I = 0x10

.field public static final BIFUEL_RUNNING_ETHANOL:I = 0xb

.field public static final BIFUEL_RUNNING_GASOLINE:I = 0x9

.field public static final BIFUEL_RUNNING_LPG:I = 0xc

.field public static final BIFUEL_RUNNING_METHANOL:I = 0xa

.field public static final BIFUEL_RUNNING_PROPANE:I = 0xe

.field public static final CNG:I = 0x6

.field public static final DIESEL:I = 0x4

.field public static final ELECTRIC:I = 0x8

.field public static final ETHANOL:I = 0x3

.field public static final GASOLINE:I = 0x1

.field public static final HYBRID_DIESEL:I = 0x13

.field public static final HYBRID_ELECTRIC:I = 0x14

.field public static final HYBRID_ETHANOL:I = 0x12

.field public static final HYBRID_GASOLINE:I = 0x11

.field public static final HYBRID_REGENERATIVE:I = 0x16

.field public static final HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION:I = 0x15

.field public static final LPG:I = 0x5

.field public static final METHANOL:I = 0x2

.field public static final NOT_AVAILABLE:I = 0x0

.field public static final PROPANE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NOT_AVAILABLE"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GASOLINE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "METHANOL"

    const/4 v3, 0x2

    .line 118
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ETHANOL"

    const/4 v3, 0x3

    .line 119
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DIESEL"

    const/4 v3, 0x4

    .line 120
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LPG"

    const/4 v3, 0x5

    .line 121
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CNG"

    const/4 v3, 0x6

    .line 122
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PROPANE"

    const/4 v3, 0x7

    .line 123
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ELECTRIC"

    const/16 v3, 0x8

    .line 124
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_GASOLINE"

    const/16 v3, 0x9

    .line 125
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_METHANOL"

    const/16 v3, 0xa

    .line 126
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_ETHANOL"

    const/16 v3, 0xb

    .line 127
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_LPG"

    const/16 v3, 0xc

    .line 128
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_CNG"

    const/16 v3, 0xd

    .line 129
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_PROPANE"

    const/16 v3, 0xe

    .line 130
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_ELECTRIC"

    const/16 v3, 0xf

    .line 131
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION"

    const/16 v3, 0x10

    .line 132
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_GASOLINE"

    const/16 v3, 0x11

    .line 133
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_ETHANOL"

    const/16 v3, 0x12

    .line 134
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_DIESEL"

    const/16 v3, 0x13

    .line 135
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_ELECTRIC"

    const/16 v3, 0x14

    .line 136
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION"

    const/16 v3, 0x15

    .line 137
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_REGENERATIVE"

    const/16 v3, 0x16

    .line 138
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BIFUEL_RUNNING_DIESEL"

    const/16 v3, 0x17

    .line 139
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, " | "

    .line 143
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "NOT_AVAILABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "GASOLINE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "METHANOL"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "ETHANOL"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "DIESEL"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "LPG"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "CNG"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "PROPANE"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "ELECTRIC"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "BIFUEL_RUNNING_GASOLINE"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "BIFUEL_RUNNING_METHANOL"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "BIFUEL_RUNNING_ETHANOL"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "BIFUEL_RUNNING_LPG"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "BIFUEL_RUNNING_CNG"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "BIFUEL_RUNNING_PROPANE"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "BIFUEL_RUNNING_ELECTRIC"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "HYBRID_GASOLINE"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "HYBRID_ETHANOL"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "HYBRID_DIESEL"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "HYBRID_ELECTRIC"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "HYBRID_REGENERATIVE"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "BIFUEL_RUNNING_DIESEL"

    return-object p0

    .line 102
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

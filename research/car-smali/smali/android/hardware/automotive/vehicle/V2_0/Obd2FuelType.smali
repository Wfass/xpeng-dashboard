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
    .locals 1
    .param p1, "o"    # I
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "field"    # I
    .param p4, "flipped"    # I
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

    .line 106
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/2addr p4, p3

    .line 110
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, "flipped":I
    const-string v2, "NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v2, "GASOLINE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 118
    const-string v2, "METHANOL"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 119
    const-string v2, "ETHANOL"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 120
    const-string v2, "DIESEL"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 121
    const-string v2, "LPG"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 122
    const-string v2, "CNG"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 123
    const-string v2, "PROPANE"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 124
    const-string v2, "ELECTRIC"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 125
    const-string v2, "BIFUEL_RUNNING_GASOLINE"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 126
    const-string v2, "BIFUEL_RUNNING_METHANOL"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 127
    const-string v2, "BIFUEL_RUNNING_ETHANOL"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 128
    const-string v2, "BIFUEL_RUNNING_LPG"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 129
    const-string v2, "BIFUEL_RUNNING_CNG"

    const/16 v3, 0xd

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 130
    const-string v2, "BIFUEL_RUNNING_PROPANE"

    const/16 v3, 0xe

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 131
    const-string v2, "BIFUEL_RUNNING_ELECTRIC"

    const/16 v3, 0xf

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 132
    const-string v2, "BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 133
    const-string v2, "HYBRID_GASOLINE"

    const/16 v3, 0x11

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 134
    const-string v2, "HYBRID_ETHANOL"

    const/16 v3, 0x12

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 135
    const-string v2, "HYBRID_DIESEL"

    const/16 v3, 0x13

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 136
    const-string v2, "HYBRID_ELECTRIC"

    const/16 v3, 0x14

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 137
    const-string v2, "HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION"

    const/16 v3, 0x15

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 138
    const-string v2, "HYBRID_REGENERATIVE"

    const/16 v3, 0x16

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 139
    const-string v2, "BIFUEL_RUNNING_DIESEL"

    const/16 v3, 0x17

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 140
    if-eq p0, v1, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, "NOT_AVAILABLE"

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 34
    const-string v0, "GASOLINE"

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 37
    const-string v0, "METHANOL"

    return-object v0

    .line 39
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 40
    const-string v0, "ETHANOL"

    return-object v0

    .line 42
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 43
    const-string v0, "DIESEL"

    return-object v0

    .line 45
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 46
    const-string v0, "LPG"

    return-object v0

    .line 48
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 49
    const-string v0, "CNG"

    return-object v0

    .line 51
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 52
    const-string v0, "PROPANE"

    return-object v0

    .line 54
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 55
    const-string v0, "ELECTRIC"

    return-object v0

    .line 57
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 58
    const-string v0, "BIFUEL_RUNNING_GASOLINE"

    return-object v0

    .line 60
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 61
    const-string v0, "BIFUEL_RUNNING_METHANOL"

    return-object v0

    .line 63
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 64
    const-string v0, "BIFUEL_RUNNING_ETHANOL"

    return-object v0

    .line 66
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 67
    const-string v0, "BIFUEL_RUNNING_LPG"

    return-object v0

    .line 69
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 70
    const-string v0, "BIFUEL_RUNNING_CNG"

    return-object v0

    .line 72
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 73
    const-string v0, "BIFUEL_RUNNING_PROPANE"

    return-object v0

    .line 75
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 76
    const-string v0, "BIFUEL_RUNNING_ELECTRIC"

    return-object v0

    .line 78
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 79
    const-string v0, "BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION"

    return-object v0

    .line 81
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 82
    const-string v0, "HYBRID_GASOLINE"

    return-object v0

    .line 84
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 85
    const-string v0, "HYBRID_ETHANOL"

    return-object v0

    .line 87
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 88
    const-string v0, "HYBRID_DIESEL"

    return-object v0

    .line 90
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 91
    const-string v0, "HYBRID_ELECTRIC"

    return-object v0

    .line 93
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 94
    const-string v0, "HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION"

    return-object v0

    .line 96
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 97
    const-string v0, "HYBRID_REGENERATIVE"

    return-object v0

    .line 99
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 100
    const-string v0, "BIFUEL_RUNNING_DIESEL"

    return-object v0

    .line 102
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

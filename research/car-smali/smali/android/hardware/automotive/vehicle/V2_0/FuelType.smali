.class public final Landroid/hardware/automotive/vehicle/V2_0/FuelType;
.super Ljava/lang/Object;
.source "FuelType.java"


# static fields
.field public static final FUEL_TYPE_BIODIESEL:I = 0x5

.field public static final FUEL_TYPE_CNG:I = 0x8

.field public static final FUEL_TYPE_DIESEL_1:I = 0x3

.field public static final FUEL_TYPE_DIESEL_2:I = 0x4

.field public static final FUEL_TYPE_E85:I = 0x6

.field public static final FUEL_TYPE_ELECTRIC:I = 0xa

.field public static final FUEL_TYPE_HYDROGEN:I = 0xb

.field public static final FUEL_TYPE_LEADED:I = 0x2

.field public static final FUEL_TYPE_LNG:I = 0x9

.field public static final FUEL_TYPE_LPG:I = 0x7

.field public static final FUEL_TYPE_OTHER:I = 0xc

.field public static final FUEL_TYPE_UNKNOWN:I = 0x0

.field public static final FUEL_TYPE_UNLEADED:I = 0x1


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

    .line 92
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 93
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/2addr p4, p3

    .line 96
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "flipped":I
    const-string v2, "FUEL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v2, "FUEL_TYPE_UNLEADED"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 104
    const-string v2, "FUEL_TYPE_LEADED"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 105
    const-string v2, "FUEL_TYPE_DIESEL_1"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 106
    const-string v2, "FUEL_TYPE_DIESEL_2"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 107
    const-string v2, "FUEL_TYPE_BIODIESEL"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 108
    const-string v2, "FUEL_TYPE_E85"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 109
    const-string v2, "FUEL_TYPE_LPG"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 110
    const-string v2, "FUEL_TYPE_CNG"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 111
    const-string v2, "FUEL_TYPE_LNG"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 112
    const-string v2, "FUEL_TYPE_ELECTRIC"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 113
    const-string v2, "FUEL_TYPE_HYDROGEN"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 114
    const-string v2, "FUEL_TYPE_OTHER"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/FuelType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 115
    if-eq p0, v1, :cond_0

    .line 116
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

    .line 118
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string v0, "FUEL_TYPE_UNKNOWN"

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 53
    const-string v0, "FUEL_TYPE_UNLEADED"

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 56
    const-string v0, "FUEL_TYPE_LEADED"

    return-object v0

    .line 58
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 59
    const-string v0, "FUEL_TYPE_DIESEL_1"

    return-object v0

    .line 61
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 62
    const-string v0, "FUEL_TYPE_DIESEL_2"

    return-object v0

    .line 64
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 65
    const-string v0, "FUEL_TYPE_BIODIESEL"

    return-object v0

    .line 67
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 68
    const-string v0, "FUEL_TYPE_E85"

    return-object v0

    .line 70
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 71
    const-string v0, "FUEL_TYPE_LPG"

    return-object v0

    .line 73
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 74
    const-string v0, "FUEL_TYPE_CNG"

    return-object v0

    .line 76
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 77
    const-string v0, "FUEL_TYPE_LNG"

    return-object v0

    .line 79
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 80
    const-string v0, "FUEL_TYPE_ELECTRIC"

    return-object v0

    .line 82
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 83
    const-string v0, "FUEL_TYPE_HYDROGEN"

    return-object v0

    .line 85
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 86
    const-string v0, "FUEL_TYPE_OTHER"

    return-object v0

    .line 88
    :cond_c
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;
.super Ljava/lang/Object;
.source "VehiclePropertyType.java"


# static fields
.field public static final BOOLEAN:I = 0x200000

.field public static final BYTES:I = 0x700000

.field public static final DOUBLE:I = 0x800000

.field public static final DOUBLE_VEC:I = 0x810000

.field public static final FLOAT:I = 0x600000

.field public static final FLOAT_VEC:I = 0x610000

.field public static final INT32:I = 0x400000

.field public static final INT32_VEC:I = 0x410000

.field public static final INT64:I = 0x500000

.field public static final INT64_VEC:I = 0x510000

.field public static final MASK:I = 0xff0000

.field public static final MIXED:I = 0xe00000

.field public static final STRING:I = 0x100000


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

    .line 81
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 82
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/2addr p4, p3

    .line 85
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 91
    .local v1, "flipped":I
    const-string v2, "STRING"

    const/high16 v3, 0x100000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 92
    const-string v2, "BOOLEAN"

    const/high16 v3, 0x200000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 93
    const-string v2, "INT32"

    const/high16 v3, 0x400000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 94
    const-string v2, "INT32_VEC"

    const/high16 v3, 0x410000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 95
    const-string v2, "INT64"

    const/high16 v3, 0x500000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 96
    const-string v2, "INT64_VEC"

    const/high16 v3, 0x510000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 97
    const-string v2, "FLOAT"

    const/high16 v3, 0x600000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 98
    const-string v2, "FLOAT_VEC"

    const/high16 v3, 0x610000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 99
    const-string v2, "BYTES"

    const/high16 v3, 0x700000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 100
    const-string v2, "DOUBLE"

    const/high16 v3, 0x800000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 101
    const-string v2, "DOUBLE_VEC"

    const/high16 v3, 0x810000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 102
    const-string v2, "MIXED"

    const/high16 v3, 0xe00000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 103
    const-string v2, "MASK"

    const/high16 v3, 0xff0000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 104
    if-eq p0, v1, :cond_0

    .line 105
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

    .line 107
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 38
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_0

    .line 39
    const-string v0, "STRING"

    return-object v0

    .line 41
    :cond_0
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_1

    .line 42
    const-string v0, "BOOLEAN"

    return-object v0

    .line 44
    :cond_1
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_2

    .line 45
    const-string v0, "INT32"

    return-object v0

    .line 47
    :cond_2
    const/high16 v0, 0x410000

    if-ne p0, v0, :cond_3

    .line 48
    const-string v0, "INT32_VEC"

    return-object v0

    .line 50
    :cond_3
    const/high16 v0, 0x500000

    if-ne p0, v0, :cond_4

    .line 51
    const-string v0, "INT64"

    return-object v0

    .line 53
    :cond_4
    const/high16 v0, 0x510000

    if-ne p0, v0, :cond_5

    .line 54
    const-string v0, "INT64_VEC"

    return-object v0

    .line 56
    :cond_5
    const/high16 v0, 0x600000

    if-ne p0, v0, :cond_6

    .line 57
    const-string v0, "FLOAT"

    return-object v0

    .line 59
    :cond_6
    const/high16 v0, 0x610000

    if-ne p0, v0, :cond_7

    .line 60
    const-string v0, "FLOAT_VEC"

    return-object v0

    .line 62
    :cond_7
    const/high16 v0, 0x700000

    if-ne p0, v0, :cond_8

    .line 63
    const-string v0, "BYTES"

    return-object v0

    .line 65
    :cond_8
    const/high16 v0, 0x800000

    if-ne p0, v0, :cond_9

    .line 66
    const-string v0, "DOUBLE"

    return-object v0

    .line 68
    :cond_9
    const/high16 v0, 0x810000

    if-ne p0, v0, :cond_a

    .line 69
    const-string v0, "DOUBLE_VEC"

    return-object v0

    .line 71
    :cond_a
    const/high16 v0, 0xe00000

    if-ne p0, v0, :cond_b

    .line 72
    const-string v0, "MIXED"

    return-object v0

    .line 74
    :cond_b
    const/high16 v0, 0xff0000

    if-ne p0, v0, :cond_c

    .line 75
    const-string v0, "MASK"

    return-object v0

    .line 77
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

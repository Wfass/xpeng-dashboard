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

    .line 82
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "STRING"

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    .line 91
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BOOLEAN"

    const/high16 v3, 0x200000

    .line 92
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INT32"

    const/high16 v3, 0x400000

    .line 93
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INT32_VEC"

    const/high16 v3, 0x410000

    .line 94
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INT64"

    const/high16 v3, 0x500000

    .line 95
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INT64_VEC"

    const/high16 v3, 0x510000

    .line 96
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FLOAT"

    const/high16 v3, 0x600000

    .line 97
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FLOAT_VEC"

    const/high16 v3, 0x610000

    .line 98
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BYTES"

    const/high16 v3, 0x700000

    .line 99
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DOUBLE"

    const/high16 v3, 0x800000

    .line 100
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DOUBLE_VEC"

    const/high16 v3, 0x810000

    .line 101
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MIXED"

    const/high16 v3, 0xe00000

    .line 102
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MASK"

    const/high16 v3, 0xff0000

    .line 103
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 105
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

    .line 107
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_0

    const-string p0, "STRING"

    return-object p0

    :cond_0
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_1

    const-string p0, "BOOLEAN"

    return-object p0

    :cond_1
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_2

    const-string p0, "INT32"

    return-object p0

    :cond_2
    const/high16 v0, 0x410000

    if-ne p0, v0, :cond_3

    const-string p0, "INT32_VEC"

    return-object p0

    :cond_3
    const/high16 v0, 0x500000

    if-ne p0, v0, :cond_4

    const-string p0, "INT64"

    return-object p0

    :cond_4
    const/high16 v0, 0x510000

    if-ne p0, v0, :cond_5

    const-string p0, "INT64_VEC"

    return-object p0

    :cond_5
    const/high16 v0, 0x600000

    if-ne p0, v0, :cond_6

    const-string p0, "FLOAT"

    return-object p0

    :cond_6
    const/high16 v0, 0x610000

    if-ne p0, v0, :cond_7

    const-string p0, "FLOAT_VEC"

    return-object p0

    :cond_7
    const/high16 v0, 0x700000

    if-ne p0, v0, :cond_8

    const-string p0, "BYTES"

    return-object p0

    :cond_8
    const/high16 v0, 0x800000

    if-ne p0, v0, :cond_9

    const-string p0, "DOUBLE"

    return-object p0

    :cond_9
    const/high16 v0, 0x810000

    if-ne p0, v0, :cond_a

    const-string p0, "DOUBLE_VEC"

    return-object p0

    :cond_a
    const/high16 v0, 0xe00000

    if-ne p0, v0, :cond_b

    const-string p0, "MIXED"

    return-object p0

    :cond_b
    const/high16 v0, 0xff0000

    if-ne p0, v0, :cond_c

    const-string p0, "MASK"

    return-object p0

    .line 77
    :cond_c
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

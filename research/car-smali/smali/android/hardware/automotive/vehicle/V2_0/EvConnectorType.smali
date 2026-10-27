.class public final Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;
.super Ljava/lang/Object;
.source "EvConnectorType.java"


# static fields
.field public static final GBT_AC:I = 0xa

.field public static final GBT_DC:I = 0xb

.field public static final IEC_TYPE_1_AC:I = 0x1

.field public static final IEC_TYPE_1_CCS_DC:I = 0x5

.field public static final IEC_TYPE_2_AC:I = 0x2

.field public static final IEC_TYPE_2_CCS_DC:I = 0x6

.field public static final IEC_TYPE_3_AC:I = 0x3

.field public static final IEC_TYPE_4_DC:I = 0x4

.field public static final OTHER:I = 0x65

.field public static final TESLA_HPWC:I = 0x8

.field public static final TESLA_ROADSTER:I = 0x7

.field public static final TESLA_SUPERCHARGER:I = 0x9

.field public static final UNKNOWN:I


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

    .line 71
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/2addr p4, p3

    .line 75
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 81
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v2, "IEC_TYPE_1_AC"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 83
    const-string v2, "IEC_TYPE_2_AC"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 84
    const-string v2, "IEC_TYPE_3_AC"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 85
    const-string v2, "IEC_TYPE_4_DC"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 86
    const-string v2, "IEC_TYPE_1_CCS_DC"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 87
    const-string v2, "IEC_TYPE_2_CCS_DC"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 88
    const-string v2, "TESLA_ROADSTER"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 89
    const-string v2, "TESLA_HPWC"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 90
    const-string v2, "TESLA_SUPERCHARGER"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 91
    const-string v2, "GBT_AC"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 92
    const-string v2, "GBT_DC"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 93
    const-string v2, "OTHER"

    const/16 v3, 0x65

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/EvConnectorType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 94
    if-eq p0, v1, :cond_0

    .line 95
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

    .line 97
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v0, "UNKNOWN"

    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 32
    const-string v0, "IEC_TYPE_1_AC"

    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 35
    const-string v0, "IEC_TYPE_2_AC"

    return-object v0

    .line 37
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 38
    const-string v0, "IEC_TYPE_3_AC"

    return-object v0

    .line 40
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 41
    const-string v0, "IEC_TYPE_4_DC"

    return-object v0

    .line 43
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 44
    const-string v0, "IEC_TYPE_1_CCS_DC"

    return-object v0

    .line 46
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 47
    const-string v0, "IEC_TYPE_2_CCS_DC"

    return-object v0

    .line 49
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 50
    const-string v0, "TESLA_ROADSTER"

    return-object v0

    .line 52
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 53
    const-string v0, "TESLA_HPWC"

    return-object v0

    .line 55
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 56
    const-string v0, "TESLA_SUPERCHARGER"

    return-object v0

    .line 58
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 59
    const-string v0, "GBT_AC"

    return-object v0

    .line 61
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 62
    const-string v0, "GBT_DC"

    return-object v0

    .line 64
    :cond_b
    const/16 v0, 0x65

    if-ne p0, v0, :cond_c

    .line 65
    const-string v0, "OTHER"

    return-object v0

    .line 67
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

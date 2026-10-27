.class public final Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;
.super Ljava/lang/Object;
.source "BATT_VOLTAGE_STATUS.java"


# static fields
.field public static final BATT_NORMAL:I = 0x4

.field public static final BATT_ONE_LEVEL_LOW:I = 0x3

.field public static final BATT_ONE_LEVEL_OVER:I = 0x5

.field public static final BATT_THREE_LEVEL_LOW:I = 0x1

.field public static final BATT_THREE_LEVEL_OVER:I = 0x7

.field public static final BATT_TWO_LEVEL_LOW:I = 0x2

.field public static final BATT_TWO_LEVEL_OVER:I = 0x6

.field public static final Not_ready:I


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

    .line 74
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/2addr p4, p3

    .line 78
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "flipped":I
    const-string v2, "Not_ready"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v2, "BATT_THREE_LEVEL_LOW"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 86
    const-string v2, "BATT_TWO_LEVEL_LOW"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 87
    const-string v2, "BATT_ONE_LEVEL_LOW"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 88
    const-string v2, "BATT_NORMAL"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 89
    const-string v2, "BATT_ONE_LEVEL_OVER"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 90
    const-string v2, "BATT_TWO_LEVEL_OVER"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 91
    const-string v2, "BATT_THREE_LEVEL_OVER"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/BATT_VOLTAGE_STATUS;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 92
    if-eq p0, v1, :cond_0

    .line 93
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

    .line 95
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 46
    if-nez p0, :cond_0

    .line 47
    const-string v0, "Not_ready"

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 50
    const-string v0, "BATT_THREE_LEVEL_LOW"

    return-object v0

    .line 52
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 53
    const-string v0, "BATT_TWO_LEVEL_LOW"

    return-object v0

    .line 55
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 56
    const-string v0, "BATT_ONE_LEVEL_LOW"

    return-object v0

    .line 58
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 59
    const-string v0, "BATT_NORMAL"

    return-object v0

    .line 61
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 62
    const-string v0, "BATT_ONE_LEVEL_OVER"

    return-object v0

    .line 64
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 65
    const-string v0, "BATT_TWO_LEVEL_OVER"

    return-object v0

    .line 67
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 68
    const-string v0, "BATT_THREE_LEVEL_OVER"

    return-object v0

    .line 70
    :cond_7
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

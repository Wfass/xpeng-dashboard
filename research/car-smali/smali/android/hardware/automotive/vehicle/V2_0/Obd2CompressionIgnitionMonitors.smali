.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;
.super Ljava/lang/Object;
.source "Obd2CompressionIgnitionMonitors.java"


# static fields
.field public static final BOOST_PRESSURE_AVAILABLE:I = 0x1000

.field public static final BOOST_PRESSURE_INCOMPLETE:I = 0x2000

.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final EGR_OR_VVT_AVAILABLE:I = 0x40

.field public static final EGR_OR_VVT_INCOMPLETE:I = 0x80

.field public static final EXHAUST_GAS_SENSOR_AVAILABLE:I = 0x400

.field public static final EXHAUST_GAS_SENSOR_INCOMPLETE:I = 0x800

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field public static final MISFIRE_INCOMPLETE:I = 0x20

.field public static final NMHC_CATALYST_AVAILABLE:I = 0x10000

.field public static final NMHC_CATALYST_INCOMPLETE:I = 0x20000

.field public static final NOx_SCR_AVAILABLE:I = 0x4000

.field public static final NOx_SCR_INCOMPLETE:I = 0x8000

.field public static final PM_FILTER_AVAILABLE:I = 0x100

.field public static final PM_FILTER_INCOMPLETE:I = 0x200


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

    .line 82
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/2addr p4, p3

    .line 86
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "flipped":I
    const-string v2, "COMPONENTS_AVAILABLE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 93
    const-string v2, "COMPONENTS_INCOMPLETE"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 94
    const-string v2, "FUEL_SYSTEM_AVAILABLE"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 95
    const-string v2, "FUEL_SYSTEM_INCOMPLETE"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 96
    const-string v2, "MISFIRE_AVAILABLE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 97
    const-string v2, "MISFIRE_INCOMPLETE"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 98
    const-string v2, "EGR_OR_VVT_AVAILABLE"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 99
    const-string v2, "EGR_OR_VVT_INCOMPLETE"

    const/16 v3, 0x80

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 100
    const-string v2, "PM_FILTER_AVAILABLE"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 101
    const-string v2, "PM_FILTER_INCOMPLETE"

    const/16 v3, 0x200

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 102
    const-string v2, "EXHAUST_GAS_SENSOR_AVAILABLE"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 103
    const-string v2, "EXHAUST_GAS_SENSOR_INCOMPLETE"

    const/16 v3, 0x800

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 104
    const-string v2, "BOOST_PRESSURE_AVAILABLE"

    const/16 v3, 0x1000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 105
    const-string v2, "BOOST_PRESSURE_INCOMPLETE"

    const/16 v3, 0x2000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 106
    const-string v2, "NOx_SCR_AVAILABLE"

    const/16 v3, 0x4000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 107
    const-string v2, "NOx_SCR_INCOMPLETE"

    const v3, 0x8000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 108
    const-string v2, "NMHC_CATALYST_AVAILABLE"

    const/high16 v3, 0x10000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 109
    const-string v2, "NMHC_CATALYST_INCOMPLETE"

    const/high16 v3, 0x20000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 110
    if-eq p0, v1, :cond_0

    .line 111
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

    .line 113
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 24
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 25
    const-string v0, "COMPONENTS_AVAILABLE"

    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 28
    const-string v0, "COMPONENTS_INCOMPLETE"

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 31
    const-string v0, "FUEL_SYSTEM_AVAILABLE"

    return-object v0

    .line 33
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 34
    const-string v0, "FUEL_SYSTEM_INCOMPLETE"

    return-object v0

    .line 36
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 37
    const-string v0, "MISFIRE_AVAILABLE"

    return-object v0

    .line 39
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 40
    const-string v0, "MISFIRE_INCOMPLETE"

    return-object v0

    .line 42
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 43
    const-string v0, "EGR_OR_VVT_AVAILABLE"

    return-object v0

    .line 45
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 46
    const-string v0, "EGR_OR_VVT_INCOMPLETE"

    return-object v0

    .line 48
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 49
    const-string v0, "PM_FILTER_AVAILABLE"

    return-object v0

    .line 51
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 52
    const-string v0, "PM_FILTER_INCOMPLETE"

    return-object v0

    .line 54
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 55
    const-string v0, "EXHAUST_GAS_SENSOR_AVAILABLE"

    return-object v0

    .line 57
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 58
    const-string v0, "EXHAUST_GAS_SENSOR_INCOMPLETE"

    return-object v0

    .line 60
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    .line 61
    const-string v0, "BOOST_PRESSURE_AVAILABLE"

    return-object v0

    .line 63
    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    .line 64
    const-string v0, "BOOST_PRESSURE_INCOMPLETE"

    return-object v0

    .line 66
    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    .line 67
    const-string v0, "NOx_SCR_AVAILABLE"

    return-object v0

    .line 69
    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    .line 70
    const-string v0, "NOx_SCR_INCOMPLETE"

    return-object v0

    .line 72
    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    .line 73
    const-string v0, "NMHC_CATALYST_AVAILABLE"

    return-object v0

    .line 75
    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    .line 76
    const-string v0, "NMHC_CATALYST_INCOMPLETE"

    return-object v0

    .line 78
    :cond_11
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

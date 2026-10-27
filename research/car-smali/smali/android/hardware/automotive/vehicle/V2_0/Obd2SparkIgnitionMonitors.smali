.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;
.super Ljava/lang/Object;
.source "Obd2SparkIgnitionMonitors.java"


# static fields
.field public static final AC_REFRIGERANT_AVAILABLE:I = 0x1000

.field public static final AC_REFRIGERANT_INCOMPLETE:I = 0x2000

.field public static final CATALYST_AVAILABLE:I = 0x100000

.field public static final CATALYST_INCOMPLETE:I = 0x200000

.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final EGR_AVAILABLE:I = 0x40

.field public static final EGR_INCOMPLETE:I = 0x80

.field public static final EVAPORATIVE_SYSTEM_AVAILABLE:I = 0x10000

.field public static final EVAPORATIVE_SYSTEM_INCOMPLETE:I = 0x20000

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final HEATED_CATALYST_AVAILABLE:I = 0x40000

.field public static final HEATED_CATALYST_INCOMPLETE:I = 0x80000

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field public static final MISFIRE_INCOMPLETE:I = 0x20

.field public static final OXYGEN_SENSOR_AVAILABLE:I = 0x400

.field public static final OXYGEN_SENSOR_HEATER_AVAILABLE:I = 0x100

.field public static final OXYGEN_SENSOR_HEATER_INCOMPLETE:I = 0x200

.field public static final OXYGEN_SENSOR_INCOMPLETE:I = 0x800

.field public static final SECONDARY_AIR_SYSTEM_AVAILABLE:I = 0x4000

.field public static final SECONDARY_AIR_SYSTEM_INCOMPLETE:I = 0x8000


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

    .line 98
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 99
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/2addr p4, p3

    .line 102
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "flipped":I
    const-string v2, "COMPONENTS_AVAILABLE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 109
    const-string v2, "COMPONENTS_INCOMPLETE"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 110
    const-string v2, "FUEL_SYSTEM_AVAILABLE"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 111
    const-string v2, "FUEL_SYSTEM_INCOMPLETE"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 112
    const-string v2, "MISFIRE_AVAILABLE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 113
    const-string v2, "MISFIRE_INCOMPLETE"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 114
    const-string v2, "EGR_AVAILABLE"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 115
    const-string v2, "EGR_INCOMPLETE"

    const/16 v3, 0x80

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 116
    const-string v2, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 117
    const-string v2, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    const/16 v3, 0x200

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 118
    const-string v2, "OXYGEN_SENSOR_AVAILABLE"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 119
    const-string v2, "OXYGEN_SENSOR_INCOMPLETE"

    const/16 v3, 0x800

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 120
    const-string v2, "AC_REFRIGERANT_AVAILABLE"

    const/16 v3, 0x1000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 121
    const-string v2, "AC_REFRIGERANT_INCOMPLETE"

    const/16 v3, 0x2000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 122
    const-string v2, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    const/16 v3, 0x4000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 123
    const-string v2, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    const v3, 0x8000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 124
    const-string v2, "EVAPORATIVE_SYSTEM_AVAILABLE"

    const/high16 v3, 0x10000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 125
    const-string v2, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    const/high16 v3, 0x20000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 126
    const-string v2, "HEATED_CATALYST_AVAILABLE"

    const/high16 v3, 0x40000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 127
    const-string v2, "HEATED_CATALYST_INCOMPLETE"

    const/high16 v3, 0x80000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 128
    const-string v2, "CATALYST_AVAILABLE"

    const/high16 v3, 0x100000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 129
    const-string v2, "CATALYST_INCOMPLETE"

    const/high16 v3, 0x200000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 130
    if-eq p0, v1, :cond_0

    .line 131
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

    .line 133
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
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 29
    const-string v0, "COMPONENTS_AVAILABLE"

    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 32
    const-string v0, "COMPONENTS_INCOMPLETE"

    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 35
    const-string v0, "FUEL_SYSTEM_AVAILABLE"

    return-object v0

    .line 37
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 38
    const-string v0, "FUEL_SYSTEM_INCOMPLETE"

    return-object v0

    .line 40
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 41
    const-string v0, "MISFIRE_AVAILABLE"

    return-object v0

    .line 43
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 44
    const-string v0, "MISFIRE_INCOMPLETE"

    return-object v0

    .line 46
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 47
    const-string v0, "EGR_AVAILABLE"

    return-object v0

    .line 49
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 50
    const-string v0, "EGR_INCOMPLETE"

    return-object v0

    .line 52
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 53
    const-string v0, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    return-object v0

    .line 55
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 56
    const-string v0, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    return-object v0

    .line 58
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 59
    const-string v0, "OXYGEN_SENSOR_AVAILABLE"

    return-object v0

    .line 61
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 62
    const-string v0, "OXYGEN_SENSOR_INCOMPLETE"

    return-object v0

    .line 64
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    .line 65
    const-string v0, "AC_REFRIGERANT_AVAILABLE"

    return-object v0

    .line 67
    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    .line 68
    const-string v0, "AC_REFRIGERANT_INCOMPLETE"

    return-object v0

    .line 70
    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    .line 71
    const-string v0, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    return-object v0

    .line 73
    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    .line 74
    const-string v0, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    return-object v0

    .line 76
    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    .line 77
    const-string v0, "EVAPORATIVE_SYSTEM_AVAILABLE"

    return-object v0

    .line 79
    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    .line 80
    const-string v0, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    return-object v0

    .line 82
    :cond_11
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_12

    .line 83
    const-string v0, "HEATED_CATALYST_AVAILABLE"

    return-object v0

    .line 85
    :cond_12
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_13

    .line 86
    const-string v0, "HEATED_CATALYST_INCOMPLETE"

    return-object v0

    .line 88
    :cond_13
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_14

    .line 89
    const-string v0, "CATALYST_AVAILABLE"

    return-object v0

    .line 91
    :cond_14
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_15

    .line 92
    const-string v0, "CATALYST_INCOMPLETE"

    return-object v0

    .line 94
    :cond_15
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

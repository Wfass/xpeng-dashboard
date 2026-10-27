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

    .line 99
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "COMPONENTS_AVAILABLE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "COMPONENTS_INCOMPLETE"

    const/4 v3, 0x2

    .line 109
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_SYSTEM_AVAILABLE"

    const/4 v3, 0x4

    .line 110
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_SYSTEM_INCOMPLETE"

    const/16 v3, 0x8

    .line 111
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MISFIRE_AVAILABLE"

    const/16 v3, 0x10

    .line 112
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MISFIRE_INCOMPLETE"

    const/16 v3, 0x20

    .line 113
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EGR_AVAILABLE"

    const/16 v3, 0x40

    .line 114
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EGR_INCOMPLETE"

    const/16 v3, 0x80

    .line 115
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    const/16 v3, 0x100

    .line 116
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    const/16 v3, 0x200

    .line 117
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR_AVAILABLE"

    const/16 v3, 0x400

    .line 118
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR_INCOMPLETE"

    const/16 v3, 0x800

    .line 119
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AC_REFRIGERANT_AVAILABLE"

    const/16 v3, 0x1000

    .line 120
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AC_REFRIGERANT_INCOMPLETE"

    const/16 v3, 0x2000

    .line 121
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    const/16 v3, 0x4000

    .line 122
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    const v3, 0x8000

    .line 123
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EVAPORATIVE_SYSTEM_AVAILABLE"

    const/high16 v3, 0x10000

    .line 124
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    const/high16 v3, 0x20000

    .line 125
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HEATED_CATALYST_AVAILABLE"

    const/high16 v3, 0x40000

    .line 126
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HEATED_CATALYST_INCOMPLETE"

    const/high16 v3, 0x80000

    .line 127
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_AVAILABLE"

    const/high16 v3, 0x100000

    .line 128
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_INCOMPLETE"

    const/high16 v3, 0x200000

    .line 129
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 131
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

    .line 133
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "COMPONENTS_AVAILABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "COMPONENTS_INCOMPLETE"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string p0, "FUEL_SYSTEM_AVAILABLE"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "FUEL_SYSTEM_INCOMPLETE"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "MISFIRE_AVAILABLE"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "MISFIRE_INCOMPLETE"

    return-object p0

    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string p0, "EGR_AVAILABLE"

    return-object p0

    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string p0, "EGR_INCOMPLETE"

    return-object p0

    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string p0, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    return-object p0

    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string p0, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    return-object p0

    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string p0, "OXYGEN_SENSOR_AVAILABLE"

    return-object p0

    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    const-string p0, "OXYGEN_SENSOR_INCOMPLETE"

    return-object p0

    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    const-string p0, "AC_REFRIGERANT_AVAILABLE"

    return-object p0

    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    const-string p0, "AC_REFRIGERANT_INCOMPLETE"

    return-object p0

    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    const-string p0, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    return-object p0

    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    const-string p0, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    return-object p0

    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    const-string p0, "EVAPORATIVE_SYSTEM_AVAILABLE"

    return-object p0

    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    const-string p0, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    return-object p0

    :cond_11
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_12

    const-string p0, "HEATED_CATALYST_AVAILABLE"

    return-object p0

    :cond_12
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_13

    const-string p0, "HEATED_CATALYST_INCOMPLETE"

    return-object p0

    :cond_13
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_14

    const-string p0, "CATALYST_AVAILABLE"

    return-object p0

    :cond_14
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_15

    const-string p0, "CATALYST_INCOMPLETE"

    return-object p0

    .line 94
    :cond_15
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

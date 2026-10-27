.class public final Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;
.super Ljava/lang/Object;
.source "DiagnosticIntegerSensorIndex.java"


# static fields
.field public static final ABSOLUTE_BAROMETRIC_PRESSURE:I = 0xb

.field public static final AMBIENT_AIR_TEMPERATURE:I = 0xd

.field public static final COMMANDED_SECONDARY_AIR_STATUS:I = 0x5

.field public static final CONTROL_MODULE_VOLTAGE:I = 0xc

.field public static final DISTANCE_TRAVELED_SINCE_CODES_CLEARED:I = 0xa

.field public static final DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON:I = 0x8

.field public static final DRIVER_DEMAND_PERCENT_TORQUE:I = 0x18

.field public static final ENGINE_ACTUAL_PERCENT_TORQUE:I = 0x19

.field public static final ENGINE_OIL_TEMPERATURE:I = 0x17

.field public static final ENGINE_PERCENT_TORQUE_DATA_IDLE:I = 0x1b

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT1:I = 0x1c

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT2:I = 0x1d

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT3:I = 0x1e

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT4:I = 0x1f

.field public static final ENGINE_REFERENCE_PERCENT_TORQUE:I = 0x1a

.field public static final FUEL_RAIL_ABSOLUTE_PRESSURE:I = 0x16

.field public static final FUEL_SYSTEM_STATUS:I = 0x0

.field public static final FUEL_TYPE:I = 0x15

.field public static final IGNITION_MONITORS_SUPPORTED:I = 0x2

.field public static final IGNITION_SPECIFIC_MONITORS:I = 0x3

.field public static final INTAKE_AIR_TEMPERATURE:I = 0x4

.field public static final LAST_SYSTEM_INDEX:I = 0x1f

.field public static final MALFUNCTION_INDICATOR_LIGHT_ON:I = 0x1

.field public static final MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR:I = 0x14

.field public static final MAX_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x10

.field public static final MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE:I = 0x13

.field public static final MAX_OXYGEN_SENSOR_CURRENT:I = 0x12

.field public static final MAX_OXYGEN_SENSOR_VOLTAGE:I = 0x11

.field public static final NUM_OXYGEN_SENSORS_PRESENT:I = 0x6

.field public static final RUNTIME_SINCE_ENGINE_START:I = 0x7

.field public static final TIME_SINCE_TROUBLE_CODES_CLEARED:I = 0xf

.field public static final TIME_WITH_MALFUNCTION_LIGHT_ON:I = 0xe

.field public static final WARMUPS_SINCE_CODES_CLEARED:I = 0x9


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

    .line 161
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "FUEL_SYSTEM_STATUS"

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MALFUNCTION_INDICATOR_LIGHT_ON"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "IGNITION_MONITORS_SUPPORTED"

    const/4 v3, 0x2

    .line 172
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "IGNITION_SPECIFIC_MONITORS"

    const/4 v3, 0x3

    .line 173
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INTAKE_AIR_TEMPERATURE"

    const/4 v3, 0x4

    .line 174
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "COMMANDED_SECONDARY_AIR_STATUS"

    const/4 v3, 0x5

    .line 175
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "NUM_OXYGEN_SENSORS_PRESENT"

    const/4 v3, 0x6

    .line 176
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "RUNTIME_SINCE_ENGINE_START"

    const/4 v3, 0x7

    .line 177
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    const/16 v3, 0x8

    .line 178
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "WARMUPS_SINCE_CODES_CLEARED"

    const/16 v3, 0x9

    .line 179
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    const/16 v3, 0xa

    .line 180
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ABSOLUTE_BAROMETRIC_PRESSURE"

    const/16 v3, 0xb

    .line 181
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CONTROL_MODULE_VOLTAGE"

    const/16 v3, 0xc

    .line 182
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AMBIENT_AIR_TEMPERATURE"

    const/16 v3, 0xd

    .line 183
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    const/16 v3, 0xe

    .line 184
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    const/16 v3, 0xf

    .line 185
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x10

    .line 186
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAX_OXYGEN_SENSOR_VOLTAGE"

    const/16 v3, 0x11

    .line 187
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAX_OXYGEN_SENSOR_CURRENT"

    const/16 v3, 0x12

    .line 188
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    const/16 v3, 0x13

    .line 189
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    const/16 v3, 0x14

    .line 190
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_TYPE"

    const/16 v3, 0x15

    .line 191
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    const/16 v3, 0x16

    .line 192
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_OIL_TEMPERATURE"

    const/16 v3, 0x17

    .line 193
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DRIVER_DEMAND_PERCENT_TORQUE"

    const/16 v3, 0x18

    .line 194
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_ACTUAL_PERCENT_TORQUE"

    const/16 v3, 0x19

    .line 195
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_REFERENCE_PERCENT_TORQUE"

    const/16 v3, 0x1a

    .line 196
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    const/16 v3, 0x1b

    .line 197
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    const/16 v3, 0x1c

    .line 198
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    const/16 v3, 0x1d

    .line 199
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    const/16 v3, 0x1e

    .line 200
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    const/16 v3, 0x1f

    .line 201
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LAST_SYSTEM_INDEX"

    .line 202
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 204
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

    .line 206
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FUEL_SYSTEM_STATUS"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "IGNITION_MONITORS_SUPPORTED"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "IGNITION_SPECIFIC_MONITORS"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "INTAKE_AIR_TEMPERATURE"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "COMMANDED_SECONDARY_AIR_STATUS"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "NUM_OXYGEN_SENSORS_PRESENT"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "RUNTIME_SINCE_ENGINE_START"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "WARMUPS_SINCE_CODES_CLEARED"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "ABSOLUTE_BAROMETRIC_PRESSURE"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "CONTROL_MODULE_VOLTAGE"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "AMBIENT_AIR_TEMPERATURE"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "MAX_OXYGEN_SENSOR_VOLTAGE"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "MAX_OXYGEN_SENSOR_CURRENT"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "FUEL_TYPE"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "ENGINE_OIL_TEMPERATURE"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string p0, "DRIVER_DEMAND_PERCENT_TORQUE"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string p0, "ENGINE_ACTUAL_PERCENT_TORQUE"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string p0, "ENGINE_REFERENCE_PERCENT_TORQUE"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string p0, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string p0, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    return-object p0

    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string p0, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    return-object p0

    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string p0, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    return-object p0

    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string p0, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    return-object p0

    :cond_1f
    if-ne p0, v0, :cond_20

    const-string p0, "LAST_SYSTEM_INDEX"

    return-object p0

    .line 156
    :cond_20
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

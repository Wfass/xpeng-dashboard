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

    .line 156
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 157
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/2addr p4, p3

    .line 160
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 166
    .local v1, "flipped":I
    const-string v2, "FUEL_SYSTEM_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v2, "MALFUNCTION_INDICATOR_LIGHT_ON"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 168
    const-string v2, "IGNITION_MONITORS_SUPPORTED"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 169
    const-string v2, "IGNITION_SPECIFIC_MONITORS"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 170
    const-string v2, "INTAKE_AIR_TEMPERATURE"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 171
    const-string v2, "COMMANDED_SECONDARY_AIR_STATUS"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 172
    const-string v2, "NUM_OXYGEN_SENSORS_PRESENT"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 173
    const-string v2, "RUNTIME_SINCE_ENGINE_START"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 174
    const-string v2, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 175
    const-string v2, "WARMUPS_SINCE_CODES_CLEARED"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 176
    const-string v2, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 177
    const-string v2, "ABSOLUTE_BAROMETRIC_PRESSURE"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 178
    const-string v2, "CONTROL_MODULE_VOLTAGE"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 179
    const-string v2, "AMBIENT_AIR_TEMPERATURE"

    const/16 v3, 0xd

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 180
    const-string v2, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    const/16 v3, 0xe

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 181
    const-string v2, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    const/16 v3, 0xf

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 182
    const-string v2, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 183
    const-string v2, "MAX_OXYGEN_SENSOR_VOLTAGE"

    const/16 v3, 0x11

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 184
    const-string v2, "MAX_OXYGEN_SENSOR_CURRENT"

    const/16 v3, 0x12

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 185
    const-string v2, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    const/16 v3, 0x13

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 186
    const-string v2, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    const/16 v3, 0x14

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 187
    const-string v2, "FUEL_TYPE"

    const/16 v3, 0x15

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 188
    const-string v2, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    const/16 v3, 0x16

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 189
    const-string v2, "ENGINE_OIL_TEMPERATURE"

    const/16 v3, 0x17

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 190
    const-string v2, "DRIVER_DEMAND_PERCENT_TORQUE"

    const/16 v3, 0x18

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 191
    const-string v2, "ENGINE_ACTUAL_PERCENT_TORQUE"

    const/16 v3, 0x19

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 192
    const-string v2, "ENGINE_REFERENCE_PERCENT_TORQUE"

    const/16 v3, 0x1a

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 193
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    const/16 v3, 0x1b

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 194
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    const/16 v3, 0x1c

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 195
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    const/16 v3, 0x1d

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 196
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    const/16 v3, 0x1e

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 197
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    const/16 v3, 0x1f

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 198
    const-string v2, "LAST_SYSTEM_INDEX"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 199
    if-eq p0, v1, :cond_0

    .line 200
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

    .line 202
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string v0, "FUEL_SYSTEM_STATUS"

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 57
    const-string v0, "MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 60
    const-string v0, "IGNITION_MONITORS_SUPPORTED"

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 63
    const-string v0, "IGNITION_SPECIFIC_MONITORS"

    return-object v0

    .line 65
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 66
    const-string v0, "INTAKE_AIR_TEMPERATURE"

    return-object v0

    .line 68
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 69
    const-string v0, "COMMANDED_SECONDARY_AIR_STATUS"

    return-object v0

    .line 71
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 72
    const-string v0, "NUM_OXYGEN_SENSORS_PRESENT"

    return-object v0

    .line 74
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 75
    const-string v0, "RUNTIME_SINCE_ENGINE_START"

    return-object v0

    .line 77
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 78
    const-string v0, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object v0

    .line 80
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 81
    const-string v0, "WARMUPS_SINCE_CODES_CLEARED"

    return-object v0

    .line 83
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 84
    const-string v0, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    return-object v0

    .line 86
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 87
    const-string v0, "ABSOLUTE_BAROMETRIC_PRESSURE"

    return-object v0

    .line 89
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 90
    const-string v0, "CONTROL_MODULE_VOLTAGE"

    return-object v0

    .line 92
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 93
    const-string v0, "AMBIENT_AIR_TEMPERATURE"

    return-object v0

    .line 95
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 96
    const-string v0, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    return-object v0

    .line 98
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 99
    const-string v0, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    return-object v0

    .line 101
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 102
    const-string v0, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 104
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 105
    const-string v0, "MAX_OXYGEN_SENSOR_VOLTAGE"

    return-object v0

    .line 107
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 108
    const-string v0, "MAX_OXYGEN_SENSOR_CURRENT"

    return-object v0

    .line 110
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 111
    const-string v0, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object v0

    .line 113
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 114
    const-string v0, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    return-object v0

    .line 116
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 117
    const-string v0, "FUEL_TYPE"

    return-object v0

    .line 119
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 120
    const-string v0, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    return-object v0

    .line 122
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 123
    const-string v0, "ENGINE_OIL_TEMPERATURE"

    return-object v0

    .line 125
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 126
    const-string v0, "DRIVER_DEMAND_PERCENT_TORQUE"

    return-object v0

    .line 128
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 129
    const-string v0, "ENGINE_ACTUAL_PERCENT_TORQUE"

    return-object v0

    .line 131
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 132
    const-string v0, "ENGINE_REFERENCE_PERCENT_TORQUE"

    return-object v0

    .line 134
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 135
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    return-object v0

    .line 137
    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    .line 138
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    return-object v0

    .line 140
    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    .line 141
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    return-object v0

    .line 143
    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    .line 144
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    return-object v0

    .line 146
    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    .line 147
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    return-object v0

    .line 149
    :cond_1f
    if-ne p0, v0, :cond_20

    .line 150
    const-string v0, "LAST_SYSTEM_INDEX"

    return-object v0

    .line 152
    :cond_20
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

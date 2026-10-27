.class public final Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;
.super Ljava/lang/Object;
.source "DiagnosticFloatSensorIndex.java"


# static fields
.field public static final ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE:I = 0x3a

.field public static final ABSOLUTE_LOAD_VALUE:I = 0x30

.field public static final ABSOLUTE_THROTTLE_POSITION_B:I = 0x33

.field public static final ABSOLUTE_THROTTLE_POSITION_C:I = 0x34

.field public static final ACCELERATOR_PEDAL_POSITION_D:I = 0x35

.field public static final ACCELERATOR_PEDAL_POSITION_E:I = 0x36

.field public static final ACCELERATOR_PEDAL_POSITION_F:I = 0x37

.field public static final CALCULATED_ENGINE_LOAD:I = 0x0

.field public static final CATALYST_TEMPERATURE_BANK1_SENSOR1:I = 0x2c

.field public static final CATALYST_TEMPERATURE_BANK1_SENSOR2:I = 0x2e

.field public static final CATALYST_TEMPERATURE_BANK2_SENSOR1:I = 0x2d

.field public static final CATALYST_TEMPERATURE_BANK2_SENSOR2:I = 0x2f

.field public static final COMMANDED_EVAPORATIVE_PURGE:I = 0x29

.field public static final COMMANDED_EXHAUST_GAS_RECIRCULATION:I = 0x27

.field public static final COMMANDED_THROTTLE_ACTUATOR:I = 0x38

.field public static final ENGINE_COOLANT_TEMPERATURE:I = 0x1

.field public static final ENGINE_FUEL_RATE:I = 0x46

.field public static final ENGINE_RPM:I = 0x8

.field public static final ETHANOL_FUEL_PERCENTAGE:I = 0x39

.field public static final EVAPORATION_SYSTEM_VAPOR_PRESSURE:I = 0x2b

.field public static final EXHAUST_GAS_RECIRCULATION_ERROR:I = 0x28

.field public static final FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO:I = 0x31

.field public static final FUEL_INJECTION_TIMING:I = 0x45

.field public static final FUEL_PRESSURE:I = 0x6

.field public static final FUEL_RAIL_GAUGE_PRESSURE:I = 0x26

.field public static final FUEL_RAIL_PRESSURE:I = 0x25

.field public static final FUEL_TANK_LEVEL_INPUT:I = 0x2a

.field public static final HYBRID_BATTERY_PACK_REMAINING_LIFE:I = 0x44

.field public static final INTAKE_MANIFOLD_ABSOLUTE_PRESSURE:I = 0x7

.field public static final LAST_SYSTEM_INDEX:I = 0x46

.field public static final LONG_TERM_FUEL_TRIM_BANK1:I = 0x3

.field public static final LONG_TERM_FUEL_TRIM_BANK2:I = 0x5

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1:I = 0x3f

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2:I = 0x40

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3:I = 0x41

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4:I = 0x42

.field public static final MAF_AIR_FLOW_RATE:I = 0xb

.field public static final OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO:I = 0xf

.field public static final OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM:I = 0xe

.field public static final OXYGEN_SENSOR1_VOLTAGE:I = 0xd

.field public static final OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x12

.field public static final OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM:I = 0x11

.field public static final OXYGEN_SENSOR2_VOLTAGE:I = 0x10

.field public static final OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x15

.field public static final OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM:I = 0x14

.field public static final OXYGEN_SENSOR3_VOLTAGE:I = 0x13

.field public static final OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x18

.field public static final OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM:I = 0x17

.field public static final OXYGEN_SENSOR4_VOLTAGE:I = 0x16

.field public static final OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x1b

.field public static final OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM:I = 0x1a

.field public static final OXYGEN_SENSOR5_VOLTAGE:I = 0x19

.field public static final OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x1e

.field public static final OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM:I = 0x1d

.field public static final OXYGEN_SENSOR6_VOLTAGE:I = 0x1c

.field public static final OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x21

.field public static final OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM:I = 0x20

.field public static final OXYGEN_SENSOR7_VOLTAGE:I = 0x1f

.field public static final OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x24

.field public static final OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM:I = 0x23

.field public static final OXYGEN_SENSOR8_VOLTAGE:I = 0x22

.field public static final RELATIVE_ACCELERATOR_PEDAL_POSITION:I = 0x43

.field public static final RELATIVE_THROTTLE_POSITION:I = 0x32

.field public static final SHORT_TERM_FUEL_TRIM_BANK1:I = 0x2

.field public static final SHORT_TERM_FUEL_TRIM_BANK2:I = 0x4

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1:I = 0x3b

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2:I = 0x3c

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3:I = 0x3d

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4:I = 0x3e

.field public static final THROTTLE_POSITION:I = 0xc

.field public static final TIMING_ADVANCE:I = 0xa

.field public static final VEHICLE_SPEED:I = 0x9


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

    .line 299
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CALCULATED_ENGINE_LOAD"

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ENGINE_COOLANT_TEMPERATURE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK1"

    const/4 v3, 0x2

    .line 310
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_FUEL_TRIM_BANK1"

    const/4 v3, 0x3

    .line 311
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK2"

    const/4 v3, 0x4

    .line 312
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_FUEL_TRIM_BANK2"

    const/4 v3, 0x5

    .line 313
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_PRESSURE"

    const/4 v3, 0x6

    .line 314
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    const/4 v3, 0x7

    .line 315
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_RPM"

    const/16 v3, 0x8

    .line 316
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "VEHICLE_SPEED"

    const/16 v3, 0x9

    .line 317
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "TIMING_ADVANCE"

    const/16 v3, 0xa

    .line 318
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MAF_AIR_FLOW_RATE"

    const/16 v3, 0xb

    .line 319
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "THROTTLE_POSITION"

    const/16 v3, 0xc

    .line 320
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR1_VOLTAGE"

    const/16 v3, 0xd

    .line 321
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0xe

    .line 322
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0xf

    .line 323
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR2_VOLTAGE"

    const/16 v3, 0x10

    .line 324
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x11

    .line 325
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x12

    .line 326
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR3_VOLTAGE"

    const/16 v3, 0x13

    .line 327
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x14

    .line 328
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x15

    .line 329
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR4_VOLTAGE"

    const/16 v3, 0x16

    .line 330
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x17

    .line 331
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x18

    .line 332
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR5_VOLTAGE"

    const/16 v3, 0x19

    .line 333
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x1a

    .line 334
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x1b

    .line 335
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR6_VOLTAGE"

    const/16 v3, 0x1c

    .line 336
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x1d

    .line 337
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x1e

    .line 338
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR7_VOLTAGE"

    const/16 v3, 0x1f

    .line 339
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x20

    .line 340
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x21

    .line 341
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR8_VOLTAGE"

    const/16 v3, 0x22

    .line 342
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x23

    .line 343
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x24

    .line 344
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_RAIL_PRESSURE"

    const/16 v3, 0x25

    .line 345
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_RAIL_GAUGE_PRESSURE"

    const/16 v3, 0x26

    .line 346
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    const/16 v3, 0x27

    .line 347
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EXHAUST_GAS_RECIRCULATION_ERROR"

    const/16 v3, 0x28

    .line 348
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "COMMANDED_EVAPORATIVE_PURGE"

    const/16 v3, 0x29

    .line 349
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_TANK_LEVEL_INPUT"

    const/16 v3, 0x2a

    .line 350
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    const/16 v3, 0x2b

    .line 351
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    const/16 v3, 0x2c

    .line 352
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    const/16 v3, 0x2d

    .line 353
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    const/16 v3, 0x2e

    .line 354
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    const/16 v3, 0x2f

    .line 355
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ABSOLUTE_LOAD_VALUE"

    const/16 v3, 0x30

    .line 356
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    const/16 v3, 0x31

    .line 357
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "RELATIVE_THROTTLE_POSITION"

    const/16 v3, 0x32

    .line 358
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ABSOLUTE_THROTTLE_POSITION_B"

    const/16 v3, 0x33

    .line 359
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ABSOLUTE_THROTTLE_POSITION_C"

    const/16 v3, 0x34

    .line 360
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ACCELERATOR_PEDAL_POSITION_D"

    const/16 v3, 0x35

    .line 361
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ACCELERATOR_PEDAL_POSITION_E"

    const/16 v3, 0x36

    .line 362
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ACCELERATOR_PEDAL_POSITION_F"

    const/16 v3, 0x37

    .line 363
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "COMMANDED_THROTTLE_ACTUATOR"

    const/16 v3, 0x38

    .line 364
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ETHANOL_FUEL_PERCENTAGE"

    const/16 v3, 0x39

    .line 365
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    const/16 v3, 0x3a

    .line 366
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    const/16 v3, 0x3b

    .line 367
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    const/16 v3, 0x3c

    .line 368
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    const/16 v3, 0x3d

    .line 369
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    const/16 v3, 0x3e

    .line 370
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    const/16 v3, 0x3f

    .line 371
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    const/16 v3, 0x40

    .line 372
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    const/16 v3, 0x41

    .line 373
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    const/16 v3, 0x42

    .line 374
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    const/16 v3, 0x43

    .line 375
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    const/16 v3, 0x44

    .line 376
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FUEL_INJECTION_TIMING"

    const/16 v3, 0x45

    .line 377
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ENGINE_FUEL_RATE"

    const/16 v3, 0x46

    .line 378
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LAST_SYSTEM_INDEX"

    .line 379
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 381
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

    .line 383
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "CALCULATED_ENGINE_LOAD"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "ENGINE_COOLANT_TEMPERATURE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "SHORT_TERM_FUEL_TRIM_BANK1"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "LONG_TERM_FUEL_TRIM_BANK1"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "SHORT_TERM_FUEL_TRIM_BANK2"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "LONG_TERM_FUEL_TRIM_BANK2"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "FUEL_PRESSURE"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "ENGINE_RPM"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "VEHICLE_SPEED"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "TIMING_ADVANCE"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "MAF_AIR_FLOW_RATE"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "THROTTLE_POSITION"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "OXYGEN_SENSOR1_VOLTAGE"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "OXYGEN_SENSOR2_VOLTAGE"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "OXYGEN_SENSOR3_VOLTAGE"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "OXYGEN_SENSOR4_VOLTAGE"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string p0, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string p0, "OXYGEN_SENSOR5_VOLTAGE"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string p0, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string p0, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string p0, "OXYGEN_SENSOR6_VOLTAGE"

    return-object p0

    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string p0, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string p0, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string p0, "OXYGEN_SENSOR7_VOLTAGE"

    return-object p0

    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string p0, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    const-string p0, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    const-string p0, "OXYGEN_SENSOR8_VOLTAGE"

    return-object p0

    :cond_22
    const/16 v0, 0x23

    if-ne p0, v0, :cond_23

    const-string p0, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_23
    const/16 v0, 0x24

    if-ne p0, v0, :cond_24

    const-string p0, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_24
    const/16 v0, 0x25

    if-ne p0, v0, :cond_25

    const-string p0, "FUEL_RAIL_PRESSURE"

    return-object p0

    :cond_25
    const/16 v0, 0x26

    if-ne p0, v0, :cond_26

    const-string p0, "FUEL_RAIL_GAUGE_PRESSURE"

    return-object p0

    :cond_26
    const/16 v0, 0x27

    if-ne p0, v0, :cond_27

    const-string p0, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    return-object p0

    :cond_27
    const/16 v0, 0x28

    if-ne p0, v0, :cond_28

    const-string p0, "EXHAUST_GAS_RECIRCULATION_ERROR"

    return-object p0

    :cond_28
    const/16 v0, 0x29

    if-ne p0, v0, :cond_29

    const-string p0, "COMMANDED_EVAPORATIVE_PURGE"

    return-object p0

    :cond_29
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2a

    const-string p0, "FUEL_TANK_LEVEL_INPUT"

    return-object p0

    :cond_2a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2b

    const-string p0, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object p0

    :cond_2b
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    const-string p0, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    return-object p0

    :cond_2c
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2d

    const-string p0, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    return-object p0

    :cond_2d
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2e

    const-string p0, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    return-object p0

    :cond_2e
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2f

    const-string p0, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    return-object p0

    :cond_2f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_30

    const-string p0, "ABSOLUTE_LOAD_VALUE"

    return-object p0

    :cond_30
    const/16 v0, 0x31

    if-ne p0, v0, :cond_31

    const-string p0, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    return-object p0

    :cond_31
    const/16 v0, 0x32

    if-ne p0, v0, :cond_32

    const-string p0, "RELATIVE_THROTTLE_POSITION"

    return-object p0

    :cond_32
    const/16 v0, 0x33

    if-ne p0, v0, :cond_33

    const-string p0, "ABSOLUTE_THROTTLE_POSITION_B"

    return-object p0

    :cond_33
    const/16 v0, 0x34

    if-ne p0, v0, :cond_34

    const-string p0, "ABSOLUTE_THROTTLE_POSITION_C"

    return-object p0

    :cond_34
    const/16 v0, 0x35

    if-ne p0, v0, :cond_35

    const-string p0, "ACCELERATOR_PEDAL_POSITION_D"

    return-object p0

    :cond_35
    const/16 v0, 0x36

    if-ne p0, v0, :cond_36

    const-string p0, "ACCELERATOR_PEDAL_POSITION_E"

    return-object p0

    :cond_36
    const/16 v0, 0x37

    if-ne p0, v0, :cond_37

    const-string p0, "ACCELERATOR_PEDAL_POSITION_F"

    return-object p0

    :cond_37
    const/16 v0, 0x38

    if-ne p0, v0, :cond_38

    const-string p0, "COMMANDED_THROTTLE_ACTUATOR"

    return-object p0

    :cond_38
    const/16 v0, 0x39

    if-ne p0, v0, :cond_39

    const-string p0, "ETHANOL_FUEL_PERCENTAGE"

    return-object p0

    :cond_39
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_3a

    const-string p0, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object p0

    :cond_3a
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_3b

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object p0

    :cond_3b
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3c

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object p0

    :cond_3c
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_3d

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object p0

    :cond_3d
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3e

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object p0

    :cond_3e
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_3f

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object p0

    :cond_3f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_40

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object p0

    :cond_40
    const/16 v0, 0x41

    if-ne p0, v0, :cond_41

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object p0

    :cond_41
    const/16 v0, 0x42

    if-ne p0, v0, :cond_42

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object p0

    :cond_42
    const/16 v0, 0x43

    if-ne p0, v0, :cond_43

    const-string p0, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    return-object p0

    :cond_43
    const/16 v0, 0x44

    if-ne p0, v0, :cond_44

    const-string p0, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    return-object p0

    :cond_44
    const/16 v0, 0x45

    if-ne p0, v0, :cond_45

    const-string p0, "FUEL_INJECTION_TIMING"

    return-object p0

    :cond_45
    const/16 v0, 0x46

    if-ne p0, v0, :cond_46

    const-string p0, "ENGINE_FUEL_RATE"

    return-object p0

    :cond_46
    if-ne p0, v0, :cond_47

    const-string p0, "LAST_SYSTEM_INDEX"

    return-object p0

    .line 294
    :cond_47
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

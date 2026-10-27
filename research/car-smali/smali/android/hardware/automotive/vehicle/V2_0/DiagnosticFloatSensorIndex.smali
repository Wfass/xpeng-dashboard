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

    .line 298
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 299
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    or-int/2addr p4, p3

    .line 302
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 308
    .local v1, "flipped":I
    const-string v2, "CALCULATED_ENGINE_LOAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v2, "ENGINE_COOLANT_TEMPERATURE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 310
    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK1"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 311
    const-string v2, "LONG_TERM_FUEL_TRIM_BANK1"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 312
    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK2"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 313
    const-string v2, "LONG_TERM_FUEL_TRIM_BANK2"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 314
    const-string v2, "FUEL_PRESSURE"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 315
    const-string v2, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 316
    const-string v2, "ENGINE_RPM"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 317
    const-string v2, "VEHICLE_SPEED"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 318
    const-string v2, "TIMING_ADVANCE"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 319
    const-string v2, "MAF_AIR_FLOW_RATE"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 320
    const-string v2, "THROTTLE_POSITION"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 321
    const-string v2, "OXYGEN_SENSOR1_VOLTAGE"

    const/16 v3, 0xd

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 322
    const-string v2, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0xe

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 323
    const-string v2, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0xf

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 324
    const-string v2, "OXYGEN_SENSOR2_VOLTAGE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 325
    const-string v2, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x11

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 326
    const-string v2, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x12

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 327
    const-string v2, "OXYGEN_SENSOR3_VOLTAGE"

    const/16 v3, 0x13

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 328
    const-string v2, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x14

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 329
    const-string v2, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x15

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 330
    const-string v2, "OXYGEN_SENSOR4_VOLTAGE"

    const/16 v3, 0x16

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 331
    const-string v2, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x17

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 332
    const-string v2, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x18

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 333
    const-string v2, "OXYGEN_SENSOR5_VOLTAGE"

    const/16 v3, 0x19

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 334
    const-string v2, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x1a

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 335
    const-string v2, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x1b

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 336
    const-string v2, "OXYGEN_SENSOR6_VOLTAGE"

    const/16 v3, 0x1c

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 337
    const-string v2, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x1d

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 338
    const-string v2, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x1e

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 339
    const-string v2, "OXYGEN_SENSOR7_VOLTAGE"

    const/16 v3, 0x1f

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 340
    const-string v2, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 341
    const-string v2, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x21

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 342
    const-string v2, "OXYGEN_SENSOR8_VOLTAGE"

    const/16 v3, 0x22

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 343
    const-string v2, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    const/16 v3, 0x23

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 344
    const-string v2, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    const/16 v3, 0x24

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 345
    const-string v2, "FUEL_RAIL_PRESSURE"

    const/16 v3, 0x25

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 346
    const-string v2, "FUEL_RAIL_GAUGE_PRESSURE"

    const/16 v3, 0x26

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 347
    const-string v2, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    const/16 v3, 0x27

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 348
    const-string v2, "EXHAUST_GAS_RECIRCULATION_ERROR"

    const/16 v3, 0x28

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 349
    const-string v2, "COMMANDED_EVAPORATIVE_PURGE"

    const/16 v3, 0x29

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 350
    const-string v2, "FUEL_TANK_LEVEL_INPUT"

    const/16 v3, 0x2a

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 351
    const-string v2, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    const/16 v3, 0x2b

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 352
    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    const/16 v3, 0x2c

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 353
    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    const/16 v3, 0x2d

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 354
    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    const/16 v3, 0x2e

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 355
    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    const/16 v3, 0x2f

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 356
    const-string v2, "ABSOLUTE_LOAD_VALUE"

    const/16 v3, 0x30

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 357
    const-string v2, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    const/16 v3, 0x31

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 358
    const-string v2, "RELATIVE_THROTTLE_POSITION"

    const/16 v3, 0x32

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 359
    const-string v2, "ABSOLUTE_THROTTLE_POSITION_B"

    const/16 v3, 0x33

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 360
    const-string v2, "ABSOLUTE_THROTTLE_POSITION_C"

    const/16 v3, 0x34

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 361
    const-string v2, "ACCELERATOR_PEDAL_POSITION_D"

    const/16 v3, 0x35

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 362
    const-string v2, "ACCELERATOR_PEDAL_POSITION_E"

    const/16 v3, 0x36

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 363
    const-string v2, "ACCELERATOR_PEDAL_POSITION_F"

    const/16 v3, 0x37

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 364
    const-string v2, "COMMANDED_THROTTLE_ACTUATOR"

    const/16 v3, 0x38

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 365
    const-string v2, "ETHANOL_FUEL_PERCENTAGE"

    const/16 v3, 0x39

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 366
    const-string v2, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    const/16 v3, 0x3a

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 367
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    const/16 v3, 0x3b

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 368
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    const/16 v3, 0x3c

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 369
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    const/16 v3, 0x3d

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 370
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    const/16 v3, 0x3e

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 371
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    const/16 v3, 0x3f

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 372
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 373
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    const/16 v3, 0x41

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 374
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    const/16 v3, 0x42

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 375
    const-string v2, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    const/16 v3, 0x43

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 376
    const-string v2, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    const/16 v3, 0x44

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 377
    const-string v2, "FUEL_INJECTION_TIMING"

    const/16 v3, 0x45

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 378
    const-string v2, "ENGINE_FUEL_RATE"

    const/16 v3, 0x46

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 379
    const-string v2, "LAST_SYSTEM_INDEX"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 380
    if-eq p0, v1, :cond_0

    .line 381
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

    .line 383
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v0, "CALCULATED_ENGINE_LOAD"

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 82
    const-string v0, "ENGINE_COOLANT_TEMPERATURE"

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 85
    const-string v0, "SHORT_TERM_FUEL_TRIM_BANK1"

    return-object v0

    .line 87
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 88
    const-string v0, "LONG_TERM_FUEL_TRIM_BANK1"

    return-object v0

    .line 90
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 91
    const-string v0, "SHORT_TERM_FUEL_TRIM_BANK2"

    return-object v0

    .line 93
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 94
    const-string v0, "LONG_TERM_FUEL_TRIM_BANK2"

    return-object v0

    .line 96
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 97
    const-string v0, "FUEL_PRESSURE"

    return-object v0

    .line 99
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 100
    const-string v0, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object v0

    .line 102
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 103
    const-string v0, "ENGINE_RPM"

    return-object v0

    .line 105
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 106
    const-string v0, "VEHICLE_SPEED"

    return-object v0

    .line 108
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 109
    const-string v0, "TIMING_ADVANCE"

    return-object v0

    .line 111
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 112
    const-string v0, "MAF_AIR_FLOW_RATE"

    return-object v0

    .line 114
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 115
    const-string v0, "THROTTLE_POSITION"

    return-object v0

    .line 117
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 118
    const-string v0, "OXYGEN_SENSOR1_VOLTAGE"

    return-object v0

    .line 120
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 121
    const-string v0, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 123
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 124
    const-string v0, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 126
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 127
    const-string v0, "OXYGEN_SENSOR2_VOLTAGE"

    return-object v0

    .line 129
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 130
    const-string v0, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 132
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 133
    const-string v0, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 135
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 136
    const-string v0, "OXYGEN_SENSOR3_VOLTAGE"

    return-object v0

    .line 138
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 139
    const-string v0, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 141
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 142
    const-string v0, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 144
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 145
    const-string v0, "OXYGEN_SENSOR4_VOLTAGE"

    return-object v0

    .line 147
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 148
    const-string v0, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 150
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 151
    const-string v0, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 153
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 154
    const-string v0, "OXYGEN_SENSOR5_VOLTAGE"

    return-object v0

    .line 156
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 157
    const-string v0, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 159
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 160
    const-string v0, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 162
    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    .line 163
    const-string v0, "OXYGEN_SENSOR6_VOLTAGE"

    return-object v0

    .line 165
    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    .line 166
    const-string v0, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 168
    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    .line 169
    const-string v0, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 171
    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    .line 172
    const-string v0, "OXYGEN_SENSOR7_VOLTAGE"

    return-object v0

    .line 174
    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    .line 175
    const-string v0, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 177
    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    .line 178
    const-string v0, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 180
    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    .line 181
    const-string v0, "OXYGEN_SENSOR8_VOLTAGE"

    return-object v0

    .line 183
    :cond_22
    const/16 v0, 0x23

    if-ne p0, v0, :cond_23

    .line 184
    const-string v0, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 186
    :cond_23
    const/16 v0, 0x24

    if-ne p0, v0, :cond_24

    .line 187
    const-string v0, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 189
    :cond_24
    const/16 v0, 0x25

    if-ne p0, v0, :cond_25

    .line 190
    const-string v0, "FUEL_RAIL_PRESSURE"

    return-object v0

    .line 192
    :cond_25
    const/16 v0, 0x26

    if-ne p0, v0, :cond_26

    .line 193
    const-string v0, "FUEL_RAIL_GAUGE_PRESSURE"

    return-object v0

    .line 195
    :cond_26
    const/16 v0, 0x27

    if-ne p0, v0, :cond_27

    .line 196
    const-string v0, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    return-object v0

    .line 198
    :cond_27
    const/16 v0, 0x28

    if-ne p0, v0, :cond_28

    .line 199
    const-string v0, "EXHAUST_GAS_RECIRCULATION_ERROR"

    return-object v0

    .line 201
    :cond_28
    const/16 v0, 0x29

    if-ne p0, v0, :cond_29

    .line 202
    const-string v0, "COMMANDED_EVAPORATIVE_PURGE"

    return-object v0

    .line 204
    :cond_29
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2a

    .line 205
    const-string v0, "FUEL_TANK_LEVEL_INPUT"

    return-object v0

    .line 207
    :cond_2a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2b

    .line 208
    const-string v0, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object v0

    .line 210
    :cond_2b
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    .line 211
    const-string v0, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    return-object v0

    .line 213
    :cond_2c
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2d

    .line 214
    const-string v0, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    return-object v0

    .line 216
    :cond_2d
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2e

    .line 217
    const-string v0, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    return-object v0

    .line 219
    :cond_2e
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2f

    .line 220
    const-string v0, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    return-object v0

    .line 222
    :cond_2f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_30

    .line 223
    const-string v0, "ABSOLUTE_LOAD_VALUE"

    return-object v0

    .line 225
    :cond_30
    const/16 v0, 0x31

    if-ne p0, v0, :cond_31

    .line 226
    const-string v0, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    return-object v0

    .line 228
    :cond_31
    const/16 v0, 0x32

    if-ne p0, v0, :cond_32

    .line 229
    const-string v0, "RELATIVE_THROTTLE_POSITION"

    return-object v0

    .line 231
    :cond_32
    const/16 v0, 0x33

    if-ne p0, v0, :cond_33

    .line 232
    const-string v0, "ABSOLUTE_THROTTLE_POSITION_B"

    return-object v0

    .line 234
    :cond_33
    const/16 v0, 0x34

    if-ne p0, v0, :cond_34

    .line 235
    const-string v0, "ABSOLUTE_THROTTLE_POSITION_C"

    return-object v0

    .line 237
    :cond_34
    const/16 v0, 0x35

    if-ne p0, v0, :cond_35

    .line 238
    const-string v0, "ACCELERATOR_PEDAL_POSITION_D"

    return-object v0

    .line 240
    :cond_35
    const/16 v0, 0x36

    if-ne p0, v0, :cond_36

    .line 241
    const-string v0, "ACCELERATOR_PEDAL_POSITION_E"

    return-object v0

    .line 243
    :cond_36
    const/16 v0, 0x37

    if-ne p0, v0, :cond_37

    .line 244
    const-string v0, "ACCELERATOR_PEDAL_POSITION_F"

    return-object v0

    .line 246
    :cond_37
    const/16 v0, 0x38

    if-ne p0, v0, :cond_38

    .line 247
    const-string v0, "COMMANDED_THROTTLE_ACTUATOR"

    return-object v0

    .line 249
    :cond_38
    const/16 v0, 0x39

    if-ne p0, v0, :cond_39

    .line 250
    const-string v0, "ETHANOL_FUEL_PERCENTAGE"

    return-object v0

    .line 252
    :cond_39
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_3a

    .line 253
    const-string v0, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object v0

    .line 255
    :cond_3a
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_3b

    .line 256
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object v0

    .line 258
    :cond_3b
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3c

    .line 259
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object v0

    .line 261
    :cond_3c
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_3d

    .line 262
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object v0

    .line 264
    :cond_3d
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3e

    .line 265
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object v0

    .line 267
    :cond_3e
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_3f

    .line 268
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object v0

    .line 270
    :cond_3f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_40

    .line 271
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object v0

    .line 273
    :cond_40
    const/16 v0, 0x41

    if-ne p0, v0, :cond_41

    .line 274
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object v0

    .line 276
    :cond_41
    const/16 v0, 0x42

    if-ne p0, v0, :cond_42

    .line 277
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object v0

    .line 279
    :cond_42
    const/16 v0, 0x43

    if-ne p0, v0, :cond_43

    .line 280
    const-string v0, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    return-object v0

    .line 282
    :cond_43
    const/16 v0, 0x44

    if-ne p0, v0, :cond_44

    .line 283
    const-string v0, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    return-object v0

    .line 285
    :cond_44
    const/16 v0, 0x45

    if-ne p0, v0, :cond_45

    .line 286
    const-string v0, "FUEL_INJECTION_TIMING"

    return-object v0

    .line 288
    :cond_45
    const/16 v0, 0x46

    if-ne p0, v0, :cond_46

    .line 289
    const-string v0, "ENGINE_FUEL_RATE"

    return-object v0

    .line 291
    :cond_46
    if-ne p0, v0, :cond_47

    .line 292
    const-string v0, "LAST_SYSTEM_INDEX"

    return-object v0

    .line 294
    :cond_47
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;
.super Ljava/lang/Object;
.source "VehicleUnit.java"


# static fields
.field public static final AMPERE_HOURS:I = 0x64

.field public static final BAR:I = 0x72

.field public static final CELSIUS:I = 0x30

.field public static final DEGREES:I = 0x80

.field public static final FAHRENHEIT:I = 0x31

.field public static final GALLON:I = 0x42

.field public static final HERTZ:I = 0x3

.field public static final IMPERIAL_GALLON:I = 0x43

.field public static final KELVIN:I = 0x32

.field public static final KILOMETER:I = 0x23

.field public static final KILOMETERS_PER_HOUR:I = 0x91

.field public static final KILOPASCAL:I = 0x70

.field public static final KILOWATT_HOUR:I = 0x65

.field public static final LITER:I = 0x41

.field public static final METER:I = 0x21

.field public static final METER_PER_SEC:I = 0x1

.field public static final MILE:I = 0x24

.field public static final MILES_PER_HOUR:I = 0x90

.field public static final MILLIAMPERE:I = 0x61

.field public static final MILLILITER:I = 0x40

.field public static final MILLIMETER:I = 0x20

.field public static final MILLIVOLT:I = 0x62

.field public static final MILLIWATTS:I = 0x63

.field public static final MILLI_SECS:I = 0x51

.field public static final NANO_SECS:I = 0x50

.field public static final PERCENTILE:I = 0x10

.field public static final PSI:I = 0x71

.field public static final RPM:I = 0x2

.field public static final SECS:I = 0x53

.field public static final SHOULD_NOT_USE:I = 0x0

.field public static final US_GALLON:I = 0x42

.field public static final WATT_HOUR:I = 0x60

.field public static final YEAR:I = 0x59


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

    .line 146
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SHOULD_NOT_USE"

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "METER_PER_SEC"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "RPM"

    const/4 v3, 0x2

    .line 157
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "HERTZ"

    const/4 v3, 0x3

    .line 158
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERCENTILE"

    const/16 v3, 0x10

    .line 159
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLIMETER"

    const/16 v3, 0x20

    .line 160
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "METER"

    const/16 v3, 0x21

    .line 161
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "KILOMETER"

    const/16 v3, 0x23

    .line 162
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILE"

    const/16 v3, 0x24

    .line 163
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CELSIUS"

    const/16 v3, 0x30

    .line 164
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FAHRENHEIT"

    const/16 v3, 0x31

    .line 165
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "KELVIN"

    const/16 v3, 0x32

    .line 166
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLILITER"

    const/16 v3, 0x40

    .line 167
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LITER"

    const/16 v3, 0x41

    .line 168
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GALLON"

    const/16 v3, 0x42

    .line 169
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "US_GALLON"

    .line 170
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "IMPERIAL_GALLON"

    const/16 v3, 0x43

    .line 171
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "NANO_SECS"

    const/16 v3, 0x50

    .line 172
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLI_SECS"

    const/16 v3, 0x51

    .line 173
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SECS"

    const/16 v3, 0x53

    .line 174
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "YEAR"

    const/16 v3, 0x59

    .line 175
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "WATT_HOUR"

    const/16 v3, 0x60

    .line 176
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLIAMPERE"

    const/16 v3, 0x61

    .line 177
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLIVOLT"

    const/16 v3, 0x62

    .line 178
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILLIWATTS"

    const/16 v3, 0x63

    .line 179
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AMPERE_HOURS"

    const/16 v3, 0x64

    .line 180
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "KILOWATT_HOUR"

    const/16 v3, 0x65

    .line 181
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "KILOPASCAL"

    const/16 v3, 0x70

    .line 182
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PSI"

    const/16 v3, 0x71

    .line 183
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BAR"

    const/16 v3, 0x72

    .line 184
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DEGREES"

    const/16 v3, 0x80

    .line 185
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "MILES_PER_HOUR"

    const/16 v3, 0x90

    .line 186
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "KILOMETERS_PER_HOUR"

    const/16 v3, 0x91

    .line 187
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 189
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

    .line 191
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SHOULD_NOT_USE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "METER_PER_SEC"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "RPM"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "HERTZ"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "PERCENTILE"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "MILLIMETER"

    return-object p0

    :cond_5
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6

    const-string p0, "METER"

    return-object p0

    :cond_6
    const/16 v0, 0x23

    if-ne p0, v0, :cond_7

    const-string p0, "KILOMETER"

    return-object p0

    :cond_7
    const/16 v0, 0x24

    if-ne p0, v0, :cond_8

    const-string p0, "MILE"

    return-object p0

    :cond_8
    const/16 v0, 0x30

    if-ne p0, v0, :cond_9

    const-string p0, "CELSIUS"

    return-object p0

    :cond_9
    const/16 v0, 0x31

    if-ne p0, v0, :cond_a

    const-string p0, "FAHRENHEIT"

    return-object p0

    :cond_a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b

    const-string p0, "KELVIN"

    return-object p0

    :cond_b
    const/16 v0, 0x40

    if-ne p0, v0, :cond_c

    const-string p0, "MILLILITER"

    return-object p0

    :cond_c
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d

    const-string p0, "LITER"

    return-object p0

    :cond_d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_e

    const-string p0, "GALLON"

    return-object p0

    :cond_e
    if-ne p0, v0, :cond_f

    const-string p0, "US_GALLON"

    return-object p0

    :cond_f
    const/16 v0, 0x43

    if-ne p0, v0, :cond_10

    const-string p0, "IMPERIAL_GALLON"

    return-object p0

    :cond_10
    const/16 v0, 0x50

    if-ne p0, v0, :cond_11

    const-string p0, "NANO_SECS"

    return-object p0

    :cond_11
    const/16 v0, 0x51

    if-ne p0, v0, :cond_12

    const-string p0, "MILLI_SECS"

    return-object p0

    :cond_12
    const/16 v0, 0x53

    if-ne p0, v0, :cond_13

    const-string p0, "SECS"

    return-object p0

    :cond_13
    const/16 v0, 0x59

    if-ne p0, v0, :cond_14

    const-string p0, "YEAR"

    return-object p0

    :cond_14
    const/16 v0, 0x60

    if-ne p0, v0, :cond_15

    const-string p0, "WATT_HOUR"

    return-object p0

    :cond_15
    const/16 v0, 0x61

    if-ne p0, v0, :cond_16

    const-string p0, "MILLIAMPERE"

    return-object p0

    :cond_16
    const/16 v0, 0x62

    if-ne p0, v0, :cond_17

    const-string p0, "MILLIVOLT"

    return-object p0

    :cond_17
    const/16 v0, 0x63

    if-ne p0, v0, :cond_18

    const-string p0, "MILLIWATTS"

    return-object p0

    :cond_18
    const/16 v0, 0x64

    if-ne p0, v0, :cond_19

    const-string p0, "AMPERE_HOURS"

    return-object p0

    :cond_19
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1a

    const-string p0, "KILOWATT_HOUR"

    return-object p0

    :cond_1a
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1b

    const-string p0, "KILOPASCAL"

    return-object p0

    :cond_1b
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1c

    const-string p0, "PSI"

    return-object p0

    :cond_1c
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1d

    const-string p0, "BAR"

    return-object p0

    :cond_1d
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1e

    const-string p0, "DEGREES"

    return-object p0

    :cond_1e
    const/16 v0, 0x90

    if-ne p0, v0, :cond_1f

    const-string p0, "MILES_PER_HOUR"

    return-object p0

    :cond_1f
    const/16 v0, 0x91

    if-ne p0, v0, :cond_20

    const-string p0, "KILOMETERS_PER_HOUR"

    return-object p0

    .line 141
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

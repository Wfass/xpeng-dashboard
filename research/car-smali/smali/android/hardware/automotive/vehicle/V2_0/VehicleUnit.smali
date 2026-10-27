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

    .line 144
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 145
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/2addr p4, p3

    .line 148
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 154
    .local v1, "flipped":I
    const-string v2, "SHOULD_NOT_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v2, "METER_PER_SEC"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 156
    const-string v2, "RPM"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 157
    const-string v2, "HERTZ"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 158
    const-string v2, "PERCENTILE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 159
    const-string v2, "MILLIMETER"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 160
    const-string v2, "METER"

    const/16 v3, 0x21

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 161
    const-string v2, "KILOMETER"

    const/16 v3, 0x23

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 162
    const-string v2, "MILE"

    const/16 v3, 0x24

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 163
    const-string v2, "CELSIUS"

    const/16 v3, 0x30

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 164
    const-string v2, "FAHRENHEIT"

    const/16 v3, 0x31

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 165
    const-string v2, "KELVIN"

    const/16 v3, 0x32

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 166
    const-string v2, "MILLILITER"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 167
    const-string v2, "LITER"

    const/16 v3, 0x41

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 168
    const-string v2, "GALLON"

    const/16 v3, 0x42

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 169
    const-string v2, "US_GALLON"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 170
    const-string v2, "IMPERIAL_GALLON"

    const/16 v3, 0x43

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 171
    const-string v2, "NANO_SECS"

    const/16 v3, 0x50

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 172
    const-string v2, "MILLI_SECS"

    const/16 v3, 0x51

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 173
    const-string v2, "SECS"

    const/16 v3, 0x53

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 174
    const-string v2, "YEAR"

    const/16 v3, 0x59

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 175
    const-string v2, "WATT_HOUR"

    const/16 v3, 0x60

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 176
    const-string v2, "MILLIAMPERE"

    const/16 v3, 0x61

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 177
    const-string v2, "MILLIVOLT"

    const/16 v3, 0x62

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 178
    const-string v2, "MILLIWATTS"

    const/16 v3, 0x63

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 179
    const-string v2, "AMPERE_HOURS"

    const/16 v3, 0x64

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 180
    const-string v2, "KILOWATT_HOUR"

    const/16 v3, 0x65

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 181
    const-string v2, "KILOPASCAL"

    const/16 v3, 0x70

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 182
    const-string v2, "PSI"

    const/16 v3, 0x71

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 183
    const-string v2, "BAR"

    const/16 v3, 0x72

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 184
    const-string v2, "DEGREES"

    const/16 v3, 0x80

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 185
    const-string v2, "MILES_PER_HOUR"

    const/16 v3, 0x90

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 186
    const-string v2, "KILOMETERS_PER_HOUR"

    const/16 v3, 0x91

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 187
    if-eq p0, v1, :cond_0

    .line 188
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

    .line 190
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "SHOULD_NOT_USE"

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, "METER_PER_SEC"

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 48
    const-string v0, "RPM"

    return-object v0

    .line 50
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 51
    const-string v0, "HERTZ"

    return-object v0

    .line 53
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 54
    const-string v0, "PERCENTILE"

    return-object v0

    .line 56
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 57
    const-string v0, "MILLIMETER"

    return-object v0

    .line 59
    :cond_5
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6

    .line 60
    const-string v0, "METER"

    return-object v0

    .line 62
    :cond_6
    const/16 v0, 0x23

    if-ne p0, v0, :cond_7

    .line 63
    const-string v0, "KILOMETER"

    return-object v0

    .line 65
    :cond_7
    const/16 v0, 0x24

    if-ne p0, v0, :cond_8

    .line 66
    const-string v0, "MILE"

    return-object v0

    .line 68
    :cond_8
    const/16 v0, 0x30

    if-ne p0, v0, :cond_9

    .line 69
    const-string v0, "CELSIUS"

    return-object v0

    .line 71
    :cond_9
    const/16 v0, 0x31

    if-ne p0, v0, :cond_a

    .line 72
    const-string v0, "FAHRENHEIT"

    return-object v0

    .line 74
    :cond_a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b

    .line 75
    const-string v0, "KELVIN"

    return-object v0

    .line 77
    :cond_b
    const/16 v0, 0x40

    if-ne p0, v0, :cond_c

    .line 78
    const-string v0, "MILLILITER"

    return-object v0

    .line 80
    :cond_c
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d

    .line 81
    const-string v0, "LITER"

    return-object v0

    .line 83
    :cond_d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_e

    .line 84
    const-string v0, "GALLON"

    return-object v0

    .line 86
    :cond_e
    if-ne p0, v0, :cond_f

    .line 87
    const-string v0, "US_GALLON"

    return-object v0

    .line 89
    :cond_f
    const/16 v0, 0x43

    if-ne p0, v0, :cond_10

    .line 90
    const-string v0, "IMPERIAL_GALLON"

    return-object v0

    .line 92
    :cond_10
    const/16 v0, 0x50

    if-ne p0, v0, :cond_11

    .line 93
    const-string v0, "NANO_SECS"

    return-object v0

    .line 95
    :cond_11
    const/16 v0, 0x51

    if-ne p0, v0, :cond_12

    .line 96
    const-string v0, "MILLI_SECS"

    return-object v0

    .line 98
    :cond_12
    const/16 v0, 0x53

    if-ne p0, v0, :cond_13

    .line 99
    const-string v0, "SECS"

    return-object v0

    .line 101
    :cond_13
    const/16 v0, 0x59

    if-ne p0, v0, :cond_14

    .line 102
    const-string v0, "YEAR"

    return-object v0

    .line 104
    :cond_14
    const/16 v0, 0x60

    if-ne p0, v0, :cond_15

    .line 105
    const-string v0, "WATT_HOUR"

    return-object v0

    .line 107
    :cond_15
    const/16 v0, 0x61

    if-ne p0, v0, :cond_16

    .line 108
    const-string v0, "MILLIAMPERE"

    return-object v0

    .line 110
    :cond_16
    const/16 v0, 0x62

    if-ne p0, v0, :cond_17

    .line 111
    const-string v0, "MILLIVOLT"

    return-object v0

    .line 113
    :cond_17
    const/16 v0, 0x63

    if-ne p0, v0, :cond_18

    .line 114
    const-string v0, "MILLIWATTS"

    return-object v0

    .line 116
    :cond_18
    const/16 v0, 0x64

    if-ne p0, v0, :cond_19

    .line 117
    const-string v0, "AMPERE_HOURS"

    return-object v0

    .line 119
    :cond_19
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1a

    .line 120
    const-string v0, "KILOWATT_HOUR"

    return-object v0

    .line 122
    :cond_1a
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1b

    .line 123
    const-string v0, "KILOPASCAL"

    return-object v0

    .line 125
    :cond_1b
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1c

    .line 126
    const-string v0, "PSI"

    return-object v0

    .line 128
    :cond_1c
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1d

    .line 129
    const-string v0, "BAR"

    return-object v0

    .line 131
    :cond_1d
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1e

    .line 132
    const-string v0, "DEGREES"

    return-object v0

    .line 134
    :cond_1e
    const/16 v0, 0x90

    if-ne p0, v0, :cond_1f

    .line 135
    const-string v0, "MILES_PER_HOUR"

    return-object v0

    .line 137
    :cond_1f
    const/16 v0, 0x91

    if-ne p0, v0, :cond_20

    .line 138
    const-string v0, "KILOMETERS_PER_HOUR"

    return-object v0

    .line 140
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

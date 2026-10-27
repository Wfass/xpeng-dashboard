.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;
.super Ljava/lang/Object;
.source "VehicleGear.java"


# static fields
.field public static final GEAR_1:I = 0x10

.field public static final GEAR_2:I = 0x20

.field public static final GEAR_3:I = 0x40

.field public static final GEAR_4:I = 0x80

.field public static final GEAR_5:I = 0x100

.field public static final GEAR_6:I = 0x200

.field public static final GEAR_7:I = 0x400

.field public static final GEAR_8:I = 0x800

.field public static final GEAR_9:I = 0x1000

.field public static final GEAR_DRIVE:I = 0x8

.field public static final GEAR_NEUTRAL:I = 0x1

.field public static final GEAR_PARK:I = 0x4

.field public static final GEAR_REVERSE:I = 0x2

.field public static final GEAR_UNKNOWN:I


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

    .line 67
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "GEAR_UNKNOWN"

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GEAR_NEUTRAL"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_REVERSE"

    const/4 v3, 0x2

    .line 78
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_PARK"

    const/4 v3, 0x4

    .line 79
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_DRIVE"

    const/16 v3, 0x8

    .line 80
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_1"

    const/16 v3, 0x10

    .line 81
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_2"

    const/16 v3, 0x20

    .line 82
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_3"

    const/16 v3, 0x40

    .line 83
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_4"

    const/16 v3, 0x80

    .line 84
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_5"

    const/16 v3, 0x100

    .line 85
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_6"

    const/16 v3, 0x200

    .line 86
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_7"

    const/16 v3, 0x400

    .line 87
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_8"

    const/16 v3, 0x800

    .line 88
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "GEAR_9"

    const/16 v3, 0x1000

    .line 89
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 91
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

    .line 93
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "GEAR_UNKNOWN"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "GEAR_NEUTRAL"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "GEAR_REVERSE"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "GEAR_PARK"

    return-object p0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    const-string p0, "GEAR_DRIVE"

    return-object p0

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    const-string p0, "GEAR_1"

    return-object p0

    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const-string p0, "GEAR_2"

    return-object p0

    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    const-string p0, "GEAR_3"

    return-object p0

    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const-string p0, "GEAR_4"

    return-object p0

    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    const-string p0, "GEAR_5"

    return-object p0

    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    const-string p0, "GEAR_6"

    return-object p0

    :cond_a
    const/16 v0, 0x400

    if-ne p0, v0, :cond_b

    const-string p0, "GEAR_7"

    return-object p0

    :cond_b
    const/16 v0, 0x800

    if-ne p0, v0, :cond_c

    const-string p0, "GEAR_8"

    return-object p0

    :cond_c
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_d

    const-string p0, "GEAR_9"

    return-object p0

    .line 62
    :cond_d
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

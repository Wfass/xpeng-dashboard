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

    .line 66
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/2addr p4, p3

    .line 70
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "flipped":I
    const-string v2, "GEAR_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "GEAR_NEUTRAL"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 78
    const-string v2, "GEAR_REVERSE"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 79
    const-string v2, "GEAR_PARK"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 80
    const-string v2, "GEAR_DRIVE"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 81
    const-string v2, "GEAR_1"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 82
    const-string v2, "GEAR_2"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 83
    const-string v2, "GEAR_3"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 84
    const-string v2, "GEAR_4"

    const/16 v3, 0x80

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 85
    const-string v2, "GEAR_5"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 86
    const-string v2, "GEAR_6"

    const/16 v3, 0x200

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 87
    const-string v2, "GEAR_7"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 88
    const-string v2, "GEAR_8"

    const/16 v3, 0x800

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 89
    const-string v2, "GEAR_9"

    const/16 v3, 0x1000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 90
    if-eq p0, v1, :cond_0

    .line 91
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

    .line 93
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 20
    if-nez p0, :cond_0

    .line 21
    const-string v0, "GEAR_UNKNOWN"

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 24
    const-string v0, "GEAR_NEUTRAL"

    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 27
    const-string v0, "GEAR_REVERSE"

    return-object v0

    .line 29
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 30
    const-string v0, "GEAR_PARK"

    return-object v0

    .line 32
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 33
    const-string v0, "GEAR_DRIVE"

    return-object v0

    .line 35
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 36
    const-string v0, "GEAR_1"

    return-object v0

    .line 38
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 39
    const-string v0, "GEAR_2"

    return-object v0

    .line 41
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 42
    const-string v0, "GEAR_3"

    return-object v0

    .line 44
    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    .line 45
    const-string v0, "GEAR_4"

    return-object v0

    .line 47
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 48
    const-string v0, "GEAR_5"

    return-object v0

    .line 50
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 51
    const-string v0, "GEAR_6"

    return-object v0

    .line 53
    :cond_a
    const/16 v0, 0x400

    if-ne p0, v0, :cond_b

    .line 54
    const-string v0, "GEAR_7"

    return-object v0

    .line 56
    :cond_b
    const/16 v0, 0x800

    if-ne p0, v0, :cond_c

    .line 57
    const-string v0, "GEAR_8"

    return-object v0

    .line 59
    :cond_c
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_d

    .line 60
    const-string v0, "GEAR_9"

    return-object v0

    .line 62
    :cond_d
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;
.super Ljava/lang/Object;
.source "VehicleAreaSeat.java"


# static fields
.field public static final ROW_1_CENTER:I = 0x2

.field public static final ROW_1_LEFT:I = 0x1

.field public static final ROW_1_RIGHT:I = 0x4

.field public static final ROW_2_CENTER:I = 0x20

.field public static final ROW_2_LEFT:I = 0x10

.field public static final ROW_2_RIGHT:I = 0x40

.field public static final ROW_3_CENTER:I = 0x200

.field public static final ROW_3_LEFT:I = 0x100

.field public static final ROW_3_RIGHT:I = 0x400


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

    .line 46
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    or-int/2addr p4, p3

    .line 50
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 56
    .local v1, "flipped":I
    const-string v2, "ROW_1_LEFT"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 57
    const-string v2, "ROW_1_CENTER"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 58
    const-string v2, "ROW_1_RIGHT"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 59
    const-string v2, "ROW_2_LEFT"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 60
    const-string v2, "ROW_2_CENTER"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 61
    const-string v2, "ROW_2_RIGHT"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 62
    const-string v2, "ROW_3_LEFT"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 63
    const-string v2, "ROW_3_CENTER"

    const/16 v3, 0x200

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 64
    const-string v2, "ROW_3_RIGHT"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaSeat;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 65
    if-eq p0, v1, :cond_0

    .line 66
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

    .line 68
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 15
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 16
    const-string v0, "ROW_1_LEFT"

    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 19
    const-string v0, "ROW_1_CENTER"

    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 22
    const-string v0, "ROW_1_RIGHT"

    return-object v0

    .line 24
    :cond_2
    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    .line 25
    const-string v0, "ROW_2_LEFT"

    return-object v0

    .line 27
    :cond_3
    const/16 v0, 0x20

    if-ne p0, v0, :cond_4

    .line 28
    const-string v0, "ROW_2_CENTER"

    return-object v0

    .line 30
    :cond_4
    const/16 v0, 0x40

    if-ne p0, v0, :cond_5

    .line 31
    const-string v0, "ROW_2_RIGHT"

    return-object v0

    .line 33
    :cond_5
    const/16 v0, 0x100

    if-ne p0, v0, :cond_6

    .line 34
    const-string v0, "ROW_3_LEFT"

    return-object v0

    .line 36
    :cond_6
    const/16 v0, 0x200

    if-ne p0, v0, :cond_7

    .line 37
    const-string v0, "ROW_3_CENTER"

    return-object v0

    .line 39
    :cond_7
    const/16 v0, 0x400

    if-ne p0, v0, :cond_8

    .line 40
    const-string v0, "ROW_3_RIGHT"

    return-object v0

    .line 42
    :cond_8
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

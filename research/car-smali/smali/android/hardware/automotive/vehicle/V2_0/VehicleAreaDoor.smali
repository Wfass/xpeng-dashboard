.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;
.super Ljava/lang/Object;
.source "VehicleAreaDoor.java"


# static fields
.field public static final HOOD:I = 0x10000000

.field public static final REAR:I = 0x20000000

.field public static final ROW_1_LEFT:I = 0x1

.field public static final ROW_1_RIGHT:I = 0x4

.field public static final ROW_2_LEFT:I = 0x10

.field public static final ROW_2_RIGHT:I = 0x40

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

    .line 42
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 43
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    or-int/2addr p4, p3

    .line 46
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "flipped":I
    const-string v2, "ROW_1_LEFT"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 53
    const-string v2, "ROW_1_RIGHT"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 54
    const-string v2, "ROW_2_LEFT"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 55
    const-string v2, "ROW_2_RIGHT"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 56
    const-string v2, "ROW_3_LEFT"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 57
    const-string v2, "ROW_3_RIGHT"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 58
    const-string v2, "HOOD"

    const/high16 v3, 0x10000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 59
    const-string v2, "REAR"

    const/high16 v3, 0x20000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 60
    if-eq p0, v1, :cond_0

    .line 61
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

    .line 63
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 14
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 15
    const-string v0, "ROW_1_LEFT"

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 18
    const-string v0, "ROW_1_RIGHT"

    return-object v0

    .line 20
    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    .line 21
    const-string v0, "ROW_2_LEFT"

    return-object v0

    .line 23
    :cond_2
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3

    .line 24
    const-string v0, "ROW_2_RIGHT"

    return-object v0

    .line 26
    :cond_3
    const/16 v0, 0x100

    if-ne p0, v0, :cond_4

    .line 27
    const-string v0, "ROW_3_LEFT"

    return-object v0

    .line 29
    :cond_4
    const/16 v0, 0x400

    if-ne p0, v0, :cond_5

    .line 30
    const-string v0, "ROW_3_RIGHT"

    return-object v0

    .line 32
    :cond_5
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_6

    .line 33
    const-string v0, "HOOD"

    return-object v0

    .line 35
    :cond_6
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_7

    .line 36
    const-string v0, "REAR"

    return-object v0

    .line 38
    :cond_7
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

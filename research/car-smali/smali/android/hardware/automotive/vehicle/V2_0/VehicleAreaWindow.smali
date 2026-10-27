.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;
.super Ljava/lang/Object;
.source "VehicleAreaWindow.java"


# static fields
.field public static final FRONT_WINDSHIELD:I = 0x1

.field public static final REAR_WINDSHIELD:I = 0x2

.field public static final ROOF_TOP_1:I = 0x10000

.field public static final ROOF_TOP_2:I = 0x20000

.field public static final ROW_1_LEFT:I = 0x10

.field public static final ROW_1_RIGHT:I = 0x40

.field public static final ROW_2_LEFT:I = 0x100

.field public static final ROW_2_RIGHT:I = 0x400

.field public static final ROW_3_LEFT:I = 0x1000

.field public static final ROW_3_RIGHT:I = 0x4000


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

    .line 50
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    or-int/2addr p4, p3

    .line 54
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "flipped":I
    const-string v2, "FRONT_WINDSHIELD"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 61
    const-string v2, "REAR_WINDSHIELD"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 62
    const-string v2, "ROW_1_LEFT"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 63
    const-string v2, "ROW_1_RIGHT"

    const/16 v3, 0x40

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 64
    const-string v2, "ROW_2_LEFT"

    const/16 v3, 0x100

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 65
    const-string v2, "ROW_2_RIGHT"

    const/16 v3, 0x400

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 66
    const-string v2, "ROW_3_LEFT"

    const/16 v3, 0x1000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 67
    const-string v2, "ROW_3_RIGHT"

    const/16 v3, 0x4000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 68
    const-string v2, "ROOF_TOP_1"

    const/high16 v3, 0x10000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 69
    const-string v2, "ROOF_TOP_2"

    const/high16 v3, 0x20000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 70
    if-eq p0, v1, :cond_0

    .line 71
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

    .line 73
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 16
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 17
    const-string v0, "FRONT_WINDSHIELD"

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 20
    const-string v0, "REAR_WINDSHIELD"

    return-object v0

    .line 22
    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    .line 23
    const-string v0, "ROW_1_LEFT"

    return-object v0

    .line 25
    :cond_2
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3

    .line 26
    const-string v0, "ROW_1_RIGHT"

    return-object v0

    .line 28
    :cond_3
    const/16 v0, 0x100

    if-ne p0, v0, :cond_4

    .line 29
    const-string v0, "ROW_2_LEFT"

    return-object v0

    .line 31
    :cond_4
    const/16 v0, 0x400

    if-ne p0, v0, :cond_5

    .line 32
    const-string v0, "ROW_2_RIGHT"

    return-object v0

    .line 34
    :cond_5
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_6

    .line 35
    const-string v0, "ROW_3_LEFT"

    return-object v0

    .line 37
    :cond_6
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_7

    .line 38
    const-string v0, "ROW_3_RIGHT"

    return-object v0

    .line 40
    :cond_7
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_8

    .line 41
    const-string v0, "ROOF_TOP_1"

    return-object v0

    .line 43
    :cond_8
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_9

    .line 44
    const-string v0, "ROOF_TOP_2"

    return-object v0

    .line 46
    :cond_9
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

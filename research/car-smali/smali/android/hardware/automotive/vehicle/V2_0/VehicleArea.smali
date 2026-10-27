.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;
.super Ljava/lang/Object;
.source "VehicleArea.java"


# static fields
.field public static final DOOR:I = 0x6000000

.field public static final GLOBAL:I = 0x1000000

.field public static final MASK:I = 0xf000000

.field public static final MIRROR:I = 0x4000000

.field public static final SEAT:I = 0x5000000

.field public static final WHEEL:I = 0x7000000

.field public static final WINDOW:I = 0x3000000


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

    .line 48
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/2addr p4, p3

    .line 52
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "flipped":I
    const-string v2, "GLOBAL"

    const/high16 v3, 0x1000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 59
    const-string v2, "WINDOW"

    const/high16 v3, 0x3000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 60
    const-string v2, "MIRROR"

    const/high16 v3, 0x4000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 61
    const-string v2, "SEAT"

    const/high16 v3, 0x5000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 62
    const-string v2, "DOOR"

    const/high16 v3, 0x6000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 63
    const-string v2, "WHEEL"

    const/high16 v3, 0x7000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 64
    const-string v2, "MASK"

    const/high16 v3, 0xf000000

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

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

    .line 23
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    .line 24
    const-string v0, "GLOBAL"

    return-object v0

    .line 26
    :cond_0
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_1

    .line 27
    const-string v0, "WINDOW"

    return-object v0

    .line 29
    :cond_1
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_2

    .line 30
    const-string v0, "MIRROR"

    return-object v0

    .line 32
    :cond_2
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_3

    .line 33
    const-string v0, "SEAT"

    return-object v0

    .line 35
    :cond_3
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_4

    .line 36
    const-string v0, "DOOR"

    return-object v0

    .line 38
    :cond_4
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_5

    .line 39
    const-string v0, "WHEEL"

    return-object v0

    .line 41
    :cond_5
    const/high16 v0, 0xf000000

    if-ne p0, v0, :cond_6

    .line 42
    const-string v0, "MASK"

    return-object v0

    .line 44
    :cond_6
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

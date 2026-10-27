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

    .line 51
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "FRONT_WINDSHIELD"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "REAR_WINDSHIELD"

    const/4 v3, 0x2

    .line 61
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_1_LEFT"

    const/16 v3, 0x10

    .line 62
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_1_RIGHT"

    const/16 v3, 0x40

    .line 63
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_2_LEFT"

    const/16 v3, 0x100

    .line 64
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_2_RIGHT"

    const/16 v3, 0x400

    .line 65
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_3_LEFT"

    const/16 v3, 0x1000

    .line 66
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROW_3_RIGHT"

    const/16 v3, 0x4000

    .line 67
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROOF_TOP_1"

    const/high16 v3, 0x10000

    .line 68
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ROOF_TOP_2"

    const/high16 v3, 0x20000

    .line 69
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaWindow;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 71
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

    .line 73
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "FRONT_WINDSHIELD"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "REAR_WINDSHIELD"

    return-object p0

    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    const-string p0, "ROW_1_LEFT"

    return-object p0

    :cond_2
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3

    const-string p0, "ROW_1_RIGHT"

    return-object p0

    :cond_3
    const/16 v0, 0x100

    if-ne p0, v0, :cond_4

    const-string p0, "ROW_2_LEFT"

    return-object p0

    :cond_4
    const/16 v0, 0x400

    if-ne p0, v0, :cond_5

    const-string p0, "ROW_2_RIGHT"

    return-object p0

    :cond_5
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_6

    const-string p0, "ROW_3_LEFT"

    return-object p0

    :cond_6
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_7

    const-string p0, "ROW_3_RIGHT"

    return-object p0

    :cond_7
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_8

    const-string p0, "ROOF_TOP_1"

    return-object p0

    :cond_8
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_9

    const-string p0, "ROOF_TOP_2"

    return-object p0

    .line 46
    :cond_9
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

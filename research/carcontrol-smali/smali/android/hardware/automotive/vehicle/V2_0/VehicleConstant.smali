.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;
.super Ljava/lang/Object;
.source "VehicleConstant.java"


# static fields
.field public static final SHARED_MEMORY_MASK:I = 0x100

.field public static final SHARED_MEMORY_META_DATA_SIZE:I = 0xc

.field public static final SHARED_MEMORY_PAGE_SIZE:I = 0x1000

.field public static final SHARED_MEMORY_SIZE:I = 0x2000000

.field public static final SHARED_MEMORY_WRITE_SIZE:I = 0x800000


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

    .line 31
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SHARED_MEMORY_META_DATA_SIZE"

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 40
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHARED_MEMORY_MASK"

    const/16 v3, 0x100

    .line 41
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHARED_MEMORY_PAGE_SIZE"

    const/16 v3, 0x1000

    .line 42
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHARED_MEMORY_SIZE"

    const/high16 v3, 0x2000000

    .line 43
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SHARED_MEMORY_WRITE_SIZE"

    const/high16 v3, 0x800000

    .line 44
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleConstant;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 46
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

    .line 48
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const-string p0, "SHARED_MEMORY_META_DATA_SIZE"

    return-object p0

    :cond_0
    const/16 v0, 0x100

    if-ne p0, v0, :cond_1

    const-string p0, "SHARED_MEMORY_MASK"

    return-object p0

    :cond_1
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_2

    const-string p0, "SHARED_MEMORY_PAGE_SIZE"

    return-object p0

    :cond_2
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_3

    const-string p0, "SHARED_MEMORY_SIZE"

    return-object p0

    :cond_3
    const/high16 v0, 0x800000

    if-ne p0, v0, :cond_4

    const-string p0, "SHARED_MEMORY_WRITE_SIZE"

    return-object p0

    .line 26
    :cond_4
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

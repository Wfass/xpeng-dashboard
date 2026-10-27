.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;
.super Ljava/lang/Object;
.source "Obd2CommonIgnitionMonitors.java"


# static fields
.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field public static final MISFIRE_INCOMPLETE:I = 0x20


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

    .line 34
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 35
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    or-int/2addr p4, p3

    .line 38
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "flipped":I
    const-string v2, "COMPONENTS_AVAILABLE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 45
    const-string v2, "COMPONENTS_INCOMPLETE"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 46
    const-string v2, "FUEL_SYSTEM_AVAILABLE"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 47
    const-string v2, "FUEL_SYSTEM_INCOMPLETE"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 48
    const-string v2, "MISFIRE_AVAILABLE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 49
    const-string v2, "MISFIRE_INCOMPLETE"

    const/16 v3, 0x20

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/Obd2CommonIgnitionMonitors;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 50
    if-eq p0, v1, :cond_0

    .line 51
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

    .line 53
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 12
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 13
    const-string v0, "COMPONENTS_AVAILABLE"

    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 16
    const-string v0, "COMPONENTS_INCOMPLETE"

    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 19
    const-string v0, "FUEL_SYSTEM_AVAILABLE"

    return-object v0

    .line 21
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 22
    const-string v0, "FUEL_SYSTEM_INCOMPLETE"

    return-object v0

    .line 24
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 25
    const-string v0, "MISFIRE_AVAILABLE"

    return-object v0

    .line 27
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 28
    const-string v0, "MISFIRE_INCOMPLETE"

    return-object v0

    .line 30
    :cond_5
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;
.super Ljava/lang/Object;
.source "VehicleApPowerStateReq.java"


# static fields
.field public static final CANCEL_SHUTDOWN:I = 0x2

.field public static final DEEP_SLEEP:I = 0x4

.field public static final FINISHED:I = 0x5

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x0

.field public static final ON_DISP_OFF:I = 0x2

.field public static final ON_FULL:I = 0x1

.field public static final ON_SCREEN_OFF:I = 0x4

.field public static final SHUTDOWN_PREPARE:I = 0x3


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

    .line 100
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/2addr p4, p3

    .line 104
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 110
    .local v1, "flipped":I
    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v2, "SHUTDOWN_PREPARE"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 112
    const-string v2, "CANCEL_SHUTDOWN"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 113
    const-string v2, "FINISHED"

    const/4 v4, 0x5

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 114
    const-string v2, "ON_SCREEN_OFF"

    const/4 v4, 0x4

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 115
    const-string v2, "OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "DEEP_SLEEP"

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 117
    const-string v2, "ON_DISP_OFF"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 118
    const-string v2, "ON_FULL"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 119
    if-eq p0, v1, :cond_0

    .line 120
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

    .line 122
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 69
    if-nez p0, :cond_0

    .line 70
    const-string v0, "ON"

    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 73
    const-string v0, "SHUTDOWN_PREPARE"

    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 76
    const-string v0, "CANCEL_SHUTDOWN"

    return-object v0

    .line 78
    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    .line 79
    const-string v0, "FINISHED"

    return-object v0

    .line 81
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 82
    const-string v0, "ON_SCREEN_OFF"

    return-object v0

    .line 84
    :cond_4
    if-nez p0, :cond_5

    .line 85
    const-string v0, "OFF"

    return-object v0

    .line 87
    :cond_5
    if-ne p0, v1, :cond_6

    .line 88
    const-string v0, "DEEP_SLEEP"

    return-object v0

    .line 90
    :cond_6
    if-ne p0, v0, :cond_7

    .line 91
    const-string v0, "ON_DISP_OFF"

    return-object v0

    .line 93
    :cond_7
    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 94
    const-string v0, "ON_FULL"

    return-object v0

    .line 96
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

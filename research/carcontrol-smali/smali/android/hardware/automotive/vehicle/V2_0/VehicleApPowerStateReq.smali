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

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ON"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SHUTDOWN_PREPARE"

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 117
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CANCEL_SHUTDOWN"

    const/4 v3, 0x2

    .line 118
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "FINISHED"

    const/4 v4, 0x5

    .line 119
    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ON_SCREEN_OFF"

    const/4 v4, 0x4

    .line 120
    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OFF"

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "DEEP_SLEEP"

    .line 122
    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ON_DISP_OFF"

    .line 123
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ON_FULL"

    const/4 v3, 0x1

    .line 124
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReq;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 126
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

    .line 128
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "ON"

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "SHUTDOWN_PREPARE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "CANCEL_SHUTDOWN"

    return-object p0

    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    const-string p0, "FINISHED"

    return-object p0

    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    const-string p0, "ON_SCREEN_OFF"

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    const-string p0, "OFF"

    return-object p0

    :cond_5
    if-ne p0, v1, :cond_6

    const-string p0, "DEEP_SLEEP"

    return-object p0

    :cond_6
    if-ne p0, v0, :cond_7

    const-string p0, "ON_DISP_OFF"

    return-object p0

    :cond_7
    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    const-string p0, "ON_FULL"

    return-object p0

    .line 102
    :cond_8
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

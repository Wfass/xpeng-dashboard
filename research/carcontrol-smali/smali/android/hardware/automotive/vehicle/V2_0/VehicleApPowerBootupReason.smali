.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;
.super Ljava/lang/Object;
.source "VehicleApPowerBootupReason.java"


# static fields
.field public static final BAT_CHARGE_ST:I = 0x7

.field public static final INVALID:I = -0x1

.field public static final LOCAL_IGON:I = 0x4

.field public static final LOCAL_LIGHT:I = 0x8

.field public static final REMOTE_CAMERA:I = 0x5

.field public static final REMOTE_LIGHT:I = 0x6

.field public static final REMOTE_OTA:I = 0x9

.field public static final REMOTE_SCU:I = 0xa

.field public static final SOLDIER_MODE:I = 0xb

.field public static final THERMAL_RUNAWAY:I = 0xd

.field public static final TIMER:I = 0x2

.field public static final USER_POWER_ON:I = 0x0

.field public static final USER_UNLOCK:I = 0x1

.field public static final WIFI_KEY_WK:I = 0xc


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

    .line 140
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "INVALID"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "USER_POWER_ON"

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "USER_UNLOCK"

    const/4 v3, 0x1

    .line 151
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "TIMER"

    const/4 v3, 0x2

    .line 152
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LOCAL_IGON"

    const/4 v3, 0x4

    .line 153
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "REMOTE_CAMERA"

    const/4 v3, 0x5

    .line 154
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "REMOTE_LIGHT"

    const/4 v3, 0x6

    .line 155
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "BAT_CHARGE_ST"

    const/4 v3, 0x7

    .line 156
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LOCAL_LIGHT"

    const/16 v3, 0x8

    .line 157
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "REMOTE_OTA"

    const/16 v3, 0x9

    .line 158
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "REMOTE_SCU"

    const/16 v3, 0xa

    .line 159
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SOLDIER_MODE"

    const/16 v3, 0xb

    .line 160
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "WIFI_KEY_WK"

    const/16 v3, 0xc

    .line 161
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "THERMAL_RUNAWAY"

    const/16 v3, 0xd

    .line 162
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 164
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

    .line 166
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "USER_POWER_ON"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "USER_UNLOCK"

    return-object p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const-string p0, "TIMER"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "LOCAL_IGON"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "REMOTE_CAMERA"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "REMOTE_LIGHT"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "BAT_CHARGE_ST"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "LOCAL_LIGHT"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "REMOTE_OTA"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "REMOTE_SCU"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "SOLDIER_MODE"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "WIFI_KEY_WK"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "THERMAL_RUNAWAY"

    return-object p0

    .line 135
    :cond_d
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

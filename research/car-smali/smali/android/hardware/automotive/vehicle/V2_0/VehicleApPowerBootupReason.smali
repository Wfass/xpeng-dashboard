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

    .line 139
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/2addr p4, p3

    .line 143
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 149
    .local v1, "flipped":I
    const-string v2, "INVALID"

    const/4 v3, -0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 150
    const-string v2, "USER_POWER_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "USER_UNLOCK"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 152
    const-string v2, "TIMER"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 153
    const-string v2, "LOCAL_IGON"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 154
    const-string v2, "REMOTE_CAMERA"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 155
    const-string v2, "REMOTE_LIGHT"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 156
    const-string v2, "BAT_CHARGE_ST"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 157
    const-string v2, "LOCAL_LIGHT"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 158
    const-string v2, "REMOTE_OTA"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 159
    const-string v2, "REMOTE_SCU"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 160
    const-string v2, "SOLDIER_MODE"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 161
    const-string v2, "WIFI_KEY_WK"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 162
    const-string v2, "THERMAL_RUNAWAY"

    const/16 v3, 0xd

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerBootupReason;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 163
    if-eq p0, v1, :cond_0

    .line 164
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

    .line 166
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 93
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 94
    const-string v0, "INVALID"

    return-object v0

    .line 96
    :cond_0
    if-nez p0, :cond_1

    .line 97
    const-string v0, "USER_POWER_ON"

    return-object v0

    .line 99
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 100
    const-string v0, "USER_UNLOCK"

    return-object v0

    .line 102
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 103
    const-string v0, "TIMER"

    return-object v0

    .line 105
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 106
    const-string v0, "LOCAL_IGON"

    return-object v0

    .line 108
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 109
    const-string v0, "REMOTE_CAMERA"

    return-object v0

    .line 111
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 112
    const-string v0, "REMOTE_LIGHT"

    return-object v0

    .line 114
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 115
    const-string v0, "BAT_CHARGE_ST"

    return-object v0

    .line 117
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 118
    const-string v0, "LOCAL_LIGHT"

    return-object v0

    .line 120
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 121
    const-string v0, "REMOTE_OTA"

    return-object v0

    .line 123
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 124
    const-string v0, "REMOTE_SCU"

    return-object v0

    .line 126
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 127
    const-string v0, "SOLDIER_MODE"

    return-object v0

    .line 129
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 130
    const-string v0, "WIFI_KEY_WK"

    return-object v0

    .line 132
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 133
    const-string v0, "THERMAL_RUNAWAY"

    return-object v0

    .line 135
    :cond_d
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

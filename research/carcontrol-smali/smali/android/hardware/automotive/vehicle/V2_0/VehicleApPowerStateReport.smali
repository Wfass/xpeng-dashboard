.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;
.super Ljava/lang/Object;
.source "VehicleApPowerStateReport.java"


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field public static final DEEP_SLEEP_ENTRY:I = 0x2

.field public static final DEEP_SLEEP_EXIT:I = 0x3

.field public static final DISPLAY_OFF:I = 0x6

.field public static final DISPLAY_ON:I = 0x7

.field public static final ON:I = 0x6

.field public static final SHUTDOWN_CANCELLED:I = 0x8

.field public static final SHUTDOWN_POSTPONE:I = 0x4

.field public static final SHUTDOWN_PREPARE:I = 0x7

.field public static final SHUTDOWN_START:I = 0x5

.field public static final WAIT_FOR_VHAL:I = 0x1


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

    .line 138
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 7

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "WAIT_FOR_VHAL"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "DEEP_SLEEP_ENTRY"

    const/4 v4, 0x2

    .line 148
    invoke-static {v0, p0, v3, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "DEEP_SLEEP_EXIT"

    const/4 v4, 0x3

    .line 149
    invoke-static {v0, p0, v3, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "SHUTDOWN_POSTPONE"

    const/4 v4, 0x4

    .line 150
    invoke-static {v0, p0, v3, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "SHUTDOWN_START"

    const/4 v4, 0x5

    .line 151
    invoke-static {v0, p0, v3, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "ON"

    const/4 v4, 0x6

    .line 152
    invoke-static {v0, p0, v3, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "SHUTDOWN_PREPARE"

    const/4 v5, 0x7

    .line 153
    invoke-static {v0, p0, v3, v5, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "SHUTDOWN_CANCELLED"

    const/16 v6, 0x8

    .line 154
    invoke-static {v0, p0, v3, v6, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v3, "BOOT_COMPLETE"

    .line 155
    invoke-static {v0, p0, v3, v2, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DISPLAY_OFF"

    .line 156
    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DISPLAY_ON"

    .line 157
    invoke-static {v0, p0, v2, v5, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 159
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

    .line 161
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "WAIT_FOR_VHAL"

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string p0, "DEEP_SLEEP_ENTRY"

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const-string p0, "DEEP_SLEEP_EXIT"

    return-object p0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    const-string p0, "SHUTDOWN_POSTPONE"

    return-object p0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    const-string p0, "SHUTDOWN_START"

    return-object p0

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    const-string p0, "ON"

    return-object p0

    :cond_5
    const/4 v2, 0x7

    if-ne p0, v2, :cond_6

    const-string p0, "SHUTDOWN_PREPARE"

    return-object p0

    :cond_6
    const/16 v3, 0x8

    if-ne p0, v3, :cond_7

    const-string p0, "SHUTDOWN_CANCELLED"

    return-object p0

    :cond_7
    if-ne p0, v0, :cond_8

    const-string p0, "BOOT_COMPLETE"

    return-object p0

    :cond_8
    if-ne p0, v1, :cond_9

    const-string p0, "DISPLAY_OFF"

    return-object p0

    :cond_9
    if-ne p0, v2, :cond_a

    const-string p0, "DISPLAY_ON"

    return-object p0

    .line 133
    :cond_a
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

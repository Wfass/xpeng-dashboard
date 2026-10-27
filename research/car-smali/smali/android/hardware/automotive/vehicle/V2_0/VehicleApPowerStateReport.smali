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

    .line 136
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 137
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/2addr p4, p3

    .line 140
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 7
    .param p0, "o"    # I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "flipped":I
    const-string v2, "WAIT_FOR_VHAL"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 147
    const-string v2, "DEEP_SLEEP_ENTRY"

    const/4 v4, 0x2

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 148
    const-string v2, "DEEP_SLEEP_EXIT"

    const/4 v4, 0x3

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 149
    const-string v2, "SHUTDOWN_POSTPONE"

    const/4 v4, 0x4

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 150
    const-string v2, "SHUTDOWN_START"

    const/4 v4, 0x5

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 151
    const-string v2, "ON"

    const/4 v4, 0x6

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 152
    const-string v2, "SHUTDOWN_PREPARE"

    const/4 v5, 0x7

    invoke-static {v0, p0, v2, v5, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 153
    const-string v2, "SHUTDOWN_CANCELLED"

    const/16 v6, 0x8

    invoke-static {v0, p0, v2, v6, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 154
    const-string v2, "BOOT_COMPLETE"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 155
    const-string v2, "DISPLAY_OFF"

    invoke-static {v0, p0, v2, v4, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 156
    const-string v2, "DISPLAY_ON"

    invoke-static {v0, p0, v2, v5, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleApPowerStateReport;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 157
    if-eq p0, v1, :cond_0

    .line 158
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

    .line 160
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 99
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 100
    const-string v0, "WAIT_FOR_VHAL"

    return-object v0

    .line 102
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 103
    const-string v0, "DEEP_SLEEP_ENTRY"

    return-object v0

    .line 105
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 106
    const-string v0, "DEEP_SLEEP_EXIT"

    return-object v0

    .line 108
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    .line 109
    const-string v0, "SHUTDOWN_POSTPONE"

    return-object v0

    .line 111
    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    .line 112
    const-string v0, "SHUTDOWN_START"

    return-object v0

    .line 114
    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    .line 115
    const-string v0, "ON"

    return-object v0

    .line 117
    :cond_5
    const/4 v2, 0x7

    if-ne p0, v2, :cond_6

    .line 118
    const-string v0, "SHUTDOWN_PREPARE"

    return-object v0

    .line 120
    :cond_6
    const/16 v3, 0x8

    if-ne p0, v3, :cond_7

    .line 121
    const-string v0, "SHUTDOWN_CANCELLED"

    return-object v0

    .line 123
    :cond_7
    if-ne p0, v0, :cond_8

    .line 124
    const-string v0, "BOOT_COMPLETE"

    return-object v0

    .line 126
    :cond_8
    if-ne p0, v1, :cond_9

    .line 127
    const-string v0, "DISPLAY_OFF"

    return-object v0

    .line 129
    :cond_9
    if-ne p0, v2, :cond_a

    .line 130
    const-string v0, "DISPLAY_ON"

    return-object v0

    .line 132
    :cond_a
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

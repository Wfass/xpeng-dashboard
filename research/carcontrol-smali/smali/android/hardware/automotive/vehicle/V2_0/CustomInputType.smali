.class public final Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;
.super Ljava/lang/Object;
.source "CustomInputType.java"


# static fields
.field public static final CUSTOM_EVENT_F1:I = 0x3e9

.field public static final CUSTOM_EVENT_F10:I = 0x3f2

.field public static final CUSTOM_EVENT_F2:I = 0x3ea

.field public static final CUSTOM_EVENT_F3:I = 0x3eb

.field public static final CUSTOM_EVENT_F4:I = 0x3ec

.field public static final CUSTOM_EVENT_F5:I = 0x3ed

.field public static final CUSTOM_EVENT_F6:I = 0x3ee

.field public static final CUSTOM_EVENT_F7:I = 0x3ef

.field public static final CUSTOM_EVENT_F8:I = 0x3f0

.field public static final CUSTOM_EVENT_F9:I = 0x3f1


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

    .line 57
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CUSTOM_EVENT_F1"

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    .line 66
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F2"

    const/16 v3, 0x3ea

    .line 67
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F3"

    const/16 v3, 0x3eb

    .line 68
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F4"

    const/16 v3, 0x3ec

    .line 69
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F5"

    const/16 v3, 0x3ed

    .line 70
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F6"

    const/16 v3, 0x3ee

    .line 71
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F7"

    const/16 v3, 0x3ef

    .line 72
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F8"

    const/16 v3, 0x3f0

    .line 73
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F9"

    const/16 v3, 0x3f1

    .line 74
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "CUSTOM_EVENT_F10"

    const/16 v3, 0x3f2

    .line 75
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/CustomInputType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 77
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

    .line 79
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const-string p0, "CUSTOM_EVENT_F1"

    return-object p0

    :cond_0
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_1

    const-string p0, "CUSTOM_EVENT_F2"

    return-object p0

    :cond_1
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_2

    const-string p0, "CUSTOM_EVENT_F3"

    return-object p0

    :cond_2
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_3

    const-string p0, "CUSTOM_EVENT_F4"

    return-object p0

    :cond_3
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_4

    const-string p0, "CUSTOM_EVENT_F5"

    return-object p0

    :cond_4
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_5

    const-string p0, "CUSTOM_EVENT_F6"

    return-object p0

    :cond_5
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_6

    const-string p0, "CUSTOM_EVENT_F7"

    return-object p0

    :cond_6
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_7

    const-string p0, "CUSTOM_EVENT_F8"

    return-object p0

    :cond_7
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_8

    const-string p0, "CUSTOM_EVENT_F9"

    return-object p0

    :cond_8
    const/16 v0, 0x3f2

    if-ne p0, v0, :cond_9

    const-string p0, "CUSTOM_EVENT_F10"

    return-object p0

    .line 52
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

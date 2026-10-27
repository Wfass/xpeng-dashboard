.class public final Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;
.super Ljava/lang/Object;
.source "VmsMessageType.java"


# static fields
.field public static final AVAILABILITY_CHANGE:I = 0x9

.field public static final AVAILABILITY_REQUEST:I = 0x6

.field public static final AVAILABILITY_RESPONSE:I = 0x8

.field public static final DATA:I = 0xc

.field public static final LAST_VMS_MESSAGE_TYPE:I = 0x11

.field public static final OFFERING:I = 0x5

.field public static final PUBLISHER_ID_REQUEST:I = 0xd

.field public static final PUBLISHER_ID_RESPONSE:I = 0xe

.field public static final PUBLISHER_INFORMATION_REQUEST:I = 0xf

.field public static final PUBLISHER_INFORMATION_RESPONSE:I = 0x10

.field public static final START_SESSION:I = 0x11

.field public static final SUBSCRIBE:I = 0x1

.field public static final SUBSCRIBE_TO_PUBLISHER:I = 0x2

.field public static final SUBSCRIPTIONS_CHANGE:I = 0xb

.field public static final SUBSCRIPTIONS_REQUEST:I = 0x7

.field public static final SUBSCRIPTIONS_RESPONSE:I = 0xa

.field public static final UNSUBSCRIBE:I = 0x3

.field public static final UNSUBSCRIBE_TO_PUBLISHER:I = 0x4


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

    .line 175
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SUBSCRIBE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SUBSCRIBE_TO_PUBLISHER"

    const/4 v3, 0x2

    .line 185
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "UNSUBSCRIBE"

    const/4 v3, 0x3

    .line 186
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "UNSUBSCRIBE_TO_PUBLISHER"

    const/4 v3, 0x4

    .line 187
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "OFFERING"

    const/4 v3, 0x5

    .line 188
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AVAILABILITY_REQUEST"

    const/4 v3, 0x6

    .line 189
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SUBSCRIPTIONS_REQUEST"

    const/4 v3, 0x7

    .line 190
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AVAILABILITY_RESPONSE"

    const/16 v3, 0x8

    .line 191
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "AVAILABILITY_CHANGE"

    const/16 v3, 0x9

    .line 192
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SUBSCRIPTIONS_RESPONSE"

    const/16 v3, 0xa

    .line 193
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "SUBSCRIPTIONS_CHANGE"

    const/16 v3, 0xb

    .line 194
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "DATA"

    const/16 v3, 0xc

    .line 195
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PUBLISHER_ID_REQUEST"

    const/16 v3, 0xd

    .line 196
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PUBLISHER_ID_RESPONSE"

    const/16 v3, 0xe

    .line 197
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PUBLISHER_INFORMATION_REQUEST"

    const/16 v3, 0xf

    .line 198
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PUBLISHER_INFORMATION_RESPONSE"

    const/16 v3, 0x10

    .line 199
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "START_SESSION"

    const/16 v3, 0x11

    .line 200
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "LAST_VMS_MESSAGE_TYPE"

    .line 201
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 203
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

    .line 205
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "SUBSCRIBE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "SUBSCRIBE_TO_PUBLISHER"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "UNSUBSCRIBE"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "UNSUBSCRIBE_TO_PUBLISHER"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "OFFERING"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "AVAILABILITY_REQUEST"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "SUBSCRIPTIONS_REQUEST"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "AVAILABILITY_RESPONSE"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "AVAILABILITY_CHANGE"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "SUBSCRIPTIONS_RESPONSE"

    return-object p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string p0, "SUBSCRIPTIONS_CHANGE"

    return-object p0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string p0, "DATA"

    return-object p0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string p0, "PUBLISHER_ID_REQUEST"

    return-object p0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string p0, "PUBLISHER_ID_RESPONSE"

    return-object p0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const-string p0, "PUBLISHER_INFORMATION_REQUEST"

    return-object p0

    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const-string p0, "PUBLISHER_INFORMATION_RESPONSE"

    return-object p0

    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    const-string p0, "START_SESSION"

    return-object p0

    :cond_10
    if-ne p0, v0, :cond_11

    const-string p0, "LAST_VMS_MESSAGE_TYPE"

    return-object p0

    .line 170
    :cond_11
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

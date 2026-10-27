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

    .line 174
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 175
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    or-int/2addr p4, p3

    .line 178
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 184
    .local v1, "flipped":I
    const-string v2, "SUBSCRIBE"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 185
    const-string v2, "SUBSCRIBE_TO_PUBLISHER"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 186
    const-string v2, "UNSUBSCRIBE"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 187
    const-string v2, "UNSUBSCRIBE_TO_PUBLISHER"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 188
    const-string v2, "OFFERING"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 189
    const-string v2, "AVAILABILITY_REQUEST"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 190
    const-string v2, "SUBSCRIPTIONS_REQUEST"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 191
    const-string v2, "AVAILABILITY_RESPONSE"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 192
    const-string v2, "AVAILABILITY_CHANGE"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 193
    const-string v2, "SUBSCRIPTIONS_RESPONSE"

    const/16 v3, 0xa

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 194
    const-string v2, "SUBSCRIPTIONS_CHANGE"

    const/16 v3, 0xb

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 195
    const-string v2, "DATA"

    const/16 v3, 0xc

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 196
    const-string v2, "PUBLISHER_ID_REQUEST"

    const/16 v3, 0xd

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 197
    const-string v2, "PUBLISHER_ID_RESPONSE"

    const/16 v3, 0xe

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 198
    const-string v2, "PUBLISHER_INFORMATION_REQUEST"

    const/16 v3, 0xf

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 199
    const-string v2, "PUBLISHER_INFORMATION_RESPONSE"

    const/16 v3, 0x10

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 200
    const-string v2, "START_SESSION"

    const/16 v3, 0x11

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 201
    const-string v2, "LAST_VMS_MESSAGE_TYPE"

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 202
    if-eq p0, v1, :cond_0

    .line 203
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

    .line 205
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 116
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 117
    const-string v0, "SUBSCRIBE"

    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 120
    const-string v0, "SUBSCRIBE_TO_PUBLISHER"

    return-object v0

    .line 122
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 123
    const-string v0, "UNSUBSCRIBE"

    return-object v0

    .line 125
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 126
    const-string v0, "UNSUBSCRIBE_TO_PUBLISHER"

    return-object v0

    .line 128
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 129
    const-string v0, "OFFERING"

    return-object v0

    .line 131
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 132
    const-string v0, "AVAILABILITY_REQUEST"

    return-object v0

    .line 134
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 135
    const-string v0, "SUBSCRIPTIONS_REQUEST"

    return-object v0

    .line 137
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 138
    const-string v0, "AVAILABILITY_RESPONSE"

    return-object v0

    .line 140
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 141
    const-string v0, "AVAILABILITY_CHANGE"

    return-object v0

    .line 143
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 144
    const-string v0, "SUBSCRIPTIONS_RESPONSE"

    return-object v0

    .line 146
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 147
    const-string v0, "SUBSCRIPTIONS_CHANGE"

    return-object v0

    .line 149
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 150
    const-string v0, "DATA"

    return-object v0

    .line 152
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 153
    const-string v0, "PUBLISHER_ID_REQUEST"

    return-object v0

    .line 155
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 156
    const-string v0, "PUBLISHER_ID_RESPONSE"

    return-object v0

    .line 158
    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    .line 159
    const-string v0, "PUBLISHER_INFORMATION_REQUEST"

    return-object v0

    .line 161
    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    .line 162
    const-string v0, "PUBLISHER_INFORMATION_RESPONSE"

    return-object v0

    .line 164
    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    .line 165
    const-string v0, "START_SESSION"

    return-object v0

    .line 167
    :cond_10
    if-ne p0, v0, :cond_11

    .line 168
    const-string v0, "LAST_VMS_MESSAGE_TYPE"

    return-object v0

    .line 170
    :cond_11
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

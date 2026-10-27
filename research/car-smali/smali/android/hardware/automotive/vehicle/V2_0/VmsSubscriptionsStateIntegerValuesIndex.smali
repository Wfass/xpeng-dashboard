.class public final Landroid/hardware/automotive/vehicle/V2_0/VmsSubscriptionsStateIntegerValuesIndex;
.super Ljava/lang/Object;
.source "VmsSubscriptionsStateIntegerValuesIndex.java"


# static fields
.field public static final MESSAGE_TYPE:I = 0x0

.field public static final NUMBER_OF_ASSOCIATED_LAYERS:I = 0x3

.field public static final NUMBER_OF_LAYERS:I = 0x2

.field public static final SEQUENCE_NUMBER:I = 0x1

.field public static final SUBSCRIPTIONS_START:I = 0x4


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

    .line 30
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 31
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    or-int/2addr p4, p3

    .line 34
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":I
    const-string v2, "MESSAGE_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v2, "SEQUENCE_NUMBER"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsSubscriptionsStateIntegerValuesIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 42
    const-string v2, "NUMBER_OF_LAYERS"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsSubscriptionsStateIntegerValuesIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 43
    const-string v2, "NUMBER_OF_ASSOCIATED_LAYERS"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsSubscriptionsStateIntegerValuesIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 44
    const-string v2, "SUBSCRIPTIONS_START"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VmsSubscriptionsStateIntegerValuesIndex;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 45
    if-eq p0, v1, :cond_0

    .line 46
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

    .line 48
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 11
    if-nez p0, :cond_0

    .line 12
    const-string v0, "MESSAGE_TYPE"

    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 15
    const-string v0, "SEQUENCE_NUMBER"

    return-object v0

    .line 17
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 18
    const-string v0, "NUMBER_OF_LAYERS"

    return-object v0

    .line 20
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 21
    const-string v0, "NUMBER_OF_ASSOCIATED_LAYERS"

    return-object v0

    .line 23
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 24
    const-string v0, "SUBSCRIPTIONS_START"

    return-object v0

    .line 26
    :cond_4
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/StatusCode;
.super Ljava/lang/Object;
.source "StatusCode.java"


# static fields
.field public static final ACCESS_DENIED:I = 0x4

.field public static final INTERNAL_ERROR:I = 0x5

.field public static final INVALID_ARG:I = 0x2

.field public static final INVALID_SHOW:I = 0x9

.field public static final KEEP_LAST:I = 0x8

.field public static final NOT_AVAILABLE:I = 0x3

.field public static final OK:I = 0x0

.field public static final SIGNAL_LOST:I = 0x6

.field public static final SIGNAL_VD_INVALID:I = 0x7

.field public static final TRY_AGAIN:I = 0x1


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

    .line 63
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int v0, p1, p3

    if-ne v0, p3, :cond_0

    .line 64
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/2addr p4, p3

    .line 67
    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 73
    .local v1, "flipped":I
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v2, "TRY_AGAIN"

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 75
    const-string v2, "INVALID_ARG"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 76
    const-string v2, "NOT_AVAILABLE"

    const/4 v3, 0x3

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 77
    const-string v2, "ACCESS_DENIED"

    const/4 v3, 0x4

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 78
    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x5

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 79
    const-string v2, "SIGNAL_LOST"

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 80
    const-string v2, "SIGNAL_VD_INVALID"

    const/4 v3, 0x7

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 81
    const-string v2, "KEEP_LAST"

    const/16 v3, 0x8

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 82
    const-string v2, "INVALID_SHOW"

    const/16 v3, 0x9

    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/StatusCode;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    .line 83
    if-eq p0, v1, :cond_0

    .line 84
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

    .line 86
    :cond_0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v0, "OK"

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 33
    const-string v0, "TRY_AGAIN"

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 36
    const-string v0, "INVALID_ARG"

    return-object v0

    .line 38
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 39
    const-string v0, "NOT_AVAILABLE"

    return-object v0

    .line 41
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 42
    const-string v0, "ACCESS_DENIED"

    return-object v0

    .line 44
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 45
    const-string v0, "INTERNAL_ERROR"

    return-object v0

    .line 47
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 48
    const-string v0, "SIGNAL_LOST"

    return-object v0

    .line 50
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 51
    const-string v0, "SIGNAL_VD_INVALID"

    return-object v0

    .line 53
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 54
    const-string v0, "KEEP_LAST"

    return-object v0

    .line 56
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 57
    const-string v0, "INVALID_SHOW"

    return-object v0

    .line 59
    :cond_9
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

.class public final Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociationValue;
.super Ljava/lang/Object;
.source "UserIdentificationAssociationValue.java"


# static fields
.field public static final ASSOCIATED_ANOTHER_USER:I = 0x3

.field public static final ASSOCIATED_CURRENT_USER:I = 0x2

.field public static final NOT_ASSOCIATED_ANY_USER:I = 0x4

.field public static final UNKNOWN:I = 0x1


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

    .line 41
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociationValue;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ASSOCIATED_CURRENT_USER"

    const/4 v3, 0x2

    .line 51
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociationValue;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "ASSOCIATED_ANOTHER_USER"

    const/4 v3, 0x3

    .line 52
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociationValue;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "NOT_ASSOCIATED_ANY_USER"

    const/4 v3, 0x4

    .line 53
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/UserIdentificationAssociationValue;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 55
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

    .line 57
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "ASSOCIATED_CURRENT_USER"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "ASSOCIATED_ANOTHER_USER"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "NOT_ASSOCIATED_ANY_USER"

    return-object p0

    .line 36
    :cond_3
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

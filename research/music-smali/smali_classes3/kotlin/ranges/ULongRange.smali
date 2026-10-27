.class public final Lkotlin/ranges/ULongRange;
.super Lkotlin/ranges/ULongProgression;
.source "ULongRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/ULongRange$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/ranges/ULongProgression;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final Companion:Lkotlin/ranges/ULongRange$a;

.field private static final EMPTY:Lkotlin/ranges/ULongRange;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/ranges/ULongRange$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/ULongRange$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/ranges/ULongRange;->Companion:Lkotlin/ranges/ULongRange$a;

    .line 52
    new-instance v0, Lkotlin/ranges/ULongRange;

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lkotlin/ranges/ULongRange;-><init>(JJLccc;)V

    sput-object v0, Lkotlin/ranges/ULongRange;->EMPTY:Lkotlin/ranges/ULongRange;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 8

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 20
    invoke-direct/range {v0 .. v7}, Lkotlin/ranges/ULongProgression;-><init>(JJJLccc;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLccc;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/ranges/ULongRange;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lkotlin/ranges/ULongRange;
    .locals 1

    .line 17
    sget-object v0, Lkotlin/ranges/ULongRange;->EMPTY:Lkotlin/ranges/ULongRange;

    return-object v0
.end method

.method public static synthetic getEndExclusive-s-VKNKU$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public synthetic contains(Ljava/lang/Comparable;)Z
    .locals 2

    .line 17
    check-cast p1, Lkotlin/s;

    invoke-virtual {p1}, Lkotlin/s;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/ranges/ULongRange;->contains-VKZWuLQ(J)Z

    move-result p1

    return p1
.end method

.method public contains-VKZWuLQ(J)Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkotlin/x;->a(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lkotlin/x;->a(JJ)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 42
    instance-of v0, p1, Lkotlin/ranges/ULongRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/ULongRange;

    invoke-virtual {v0}, Lkotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    check-cast p1, Lkotlin/ranges/ULongRange;

    invoke-virtual {p1}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic getEndExclusive()Ljava/lang/Comparable;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getEndExclusive-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/s;->d(J)Lkotlin/s;

    move-result-object v0

    return-object v0
.end method

.method public getEndExclusive-s-VKNKU()J
    .locals 6

    .line 28
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    const/4 v2, 0x1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/s;->c(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/s;->c(J)J

    move-result-wide v0

    return-wide v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return the exclusive upper bound of a range that includes MAX_VALUE."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getEndInclusive-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/s;->d(J)Lkotlin/s;

    move-result-object v0

    return-object v0
.end method

.method public getEndInclusive-s-VKNKU()J
    .locals 2

    .line 22
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getStart-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/s;->d(J)Lkotlin/s;

    move-result-object v0

    return-object v0
.end method

.method public getStart-s-VKNKU()J
    .locals 2

    .line 21
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 46
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/s;->c(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/s;->c(J)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v1

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v5

    ushr-long v3, v5, v4

    invoke-static {v3, v4}, Lkotlin/s;->c(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/s;->c(J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 39
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/x;->a(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/s;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/s;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

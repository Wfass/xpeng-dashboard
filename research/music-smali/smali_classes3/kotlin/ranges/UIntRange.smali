.class public final Lkotlin/ranges/UIntRange;
.super Lkotlin/ranges/UIntProgression;
.source "UIntRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/UIntRange$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/ranges/UIntProgression;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final Companion:Lkotlin/ranges/UIntRange$a;

.field private static final EMPTY:Lkotlin/ranges/UIntRange;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/ranges/UIntRange$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/UIntRange$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/ranges/UIntRange;->Companion:Lkotlin/ranges/UIntRange$a;

    .line 52
    new-instance v0, Lkotlin/ranges/UIntRange;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlin/ranges/UIntRange;-><init>(IILccc;)V

    sput-object v0, Lkotlin/ranges/UIntRange;->EMPTY:Lkotlin/ranges/UIntRange;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v1}, Lkotlin/ranges/UIntProgression;-><init>(IIILccc;)V

    return-void
.end method

.method public synthetic constructor <init>(IILccc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/ranges/UIntRange;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lkotlin/ranges/UIntRange;
    .locals 1

    .line 17
    sget-object v0, Lkotlin/ranges/UIntRange;->EMPTY:Lkotlin/ranges/UIntRange;

    return-object v0
.end method

.method public static synthetic getEndExclusive-pVg5ArA$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 17
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/ranges/UIntRange;->contains-WZ4Q5Ns(I)Z

    move-result p1

    return p1
.end method

.method public contains-WZ4Q5Ns(I)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    invoke-static {v0, p1}, Lkotlin/x;->a(II)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/x;->a(II)I

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
    .locals 2

    .line 42
    instance-of v0, p1, Lkotlin/ranges/UIntRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/UIntRange;

    invoke-virtual {v0}, Lkotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    check-cast p1, Lkotlin/ranges/UIntRange;

    invoke-virtual {p1}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic getEndExclusive()Ljava/lang/Comparable;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getEndExclusive-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lkotlin/r;->d(I)Lkotlin/r;

    move-result-object v0

    return-object v0
.end method

.method public getEndExclusive-pVg5ArA()I
    .locals 2

    .line 28
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lkotlin/r;->c(I)I

    move-result v0

    return v0

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
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getEndInclusive-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lkotlin/r;->d(I)Lkotlin/r;

    move-result-object v0

    return-object v0
.end method

.method public getEndInclusive-pVg5ArA()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    return v0
.end method

.method public synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getStart-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lkotlin/r;->d(I)Lkotlin/r;

    move-result-object v0

    return-object v0
.end method

.method public getStart-pVg5ArA()I
    .locals 1

    .line 21
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 39
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/x;->a(II)I

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
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v1

    invoke-static {v1}, Lkotlin/r;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    invoke-static {v1}, Lkotlin/r;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

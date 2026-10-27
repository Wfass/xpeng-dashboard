.class abstract Lcom/google/common/collect/e;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lcom/google/common/collect/ax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ax<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/common/collect/e;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ax;

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Lcom/google/common/collect/ax;

    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/e;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ax;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/e;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/e;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
